CD /D %~dp0

TASKKILL /T /F /IM software_reporter_tool.exe
TASKKILL /T /F /IM GoogleCrashHandler.exe
TASKKILL /T /F /IM GoogleCrashHandler64.exe

c:\prj\net\IetyTools\target\RecuDelete.exe -r -q -i "%LOCALAPPDATA%\Google"      -s software_reporter_tool.exe
c:\prj\net\IetyTools\target\RecuDelete.exe -r -q -i "%PROGRAMFILES(X86)%\Google" -s GoogleCrashHandler*.exe

START      /ABOVENORMAL "" "%PROGRAMFILES%\Process Hacker 2\ProcessHacker.exe"
START /MAX /ABOVENORMAL "" "c:\bin\totalcmd\TOTALCMD64.EXE"
REM START /MAX /ABOVENORMAL "" "%PROGRAMFILES%\Double Commander\doublecmd.exe"

SLEEP 5
START AHK10_Automation-loc.ahk
START AHK10_Automation-secret.ahk

EXIT
