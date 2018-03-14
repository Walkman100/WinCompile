:zip

echo ZIPping portable release with 7-Zip...
rem Run the 7-Zip command
    pushd bin\Release
    "%ProgramFiles%\7-Zip\7z.exe" a -tzip -- GitUpdater-Portable.zip GitUpdater.exe GitUpdater.bat OpenRepoInBash.bat OpenRepoInPS.bat PS
    popd

rem If it doesn't fail, go to next step
if Not ERRORLEVEL==1 goto done

echo 7-Zip command failed, trying again in 32-bit program files folder...
    pushd bin\Release
    "%ProgramFiles(x86)%\7-Zip\7z.exe" a -tzip -- GitUpdater-Portable.zip GitUpdater.exe GitUpdater.bat OpenRepoInBash.bat OpenRepoInPS.bat PS
    popd

if Not ERRORLEVEL==1 goto done

echo 7-Zip_32 command failed, trying again in 64-bit program files folder...
    pushd bin\Release
    "%ProgramW6432%\WinRAR\WinRAR.exe" a -tzip -- GitUpdater-Portable.zip GitUpdater.exe GitUpdater.bat OpenRepoInBash.bat OpenRepoInPS.bat PS
    popd

if Not ERRORLEVEL==1 goto done

color 0C
echo 7-Zip ZIP Commands Failed!
echo Press enter to start installer...
pause
color 0A
%~dp07-Zip_v18.01_x64.exe
echo Installer launched, press enter to retry 7-Zip commands...
pause
goto zip

:done
echo ZIPping portable release with 7-Zip done.

rem Since it doesn't seem to return control, just run the code:
echo launching Explorer...
explorer.exe "bin\Release"
timeout /t 1