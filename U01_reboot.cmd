@ECHO OFF

COLOR 03

CD /D %~dp0

ECHO '
ECHO '
ECHO ########  ######## ########   #######   #######  ######## #### ##    ##  ######   
ECHO ##     ## ##       ##     ## ##     ## ##     ##    ##     ##  ###   ## ##    ##  
ECHO ##     ## ##       ##     ## ##     ## ##     ##    ##     ##  ####  ## ##        
ECHO ########  ######   ########  ##     ## ##     ##    ##     ##  ## ## ## ##   #### 
ECHO ##   ##   ##       ##     ## ##     ## ##     ##    ##     ##  ##  #### ##    ##  
ECHO ##    ##  ##       ##     ## ##     ## ##     ##    ##     ##  ##   ### ##    ##  
ECHO ##     ## ######## ########   #######   #######     ##    #### ##    ##  ######   
ECHO '
ECHO '
ECHO REBOOTING.. PRESS CTRL+Q TO CANCEL
ECHO '
ECHO '

SLEEP 5

CALL preshutdown.cmd

c:\bin\poweroff_scheduler.exe reboot -force
