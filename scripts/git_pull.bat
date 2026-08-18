@echo on
git pull
if errorlevel 1 exit /b %errorlevel%