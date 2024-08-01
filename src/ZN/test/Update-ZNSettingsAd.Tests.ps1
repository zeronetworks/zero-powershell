if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsAd'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsAd.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsAd' {
    It 'UpdateExpanded' {
        New-ZNSettingsAd -PrimaryDomainConfigDomainControllerFqdn dc.test.com -PrimaryDomainConfigDomainName test.com -PrimaryDomainConfigUseLdaps -PrimaryDomainConfigUserFqdn ZNRemoteManagement -PrimaryDomainConfigPassword "zero@1313" -UsePrimaryUserForAllDomains -allowNtlmFallback:$false
        $forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "test.com"}
        { Update-ZNSettingsAd -ForestId $forest.ForestId -PrimaryDomainConfigDomainControllerFqdn $forest.ActiveDirectoryInfoDomainControllerFqdn -PrimaryDomainConfigDomainName $forest.ActiveDirectoryInfoDomainName -PrimaryDomainConfigPassword "zero@1313" -PrimaryDomainConfigUseLdaps -PrimaryDomainConfigUserFqdn ZNRemoteManagement -UsePrimaryUserForAllDomains:$false -allowNtlmFallback:$false} | should -not -throw
        Remove-ZNSettingsAd -ForestId $forest.ForestId
    }
}
