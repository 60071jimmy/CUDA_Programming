/*	Basic Calculation Use CUDA，使用CUDA執行基本運算
	Develop by Jimmy Hu, 2017
*/

//-----include header files, 引入標頭檔-----
#include "cuda_runtime.h"												//	include "cuda_runtime.h" header file, 引入標頭檔cuda_runtime.h
#include "device_launch_parameters.h"									//	include "device_launch_parameters.h" header file, 引入標頭檔device_launch_parameters.h

//-----funtion declaration, 副程式宣告區----- 
__global__ void addKernel(int *c, const int *a, const int *b);
cudaError_t addWithCuda(int *c, const int *a, const int *b, unsigned int size);
