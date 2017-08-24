# WinCompile
Compile script for my Windows projects

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/Walkman100/Walkman?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

See [CompileInstructions.md](https://github.com/Walkman100/gists/blob/master/CompileInstructions.md) and [LinuxCompatability.md](https://github.com/Walkman100/gists/blob/master/LinuxCompatability.md)

# Certificates & Signing
## Importing a certificate
- First you need to get the certificate file, either by creating your own one below, or downloading the one I use: [WalkmanOSS.cer](https://github.com/Walkman100/WinCompile/blob/master/WalkmanOSS.cer) ([download](https://github.com/Walkman100/WinCompile/raw/master/WalkmanOSS.cer))
- Open the certificate and click the <kbd>Install Certificate...</kbd> button, then click <kbd>Next ></kbd>.
[![CertificatePage][CertificatePage]][CertificatePage]
- Select `Place all certificates in the following store` (1), then click <kbd>Browse...</kbd>(2).
- Select `Trusted Root Certification Authorities`(3) (should be the second one), then click <kbd>OK</kbd>(4).
- Click <kbd>Next ></kbd>(5) then <kbd>Finish</kbd>.

[![ImportStore][ImportStore]][ImportStore]

  [CertificatePage]: http://walkman100.github.io/images/Screenshots/My_Projects/WinCompile/CertificatePage.png
  [ImportStore]: http://walkman100.github.io/images/Screenshots/My_Projects/WinCompile/ImportStore.png

## Generate your Own certificate
See [GenerateCert.bat](https://github.com/Walkman100/WinCompile/blob/master/GenerateCert.bat) in this repo.

## Sign a program
Signing is done by [SignTool](https://msdn.microsoft.com/en-us/library/aa387764.aspx).

### Starting SignTool
#### Script
See my [Compile Script@L75](https://github.com/Walkman100/WinCompile/blob/master/Compile.bat#L96), it uses [signtool.exe](https://github.com/Walkman100/WinCompile/blob/master/signtool.exe) in this repo.

#### Context menu
[![Sign Context menu](http://walkman100.github.io/images/Screenshots/My_Projects/WinCompile/SignContext.png)](http://walkman100.github.io/images/Screenshots/My_Projects/WinCompile/SignContext.png)

Import [Sign Application.reg](https://github.com/Walkman100/WinCompile/blob/master/Sign%20Application.reg) in this repo to get a sign item in the context menu for applications.

### Using SignTool
Once you have opened SignTool, follow these steps to sign the application:
- Click <kbd>Next ></kbd>. If you have opened SignTool via the context menu or a script, the file to sign should be already filled in. If not, use <kbd>Browse...</kbd> to select it. Click <kbd>Next ></kbd>.

[![SignFileSelect][SignFileSelect]][SignFileSelect]
- Select `Custom`, then click <kbd>Next ></kbd>.

[![SignTypeSelect][SignTypeSelect]][SignTypeSelect]
- Click <kbd>Select from File...</kbd>(1), change the filter to `X.509 Certificate (*.cer;*.crt)`(2), open your certificate(3) then click <kbd>Next ></kbd>(4).

[![SignCertSelect][SignCertSelect]][SignCertSelect]
- Click <kbd>Browse...</kbd>(1), select your private key (generated [above](#generate-your-own-certificate))(2), click <kbd>Next ></kbd>(3), and enter your password for your private key(4).

[![SignPVKSelect][SignPVKSelect]][SignPVKSelect]
- Click <kbd>Next ></kbd> four times, then click <kbd>Finish</kbd> and enter your private key password again.

  [SignFileSelect]: http://walkman100.github.io/images/Screenshots/My_Projects/WinCompile/SignFileSelect.png
  [SignTypeSelect]: http://walkman100.github.io/images/Screenshots/My_Projects/WinCompile/SignTypeSelect.png
  [SignCertSelect]: http://walkman100.github.io/images/Screenshots/My_Projects/WinCompile/SignCertSelect.png
  [SignPVKSelect]: http://walkman100.github.io/images/Screenshots/My_Projects/WinCompile/SignPVKSelect.png
