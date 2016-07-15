@echo off

rem # Creates tunnel to mitm-proxy
rem # 20160630/SDAA

ssh -f mitm -L 8080:mitm:8080 -N
