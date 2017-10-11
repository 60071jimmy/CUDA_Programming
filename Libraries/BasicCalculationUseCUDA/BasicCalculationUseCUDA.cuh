/*	Basic Calculation Use CUDA�A�ϥ�CUDA����򥻹B��
	Develop by Jimmy Hu, 2017
*/

//-----include header files, �ޤJ���Y��-----
#include "cuda_runtime.h"												//	include "cuda_runtime.h" header file, �ޤJ���Y��cuda_runtime.h
#include "device_launch_parameters.h"									//	include "device_launch_parameters.h" header file, �ޤJ���Y��device_launch_parameters.h

//-----funtion declaration, �Ƶ{���ŧi��----- 
//	-----Add, Subtract, Multiply, Divide funtion declaration, �[�k�B��k�B���k�B���k��ƫŧi
__global__ void addKernel(int *c, const int *a, const int *b);
cudaError_t addWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void subKernel(int *c, const int *a, const int *b);
cudaError_t subWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void mulKernel(int *c, const int *a, const int *b);
cudaError_t mulWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void divKernel(int *c, const int *a, const int *b);
cudaError_t divWithCuda(int *c, const int *a, const int *b, unsigned int size);

//	-----Bitwise operation function declaration, �줸�B���ƫŧi
__global__ void orKernel(int *c, const int *a, const int *b);
cudaError_t orWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void andKernel(int *c, const int *a, const int *b);
cudaError_t andWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void xorKernel(int *c, const int *a, const int *b);
cudaError_t xorWithCuda(int *c, const int *a, const int *b, unsigned int size);