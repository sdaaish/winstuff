@echo off

:: Alias for emacs on windows
:: 20160926/SDAA
if [%1]==[] (
     runemacs
   ) else (
     runemacs "%~f1"
)    

