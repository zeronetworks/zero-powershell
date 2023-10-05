$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsPrivilegedPort.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Update-ZNSettingsPrivilegedPort' {
    It 'UpdateExpanded' {
        $priv = Get-ZNSettingsPrivilegedPort
        $privnew = $priv
        $privnew.ItemUdpPorts = "22"
        { Update-ZNSettingsPrivilegedPort -TcpPorts $privnew.ItemTcpPorts -UdpPorts $privnew.ItemUdpPorts } | Should -Not -Throw
        Update-ZNSettingsPrivilegedPort -TcpPorts $priv.ItemTcpPorts -UdpPorts $priv.ItemUdpPorts
    }
}
