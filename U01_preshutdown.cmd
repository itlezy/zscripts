CD /D %~dp0

CALL U02_startup_env.cmd

%G_BIN%\EmptyRecycleBin.exe /Q

TASKKILL /IM qbittorrent.exe
TASKKILL /IM uTorrent.exe

SLEEP 4

TSKILL qbittorrent
TSKILL uTorrent

SLEEP 4

"%G_BIN_SYSIN%\sync.exe"

"%ProgramFiles%\VeraCrypt\VeraCrypt.exe" /dismount /force /silent /quit
