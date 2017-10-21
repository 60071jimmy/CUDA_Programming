/*	
	Develop by Jimmy Hu, 2017
*/
//-----include header files, �ޤJ���Y��-----
//	-----include CUDA libraries-----
#include "Libraries.cuh";												//	include "Libraries.cuh" header file, �ޤJ���Y��Libraries.cuh
//	-----include C standard libraries
#include <stdio.h>														//	include "stdio.h" header file, �ޤJ���Y��stdio.h
#include <stdlib.h>														//	include "stdlib.h" header file, �ޤJ���Y��stdlib.h

int main()																//	main function, �D�{��
{
    const int arraySize = 5;
    const int a[arraySize] = { 1, 2, 3, 4, 5 };
    const int b[arraySize] = { 10, 20, 30, 40, 50 };
    int c[arraySize] = { 0 };

    //***Add vectors in parallel, ����p��}�C�[�k***
	cudaError_t cudaStatus;												//	�ŧicudaStatus����A�Ω�O�����浲�G�O�_���~
	cudaStatus = cudaDeviceReset();										//	���mCUDA�p��˸m
	if (cudaStatus != cudaSuccess) {									//	�YcudaStatus��cudaSuccess
		fprintf(stderr, "cudaDeviceReset failed!");						//	��ܿ��~�T��
		return 1;														//	�^��1�õ����{��
	}																	//	����if�ԭz

	cudaStatus = addWithCuda(c, a, b, arraySize);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "addWithCuda failed!");
        return 1;
    }

    printf("{1,2,3,4,5} + {10,20,30,40,50} = {%d,%d,%d,%d,%d}\n",
        c[0], c[1], c[2], c[3], c[4]);

    // cudaDeviceReset must be called before exiting in order for profiling and
    // tracing tools such as Nsight and Visual Profiler to show complete traces.
    cudaStatus = cudaDeviceReset();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaDeviceReset failed!");
        return 1;
    }

	system("pause");
    return 0;
}
