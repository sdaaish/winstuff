@echo off

:begin
rem Set date
set $Day=%Date:~8,2%
set $Mth=%Date:~5,2%
set $Year=%Date:~0,4%
set $Datum=%$Year%-%$Mth%-%$Day%

rem Set time
set $Timma=%Time:~0,2%
set $Minut=%Time:~3,2%
set $Sekund=%Time:~6,2%
set $Tid=%$Timma%:%$Minut%:%$Sekund%

echo Aktuellt datum: %$Datum% och tid: %$Tid%
ping -n 2 -w 1000 127.0.0.1  >NUL 2>NUL
goto begin
