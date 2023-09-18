# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/adcm2/raidam/coupling/work/build/_deps/fftwpp-src"
  "/home/adcm2/raidam/coupling/work/build/_deps/fftwpp-build"
  "/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix"
  "/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/tmp"
  "/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp"
  "/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src"
  "/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/raid/adcm2/coupling/work/build/_deps/fftwpp-subbuild/fftwpp-populate-prefix/src/fftwpp-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
