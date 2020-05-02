$ErrorActionPreference = 'Stop'

$fileName  = 'spicetify-0.9.8-windows-x64.zip'
$toolsPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
$zip_path = "$toolsPath\$fileName"
Remove-Item $toolsPath\* -Recurse -Force -Exclude $fileName

$packageArgs = @{
    PackageName  = 'spicetify-cli'
    FileFullPath = $zip_path
    Destination  = $toolsPath
}
Get-ChocolateyUnzip @packageArgs
Remove-Item $zip_path -ea 0