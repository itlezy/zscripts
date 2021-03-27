@ECHO OFF

CD /D %~dp0

CALL B00_secret_SET_PASSWD.cmd

START B01_doc_rezip.cmd
START B30_doc_mir.cmd
START B01_prj_rezip.cmd

IF EXIST r: (
	START B01_prj_gbest_rezip.cmd
)

EXIT

REM START "" "%ProgramFiles%\Google\Drive\googledrivesync.exe"
REM 
REM IF EXIST "%LOCALAPPDATA%\Tresorit\v0.8\Tresorit.exe" (
REM 	START "" "%LOCALAPPDATA%\Tresorit\v0.8\Tresorit.exe"
REM )

EXIT
