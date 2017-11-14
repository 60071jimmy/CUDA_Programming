/*	檔案基礎I/O函式庫
	Basic File Input & Output Library
	
	Develop by Jimmy HU
	This program is licensed under GNU General Public License v3.
 */
//-----include header files, 引入標頭檔-----
#include <math.h>														//	include math.h header file, 引入標頭檔math.h
#include <stdbool.h>													//	include stdbool.h header file, 引入標頭檔stdbool.h
#include <stdio.h>														//	include stdio.h header file, 引入標頭檔stdio.h
#include <stdlib.h>														//	include stdlib.h header file, 引入標頭檔stdlib.h
#include <string.h>														//	include string.h header file, 引入標頭檔string.h
#include "..\\..\\Libraries\\StdLibraries\\unistd.h"					//	include unistd.h header file, 引入標頭檔unistd.h
//-----funtion declaration, 副程式宣告區----- 
/*	FileExistCheck副程式用於
	在讀寫檔案前，有時需先確認檔案是否已存在，在此設計FileExistCheck(檔案存在檢查)副程式執行檔案存在與否之檢查工作。
	副程式輸入為(檔案路徑字串)
	副程式輸出為布林變數，若檔案存在傳回值為true，若檔案不存在傳回值為false
 */
bool FileExistCheck(char *);											//	declare FileExistCheck function, 宣告FileExistCheck(檔案存在檢查)副程式
/*	FileReadPermissionCheck副程式用於
	在讀寫檔案前，有時需先確認檔案是否可讀取，在此設計FileReadPermissionCheck(檔案讀取權限檢查)副程式執行檔案可否讀取之檢查。
	副程式輸入為(檔案路徑字串)
	副程式輸出為布林變數，若檔案具讀取權限傳回值為true，若檔案不具讀取權限傳回值為false
 */
bool FileReadPermissionCheck(const char *);								//	declare FileReadPermissionCheck function, 宣告FileReadPermissionCheck(檔案讀取權限檢查)副程式
/*	FileWritePermissionCheck副程式用於
	在讀寫檔案前，有時需先確認檔案是否可寫入，在此設計FileWritePermissionCheck(檔案寫入權限檢查)副程式執行檔案可否寫入之檢查。
	副程式輸入為(檔案路徑字串)
	副程式輸出為布林變數，若檔案具讀取權限傳回值為true，若檔案不具讀取權限傳回值為false
 */
bool FileWritePermissionCheck(const char *);							//	declare FileWritePermissionCheck function, 宣告FileWritePermissionCheck(檔案寫入權限檢查)副程式
/*	FileWrite副程式用於資料寫入檔案儲存。
	副程式輸入為(欲寫入檔案檔名, 欲寫入檔案之指標形式字串資料, 寫入檔案模式設定，可傳入"w"或"a"，"w"為新增/覆蓋模式，"a"為擴充模式)
	副程式輸出為布林變數，若檔案寫入成功回傳true，若寫入失敗回傳false
 */
bool FileWrite(const char *,const char *,const char *);					//	declare FileWrite function, 宣告FileWrite(檔案寫入)副程式，執行文字檔案寫入