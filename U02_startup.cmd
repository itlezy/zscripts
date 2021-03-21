CD /D %~dp0

REM START lockpc.cmd

POWERCFG /H off

START c:\bin\vcautomount.cmd

CALL U20_syncstartmenu.cmd

SLEEP 1
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 2" 

SLEEP 3
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 1"

EXIT
