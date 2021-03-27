CD /D %~dp0

REM START lockpc.cmd

POWERCFG /H off

START %G_BIN%\vcautomount.cmd

CALL U20_syncstartmenu.cmd

REM MAIN
SLEEP 5
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --disable-smooth-scrolling --start-maximized --profile-directory="Profile 2" 

REM PLUS
SLEEP 3
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --disable-smooth-scrolling --start-maximized --profile-directory="Profile 1"

REM WORK PROFILE
SLEEP 3
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --disable-smooth-scrolling --start-maximized --profile-directory="Profile 6"

REM START A02_qbittorent.cmd

EXIT
