@echo on
echo git_action being called here
git add .
if errorlevel 1 exit /b %errorlevel%
git commit -m "%~1"
if errorlevel 1 exit /b %errorlevel%
git push