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
using namespace std::chrono;

int
main() {
     //////////////////////////////////////////////////////////////////////////
     ///////////////      file opening and initialisation       ///////////////
     //////////////////////////////////////////////////////////////////////////

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

     //////////////////////////////////////////////////////////////////////////
     ///////////////     reading in data into a0, a1 and a2     ///////////////
     //////////////////////////////////////////////////////////////////////////
     // placeholder byte size 4, ie same as integer
     int i, matbytes;
     infile.read(reinterpret_cast<char *>(&i), sizeof(i));   // head placeholder
     double matbreak;   // placeholder between matrices

     // reading into Eigen Matrix complex double. Need to have dynamic at start
     // as only find size at compile time
     Eigen::Matrix<std::complex<double>, Eigen::Dynamic, Eigen::Dynamic> a0, a1,
         a2;

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

     //////////////////////////////////////////////////////////////////////////
     ///////////////                   checks                 ///////////////
     //////////////////////////////////////////////////////////////////////////
     // cout << a0(0, 0) << endl;
     // cout << a0(1, 0) << endl;
     // cout << a1(0, 0) << endl;
     // cout << a1(nelem - 1, nelem - 1) << endl;
     // cout << a2(0, 0) << endl;
     // cout << a2(1, 0) << endl;

     //////////////////////////////////////////////////////////////////////////
     ///////////////   closing and checking closed correctly    ///////////////
     //////////////////////////////////////////////////////////////////////////
     // close
     infile.close();
     // check
     if (!infile.good()) {
          cout << "Error occurred at reading time!" << endl;
          return 1;
     }
}