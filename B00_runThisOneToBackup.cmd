CD /D %~dp0

CALL B00_secret_SET_PASSWD.cmd

START B01_doc_rezip.cmd
START B01_prj_rezip.cmd

IF EXIST r: (
	START B01_prj_gbest_rezip.cmd
)

REM START "" "%ProgramFiles%\Google\Drive\googledrivesync.exe"

EXIT
