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

    modematrix testclass(filePath);

    freq_setup mytest(1000.0, 1000.0, 0.1, 1.0, 1.0, 1.0, 1.0, 100.0);
    mytest(5);

    // test spectra
    testclass.fspectra(mytest.freq_value(1));
}