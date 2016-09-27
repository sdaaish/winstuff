@echo off

:: Starts ssh-tunnel to rtr
:: 20160926/SDAA

:: Add hosts to ~/.ssh/config
ssh -A -t rasp1 ssh -A rtr

