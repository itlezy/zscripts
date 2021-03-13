CD /D %USERPROFILE%\my

DEL /F /Q YY_doc_*.rar











rar a -m5 -hp%PAZZWD% -ma5 -r -rr10 -md1G -s -inul -ag_YYYY-MM-DD YY_doc.rar doc

DEL /F /Q gdrive\bak\YY_doc_*.rar
COPY /B /V /Y YY_doc_*.rar gdrive\bak\

IF EXIST d:\bak (    
    DEL /F /Q d:\bak\YY_doc_*.rar
    COPY /B /V /Y YY_doc_*.rar d:\bak\
)

IF EXIST o:\bak (    
    DEL /F /Q o:\bak\YY_doc_*.rar
    COPY /B /V /Y YY_doc_*.rar o:\bak\
)

IF EXIST w:\bak (    
    DEL /F /Q w:\bak\YY_doc_*.rar
    COPY /B /V /Y YY_doc_*.rar w:\bak\
)

DEL /F /Q YY_doc_*.rar

EXIT
