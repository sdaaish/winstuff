@echo off

:: ## Copy settings and files to local
:: SDAA/20160525

:: Copy files to directory included in PATH
for /f %%i in ('dir /b *.cmd') do (call :subroutine %%i)

:: Copy settings to homedir
goto eof

:subroutine
setlocal
set $file=%1
set $dest=%UserProfile%\bin
:: Dont copy this file
if not "%$file%"=="make.cmd" (
       	echo Copy %$file%
   	copy /v /y %$file% %$dest% >NUL
   )
endlocal
exit /b

:eof
