@ECHO OFF

CD /D %~dp0

CALL U02_startup_env.cmd

SET RAR="%ProgramFiles%\WinRAR\rar.exe"
SET BKDSTA=%BAK_SRC_DRV%:\bak_mir\backup-current

IF NOT EXIST %BKDSTA% MKDIR %BKDSTA%

IF NOT EXIST %BKDSTA% (
	ECHO TARGET IS MISSING %BKDSTA%
	EXIT
)

CD /D %BKDSTA%

CALL:DOBACKUP my,"%USERPROFILE%\my"
CALL:DOBACKUP Documents,"%USERPROFILE%\Documents"
CALL:DOBACKUP Downloads,"%USERPROFILE%\Downloads"
CALL:DOBACKUP prj,"c:\prj"
CALL:DOBACKUP bin,"c:\bin"

GOTO:EOF

:DOBACKUP
  SET FBB=ZZ_FullBackup_%~1
  ECHO Backing up to %FBB% from %~2
  
  IF EXIST %FBB%.bak DEL /F /Q %FBB%.bak
  IF EXIST %FBB%.rar RENAME %FBB%.rar %FBB%.bak
  REM %RAR% a -inul -m0 %FBB%.rar "%~2"
  REM %RAR% a -m0 -ma5 -r -x*.ova -x*.vmem -x*.vmdk %FBB%.rar "%~2" > mybackup_output.msg 2>> mybackup_output.err
  %RAR% a -m1 -mt1 -ma5 -r -md1G -inul %FBB%.rar "%~2"
  REM COPY /B /V /Y %FBB%.rar %BKDSTA%\%FBB%.rar
  IF EXIST %FBB%.bak DEL /F /Q %FBB%.bak
GOTO:EOF
