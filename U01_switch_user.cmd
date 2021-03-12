CD /D %~dp0

@ECHO SWITCH USER.. PRESS CTRL+Q TO CANCEL
SLEEP 5

CALL preshutdown.cmd

tsdiscon
