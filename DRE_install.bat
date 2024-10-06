@echo off
SET DamewareAgentPFAD=Dameware Remote Everywhere Agent\BASupSrvcCnfg.exe

:: EXE-Abfrage
IF NOT EXIST "C:\Program Files (x86)\%DamewareAgentPFAD%" GOTO WEITER
exit /b 0

:: Ordner-Abfrage
:WEITER
IF NOT EXIST "C:\Program Files (x86)\Dameware Remote Everywhere Agent" GOTO INSTALL

msiexec /uninstall \\yourdomain\NETLOGON\DRE_Agent\DamewareAgent.msi /qn
rmdir /s /q  "C:\Program Files (x86)\Dameware Remote Everywhere Agent"


:INSTALL
msiexec /i \\yourdomain\NETLOGON\DRE_Agent\DamewareAgent.msi /qn
