CD /D %~dp0

IF EXIST d:\bak (
  robocopy /MIR doc d:\bak\doc
)

exit

IF EXIST e:\bak (
  robocopy /MIR doc e:\bak\doc
)

IF EXIST w:\bak (
  robocopy /MIR doc w:\bak\doc
)
