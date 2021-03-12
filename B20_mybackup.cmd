SET BKDST=w:\bak
SET BKDSTA=o:\bak

SET RAR="%ProgramFiles%\WinRAR\rar.exe"

IF NOT EXIST %BKDST% MKDIR %BKDST%
IF NOT EXIST %BKDSTA% MKDIR %BKDSTA%

CD /D %BKDST%

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
  %RAR% a -m1 -ma5 -r -md1G -inul %FBB%.rar "%~2"
  COPY /B /V /Y %FBB%.rar %BKDSTA%\%FBB%.rar
  IF EXIST %FBB%.bak DEL /F /Q %FBB%.bak
GOTO:EOF
