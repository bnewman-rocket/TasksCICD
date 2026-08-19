findstr /C:"%~1" output.txt >nul
if errorlevel 1 (
    echo TEST FAILED: "%~1" was not found.
    exit /b 1
) else (
    echo TEST PASSED: "%~1" was found.
)