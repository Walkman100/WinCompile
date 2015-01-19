rem use this if you want it to ask where to rar to
rem "%ProgramFiles%\WinRAR\WinRAR.exe" a -ep1 -scul -r0 -iext --. bin\Release\GitUpdater.exe bin\Release\GitUpdater.bat bin\Release\OpenRepoInPS.bat bin\Release\PS

:rar

echo RARing portable release with WinRAR...
rem Run the WinRAR command
"%ProgramFiles%\WinRAR\WinRAR.exe" a -ep1 -scul -r0 -iext -- bin\Release\GitUpdater-Portable.rar bin\Release\GitUpdater.exe bin\Release\GitUpdater.bat bin\Release\OpenRepoInBash.bat bin\Release\OpenRepoInPS.bat bin\Release\PS
echo.

rem If it doesn't fail, go to next step
if Not ERRORLEVEL==1 goto done

echo WinRAR command failed, trying again in 32-bit program files folder...
"%ProgramFiles(x86)%\WinRAR\WinRAR.exe" a -ep1 -scul -r0 -iext -- bin\Release\GitUpdater-Portable.rar bin\Release\GitUpdater.exe bin\Release\GitUpdater.bat bin\Release\OpenRepoInBash.bat bin\Release\OpenRepoInPS.bat bin\Release\PS
echo.

if Not ERRORLEVEL==1 goto done

echo WinRAR-32 command failed, trying again in 64-bit program files folder...
"%ProgramW6432%\WinRAR\WinRAR.exe" a -ep1 -scul -r0 -iext -- bin\Release\GitUpdater-Portable.rar bin\Release\GitUpdater.exe bin\Release\GitUpdater.bat bin\Release\OpenRepoInBash.bat bin\Release\OpenRepoInPS.bat bin\Release\PS
echo.

if Not ERRORLEVEL==1 goto done

color 0C
echo WinRAR RAR Commands Failed!
echo Press enter to start installer...
pause
color 0A
%~dp0WinRAR-2.9-setup.exe
echo Installer launched, press enter to retry WinRAR commands...
pause
goto rar

:done
echo RARing portable release with WinRAR done.

rem Since it doesn't seem to return control, just run the code:
echo launching Explorer...
explorer.exe "bin\Release"
timeout /t 1