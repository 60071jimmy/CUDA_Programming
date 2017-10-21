/*	
	Develop by Jimmy Hu, 2017
*/
//-----include header files, 引入標頭檔-----
//	-----include CUDA libraries-----
#include "Libraries.cuh";												//	include "Libraries.cuh" header file, 引入標頭檔Libraries.cuh
//	-----include C standard libraries
#include <stdio.h>														//	include "stdio.h" header file, 引入標頭檔stdio.h
#include <stdlib.h>														//	include "stdlib.h" header file, 引入標頭檔stdlib.h

int main()																//	main function, 主程式
{
    const int arraySize = 5;
    const int a[arraySize] = { 1, 2, 3, 4, 5 };
    const int b[arraySize] = { 10, 20, 30, 40, 50 };
    int c[arraySize] = { 0 };

    //***Add vectors in parallel, 平行計算陣列加法***
	cudaError_t cudaStatus;												//	宣告cudaStatus物件，用於記錄執行結果是否錯誤
	cudaStatus = cudaDeviceReset();										//	重置CUDA計算裝置
	if (cudaStatus != cudaSuccess) {									//	若cudaStatus為cudaSuccess
		fprintf(stderr, "cudaDeviceReset failed!");						//	顯示錯誤訊息
		return 1;														//	回傳1並結束程式
	}																	//	結束if敘述

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
