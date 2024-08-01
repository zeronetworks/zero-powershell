if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNSettingsAd'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNSettingsAd.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNSettingsAd' {
    It 'Delete' { 
        New-ZNSettingsAd -PrimaryDomainConfigDomainControllerFqdn dc.test.com -PrimaryDomainConfigDomainName test.com -PrimaryDomainConfigUseLdaps -PrimaryDomainConfigUserFqdn ZNRemoteManagement -PrimaryDomainConfigPassword "zero@1313" -UsePrimaryUserForAllDomains -allowNtlmFallback:$false
        $forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "test.com"}
        { Remove-ZNSettingsAd -ForestId $forest.ForestId } | Should -Not -Throw
    }
}
