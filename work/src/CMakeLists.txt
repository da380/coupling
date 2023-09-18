add_executable(matrix_read matrix_read.cpp)   
target_link_libraries(matrix_read Eigen3::Eigen)
target_link_libraries(matrix_read FFTWpp)