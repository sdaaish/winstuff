# OpenHere.ps1
# Write registry keys to add a 'PowerShell Here' option to the Windows Explorer right click menu.
   
# Create (or overwrite) the key and populate the value to appear in the menu.
# From http://ss64.com/ps/syntax-openhere.html

$pspath = "$PSHome\powershell.exe -Noexit -Nologo"
New-Item HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere -force 
Set-Item HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere "PowerShell Here"
New-item HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere\command -force
Set-item HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere\command "$pspath -Command Set-Location '%L'"
