CD /D %~dp0

REM START lockpc.cmd

START /MIN "" %G_BIN%\vcautomount.cmd

%G_BIN%\focusuf\focusuf.exe -fm -f 1 -n "life"

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
