<# chocolatey setup #> 
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')); 
​
<# allowing globally confirmation #> 
choco feature enable -n=allowGlobalConfirmation;

<# programs to install #>
@(
"git"
,"netfx-4.8-devpack"
,"chrome"
,"dotnetcore-sdk"
,"visualstudio2019professional"
,"cmder"
,"hyper"
,"archi"
,"wireshark"
,"sql-server-management-studio"
,"azure-data-studio"
,"nodejs-lts"
,"soapui"
,"mongodb"
,"studio3t"
,"postman"
,"notepadplusplus"
,"vim"
,"typora"
,"microsoft-teams") + ($pins = @("vscode")) | % { choco install $_ };

<# avoiding future upgrades of these following programs. #> $pins | % { choco pin add -n="$_" }; 
