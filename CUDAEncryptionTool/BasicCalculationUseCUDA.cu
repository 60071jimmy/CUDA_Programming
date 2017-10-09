/*	Basic Calculation Use CUDA�A�ϥ�CUDA����򥻹B��	*/

//-----include header files, �ޤJ���Y��-----
#include "cuda_runtime.h"												//	include "cuda_runtime.h" header file, �ޤJ���Y��cuda_runtime.h
#include "device_launch_parameters.h"									//	include "device_launch_parameters.h" header file, �ޤJ���Y��device_launch_parameters.h

__global__ void addKernel(int *c, const int *a, const int *b)
{
	int i = threadIdx.x;
	c[i] = a[i] + b[i];
}

