@ECHO OFF

FOR /F "tokens=1,2 delims=;" %%F IN (T03_fordelims.txt) DO (
	ECHO F = '%%F' G = '%%G'
)
