@echo off

:: Adds domain  user to local Administrator
:: 2017-01-31/SDAA
:: Swedish version

net localgroup 
net localgroup administratörer
net localgroup administratörer /add int\sdaa

:: ($env:USERNAME).split("_")
:: Get-LocalGroupMember -Group Administratörer
:: Add-LocalGroupMember -Group Administratörer -Member INT\SDAA
