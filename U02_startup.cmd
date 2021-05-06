CD /D %~dp0

REM START lockpc.cmd

START /MIN "" %G_BIN%\vcautomount.cmd

START /MIN "" U02_startup_focus.cmd

CALL U02_startup_chrome.cmd

REM START A02_qbittorent.cmd

EXIT
