# Auto-Update PowerShell
function CheckAndUpdateModule {
    param (
        [string]$Module = 'ZeroNetworks',
        [bool]$UninstallFirst = $true
    )

    # Read the currently installed version
    $installed = Get-Module -ListAvailable -Name $Module
    
    # Install if not existing
    if(!$installed) {
        Install-Module -Name $Module -Force -AllowClobber -Verbose:$false
        exit
    }

    # There might be multiple versions
    if ($installed -is [array]) {
        $installedversion = $installed[0].version
    }
    else {
        $installedversion = $installed.version
    }
    
    # Lookup the latest version online
    $online = Find-Module -Name $Module -Repository PSGallery -AllowPrerelease -ErrorAction Stop
    $onlineversion = $online.version  

    # Compare the versions
    if ($onlineversion -gt $installedversion) {
        
        # Uninstall the old version
        if ($UninstallFirst -eq $true) {
            Write-Host "Uninstalling prior Module $Module version $installedversion"
            Uninstall-Module -Name $Module -Force -Verbose:$false
        }
        
        Write-Host "Installing newer Module $Module version $onlineversion"
        Install-Module -Name $Module -Force -AllowClobber -Verbose:$false
    } else {
        Write-Host "Module $Module version $installedversion loaded"
    }
}

function CheckModuleLatest {
    param (
        [string]$Module = 'ZeroNetworks'
    )

    # Read the currently installed version
    $installed = Get-Module -ListAvailable -Name $Module
    
    # There might be multiple versions
    if($installed.Count -eq 0){
        $installedversion = (Get-Module -Name $Module).Version
    }
    elseif($installed -is [array]){
        $installedversion = $installed[0].version
    }
    else{
        $installedversion = $installed.version
    }
    
    # Lookup the latest version online
    try {
        $online = Find-Module -Name $Module -Repository PSGallery -AllowPrerelease
    }
    catch {
        Write-Host "Module was not found is PSGallery"
    }
    
    $onlineversion = $online.version

    # Compare the versions
    if ($onlineversion -gt $installedversion) {
        Write-Host "New module version found online, please run the following"
        Write-Host "Uninstall-Module -Name $Module -Force"
        Write-Host "Install-Module -Name $Module -Force -AllowClobber"
    } else {
        Write-Host "Module $Module version $installedversion loaded"
    }
}