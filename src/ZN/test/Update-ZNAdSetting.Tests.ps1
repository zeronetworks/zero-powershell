if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAdSetting'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAdSetting.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAdSetting' {
    It 'PutExpanded' {
        New-ZNAdSetting -ActiveDirectoryInfoDomainName 'newad.local' -ActiveDirectoryInfoDomainControllerFqdn 'dc01.newad.local' -ActiveDirectoryInfoUseLdaps:$false -ActiveDirectoryInfoUsername 'zero' -PasswordClearText 'zero@1313zero@1313'
        $ad = Get-ZNAdSetting | where {$_.ActiveDirectoryInfoDomainName -eq 'newad.local'}
        Update-ZNAdSetting -Forest $ad.ForestId -ActiveDirectoryInfoDomainControllerFqdn 'dc02.newad.local' -ActiveDirectoryInfoUsername $ad.ActiveDirectoryInfoUsername -ActiveDirectoryInfoDomainName $ad.ActiveDirectoryInfoDomainName -SetActiveDirectoryInfoPasswordCleartext 'zero@1313zero@1313'
        $ad = Get-ZNAdSetting | where {$_.ActiveDirectoryInfoDomainName -eq 'newad.local'}
        $ad.ActiveDirectoryInfoDomainControllerFqdn | Should -Be 'dc02.newad.local'
        Remove-ZNAdSetting -Forest $ad.ForestId
    }
}
