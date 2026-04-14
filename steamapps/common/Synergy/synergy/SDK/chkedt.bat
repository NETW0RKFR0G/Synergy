@echo off

set title=Check MapEdit File
set local=..\maps

echo.
echo %title%
echo.
echo Type in the name of your level, without any path or extension.
echo This script searches the %local% directory
echo.

set /P map="Level Name:  "
set pathmap=%local%\%map%.edt

chkedt.exe "%pathmap%"

echo.

if %ERRORLEVEL% LSS 0 (
	echo Result: could not find "%pathmap%"
) else if %ERRORLEVEL% GTR 0 (
	echo Result: %ERRORLEVEL% problems found.
) else (
	echo Result: no problems found.
)

echo.
pause