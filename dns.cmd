@echo off
rem Checks the DNS-server address for the client
rem 2016-06-03/sdaa
Powershell Get-DnsClientServerAddress -Family IPv4
Powershell Get-DnsClientServerAddress -Family IPv6

