@echo off

setlocal
for /f %%i in ('dir /b *.cmd') do (call :subroutine %%i)
echo back again
goto eof

:subroutine
setlocal
set $file=%1
if "%$file%"=="make.cmd" (
   	echo something
   ) else (
   	echo  Filename:%$file%
   )
endlocal
exit /b

echo this wont happen

:eof
echo end
