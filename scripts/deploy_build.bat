if not exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
    mkdir "C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
)

if exist "cobol/basic_program.gnt" (
    echo "Found cobol/basic_program.gnt"
    if exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
        echo "Found C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
        @REM copy "cobol/basic_program.gnt" "C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
    ) else (exit /b 1)
) else (exit /b 1)