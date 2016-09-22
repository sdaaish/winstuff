@echo off

:: # Creates tunnel to mitm-proxy
:: # 20160630/SDAA

:: -f means go background
:: -NnT means xxx
ssh -f mitm -L 8080:127.0.0.1:8080 -NnT
