@echo off
:: ### Steps to remove Adobe Flash from Windows 10 ###
:: Probably works as is, but this script is not tested.
:: Run this script as Administrator, at our own risk.

:: Initially you have to download Adobe Flash Uninstaller and run that.
:: https://fpdownload.macromedia.com/get/flashplayer/current/support/uninstall_flash_player.exe

:: 2016-12-02/SDAA

:: Stuff is located in 2 places, System32 and SysWOW64
:: System32
cd C:\Windows\System32\Macromed\Flash
takeown /f *
icacls * /grant %USERDOMAIN%\%USERNAME%:F
echo "Removes files.."
del /q *
cd C:\Windows\System32
rmdir /s /q Macromed

:: SysWOW64
cd C:\Windows\SysWOW64\Macromed\Flash
takeown /f *
icacls * /grant %USERDOMAIN%\%USERNAME%:F
echo "Remove files..."
del /q *
cd C:\Windows\SysWOW64
rmdir /s /q Macromed

:: Delete control panel app
cd C:\Windows\SysWOW64
del /q FlashPlayerApp.exe
del /q FlashPlayerCPLApp.cpl

:: Remove stuff from home
cd %AppData%
echo "remove Flash from %AppData%"
rmdir /s /q "Flash Player"
rmdir /s /q Macromedia
cd %LocalAppData%
rmdir /s /q Macromedia

:: List whats left of Adbobe-stuff
cd C:\Windows
echo "List all remaining flash-files"
dir /s *flash*
dir /s *macromed*

echo "Removed macromedia flash files almost completely...."
pause
