Set-Location ../src/ZN
$files = @(
    "ZeroNetworks.nupsec"
    "ZeroNetworks.format.ps1xml"
    "ZeroNetworks.psd1"
    "ZeroNetworks.psm1"
    "bin\ZeroNetworks.private.deps.json"
    "bin\ZeroNetworks.private.dll"
    "bin\ZeroNetworks.private.pdb"
    "custom"
    "exports\ProxyCmdletDefinitions.ps1"
    "internal\ZeroNetworks.internal.psm1"
    "internal\ProxyCmdletDefinitions.ps1"
    "utils\Unprotect-SecureString.ps1"
)

$version = "0.0.6-preview"
New-Item "\\192.168.200.1\share\zero-powershell\$version" -Directory

foreach($file in $files){
    $srcFolder = (get-Location).FullName
    if($filePath -like "*.*"){
        write-host $filePath -ForegroundColor Green
        copy-Item "$sourceFolder/$file" -Destination "\\192.168.200.1\share\zero-powershell\$version\$file"
    }
    else{
        write-Host $filePath -ForegroundColor Yellow
        Copy-Item "$sourceFolder/$file" -Destination "\\192.168.200.1\share\zero-powershell\$version\$file" -Recurse
    }
}