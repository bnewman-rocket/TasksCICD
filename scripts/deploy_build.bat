if not exist "C:/Users/bnewman/Documents/Dev/TasksCICD/builds" (
    mkdir "C:/Users/bnewman/Documents/Dev/TasksCICD/builds"
)

if exist "cobol/basic_program.gnt" (
    echo "Found cobol/basic_program.gnt"
    if exist "builds" (
        copy "cobol/basic_program.gnt" "builds"
    ) else (exit /b 1)
) else (exit /b 1)