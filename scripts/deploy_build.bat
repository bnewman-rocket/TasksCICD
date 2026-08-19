if not exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
    mkdir "C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
)

if exist "cobol/basic_program.gnt" (
    echo "Found cobol/basic_program.gnt"
    if exist "builds" (
        @REM copy "cobol/basic_program.gnt" "builds"
        echo "Found builds"
    ) else (exit /b 1)
) else (exit /b 1)