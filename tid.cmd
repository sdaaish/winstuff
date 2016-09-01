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
:: Fix with space and not leading zero, from http://ss64.com/nt/syntax-gettime.html
:: Strip spaces from timma, if any
set $Timma=%$Timma: =%
:: Ensure the hours have a leading zero
if 1%$Timma% LSS 20 Set $Timma=0%$Timma%
set $Minut=%Time:~3,2%
set $Sekund=%Time:~6,2%
set $Tid=%$Timma%:%$Minut%:%$Sekund%

echo Aktuellt datum: %$Datum% och tid: %$Tid%
ping -n 2 -w 800 127.0.0.1  >NUL 2>NUL
goto begin
