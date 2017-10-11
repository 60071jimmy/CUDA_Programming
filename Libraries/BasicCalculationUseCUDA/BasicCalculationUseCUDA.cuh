/*	Basic Calculation Use CUDA，使用CUDA執行基本運算
	Develop by Jimmy Hu, 2017
*/

//-----include header files, 引入標頭檔-----
#include "cuda_runtime.h"												//	include "cuda_runtime.h" header file, 引入標頭檔cuda_runtime.h
#include "device_launch_parameters.h"									//	include "device_launch_parameters.h" header file, 引入標頭檔device_launch_parameters.h

//-----funtion declaration, 副程式宣告區----- 
//	-----Add, Subtract, Multiply, Divide funtion declaration, 加法、減法、乘法、除法函數宣告
__global__ void addKernel(int *c, const int *a, const int *b);
cudaError_t addWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void subKernel(int *c, const int *a, const int *b);
cudaError_t subWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void mulKernel(int *c, const int *a, const int *b);
cudaError_t mulWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void divKernel(int *c, const int *a, const int *b);
cudaError_t divWithCuda(int *c, const int *a, const int *b, unsigned int size);

//	-----Bitwise operation function declaration, 位元運算函數宣告
__global__ void orKernel(int *c, const int *a, const int *b);
cudaError_t orWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void andKernel(int *c, const int *a, const int *b);
cudaError_t andWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void xorKernel(int *c, const int *a, const int *b);
cudaError_t xorWithCuda(int *c, const int *a, const int *b, unsigned int size);