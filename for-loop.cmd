@echo off
rem examplefile for loops
for /l %%s in (1,1,10) do echo %%s

@echo off
set loopcount=5
:loop
echo Hello World %loopcount%!
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop
goto loop
:exitloop
pause
