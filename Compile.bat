@echo off

rem Notepad++ is recommended to edit this file, or at least an IDE with syntax highlighting
rem %1 is project to compile

rem Remove "rem" from lines below to show all parameters when bat file launches
rem echo Parameters: "%*"
rem echo 1: %1 2: %2 3: %3 4: %4 5: %5 6: %6

rem Setting GUI elements and going to the project directory
    set defaultColor=0A
    color %defaultColor%
    title Compiling %~1...
    cd ..\%~1

:MSBuild
    echo ==== Starting MSBuild compile for %~1 ====
    "%WinDir%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe" /property:Configuration=Release "%~1.sln"

if Not ERRORLEVEL==1 goto PortableCert

    echo MSBuild command failed, trying again in v3.5...
    "%WinDir%\Microsoft.NET\Framework\v3.5\msbuild.exe" /property:Configuration=Release "%~1.sln"

if Not ERRORLEVEL==1 goto PortableCert

    echo MSBuild_v3.5 command failed, trying again in v3.0...
    "%WinDir%\Microsoft.NET\Framework\v3.0\msbuild.exe" /property:Configuration=Release "%~1.sln"

if Not ERRORLEVEL==1 goto PortableCert

    color 0C
    echo ==== MSBuild Commands Failed! ====
    echo.
        echo Press enter to start installer...
        pause
        color %defaultColor%
    %~dp0DotNetFramework4.6.exe
        echo Installer launched, press enter to retry MSBuild commands...
        pause
        echo.
        goto MSBuild

:PortableCert
    echo ==== MSBuild Done ====
    echo.
    echo ==== Signing %~1.exe ====
        echo %~dp0WalkmanOSS.cer
        echo %~dp0WalkmanOSS.pvk
        echo https://github.com/Walkman100/%~1
        echo http://timestamp.verisign.com/scripts/timstamp.dll
    %~dp0signtool signwizard "%~dp0..\%~1\bin\Release\%~1.exe"

if Not ERRORLEVEL==1 goto PortableCertDone

    echo ==== Signing %~1.exe Failed! ====
    echo.
        goto NSIS

:PortableCertDone
    echo ==== Signing %~1.exe done ====
    echo.

:NSIS
    echo ==== Starting MakeNSIS Installer script for %~1 ====
    "%ProgramFiles%\NSIS\makensis.exe" "NSIS Installer for %~1.nsi"

if Not ERRORLEVEL==1 goto InstallerCert

    echo MakeNSIS command failed, trying again in 32-bit program files folder...
    "%ProgramFiles(x86)%\NSIS\makensis.exe" "NSIS Installer for %~1.nsi"

if Not ERRORLEVEL==1 goto InstallerCert

    echo MakeNSIS-32 command failed, trying again in 64-bit program files folder...
    "%ProgramW6432%\NSIS\makensis.exe" "NSIS Installer for %~1.nsi"

if Not ERRORLEVEL==1 goto InstallerCert

    color 0C
    echo ==== MakeNSIS Commands Failed! ====
    echo.
        echo Press enter to start installer...
        pause
        color %defaultColor%
    %~dp0NSIS-3.03-setup.exe
        echo Installer launched, press enter to retry MakeNSIS commands...
        pause
        echo.
        goto NSIS

:InstallerCert
    echo ==== MakeNSIS Script done ====
    echo.
    echo ==== Signing %~1-Installer.exe ====
        echo %~dp0WalkmanOSS.cer
        echo %~dp0WalkmanOSS.pvk
        echo https://github.com/Walkman100/%~1
        echo http://timestamp.verisign.com/scripts/timstamp.dll
    %~dp0signtool signwizard "%~dp0..\%~1\bin\Release\%~1-Installer.exe"

if Not ERRORLEVEL==1 goto InstallerCertDone

    echo ==== Signing %~1-Installer.exe Failed! ====
    echo.
        goto zipCheck

:InstallerCertDone
    echo ==== Signing %~1-Installer.exe done ====
    echo.

:zipCheck
    echo ==== Portable file operations ====
    rem Check if project must be zipped...
        if %~1==GitUpdater goto zip
        if %~1==BasicBrowserGecko goto zip

    rem Delete previous portable executable, rename new one to portable
    @echo on
        del "bin\Release\%~1-Portable.exe"
        ren "bin\Release\%~1.exe" %~1-Portable.exe
    @echo off
        goto openOutputDir

:zip
    %~dp0ZIP-%~1.bat

:openOutputDir
    echo.
    echo ==== Launching Explorer ====
    @echo on
        explorer.exe "bin\Release"
    @echo off
        timeout /t 5

:EOF
