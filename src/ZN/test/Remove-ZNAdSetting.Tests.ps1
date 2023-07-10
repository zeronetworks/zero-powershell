$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAdSetting.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Remove-ZNAdSetting' {
    It 'Remove' {
        New-ZNAdSetting -ActiveDirectoryInfoDomainName 'newad.local' -ActiveDirectoryInfoDomainControllerFqdn 'dc01.newad.local' -ActiveDirectoryInfoUseLdaps:$false -ActiveDirectoryInfoUsername 'zero' -PasswordClearText 'zero@1313zero@1313'
        $ad = Get-ZNAdSetting | where {$_.ActiveDirectoryInfoDomainName -eq 'newad.local'}
        { Remove-ZNAdSetting -Forest ($ad.ForestId) } | Should -Not -Throw
    }
}
