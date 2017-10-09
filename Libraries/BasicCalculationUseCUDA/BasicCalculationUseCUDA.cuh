/*	Basic Calculation Use CUDA�A�ϥ�CUDA����򥻹B��
	Develop by Jimmy Hu, 2017
*/

//-----include header files, �ޤJ���Y��-----
#include "cuda_runtime.h"												//	include "cuda_runtime.h" header file, �ޤJ���Y��cuda_runtime.h
#include "device_launch_parameters.h"									//	include "device_launch_parameters.h" header file, �ޤJ���Y��device_launch_parameters.h

//-----funtion declaration, �Ƶ{���ŧi��----- 
__global__ void addKernel(int *c, const int *a, const int *b);
cudaError_t addWithCuda(int *c, const int *a, const int *b, unsigned int size);
