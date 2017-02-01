@echo off

:: Exports default apps to file and then imports them again.
:: TBD
:: 2017-01-31/SDAA
:: From https://www.tenforums.com/tutorials/8744-default-app-associations-export-import-new-users-windows.html

dism /online /Export-DefaultAppAssociations:"%UserProfile%\Desktop\MyDefaultAppAssociations.xml"
:: dism /online /Import-DefaultAppAssociations:"%UserProfile%\Desktop\MyDefaultAppAssociations.xml"
