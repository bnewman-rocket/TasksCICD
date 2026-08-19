echo off

@REM call "tests\test_for_string.bat" "This should fail"
@REM if errorlevel 1 (exit /b 1)

call "tests\test_for_string.bat" "Hello, World!"
if errorlevel 1 ( exit /b 1 )