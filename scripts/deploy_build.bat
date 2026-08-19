echo off

if "%BUILD_NUMBER%"=="" (
    set "BUILD_NUMBER=local"
)

set "DEPLOY_DIR=C:\Users\bnewman\Documents\Dev\TasksCICD\builds\%BUILD_NUMBER%"
set "BUILD_FILE=cobol\basic_program.gnt"

if not exist "%DEPLOY_DIR%" (
    mkdir "%DEPLOY_DIR%"
)

if exist "%BUILD_FILE%" (
    if exist "%DEPLOY_DIR%" (
        @REM copy /Y "%BUILD_FILE%" "%DEPLOY_DIR%"
        copy /Y "output.txt" "%DEPLOY_DIR%\output.txt"
        xcopy /E /I /Y "cobol" "%DEPLOY_DIR%"
    ) else ( exit /b 1 )
) else ( exit /b 1 )