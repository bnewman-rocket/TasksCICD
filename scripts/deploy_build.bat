echo off

set "DEPLOY_DIR=C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
set "BUILD_FILE=basic_program.gnt"

if not exist "%DEPLOY_DIR%" (
    mkdir "%DEPLOY_DIR%"
)

if exist "%BUILD_FILE%" (
    echo "Found %BUILD_FILE%"
    if exist "%DEPLOY_DIR%" (
        echo "Found %DEPLOY_DIR%"
        @REM copy /Y "cobol/%BUILD_FILE%" "%DEPLOY_DIR%/%BUILD_FILE%"
    ) else (exit /b 1)
) else (exit /b 1)


@REM echo off

@REM if not exist "builds" (
@REM     mkdir "builds"
@REM )

@REM if exist "cobol\basic_program.gnt" (
@REM     echo "Found cobol\basic_program.gnt"
@REM     if exist "builds" (
@REM         echo "Found builds"
@REM         copy /Y "cobol\basic_program.gnt" "builds\basic_program.gnt"
@REM     ) else (exit /b 1)
@REM ) else (exit /b 1)