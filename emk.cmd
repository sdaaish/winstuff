@echo off

:: Alias for killing emacs daemon.
:: 2017-04-06/SDAA
emacsclient --quiet --eval "(save-buffers-kill-emacs)"
