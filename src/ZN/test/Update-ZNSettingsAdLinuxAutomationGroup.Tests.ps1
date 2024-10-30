if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsAdLinuxAutomationGroup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsAdLinuxAutomationGroup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsAdLinuxAutomationGroup' {
    It 'UpdateExpanded' {
        New-ZNSettingsAd -PrimaryDomainConfigDomainControllerFqdn dc.test.local -PrimaryDomainConfigDomainName test.local -PrimaryDomainConfigUseLdaps -PrimaryDomainConfigUserFqdn ZNRemoteManagement -PrimaryDomainConfigPassword "zero@1313" -UsePrimaryUserForAllDomains
        $forest = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "test.local"}
        Update-ZNSettingsAdLinux -DomainId test.local -ForestId $forest.ForestId  -AdLinuxConfigAllowInstallPackages -AdLinuxConfigPassword "zero@1313" -AdLinuxConfigPrivateKey "-----BEGIN RSA PRIVATE KEY-----MIIBOgIBAAJBAKj34GkxFhD90vcNLYLInFEX6Ppy1tPf9Cnzj4p4WGeKLs1Pt8QuKUpRKfFLfRYC9AIKjbJTWit+CqvjWYzvQwECAwEAAQJAIJLixBy2qpFoS4DSmoEmo3qGy0t6z09AIJtH+5OeRV1be+N4cDYJKffGzDa88vQENZiRm0GRq6a+HPGQMd2kTQIhAKMSvzIBnni7ot/OSie2TmJLY4SwTQAevXysE2RbFDYdAiEBCUEaRQnMnbp79mxDXDf6AU0cN/RPBjb9qSHDcWZHGzUCIG2Es59z8ugGrDY+pxLQnwfotadxd+Uyv/Ow5T0q5gIJAiEAyS4RaI9YG8EWx/2w0T67ZUVAw8eOMB6BIUg0Xcu+3okCIBOs/5OiPgoTdSy7bcF9IGpSE8ZgGKzgYQVZeN97YE00-----END RSA PRIVATE KEY-----" -AdLinuxConfigUsername "zn-admin" -UseForAllDomains
        { Update-ZNSettingsAdLinuxAutomationGroup -ForestId $forest.ForestId -MonitoredGroupId b:110003 } | Should -Not -Throw
        Remove-ZNSettingsAdLinux -DomainId test.local -ForestId $forest.ForestId
        Remove-ZNSettingsAd -ForestId $forest.ForestId
    }
}
