#include <math.h>

#include <Eigen/Core>
#include <Eigen/IterativeLinearSolvers>
#include <chrono>
#include <complex>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <string>
#include <vector>

#include "calc_setup.h"
#include "matrix_header.h"
// #include "spectra_header.h"
#include "spectra_eval.h"

using std::cout;
using std::endl;
using std::ifstream;
using std::ios;
using namespace std::chrono;

int
main() {
    std::string filePath =
        "/home/adcm2/raidam/coupling/"
        "work/matrix.bin";
    // std::string filePath =
    // "/home/adcm2/Documents/coupling_codes/coupling/work/matrix.bin";
    // std::string filePath2 =
    // "/home/adcm2/Documents/coupling_codes/coupling/work/vector_sr.bin";
    std::string filePath2 = "/home/adcm2/raidam/coupling/work/vector_sr.bin";

    // modematrix testclass(filePath);
    double f1 = 0.1;      // minimum (mHz)
    double f2 = 1.0;      // maximum (mHz)
    double dt = 50.0;     // timestep (s)
    double tout = 50.0;   // time length (hrs)
    double df0 = 0.05;    // frequency step (mHz)
    double wtb = 0.05;    // width of target block (mHz)
    double t1 = 0.0;      // cosine bell start (hrs)
    double t2 = 50.0;     // cosine bell stop (hrs)
    // freq_setup mytest(f1, f2, dt, tout, df0, wtb, t1, t2);
    // mytest(5);
    modespectra mymode(filePath, filePath2, f1, f2, dt, tout, df0, wtb, t1, t2);
    Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic> mytmp;
    mytmp = mymode.fspectra();

    // std::ofstream myfile;
    // myfile.open("test.out", std::ios::trunc);
    // for (int idx = 0; idx < mymode.nt; ++idx) {
    //     // myfile << mytmp(0, idx).real() << ";" << mytmp(1, idx).real() <<
    //     ";"
    //     //        << mytmp(1, idx).imag() << ";" << std::abs(mytmp(1, idx))
    //     //        << std::endl;
    //     myfile << mytmp(0, idx).real() << ";" << std::abs(mytmp(1, idx)) <<
    //     ";"
    //            << std::abs(mytmp(2, idx)) << ";" << std::abs(mytmp(3, idx))
    //            << std::endl;
    // }
    // myfile.close();
    // test spectra
    // testclass.fspectra(mytest.freq_value(1));
}