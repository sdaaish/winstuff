@echo off

:: # Creates tunnel to rtr-web
:: # 20160926/SDAA

setlocal
set $browser="C:\Program Files\Mozilla Firefox\firefox.exe"

:: -f means go background
:: -NnT means dont execute, dont read stdin, disable pseudo term
:: manpage on http://man.openbsd.org/ssh
ssh -f rasp1 -L 8443:10.10.10.1:443 -NnT
%$browser% https://127.0.0.1:8443/
endlocal
