Set-Location ../src/ZN
$files = @(
    "ZN.Api.nupsec"
    "ZN.Api.format.ps1xml"
    "ZN.Api.psd1"
    "ZN.Api.psm1"
    "bin\ZN.Api.private.deps.json"
    "bin\ZN.Api.private.dll"
    "bin\ZN.Api.private.pdb"
    "custom"
    "exports\ProxyCmdletDefinitions.ps1"
    "internal\ZN.Api.internal.psm1"
    "internal\ProxyCmdletDefinitions.ps1"
    "utils\Unprotect-SecureString.ps1"
)

$version = "0.0.5-preview"
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