@echo off

:: Alias for starting emacsclient.
:: Starts daemon if not already started.

:: 2017-04-06/SDAA
if [%1]==[] (
   emacsclientw --quiet --alternate-editor="" --create-frame
   ) else (
   emacsclientw --quiet --alternate-editor="" "%*"
)
