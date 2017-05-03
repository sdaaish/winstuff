@echo off

:: Alias for starting emacsclient.
:: Starts daemon if not already started.

:: 2017-04-06/SDAA
if [%1]==[] (
   emacsclientw --quiet --alternate-editor "" --no-wait --create-frame
   ) else (
   emacsclientw --quiet --alternate-editor "" --no-wait "%*"
)
