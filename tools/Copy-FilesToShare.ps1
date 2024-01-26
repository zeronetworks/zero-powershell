Set-Location ../src/ZN
$files = @(
    "ZeroNetworks.nupsec"
    "ZeroNetworks.format.ps1xml"
    "ZeroNetworks.psd1"
    "ZeroNetworks.psm1"
    "bin"
    "custom"
    "exports\ProxyCmdletDefinitions.ps1"
    "internal"
    "utils\Unprotect-SecureString.ps1"
)

$ver = Get-Content ./src/ZN/readme.md | Select-String "module-version: .*"
$version = $ver.Matches.Value.Replace("module-version: ","")

New-Item "\\192.168.200.1\share\zero-powershell\$version" -Directory

foreach($file in $files){
    $srcFolder = (get-Location).FullName
    if($filePath -like "*.*"){
        write-host $filePath -ForegroundColor Green
        copy-Item "$sourceFolder/$file" -Destination "\\192.168.200.1\share\zero-powershell\$version\$file"
    } else{
        write-Host $filePath -ForegroundColor Yellow
        Copy-Item "$sourceFolder/$file" -Destination "\\192.168.200.1\share\zero-powershell\$version\$file" -Recurse
    }
}