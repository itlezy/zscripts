c:\bin\EmptyRecycleBin.exe /Q

taskkill /IM qbittorrent.exe
taskkill /IM uTorrent.exe

SLEEP 4

TSKILL qbittorrent
TSKILL uTorrent

SLEEP 4

c:\bin\sysin\sync.exe

"%ProgramFiles%\VeraCrypt\VeraCrypt.exe" /dismount /force /silent /quit
