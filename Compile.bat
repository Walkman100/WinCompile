@echo off

rem %1 is project to compile

rem Remove "rem" from lines below to show all parameters when bat file launches
rem echo Parameters: "%*"
rem echo 1: %1 2: %2 3: %3 4: %4 5: %5 6: %6

rem Setting GUI elements and going to the project directory
    set defaultColor=0A
    color %defaultColor%
    title Compiling %~1...
    cd ..\%~1

:msbuild

echo ==== Starting MSBuild compile for %~1 ====
    rem Run the MSBuild command
        "%WinDir%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe" /property:Configuration=Release "%~1.sln"

    rem If it doesn't fail, go to next step
        if Not ERRORLEVEL==1 goto nsis

    echo MSBuild command failed, trying again in v3.5...
        "%WinDir%\Microsoft.NET\Framework\v3.5\msbuild.exe" /property:Configuration=Release "%~1.sln"

        if Not ERRORLEVEL==1 goto nsis

    echo MSBuild_v3.5 command failed, trying again in v3.0...
        "%WinDir%\Microsoft.NET\Framework\v3.0\msbuild.exe" /property:Configuration=Release "%~1.sln"

        if Not ERRORLEVEL==1 goto nsis

    color 0C
        echo ==== MSBuild Commands Failed! ====
        echo.
        echo Press enter to start installer...
        pause
        color %defaultColor%
        %~dp0DotNetFramework4.6.exe
    echo Installer launched, press enter to retry MSBuild commands...
        pause
        goto msbuild

:nsis

    echo ==== MSBuild Done ====
    echo.
    echo ==== Starting MakeNSIS Installer script for %~1 ====
    rem Run the MakeNSIS command
        "%ProgramFiles%\NSIS\makensis.exe" "NSIS Installer for %~1.nsi"
        echo ==== MakeNSIS Script done ====
        echo.

    rem If it doesn't fail, go to next step
        if Not ERRORLEVEL==1 goto InstallerCert

    echo MakeNSIS command failed, trying again in 32-bit program files folder...
        "%ProgramFiles(x86)%\NSIS\makensis.exe" "NSIS Installer for %~1.nsi"
        echo ==== MakeNSIS Script done ====
        echo.

        if Not ERRORLEVEL==1 goto InstallerCert

    echo MakeNSIS-32 command failed, trying again in 64-bit program files folder...
        "%ProgramW6432%\NSIS\makensis.exe" "NSIS Installer for %~1.nsi"
        echo ==== MakeNSIS Script done ====
        echo.

        if Not ERRORLEVEL==1 goto InstallerCert

    color 0C
        echo ==== MakeNSIS Commands Failed ====
        echo.
        echo Press enter to start installer...
        pause
        color %defaultColor%
        %~dp0NSIS-2.46-setup.exe
    echo Installer launched, press enter to retry MakeNSIS commands...
        pause
        goto nsis

:InstallerCert

    rem because you can't use a PVK (private key) via command line -_-
    echo ==== Starting Certificate signing process ====
        echo %~dp0WalkmanOSS.cer
        echo %~dp0WalkmanOSS.pvk
        echo https://github.com/Walkman100/%~1
        echo http://timestamp.verisign.com/scripts/timstamp.dll
        echo.
        echo %~dp0WalkmanOSS.cer
        echo %~dp0WalkmanOSS.pvk
        echo https://github.com/Walkman100/%~1
        echo http://timestamp.verisign.com/scripts/timstamp.dll
    signtool signwizard "%~dp0..\%~1\bin\Release\%~1-Installer.exe" "%~dp0..\%~1\bin\Release\%~1.exe"
        echo ==== Certificate signing process done ====
        echo.
        
        if Not ERRORLEVEL==1 goto rarCheck
        
        echo ==== Certificate signing Failed ====
        echo.
        
    rem echo Certifying files...
        rem echo Certifying installer...
        rem "%ProgramFiles%\Microsoft SDKs\Windows\v7.1A\Bin\signtool.exe" sign /f %~dp0WalkmanOSS.cer /k %~dp0WalkmanOSS.pvk /du "https://github.com/Walkman100/%~1" /t "http://timestamp.verisign.com/scripts/timstamp.dll" "%~dp0..\%~1\bin\Release\%~1-Installer.exe"
        rem if Not ERRORLEVEL==1 goto PortableCert
        
        rem echo Installer Certification failed!

rem :PortableCert

        rem echo.
        rem echo Certifying portable...
        rem "%ProgramFiles%\Microsoft SDKs\Windows\v7.1A\Bin\signtool.exe" sign /f %~dp0WalkmanOSS.cer /k %~dp0WalkmanOSS.pvk /du "https://github.com/Walkman100/%~1" /t "http://timestamp.verisign.com/scripts/timstamp.dll" "%~dp0..\%~1\bin\Release\%~1.exe"
        rem if Not ERRORLEVEL==1 goto rarCheck
        
        rem echo Portable Certification failed!
        rem echo.

:rarCheck

        echo.
        echo ==== Portable file operations ====
    rem Check if project must be rarred...
        if %~1==GitUpdater goto rar
        if %~1==BasicBrowserGecko goto rar

    rem Delete previous portable executable, rename new one to portable
    @echo on
        del "bin\Release\%~1-Portable.exe"
        ren "bin\Release\%~1.exe" %~1-Portable.exe
    @echo off
        goto openOutputDir

:rar
    %~dp0RAR-%~1.bat

:openOutputDir
    echo.
    echo ==== Launching Explorer ====
    @echo on
        explorer.exe "bin\Release"
    @echo off
        timeout /t 5
:EOF
