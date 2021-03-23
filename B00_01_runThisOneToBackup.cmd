CD /D %~dp0

CALL B00_secret_SET_PASSWD.cmd

START B01_doc_rezip.cmd
START B30_mirr_doc.cmd
START B01_prj_rezip.cmd

IF EXIST r: (
	START B01_prj_gbest_rezip.cmd
)

START "" "%ProgramFiles%\Google\Drive\googledrivesync.exe"

IF EXIST "%LOCALAPPDATA%\Tresorit\v0.8\Tresorit.exe" (
	START "" "%LOCALAPPDATA%\Tresorit\v0.8\Tresorit.exe"
)

EXIT
