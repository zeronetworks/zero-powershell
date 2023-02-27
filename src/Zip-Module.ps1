$fileList = @(
    "./ZN/ZN.Api.format.ps1xml"
    "./ZN/ZN.Api.psd1"
    "./ZN/ZN.Api.psm1"
    "./ZN/ZN.Api.nuspec"
    "./ZN/bin"
    "./ZN/custom"
    "./ZN/docs"
    "./ZN/exports/ProxyCmdletDefinitions.ps1"
    "./ZN/internal/ProxyCmdletDefinitions.ps1"
    "./ZN/internal/ZN.Api.internal.psm1"
    "./ZN/utils/Unprotect-SecureString.ps1"
)

$zipFile = "ZNPoshModule.zip"
Remove-Item ZNPoshModule.zip -force
foreach($file in $fileList){
    write-Host $file
        Compress-Archive -Path (Get-Item $file).FullName -DestinationPath $zipFile -Update
}