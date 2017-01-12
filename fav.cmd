@setlocal
@echo off

:: Store favorite folders for easy directory change.
:: From https://medium.com/@vitalyb/favorite-folders-in-command-line-421772cdab5f#.8io5x9yly
set userChoice=%1

:: The format is:
:: call :condition SHORTCUT FOLDER
call :condition gdrive "%userprofile%\Google Drive"
call :condition dropbox "%userprofile%\Dropbox"
call :condition local C:\Local
call :condition appdata %AppData%
call :condition temp %Temp%
endlocal
popd
GOTO :eof

:condition
:: We do PUSHD twice since endlocal does popd once :|
if "%userChoice%"=="%1" pushd %2 & pushd %2 & echo pushd %2
if "%userChoice%"=="" echo %1 =^> %2
GOTO :eof
