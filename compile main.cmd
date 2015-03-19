@echo off
@setlocal enableextensions
@cd /d "%~dp0"
rem necessary to start in this directory also with "run as administrator" option

set output_dir=bin
set jar_file=it.pinky.hadoop.spikes.jar

rem if exists bin goto _del
IF not EXIST %output_dir% mkdir %output_dir%
if EXIST %output_dir%\%jar_file% del %output_dir%\%jar_file%

rem @echo on
rem create a JAR archive
call scalac *.scala -d %output_dir%\%jar_file%
:ok
echo JAR created: "%output_dir%\%jar_file%"

echo. 
pause
exit

