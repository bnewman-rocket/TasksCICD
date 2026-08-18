@echo on
call "C:\\Program Files (x86)\\Rocket Software\\Visual COBOL\\SetupEnv.bat"
if errorlevel 1 exit /b %errorlevel%
cobol "cobol/basic_program.cbl" gnt;
if errorlevel 1 exit /b %errorlevel%
run "cobol/basic_program.gnt"
if errorlevel 1 exit /b %errorlevel%