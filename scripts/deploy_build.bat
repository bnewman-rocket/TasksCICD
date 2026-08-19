if not exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
    mkdir "C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
)

if exist "cobol/basic_program.gnt" (
    @REM echo "Found cobol/basic_program.gnt"
    if exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
        @REM echo "Found builds"
        copy "cobol/basic_program.gnt" "C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
    ) else (exit /b 1)
) else (exit /b 1)