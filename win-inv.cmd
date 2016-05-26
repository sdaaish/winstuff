@echo off
REM Program that lists installed software
set OUTFILE=%TEMP%\outputfile.txt

echo "=== Program Files ==="  >> %OUTFILE% 2>nul
dir /b "c:\program files" >> %OUTFILE% 2>nul

echo "=== Program Files (X86) ==="  >> %OUTFILE% 2>nul
dir /b "c:\program files (x86)" >> %OUTFILE% 2>nul

echo "=== ProgramData ==="  >> %OUTFILE% 2>nul
dir /b "c:\programdata" >> %OUTFILE% 2>nul

echo "=== C-disk ==="  >> %OUTFILE% 2>nul
dir /b "c:\" >> %OUTFILE% 2>nul

echo "=== Appdata Roaming ==="  >> %OUTFILE% 2>nul
dir /b "%APPDATA%" >> %OUTFILE% 2>nul

echo "=== Appdata Local ==="  >> %OUTFILE% 2>nul
dir /b "%LOCALAPPDATA%" >> %OUTFILE% 2>nul

echo "Output in %OUTFILE%"
