if not exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
    mkdir "C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
)

if exist "cobol/basic_program.gnt" (
    echo "Found cobol/basic_program.gnt"
    if exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
        echo "Found C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
        copy /Y "cobol/basic_program.gnt" "C:/Users/bnewman/Documents/Dev/TasksCICD/builds/basic_program.gnt"
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