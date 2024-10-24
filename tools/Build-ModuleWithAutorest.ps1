Set-Location ..\src\ZN

try {
    Write-Host "Starting Autorest" -ForegroundColor Green
    autorest
}
catch {
    Write-Host "Autorest failed" -ForegroundColor Red
    exit
}

Write-Host "Starting to add packages" -ForegroundColor Green
try{
    
    dotnet add ZeroNetworks.csproj package Newtonsoft.Json
}
catch{
    Write-Host "Failed to add package newtonsoft.json" -ForegroundColor Red
    exit
}

try{
    dotnet add ZeroNetworks.csproj package Hyak.Common
}
catch{
    Write-Host "Failed to add package Hyak.Common" -ForegroundColor Red
    exit
}

Write-Host "calling build-module.ps1" -ForegroundColor Green
try{
    .\build-module.ps1
}
catch{
    Write-Host "Failed to build module" -ForegroundColor Red
    exit
}

Write-Host "calling pack-module.ps1" -ForegroundColor Green
try{
    gci *DS_Store* -Recurse -Hidden | % { Remove-item $_.FullName -Force}
    .\pack-module.ps1
}
catch{
    Write-Host "Failed to pack module" -ForegroundColor Red
    exit
}

Write-Host "Copying /docs to help/zeronetworks" -ForegroundColor Green
try {
    gci ./docs/*.md | % { cp $_.FullName ../../help/zeronetworks }
}
catch {
    Write-Host "Failed to copy markdown files" -ForegroundColor Red
    exit
}