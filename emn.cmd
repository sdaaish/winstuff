@echo off

:: Alias for starting emacsclient with new frame.
:: Starts daemon if not already started.

:: 2017-04-06/SDAA
if [%1]==[] (
   echo "Usage: %~fp0 <filename(s)>"
   ) else (
   emacsclient --quiet --alternate-editor "" --no-wait --create-frame "%*"
)
