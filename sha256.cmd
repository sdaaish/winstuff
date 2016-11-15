@echo off

:: Alias for sha256 with gpg
:: 20161115/SDAA
gpg --with-colons --print-md SHA256 %1
