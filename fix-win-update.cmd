@echo off

:: Tries to reset a non working Windows Upate on Win10
:: From https://support.microsoft.com/sv-se/help/971058/how-do-i-reset-windows-update-components

:: Stop services
net stop bits
net stop wuauserv
net stop appidsvc
net stop cryptsvc
pause

:: Delete all qmgr*.dat-files
del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat"
pause

:: Do this only if the rest dont work
:: ren %systemroot%\SoftwareDistribution SoftwareDistribution.bak
::ren %systemroot%\system32\catroot2 catroot2.bak
::sc sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)
::sc sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)

cd /d %windir%\system32
::Reregister BITS-files and Winodws Update-files
regsvr32 atl.dll
regsvr32 urlmon.dll
regsvr32 mshtml.dll
regsvr32 shdocvw.dll
regsvr32 browseui.dll
regsvr32 jscript.dll
regsvr32 vbscript.dll
regsvr32 scrrun.dll
regsvr32 msxml.dll
regsvr32 msxml3.dll
regsvr32 msxml6.dll
regsvr32 actxprxy.dll
regsvr32 softpub.dll
regsvr32 wintrust.dll
regsvr32 dssenh.dll
regsvr32 rsaenh.dll
regsvr32 gpkcsp.dll
regsvr32 sccbase.dll
regsvr32 slbcsp.dll
regsvr32 cryptdlg.dll
regsvr32 oleaut32.dll
regsvr32 ole32.dll
regsvr32 shell32.dll
regsvr32 initpki.dll
regsvr32 wuapi.dll
regsvr32 wuaueng.dll
regsvr32 wuaueng1.dll
regsvr32 wucltui.dll
regsvr32 wups.dll
regsvr32 wups2.dll
regsvr32 wuweb.dll
regsvr32 qmgr.dll
regsvr32 qmgrprxy.dll
regsvr32 wucltux.dll
regsvr32 muweb.dll
regsvr32 wuwebv.dll
pause

:: restore windows Winsock and Proxy settings
netsh winsock reset
netsh winhttp reset proxy
pause

:: Start BITS-service and Windows Update Cryptographic service
net start bits
net start wuauserv
net start appidsvc
net start cryptsvc

echo "You need to reboot!"
