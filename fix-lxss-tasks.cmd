@echo off
:: Fix for disfunct LXSS update
:: From https://github.com/Microsoft/BashOnWindows/issues/841 
schtasks.exe /Delete /TN "\Microsoft\Windows\Windows Subsystem for Linux\AptPackageIndexUpdate" /F
