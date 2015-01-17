rem use this if you want it to ask where to rar to
rem "%ProgramFiles%\WinRAR\WinRAR.exe" a -ep1 -scul -r0 -iext --. %~dp0bin\Release\GitUpdater.exe %~dp0bin\Release\GitUpdater.bat %~dp0bin\Release\OpenRepoInPS.bat %~dp0bin\Release\PS

"%ProgramFiles%\WinRAR\WinRAR.exe" a -ep1 -scul -r0 -iext -- %~dp0bin\Release\GitUpdater-Portable.rar %~dp0bin\Release\GitUpdater.exe %~dp0bin\Release\GitUpdater.bat %~dp0bin\Release\OpenRepoInBash.bat %~dp0bin\Release\OpenRepoInPS.bat %~dp0bin\Release\PS