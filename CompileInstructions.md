# Compile Instructions
Replace `{project name}` with the GitHub repo name.
- Clone [WinCompile](https://github.com/Walkman100/WinCompile) to the parent directory of the source code of the project you want to compile
- Run either `compile` or `..\WinCompile\compile {project name}` from this repo or `compile {project name}` from the `WinCompile` repo
- The script will automatically stop if one of the dependencies isn't found. The only dependency that the scrpit won't give you an option to install is `MSBuild`.
