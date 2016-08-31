@echo off

:begin
:: Use local variables
setlocal
:: Set date
set $Day=%Date:~8,2%
set $Mth=%Date:~5,2%
set $Year=%Date:~0,4%
set $Datum=%$Year%-%$Mth%-%$Day%

:: Set time
set $Timma=%Time:~0,2%
set $Minut=%Time:~3,2%
set $Sekund=%Time:~6,2%
set $Tid=%$Timma%:%$Minut%:%$Sekund%

:: Strip any leading spaces
Set _hh=%$Timma: =%
echo %_hh%

:: Ensure the hours have a leading zero
if 1%_hh% LSS 20 Set _hh=0%_hh%
echo %_hh%

echo Aktuellt datum: %$Datum% och tid: %$Tid%
ping -n 2 -w 800 127.0.0.1  >NUL 2>NUL
goto begin
