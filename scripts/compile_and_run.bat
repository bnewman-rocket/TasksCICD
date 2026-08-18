@echo off
call "C:\\Program Files (x86)\\Rocket Software\\Visual COBOL\\SetupEnv.bat"
if errorlevel 1 exit /b %errorlevel%
cobol "cobol/basic_program.cbl" gnt;

if errorlevel 1 (
    echo --- Compilation failed ---
    exit /b 1
)
echo --- Compilation successful ---

echo --- Running 'cobol/basic_program.gnt' ---
run "cobol/basic_program.gnt"
if errorlevel 1 exit /b %errorlevel%