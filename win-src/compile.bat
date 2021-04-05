@echo off
copy /Y ..\src\ecp.py .
copy /Y ..\src\lexer.py .
copy /Y ..\src\parse.py .
pyinstaller ^
 --icon=icon.ico ^
 --exclude tkinter ^
 --exclude multiprocessing ^
 --exclude unittest ^
 --exclude urllib ^
 ecp.py
xcopy /E /I /Y dist ..\executables
iscc ..\installers\compileiss.iss
pause