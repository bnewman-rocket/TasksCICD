echo off
findstr /C:"Hello, World!" output.txt
if errorlevel 1 (
    echo TEST FAILED: Expected output was not found.
    exit /b 1
) else (
    echo TEST PASSED: Expected output was found.
)