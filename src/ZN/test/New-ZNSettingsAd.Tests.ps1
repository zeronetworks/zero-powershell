if(($null -eq $TestName) -or ($TestName -contains 'New-ZNSettingsAd'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNSettingsAd.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNSettingsAd' {
    It 'NewExpanded' {
        { New-ZNSettingsAd -PrimaryDomainConfigDomainControllerFqdn dc.test.local -PrimaryDomainConfigDomainName test.local -PrimaryDomainConfigUseLdaps -PrimaryDomainConfigUserFqdn ZNRemoteManagement -PrimaryDomainConfigPassword "zero@1313" -UsePrimaryUserForAllDomains } | Should -Not -Throw
        $forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "test.local"}
        Remove-ZNSettingsAd -ForestId $forest.ForestId
    }
}
