$fileList = @(
    "./ZN/ZeroNetworks.format.ps1xml"
    "./ZN/ZeroNetworks.psd1"
    "./ZN/ZeroNetworks.psm1"
    "./ZN/ZeroNetworks.nuspec"
    "./ZN/bin"
    "./ZN/custom"
    "./ZN/docs"
    "./ZN/exports/ProxyCmdletDefinitions.ps1"
    "./ZN/internal/ProxyCmdletDefinitions.ps1"
    "./ZN/internal/ZeroNetworks.internal.psm1"
    "./ZN/utils/Unprotect-SecureString.ps1"
)

$zipFile = "ZNPoshModule.zip"
Remove-Item ZNPoshModule.zip -force
foreach($file in $fileList){
    write-Host $file
        Compress-Archive -Path (Get-Item $file).FullName -DestinationPath $zipFile -Update
}