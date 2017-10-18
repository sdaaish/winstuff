@echo off

:: # Creates SOCKS5-proxy via SSH
:: # 20171018/SDAA
:: From https://www.madboa.com/blog/2014/09/24/firefox-socks5/

:: -f means go background
:: -NnT means Dont execute command, redirects sdin from nul, disable pseudotty.
netstat -an -p tcp| findstr 1080| findstr LISTENING > nul
if %errorlevel% equ 0 (
   echo "SOCK-proxy already started or port in use (1080)."
   ) else (
   :: Starta proxyn
   echo "Starting SOCKS5-proxy on port 1080"
   ssh -f -NnT -C -D 1080 mitm
   echo "Socks-proxy started"
   )

