if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserOutboundRule' {
    It 'List' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        (Get-ZNUserOutboundRule -UserId $user.Id).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $rule = (Get-ZNUserOutboundRule -UserId $user.Id).Items | select -First 1
        (Get-ZNUserOutboundRule -UserId $user.Id -RuleId $rule.Id).ItemId | Should -Not -BeNullOrEmpty
    }
}
