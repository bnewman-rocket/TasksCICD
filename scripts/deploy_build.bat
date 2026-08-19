if not exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
    mkdir "C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
)

if exist "cobol/basic_program.gnt" (
    @REM copy "cobol/basic_program.gnt" "builds"
    echo "Found cobol/basic_program.gnt"
) else (exit /b 1)