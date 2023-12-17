if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsAdSecondary'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsAdSecondary.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsAdSecondary' {
    It 'UpdateExpanded' {
        New-ZNSettingsAd -PrimaryDomainConfigDomainControllerFqdn dc.test.local -PrimaryDomainConfigDomainName test.local -PrimaryDomainConfigUseLdaps -PrimaryDomainConfigUserFqdn ZNRemoteManagement -PrimaryDomainConfigPassword "zero@1313" -UsePrimaryUserForAllDomains
        $forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "test.local"}
        New-ZNSettingsAdSecondary -ForestId $forest.ForestId -SecondaryDomainConfigDomainControllerFqdn dc01.child.test.local -SecondaryDomainConfigDomainName child.test.local 
        { Update-ZNSettingsAdSecondary -DomainId child.test.local -ForestId $forest.ForestId -SecondaryDomainConfigDomainControllerFqdn newdc.child.test.local } | Should -Not -Throw
        Remove-ZNSettingsAd -ForestId $forest.ForestId
    }
}
