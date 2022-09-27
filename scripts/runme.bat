@echo off

IF "%NIMBLEBIN%"==""
  for /f "delims=" %%a in ('.\choosenim\choosenim.exe --getNimbleBin') do @set NIMBLEBIN=%%a

.\choosenim\choosenim.exe stable --nimbleDir=%NIMBLEBIN% --firstInstall

copy .\choosenim\choosenim.exe "%NIMBLEBIN%\choosenim.exe"

echo             Work finished.
echo             Now you must ensure that the Nimble bin dir is in your PATH:
echo               %NIMBLEBIN%

pause