@echo off

:: Transfers a file to transfer.sh for Virustotal analysis
:: 2017-04-06/SDAA

if [%1]==[] goto usage

if not exist %1 (
   echo File %1 does not exist!
   exit /b 1
)

setlocal
set $file=%1
set $name=%~nx1
curl -X PUT --upload-file %$file% https://transfer.sh/%$name%/virustotal

goto end
:usage
echo "Usage: transfer-vt <filename>"
exit /b 2

:end
endlocal
