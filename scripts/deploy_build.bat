@REM if not exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
@REM     mkdir "C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
@REM )

@REM if exist "cobol/basic_program.gnt" (
@REM     echo "Found cobol/basic_program.gnt"
@REM     if exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
@REM         echo "Found C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
@REM         copy "cobol/basic_program.gnt" "C:/Users/bnewman/Documents/Dev/TasksCICD/builds/basic_program.gnt"
@REM     ) else (exit /b 1)
@REM ) else (exit /b 1)


echo off

if not exist "builds" (
    mkdir "builds"
)

if exist "cobol\basic_program.gnt" (
    echo "Found cobol\basic_program.gnt"
    if exist "builds" (
        echo "Found builds"
        copy /Y "cobol\basic_program.gnt" "builds\basic_program.gnt"
    ) else (exit /b 1)
) else (exit /b 1)