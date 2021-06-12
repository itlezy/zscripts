CD /D %~dp0

CALL U02_startup_chrome_clean.cmd

POWERCFG /H off

REM CALL U02_startup_env.cmd

START /MIN "" "%ComSpec%" /C U20_syncstartmenu.cmd

CD /D "%USERPROFILE%"
START /MIN /ABOVENORMAL "" "%PROGRAMFILES%\Process Hacker 2\ProcessHacker.exe"
SLEEP 3
START /MAX /ABOVENORMAL "" "%G_BIN_TCMD%\TOTALCMD64.EXE"
REM START /MAX /ABOVENORMAL "" "%PROGRAMFILES%\Double Commander\doublecmd.exe"

SLEEP 5

CD /D %~dp0
START /MIN "" U02_startup_AHK.cmd

EXIT
