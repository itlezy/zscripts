CD /D %~dp0

CALL U02_startup_env.cmd

ECHO Y | PowerShell.exe -NoProfile -Command Clear-RecycleBin

TASKKILL /IM qbittorrent.exe
TASKKILL /IM uTorrent.exe

SLEEP 4

TSKILL qbittorrent
TSKILL uTorrent

SLEEP 4

"%G_BIN_SYSIN%\sync.exe"

"%ProgramFiles%\VeraCrypt\VeraCrypt.exe" /dismount /force /silent /quit
