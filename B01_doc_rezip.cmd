CD /D %USERPROFILE%\my

SET BKSETNAME=doc

DEL /F /Q YY_%BKSETNAME%_*.rar

rar a -m5 -hp%PAZZWD_DOC% -v500000k -mt1 -ma5 -r -rr10 -md1G -s -inul -ag_YYYY-MM-DD YY_%BKSETNAME%.rar %BKSETNAME%

CALL:DOBKP %USERPROFILE%\my\gdrive 
CALL:DOBKP d: 
CALL:DOBKP o:
CALL:DOBKP w:

DEL /F /Q YY_%BKSETNAME%_*.rar

CD /D %~dp0
START B30_mirr_doc.cmd

EXIT

GOTO:EOF

:DOBKP
SET TGTZ=%~1

	IF NOT EXIST %TGTZ%\bak (
	  MKDIR %TGTZ%\bak
	)

	IF EXIST %TGTZ%\bak (
		DEL /F /Q %TGTZ%\bak\YY_%BKSETNAME%_*.rar
		COPY /B /V /Y YY_%BKSETNAME%_*.rar %TGTZ%\bak\
	)
GOTO:EOF

EXIT
