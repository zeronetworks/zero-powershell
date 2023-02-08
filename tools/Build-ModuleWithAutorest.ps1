Set-Location ..\src\ZN

try {
    autorest
}
catch {
    Write-Host "Autorest failed" -ForegroundColor Red
    exit
}

try{
    Copy-Item ..\private -Destination generated -Recurse
}
catch{
    Write-Host "Failed to copy private files" -ForegroundColor Red
    exit
}

try{
    .\build-module.ps1
}
catch{
    Write-Host "Failed to build modules" -ForegroundColor Red
    exit
}