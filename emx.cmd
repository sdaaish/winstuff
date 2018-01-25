@echo off

:: Alias for starting emacsclient.
:: Starts daemon if not already started.

:: 2017-04-06/SDAA

:: Register this with 'ftype txtfile="<path-to-file>\emx.cmd" "%1"' as an administrator.
:: Now you can open an file with emacsclient directly from explorer.

:: If this script is in the path, you can open a file in emacs with 'emx filename'

:: If you want a second frame, just type 'emx'.

:: Apparently you cannot have quotation marks around the variable %* for this to work.
if [%1]==[] (
   emacsclientw --quiet --alternate-editor="" --create-frame
   ) else (
   emacsclientw --quiet --alternate-editor="" %*
)
