@echo off

:: Starts shodan python script
:: 20160928/SDAA

setlocal
:: set $prog=%LocalAppData%\Programs\Python\Python35\scripts\shodan
set $prog=C:\Python36\scripts\shodan
py %$prog% %*
endlocal
