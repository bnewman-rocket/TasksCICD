echo off
@REM findstr /C:"Hello, World!" output.txt
findstr /C:"%~1" output.txt
if errorlevel 1 (
    echo TEST FAILED: Expected output was not found.
    exit /b 1
) else (
    echo TEST PASSED: Expected output was found.
)