$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsInternalSubnet.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Update-ZNSettingsInternalSubnet' {
    It 'UpdateExpanded' {
        #198.18.0.0/15
        $setting = (Get-ZNSettingsInternalSubnet).ConfigPrivateNetworksList
        if($setting -contains '198.18.0.0/15'){
            $newSetting = @('10.0.0.0/8','100.64.0.0/10','169.254.0.0/16','172.16.0.0/12','192.0.0.0/24','192.168.0.0/16')
        }else{
            $newSetting = @('10.0.0.0/8','100.64.0.0/10','169.254.0.0/16','172.16.0.0/12','192.0.0.0/24','192.168.0.0/16','198.18.0.0/15')
        }
        Update-ZNSettingsInternalSubnet -PrivateNetworksList $newSetting
        $updatedSetting = (Get-ZNSettingsInternalSubnet).ConfigPrivateNetworksList
        $updatedSetting | Should -Be $newSetting
    }
}
