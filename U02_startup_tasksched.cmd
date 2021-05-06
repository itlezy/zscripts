CD /D %~dp0

POWERCFG /H off

REM CALL U02_startup_env.cmd

START /MIN "" "%ComSpec%" /C U20_syncstartmenu.cmd

TASKKILL /T /F /IM software_reporter_tool.exe
TASKKILL /T /F /IM GoogleCrashHandler.exe
TASKKILL /T /F /IM GoogleCrashHandler64.exe

CD /D "%TEMP%"
"%G_PRJ%\net\IetyTools\target\RecuDelete.exe" -r -q -i "%LOCALAPPDATA%\Google"      -s software_reporter_tool.exe
"%G_PRJ%\net\IetyTools\target\RecuDelete.exe" -r -q -i "%PROGRAMFILES(X86)%\Google" -s GoogleCrashHandler*.exe

CD /D "%USERPROFILE%"
START /MIN /ABOVENORMAL "" "%PROGRAMFILES%\Process Hacker 2\ProcessHacker.exe"
SLEEP 3
START /MAX /ABOVENORMAL "" "%G_BIN_TCMD%\TOTALCMD64.EXE"
REM START /MAX /ABOVENORMAL "" "%PROGRAMFILES%\Double Commander\doublecmd.exe"

SLEEP 5

CD /D %~dp0
START /MIN "" U02_startup_AHK.cmd

EXIT
