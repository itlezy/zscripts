@ECHO OFF

CD /D %USERPROFILE%\my\gdrive\bak

SET BKSETNAME=doc

DEL /F /Q YY_%BKSETNAME%_*.rar

ECHO %CD% %BKSETNAME% COMPRESSING..
rar a -m5 -hp%PAZZWD_DOC% -v500000k -mt2 -ma5 -r -rr10 -md1G -s -inul -ag_YYYY-MM-DD YY_%BKSETNAME%.rar %USERPROFILE%\my\%BKSETNAME%

COPY /B /V /Y %USERPROFILE%\my\doc\security\DatabaseNewIreland.kdbx %USERPROFILE%\my\gdrive\bak

(FOR %%C IN (%ALL_DRIVES_NOC%) DO (
	CALL:DOBKP %%C
))



EXIT

GOTO:EOF

:DOBKP
	SET TGTZ=%~1

	IF NOT EXIST %TGTZ%:\meta\bak.%BKSETNAME%.dat (
		ECHO NOT A BACKUP TARGET %TGTZ% SKIPPING..
		EXIT /B
	)

	TITLE COPYING BACKUP SET FROM YY_%BKSETNAME%_*.rar TO %TGTZ%:\bak\

	IF NOT EXIST %TGTZ%:\bak (
		MKDIR %TGTZ%:\bak
	)

	IF EXIST %TGTZ%:\bak (
		DEL /F /Q %TGTZ%:\bak\YY_%BKSETNAME%_*.rar
		COPY /B /V /Y YY_%BKSETNAME%_*.rar %TGTZ%:\bak\
		COPY /B /V /Y %USERPROFILE%\my\doc\security\DatabaseNewIreland.kdbx %TGTZ%:\bak\
	)
GOTO:EOF

EXIT
