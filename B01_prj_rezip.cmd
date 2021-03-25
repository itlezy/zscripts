CD /D %USERPROFILE%\my\gdrive\bak

SET BKSETNAME=prj

DEL /F /Q YY_%BKSETNAME%_*.rar

rar a -m5 -hp%PAZZWD_PRJ% -v500000k -mt2 -ma5 -r -rr10 -md1G -s -inul -ag_YYYY-MM-DD YY_%BKSETNAME%.rar c:\%BKSETNAME%




(FOR %%C IN (%BAK_RARWPASS_DST_DRV%) DO (
	CALL:DOBKP %%C
))

CALL:DOBKP %BAK_SRC_DRV%


EXIT

GOTO:EOF

:DOBKP
SET TGTZ=%~1

	IF NOT EXIST %TGTZ%:\bak (
		MKDIR %TGTZ%:\bak
	)

	IF EXIST %TGTZ%:\bak (
		DEL /F /Q %TGTZ%:\bak\YY_%BKSETNAME%_*.rar
		COPY /B /V /Y YY_%BKSETNAME%_*.rar %TGTZ%:\bak\
	)
GOTO:EOF

EXIT
