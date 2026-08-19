echo off

if not exist output.txt ( echo ### output.txt does not exist ### && exit /b 1 )

call "tests\test_for_string.bat" "Hello"
if errorlevel 1 ( echo --- output.txt --- && type "output.txt" && exit /b 1 )

call "tests\test_for_string.bat" "Hello, World!"
if errorlevel 1 ( echo --- output.txt --- && type "output.txt" && exit /b 1 )