Set-Location ..\src\ZN

try {
    autorest
}
catch {
    Write-Host "Autorest failed" -ForegroundColor Red
    exit
}

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

try{
    .\build-module.ps1
}
catch{
    Write-Host "Failed to build modules" -ForegroundColor Red
    exit
}