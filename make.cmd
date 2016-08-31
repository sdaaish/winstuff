@echo off

:: ## Copy settings and files to local
:: SDAA/20160525

:: Copy files to directory included in PATH
for /f %%i in ('dir /b *.cmd') do (call :subroutine %%i)

:: Copy settings to homedir

:: Try to create symlinks. Won't mostly work cause of permissions.
:: Create them beforehand is recommended.
:: cd %userprofile%
:: mklink .emacs path-to-git-repo\.emacs-file
:: mklink /d .emacs.d AppData\Roaming\.emacs.d
copy .emacs %AppData%
mkdir %AppData%\.emacs.d 2>NUL
:: mklink .emacs path-to-git-repo\.emacs-file
xcopy /YECIFR .emacs.d %AppData%\.emacs.d
goto eof

:subroutine
setlocal
set $file=%1
:: Dont copy this file
if not "%$file%"=="make.cmd" (
   	copy %$file% \local\bin
   )
endlocal
exit /b

:eof
