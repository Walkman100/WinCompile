# WinCompile
Compile script for my Windows projects

[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/Walkman100/Walkman?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

See [CompileInstructions.md](https://github.com/Walkman100/gists/blob/master/CompileInstructions.md) and [LinuxCompatability.md](https://github.com/Walkman100/gists/blob/master/LinuxCompatability.md)

# Certificates & Signing
### Importing a certificate
- First you need to get the certificate file, either by creating your own one below, or downloading the one I use: [WalkmanOSS.cer](https://github.com/Walkman100/WinCompile/blob/master/WalkmanOSS.cer)
- Open the certificate and click the <kbd>Install Certificate...</kbd> button
- Click <kbd>Next ></kbd>, then select `Place all certificates in the following store`
- Click <kbd>Browse...</kbd>, select `Trusted Root Certification Authorities` (should be the second one), then click <kbd>OK</kbd>
- Click <kbd>Next ></kbd> then <kbd>Finish</kbd>

### Generate your Own certificate
See [GenerateCert.bat](https://github.com/Walkman100/WinCompile/blob/master/GenerateCert.bat) in this repo.

### Sign a program
Signing is done by [SignTool](https://msdn.microsoft.com/en-us/library/aa387764.aspx)

#### Script
See my [Compile Script#L75](https://github.com/Walkman100/WinCompile/blob/master/Compile.bat#L75) file

#### Context menu
Import [Sign Application.reg](https://github.com/Walkman100/WinCompile/blob/master/Sign Application.reg) in this repo to get a sign item in the context menu of applications