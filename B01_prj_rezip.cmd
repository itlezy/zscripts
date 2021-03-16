CD /D %USERPROFILE%\my

SET PRJ_DRV=r:

DEL /F /Q YY_prj_*.rar

IF NOT EXIST %PRJ_DRV%\prj (
    ECHO %PRJ_DRV% PRJ NOT MOUNTED, PLEASE MOUNT
    PAUSE
)

IF NOT EXIST %PRJ_DRV%\prj (
    ECHO %PRJ_DRV% PRJ NOT MOUNTED, PLEASE MOUNT
    EXIT
)

rar a -m5 -hp%PAZZWD_PRJ% -ma5 -r -rr10 -md1G -s -inul -ag_YYYY-MM-DD YY_prj.rar c:\prj %PRJ_DRV%\prj

DEL /F /Q gdrive\bak\YY_prj_*.rar
COPY /B /V /Y YY_prj_*.rar gdrive\bak\

IF EXIST d:\bak (
    DEL /F /Q d:\bak\YY_prj_*.rar
    COPY /B /V /Y YY_prj_*.rar d:\bak\
)

IF EXIST o:\bak (
    DEL /F /Q o:\bak\YY_prj_*.rar
    COPY /B /V /Y YY_prj_*.rar o:\bak\
)

IF EXIST w:\bak (
    DEL /F /Q w:\bak\YY_prj_*.rar
    COPY /B /V /Y YY_prj_*.rar w:\bak\
)

DEL /F /Q YY_prj_*.rar

EXIT
