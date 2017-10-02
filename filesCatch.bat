@ECHO OFF
REM SSP Testing Source_file
:LOOP    
IF NOT EXIST C:\LandingZone\source_file.xml  GOTO SKIP01
IF NOT EXIST C:\LandingZone\target_file.xml  GOTO SKIP01
REM Condition true look below
echo "Files Caught"
@echo off
start /min "" chrome.exe --incognito http://localhost:8080/Upload/Automation/BatchIDGen.jsp
GOTO THEEND
:SKIP01
REM 15secs delay
PING 1.1.1.1 -n 5 -w 2000 >NUL
GOTO LOOP
:THEEND
move C:\LandingZone\*.* C:\LandingZone\Processed
ping -n 6 1.1.1.1  
taskkill /F /IM chrome.exe /T
cls
GOTO LOOP

