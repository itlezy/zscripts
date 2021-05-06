REM MAIN
SLEEP 5
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" %G_CHROME_CMDLINE_OPT% --profile-directory="%G_CHROME_PROF_USRS%"

REM PLUS
SLEEP 3
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" %G_CHROME_CMDLINE_OPT% --profile-directory="%G_CHROME_PROF_UMSC%"

REM WORK PROFILE
SLEEP 3
START "" /MAX /ABOVENORMAL "%ProgramFiles%\Google\Chrome\Application\chrome.exe" %G_CHROME_CMDLINE_OPT% --profile-directory="%G_CHROME_PROF_UWRK%"
