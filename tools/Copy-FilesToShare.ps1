Set-Location ../src/ZN
$sourceFolder = "/workspaces/zero-powershell/src/ZN"
$files = @(
    "./ZeroNetworks.nupsec"
    "./ZeroNetworks.format.ps1xml"
    "./ZeroNetworks.psd1"
    "./ZeroNetworks.psm1"
    "./bin"
    "./custom"
    "./exports/ProxyCmdletDefinitions.ps1"
    "./internal/ProxyCmdletDefinitions.ps1"
    "./internal/ZeroNetworks.internal.psm1"
    "./utils/Unprotect-SecureString.ps1"
)

$ver = Get-Content ./README.md | Select-String "module-version: .*"
$version = $ver.Matches.Value.Replace("module-version: ","")

New-Item "\\192.168.200.1\share\zero-powershell\$version" -Type Directory

foreach($file in $files){
    $srcFolder = (get-Location).FullName
    if($file -like "*.*"){
        write-host $file -ForegroundColor Green
        copy-Item "$sourceFolder/$file" -Destination "\\192.168.200.1\share\zero-powershell\$version\$file"
    } else{
        write-Host $file -ForegroundColor Yellow
        Copy-Item "$sourceFolder/$file" -Destination "\\192.168.200.1\share\zero-powershell\$version\$file" -Recurse
    }
}