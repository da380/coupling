#ifndef SPECTRA_EVAL_GUARD_H
#define SPECTRA_EVAL_GUARD_H

#include <math.h>

#include <Eigen/Core>
#include <Eigen/Dense>
#include <Eigen/IterativeLinearSolvers>
#include <FFTWpp/All>
// #include "./FFTWpp/All"
#include <chrono>
#include <complex>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <string>
#include <vector>

#include "filter_header.h"

class modespectra {
   public:
    // constructor
    modespectra(std::string, std::string, double, double, double, double,
                double, double, double, double);

    // frequency of particular point
    Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic>
    rawspectra();
    Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic>
    fspectra();

    // solve for spectra
    Eigen::Matrix<std::complex<double>, Eigen::Dynamic, 1> finv(
        std::complex<double>);

    // number of points
    int nt;
    int i1, i2, mtot;
    double df, ep;
    std::vector<double> w;
    std::vector<double> t;

   private:
    double f1, f2, dt, tout, df0, wtb, t1, t2;

    using myvector = Eigen::Matrix<std::complex<double>, Eigen::Dynamic, 1>;
    using mymatrix =
        Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic>;
    mymatrix a0, a1, a2, vr;
    myvector vs;
    myvector ww;
    Eigen::Matrix<int, Eigen::Dynamic, 1> ll;
    int nelem, nelem2;
};

modespectra::modespectra(std::string filepath, std::string filePath2, double f1,
                         double f2, double dt, double tout, double df0,
                         double wtb, double t1, double t2)
    : f1{f1 / 1000.0},
      f2{f2 / 1000.0},
      dt{dt},
      df0{df0 / 1000.0},
      tout{tout * 3600.0},
      t1{t1 * 3600.0},
      t2{std::min(t2, tout) * 3600.0},
      wtb{wtb * 3.1415926535 / 500.0} {
    /////////////////////////////////////////////////////////////////////////////////////
    // Setup
    /////////////////////////////////////////////////////////////////////////////////////
    // Nyquist frequency
    double fn = 0.5 / dt;

    // check for f2
    if (fn < this->f2) {
        std::cout << "f2 is greater than the Nyquist frequency for the time "
                     "step. Behaviour may be unexpected"
                  << std::endl;
        this->f2 = fn;
    };

    // multipliers for epsilon in inverse FL and q (need to clarify this)
    int mex = 5;
    int qex = 4;
    ep = mex / this->tout;
    // David's version
    //  df = ep / (6.28318530718 * qex);

    // my version
    df = 1.0 / this->tout;             // find df
    nt = std::ceil(1.0 / (df * dt));   // find nt
    int ne = static_cast<int>(log(static_cast<double>(nt)) / log(2.0) + 1);
    nt = pow(2, ne);   // finish increase in density

    df = 1.0 / (nt * dt);   // new df

    // finding new values of f1 and f2 and corresponding integer numbers
    i1 = std::max(static_cast<int>(std::floor(this->f1 / df)), 0);
    i2 = static_cast<int>(std::floor(this->f2 / df)) + 2;
    this->f1 = (i1 - 1) * df;
    this->f2 = (i2 - 1) * df;

    // fill out w, remembering w = 2pi f, and only needing to go up to nt/2+1 as
    // half length of time series
    for (int idx = 0; idx < nt / 2 + 1; ++idx) {
        w.push_back(2.0 * 3.1415926535 * df * static_cast<double>(idx));
    }

    // fill out t
    for (int idx = 0; idx < nt; ++idx) {
        t.push_back(dt * static_cast<double>(idx));
    }

    //////////////////////////////////////////////////////////////////////////
    ///////////////      file opening and initialisation       ///////////////
    //////////////////////////////////////////////////////////////////////////
    // reading in for a0, a1, a2:
    ifstream infile(filepath, ifstream::binary);

    // check opened correctly
    if (!infile) {
        cout << "Cannot open file!" << endl;
    }

    // find the length of the file
    infile.seekg(0, ios::end);
    int file_size = infile.tellg();
    cout << "Size of the file is " << file_size << " bytes" << endl;
    infile.seekg(0, infile.beg);   // reset back to beginning

    // finding number of elements
    nelem = sqrt((file_size - 24) / (3 * 16));
    cout << nelem << endl;

    // placeholder byte size 4, ie same as integer
    int i, matbytes;
    infile.read(reinterpret_cast<char *>(&i), sizeof(i));   // head placeholder
    double matbreak;   // placeholder between matrices

    // resizing matrices using size found
    a0.resize(nelem, nelem);
    a1.resize(nelem, nelem);
    a2.resize(nelem, nelem);

    // size of matrices in bytes
    matbytes = nelem * nelem * 16;

    // read matrices
    infile.read(reinterpret_cast<char *>(a0.data()), matbytes);
    infile.read(reinterpret_cast<char *>(&matbreak), 8);   // placeholder
    infile.read(reinterpret_cast<char *>(a1.data()), matbytes);
    infile.read(reinterpret_cast<char *>(&matbreak), 8);   // placeholder
    infile.read(reinterpret_cast<char *>(a2.data()), matbytes);
    infile.read(reinterpret_cast<char *>(&i), sizeof(i));   // placeholder

    //////////////////////////////////////////////////////////////////////////
    ///////////////   closing and checking closed correctly    ///////////////
    //////////////////////////////////////////////////////////////////////////
    // close
    infile.close();
    // check
    if (!infile.good()) {
        cout << "Error occurred at reading time!" << endl;
    }

    //////////////////////////////////////////////////////////////////////////
    ///////////////      file opening and initialisation       ///////////////
    //////////////////////////////////////////////////////////////////////////

    ifstream vecfile(filePath2, ifstream::binary);
    // check opened correctly
    if (!vecfile) {
        cout << "Cannot open file!" << endl;
    }

    // find the length of the file
    vecfile.seekg(0, ios::end);
    int file_size2 = vecfile.tellg();
    cout << "Size of the file is " << file_size2 << " bytes" << endl;
    vecfile.seekg(0, vecfile.beg);   // reset back to beginning

    // finding number of elements
    nelem2 = (file_size2 - 16) / (16 * nelem) - 1;

    //////////////////////////////////////////////////////////////////////////
    ///////////////   reading in receiver and source vectors   ///////////////
    //////////////////////////////////////////////////////////////////////////
    vecfile.read(reinterpret_cast<char *>(&i), sizeof(i));   // head

    // resizing matrices using size found
    vs.resize(nelem);
    vr.resize(nelem, nelem2);

    // size
    int vecbytes = 16 * nelem;

    // read matrices
    vecfile.read(reinterpret_cast<char *>(vs.data()), vecbytes);
    vecfile.read(reinterpret_cast<char *>(&i), sizeof(i));   // placeholder
    vecfile.read(reinterpret_cast<char *>(&i), sizeof(i));   // placeholder
    vecfile.read(reinterpret_cast<char *>(vr.data()), vecbytes * nelem2);

    //////////////////////////////////////////////////////////////////////////
    ///////////////   closing and checking closed correctly    ///////////////
    //////////////////////////////////////////////////////////////////////////
    // close
    vecfile.close();
    // check
    if (!vecfile.good()) {
        cout << "Error occurred at reading time!" << endl;
    }

    //////////////////////////////////////////////////////////////////////////
    ///////////////      file opening and initialisation       ///////////////
    //////////////////////////////////////////////////////////////////////////
    ifstream freqfile("/home/adcm2/raidam/coupling/work/freq_sph.bin",
                      ifstream::binary);
    // check opened correctly
    if (!freqfile) {
        cout << "Cannot open file!" << endl;
    }

    // find the length of the file
    freqfile.seekg(0, ios::end);
    int file_size3 = freqfile.tellg();
    cout << "Size of the file is " << file_size3 << " bytes" << endl;
    freqfile.seekg(0, freqfile.beg);   // reset back to beginning

    // finding number of elements
    mtot = (file_size3 - 16) / (20);

    //////////////////////////////////////////////////////////////////////////
    ///////////////     reading in data into a0, a1 and a2 ///////////////
    //////////////////////////////////////////////////////////////////////////
    // placeholder
    freqfile.read(reinterpret_cast<char *>(&i), sizeof(i));   // head

    // resizing matrices using size found
    ll.resize(mtot);
    ww.resize(mtot);

    // read matrices
    freqfile.read(reinterpret_cast<char *>(ww.data()), 16 * mtot);
    freqfile.read(reinterpret_cast<char *>(&i), sizeof(i));   // placeholder
    freqfile.read(reinterpret_cast<char *>(&i), sizeof(i));   // placeholder
    freqfile.read(reinterpret_cast<char *>(ll.data()), 4 * mtot);

    //////////////////////////////////////////////////////////////////////////
    ///////////////   closing and checking closed correctly    ///////////////
    //////////////////////////////////////////////////////////////////////////
    // close
    freqfile.close();
    // check
    if (!freqfile.good()) {
        cout << "Error occurred at reading time!" << endl;
    }
};

// define inverse function
Eigen::Matrix<std::complex<double>, Eigen::Dynamic, 1>
modespectra::finv(std::complex<double> winp) {
    Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic> A(
        nelem, nelem);

    // declare value of A
    A = a0 + winp * a1 + winp * winp * a2;

    // include diagonal component
    for (int idx = 0; idx < A.rows(); ++idx) {
        A(idx, idx) = A(idx, idx) - winp * winp;
    }
    std::complex<double> myi(0.0, 1.0);   // imaginary number i

    // declare solver, using diagonal preconditioner for moment
    Eigen::BiCGSTAB<
        Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic>,
        Eigen::DiagonalPreconditioner<std::complex<double> > >
        solver;
    solver.setTolerance(1.0 * std::pow(10, -7));
    solver.compute(A);

    // solution and rhs
    Eigen::Matrix<std::complex<double>, Eigen::Dynamic, 1> x, vrhs;
    vrhs.resize(nelem);

    int nindex = 0;
    for (int idx = 0; idx < nindex; ++idx) {
        vrhs(idx) = vs(idx) / (myi * winp);
    }

    // solve and return
    x = solver.solve(vrhs);
    return x;
};

Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic>
modespectra::rawspectra() {
    Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic> tmp =
        Eigen::Matrix<std::complex<double>, Eigen::Dynamic,
                      Eigen::Dynamic>::Zero(nelem2 + 1, nt / 2 + 1);
    // tmp.resize(nelem2 + 1, nt);
    std::complex<double> myi(0.0, 1.0);
    double oneovertwopi = 1.0 / (2.0 * 3.1415926535);
    std::complex<double> imep = static_cast<std::complex<double> >(ep);

    // go through frequencies:
    Eigen::Matrix<std::complex<double>, Eigen::Dynamic, 1> vlhs;
    for (int idx = 0; idx < nt / 2 + 1; ++idx) {
        tmp(0, idx) = w[idx] * oneovertwopi;   // frequency
        std::complex<double> winp;             // imaginary shifted frequency
        winp = w[idx] - myi * imep;

        // run through all frequencies and if between f1 and f2 compute
        if (idx > i1 - 1 && idx < i2 + 1) {
            // calculate x in Ax = b
            vlhs = modespectra::finv(winp);

            // find acceleration response using receiver vectors
            tmp.block(1, idx, nelem2, 1) =
                -winp * winp * this->vr.transpose() * vlhs;
        };
    };
    return tmp;
};

Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic>
modespectra::fspectra() {
    // do Fourier transform
    using Float = double;
    using Complex = std::complex<Float>;
    using RealVector = FFTWpp::vector<Float>;
    using ComplexVector = FFTWpp::vector<Complex>;
    using namespace std::complex_literals;

    // set up for FT
    // int n = 2 * (nt - 1);
    RealVector testFL(nt), checkFL(nt);
    ComplexVector outFL(nt / 2 + 1);

    // Form the plans.
    auto flag = FFTWpp::Measure | FFTWpp::Estimate;

    auto backward_plan = FFTWpp::MakePlan1D(outFL, checkFL, flag);
    Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic> rawspec,
        tmpspec;
    rawspec = modespectra::rawspectra();
    tmpspec.resize(this->nelem2 + 1, this->nt / 2 + 1);

    // set up Hann filter
    double fac = 0.1;
    double f11 = this->f1;
    double f22 = this->f2;
    double f12 = f11 + fac * (f22 - f11);
    double f21 = f22 - fac * (f22 - f11);

    // do Hann filter
    for (int idx = 0; idx < this->nt / 2 + 1; ++idx) {
        // actual frequency
        double finp;
        finp = static_cast<double>(idx) * this->df;

        tmpspec(0, idx) = rawspec(0, idx);   // frequency output not filtered

        // filter spectra
        tmpspec.block(1, idx, this->nelem2, 1) =
            rawspec.block(1, idx, this->nelem2, 1) *
            filters::hann(&finp, &f11, &f12, &f21, &f22);
    }

    // fill out for FT
    for (int idx = 0; idx < nt / 2 + 1; ++idx) {
        outFL[idx] = tmpspec(3, idx);
    }

    // execute FT
    backward_plan.Execute();

    //   parameters for time-domain filter
    double tfac = 0.5;
    double t11 = this->t1;
    double t22 = this->t2;
    double t12 = t11 + tfac * (t22 - t11);
    double t21 = t22 - tfac * (t22 - t11);

    // do corrections
    auto myit2 = checkFL.begin();
    // auto myit3 = t.begin();
    for (int idx = 0; idx < nt; ++idx) {
        double tinp;
        tinp = static_cast<double>(idx) * dt;
        myit2[idx] = myit2[idx] * exp(this->ep * t[idx]) * df *
                     filters::hann(&tinp, &t11, &t12, &t21, &t22);
    }

    // output
    std::ofstream myfile;
    myfile.open("tspectratest.out", std::ios::trunc);
    for (int idx = 0; idx < nt; ++idx) {
        myfile << t[idx] / 3600 << ";" << myit2[idx] << std::endl;
    }
    myfile.close();

    // put into Eigen matrix
    Eigen::Matrix<double, Eigen::Dynamic, 1> eigtmp;
    eigtmp.resize(nt);
    for (int idx = 0; idx < nt; ++idx) {
        eigtmp(idx, 0) = myit2[idx];
    }
    // pad the time series if necessary
    double nt0 = floor(1.0 / df0 * dt);
    if (nt0 > nt) {
        int ne2 = log(static_cast<double>(nt0)) / log(2.0) + 1;
        nt0 = pow(2, ne2);
    }
    RealVector dtmp(nt0);
    ComplexVector wdense(nt0 / 2 + 1);
    auto flag2 = FFTWpp::Measure | FFTWpp::Estimate;
    auto inView = FFTWpp::MakeDataView1D(dtmp);
    auto outView = FFTWpp::MakeDataView1D(wdense);

    auto forward_plan = FFTWpp::Plan(inView, outView, flag2);

    // auto backward_plan2 = FFTWpp::MakePlan1D(wdense, dtmp, flag2);
    auto myit4 = dtmp.begin();
    for (int idx = 0; idx < nt; ++idx) {
        myit4[idx] = eigtmp(idx, 0);
    }
    if (nt0 > nt) {
        for (int idx = nt; idx < nt0; ++idx) {
            myit4[idx] = 0.0;
        }
    }
    forward_plan.Execute();
    auto df2 = 1.0 / (nt0 * dt);
    auto i12 = std::max(static_cast<int>(floor(this->f1 / df2)), 1);
    auto i22 = static_cast<int>(floor(this->f2 / df2)) + 1;
    auto myit5 = wdense.begin();
    std::ofstream specout;
    specout.open("fspectra.out", std::ios::trunc);
    for (int idx = i12; idx < i22; ++idx) {
        specout << df2 * idx * 1000.0 << ";" << myit5[idx].real() << ";"
                << myit5[idx].real() << ";" << std::abs(myit5[idx])
                << std::endl;
    }
    specout.close();
    return tmpspec;
    // return 0;
};

#endif