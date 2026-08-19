echo off

if "%BUILD_NUMBER%"=="" (
    set "BUILD_NUMBER=local"
)

set "DEPLOY_DIR=C:\Users\bnewman\Documents\Dev\TasksCICD\builds\%BUILD_NUMBER%"
set "BUILD_FILE=cobol\basic_program.gnt"
set "NEW_BUILD_FILE=%DEPLOY_DIR%\%BUILD_NUMBER%.gnt"

if not exist "%DEPLOY_DIR%" (
    mkdir "%DEPLOY_DIR%"
)

if exist "%BUILD_FILE%" (
    @REM echo "Found %BUILD_FILE%"
    if exist "%DEPLOY_DIR%" (
        @REM echo "Found %DEPLOY_DIR%"
        copy /Y "%BUILD_FILE%" "%NEW_BUILD_FILE%"
        copy /Y "output.txt" "%DEPLOY_DIR%\%BUILD_NUMBER%.txt"
    ) else (
        echo "Failed to find %DEPLOY_DIR%"
        exit /b 1
    )
) else (
    echo "Failed to find %BUILD_FILE%"
    exit /b 1
)