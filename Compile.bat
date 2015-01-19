@echo off

rem %1 is project to compile

rem Remove "rem" from lines below to show all parameters when bat file launches
rem echo Parameters: "%*"
rem echo 1: %1 2: %2 3: %3 4: %4 5: %5 6: %6

rem Setting GUI elements and going to the project directory
color 0A
title Compiling %~1...
cd ..\%~1

echo Starting MSBuild compile for %~1...
rem Run the MSBuild command
"%ProgramFiles%\MSBuild\12.0\bin\msbuild.exe" /property:Configuration=Release "%~1.sln"
echo.

rem If it doesn't fail, go to next step
if Not ERRORLEVEL==1 goto nsis

echo MSBuild command failed, trying again in 32-bit program files folder...
"%ProgramFiles(x86)%\MSBuild\12.0\bin\msbuild.exe" /property:Configuration=Release "%~1.sln"
echo.

if Not ERRORLEVEL==1 goto nsis

echo MSBuild-32 command failed, trying again in 64-bit program files folder...
"%ProgramW6432%\MSBuild\12.0\bin\msbuild.exe" /property:Configuration=Release "%~1.sln"
echo.

if Not ERRORLEVEL==1 goto nsis

color 0C
echo MSBuild Commands Failed!
pause
goto eof

:nsis

echo Starting MakeNSIS Installer script for %~1...
rem Run the MakeNSIS command
"%ProgramFiles%\NSIS\makensis.exe" "NSIS Installer for %~1.nsi"
echo.

rem If it doesn't fail, go to next step
if Not ERRORLEVEL==1 goto rarCheck

echo MakeNSIS command failed, trying again in 32-bit program files folder...
"%ProgramFiles(x86)%\NSIS\makensis.exe" "NSIS Installer for %~1.nsi"
echo.

if Not ERRORLEVEL==1 goto rarCheck

echo MakeNSIS-32 command failed, trying again in 64-bit program files folder...
"%ProgramW6432%\NSIS\makensis.exe" "NSIS Installer for %~1.nsi"
echo.

if Not ERRORLEVEL==1 goto rarCheck

color 0C
echo MakeNSIS Commands Failed!
echo Press enter to start installer...
pause
color 0A
%~dp0NSIS-2.46-setup.exe
echo Installer launched, press enter to retry MakeNSIS commands...
pause
goto nsis

:rarCheck

rem Check if project must be rared...
if %~1==GitUpdater goto rar
if %~1==BasicBrowserGecko goto rar

del "bin\Release\%1-Portable.exe"
ren "bin\Release\%1.exe" %1-Portable.exe
goto openOutputDir

:rar
%~dp0RAR-%~1.bat

:openOutputDir
echo launching Explorer...
explorer.exe "bin\Release"
timeout /t 1