@echo off

setlocal
for /f %%i in ('dir /b *.cmd') do (call :subroutine %%i)
echo back again

set /p "$PASSWD=[Please insert password for user root: ]" || set $PASSWD=NothingChosen
if "%$PASSWD%"=="NothingChosen" call :sub_passwd

set /p "$NR=[Please insert random number: ]" || set /a "$NR=0"
echo %$NR%
if %$NR% lss 1 (
   	echo Must be greater then 0, exiting...
   	goto eof
   ) else (
        call :sub_nr
     )
if %$NR%==0 (
      echo Using default
      set /a "$NR=300"
   )
     
echo %$NR%

:main
echo :main
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

:sub_passwd
echo in the sub_passwd subroutine
exit /b

:sub_nr
echo in the sub_nr subroutine
echo %$NR%
set /a "$NR*=60"
echo %$NR%
exit /b

echo this wont happen

:eof
echo eof
