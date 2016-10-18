@echo off

:: Runs through all the terminalcolors
:: 20160928/SDAA

for %%b in (0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f) do call :sub_color %%b

goto eof


:sub_color
setlocal
for %%f in (0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f) do call :sub_foreground %1 %%f
endlocal
exit /b

:sub_foreground
setlocal
:: %1 is backgroudn, %2 is foreground
color %1%2
echo abcdefghi background=%1 foreground=%2
endlocal
exit /b

:eof
