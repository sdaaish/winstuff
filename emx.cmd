@echo off

:: Alias for starting emacsclient
:: 2017-04-06/SDAA
if [%1]==[] (
   emacsclient %1
   ) else (
   emacsclient "%~f1"
)
