echo off
cls

call "C:\\Program Files (x86)\\Rocket Software\\Visual COBOL\\SetupEnv.bat"
if errorlevel 1 exit /b %errorlevel%

cd "cobol"

cobol "basic_program.cbl" gnt;

if errorlevel 1 (
    echo --- Compilation failed ---
    exit /b 1
) else (
    echo --- Compilation successful ---
)

echo --- Running 'basic_program.gnt' ---
run "basic_program.gnt"
if errorlevel 1 exit /b %errorlevel%