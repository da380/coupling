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

using std::cout;
using std::endl;
using std::ifstream;
using std::ios;

int
main() {
     ifstream infile("./matrix.bin", ifstream::binary);

     // check opened correctly
     if (!infile) {
          cout << "Cannot open file!" << endl;
          return 1;
     }

     // find the length of the file
     infile.seekg(0, ios::end);
     int file_size = infile.tellg();
     cout << "Size of the file is " << file_size << " bytes" << endl;
     infile.seekg(0, infile.beg);   // reset back to beginning

     // finding number of elements
     const int nelem = sqrt((file_size - 24) / (3 * 16));
     cout << nelem << endl;

     int i;
     infile.read(reinterpret_cast<char *>(&i), sizeof(i));
     // double mytest, mytest2;
     std::complex<double> mycomplex;
     int smytest;
     // smytest = sizeof(mytest);
     Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic>
         mytestmat;
     mytestmat.resize(nelem, nelem);
     cout << "Hello" << endl;
     for (int m = 0; m < nelem; ++m) {
          for (int n = 0; n < nelem; ++n) {
               infile.read(reinterpret_cast<char *>(&mycomplex),
                           sizeof(mycomplex));
               mytestmat(m, n) = mycomplex;
          }
     }
     // infile.read(reinterpret_cast<char *>(mytestmat.begin()),
     //             nelem * nelem * sizeof(mycomplex));
     cout << "Hello" << endl;
     cout << mytestmat(0, 0) << endl;
     cout << mytestmat(0, 1) << endl;

     //  std::vector<double>
     //  double mytest2;
     // infile.read(reinterpret_cast<char *>(&mytestmat),
     //             sizeof(mytest) * nelem * nelem * 2);
     //  cout << "Mytest is: " << mytest << endl;
     //  cout << "Mytest2 is: " << mytest2 << endl;
     //  infile.read(reinterpret_cast<char *>(&mytest), sizeof(mytest));
     //  infile.read(reinterpret_cast<char *>(&mytest2), sizeof(mytest2));
     //  cout << "Mytest is: " << mytest << endl;
     //  cout << "Mytest2 is: " << mytest2 << endl;

     // close and check closed
     infile.close();
     // std::cout << "Hello 3" << std::endl;
     if (!infile.good()) {
          cout << "Error occurred at reading time!" << endl;
          return 1;
     }
}