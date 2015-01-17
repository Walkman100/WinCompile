# Compile Instructions
Replace `{project name}` with the GitHub repo name.
1. Clone [WinCompile](https://github.com/Walkman100/WinCompile) to the parent directory of the source code of the project you want to compile
2. Run either `compile` or `..\WinCompile\compile {project name}` from this repo or `compile {project name}` from the `WinCompile` repo
3. The script will automatically stop if one of the dependencies isn't found. The only dependency that the scrpit won't give you an option to install is `MSBuild`.

You can install MSBuild my either:
- Installing Visual Studio (reccomended), or
- Extracting the contents of `MSBuild.zip` to `%ProgramFiles%\MSBuild`

Currently compatible projects:
- [YTVL](https://github.com/Walkman100/YTVL)
- [GitUpdater](https://github.com/Walkman100/GitUpdater)
- [CMDLauncher](https://github.com/Walkman100/CMDLauncher)
