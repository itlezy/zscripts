@ECHO OFF

CD /D %~dp0

ECHO LOGOFF.. PRESS CTRL+Q TO CANCEL
SLEEP 5

CALL preshutdown.cmd

C:\bin\poweroff_scheduler.exe logoff -force
