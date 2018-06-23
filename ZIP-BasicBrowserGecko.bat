:zip
    echo ==== ZIPping portable release with 7-Zip ====
    pushd bin\Release
    "%ProgramFiles%\7-Zip\7z.exe" a -tzip -- BasicBrowser-Portable.zip BasicBrowser.exe
    popd

if Not ERRORLEVEL==1 goto done

    echo 7-Zip command failed, trying again in 32-bit program files folder...
    pushd bin\Release
    "%ProgramFiles(x86)%\7-Zip\7z.exe" a -tzip -- BasicBrowser-Portable.zip BasicBrowser.exe
    popd

if Not ERRORLEVEL==1 goto done

    echo 7-Zip_32 command failed, trying again in 64-bit program files folder...
    pushd bin\Release
    "%ProgramW6432%\7-Zip\7z.exe" a -tzip -- BasicBrowser-Portable.zip BasicBrowser.exe
    popd

if Not ERRORLEVEL==1 goto done

    color 0C
    echo ==== 7-Zip ZIP Commands Failed! ====
    echo.
        echo Press enter to start installer...
        pause
        color 0A
    %~dp07-Zip_v18.01_x64.exe
        echo Installer launched, press enter to retry 7-Zip commands...
        pause
        echo.
        goto zip

:done
    echo ==== ZIPping portable release with 7-Zip done ====
    
    rem Since it doesn't seem to return control, just run the code:
    echo.
    echo ==== Launching Explorer ====
    @echo on
        explorer.exe "bin\Release"
    @echo off
        timeout /t 5
