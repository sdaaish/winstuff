@echo off

:: Adds domain  user to local Administrator
:: 2017-01-31/SDAA
:: Swedish version

net localgroup 
net localgroup administrat�rer
net localgroup administrat�rer /add int\sdaa

:: ($env:USERNAME).split("_")
:: Get-LocalGroupMember -Group Administrat�rer
:: Add-LocalGroupMember -Group Administrat�rer -Member INT\SDAA
