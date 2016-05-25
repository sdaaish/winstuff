@echo off

rem ## Change directory to home
rem SDAA/20160422

cd %userprofile%
@echo off
ipconfig| find /i "ipv4"
@echo off
ipconfig| find /i "ipv6"
