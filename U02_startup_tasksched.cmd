CD /D %~dp0

CALL U02_startup_env.cmd

TASKKILL /T /F /IM software_reporter_tool.exe
TASKKILL /T /F /IM GoogleCrashHandler.exe
TASKKILL /T /F /IM GoogleCrashHandler64.exe

"%G_PRJ%\net\IetyTools\target\RecuDelete.exe" -r -q -i "%LOCALAPPDATA%\Google"      -s software_reporter_tool.exe
"%G_PRJ%\net\IetyTools\target\RecuDelete.exe" -r -q -i "%PROGRAMFILES(X86)%\Google" -s GoogleCrashHandler*.exe

START /MIN /ABOVENORMAL "" "%PROGRAMFILES%\Process Hacker 2\ProcessHacker.exe"
SLEEP 5
START /MAX /ABOVENORMAL "" "%G_BIN_TCMD%\TOTALCMD64.EXE"
REM START /MAX /ABOVENORMAL "" "%PROGRAMFILES%\Double Commander\doublecmd.exe"

SLEEP 5

START U02_startup_AHK.cmd

EXIT
