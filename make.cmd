@echo off

:: ## Copy settings and files to local
:: SDAA/20160525

:: Copy files to directory included in PATH
for /f %%i in ('dir /b *.cmd') do (call :subroutine %%i)

:: Copy settings to homedir

:: Try to create symlinks. Won't mostly work cause of permissions.
:: Create them beforehand is recommended.
:: mklink .emacs path-to-git-repo\.emacs-file
:: mklink %AppData%\.emacs path-to-git-repo\.emacs-file
:: mkdir %AppData%\.emacs.d 2>NUL
:: mklink /d %UserProfile%\.emacs.d AppData\Roaming\.emacs.d
xcopy /YECIFR .emacs.d %AppData%\.emacs.d
goto eof

:subroutine
setlocal
set $file=%1
set $dest=C:\local\bin
:: Dont copy this file
if not "%$file%"=="make.cmd" (
   	copy %$file% %$dest%
   )
endlocal
exit /b

:eof
