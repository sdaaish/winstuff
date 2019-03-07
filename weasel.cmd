@echo off

:: Alias for starting emacsclient inside of WSL from Windows.
:: Starts daemon if not already started.

:: 2019-03-07/SDAA

:: Register this with 'ftype txtfile="<path-to-file>\weasel.cmd" "%1"' as an administrator.
:: Now you can open an file with emacsclient inside WSL directly from explorer.

:: If this script is in the path, you can open a file in emacs with 'weasel filename'

:: If you want a second frame, just type 'weasel'.

:: Apparently you cannot have quotation marks around the variable %* or %~s1 for this to work.

if [%1]==[] (
   wsl.exe -- emacsclient --quiet --alternate-editor="" --create-frame --display :0.0 --no-wait
   ) else (
   wsl.exe -- emacsclient --quiet --alternate-editor=""  --display :0.0 --no-wait "$(wslpath %1)"
)
