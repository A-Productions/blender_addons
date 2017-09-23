call "\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64
cython c_utils.pyx
cl /LD /I%LOCALAPPDATA%\Programs\Python\Python35\include c_utils.c %LOCALAPPDATA%\Programs\Python\Python35\libs\python35.lib
copy /y c_utils.dll c_utils.cp35-win_amd64.pyd
pause