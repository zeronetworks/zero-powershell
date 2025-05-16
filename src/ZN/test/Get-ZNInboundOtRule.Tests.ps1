if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNInboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNInboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNInboundOtRule' {
    It 'List' {
        (Get-ZNInboundOtRule -AddBuiltins).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $rule = (Get-ZNInboundOtRule -AddBuiltins).Items | Select -First 1
        $rule = Get-ZNInboundOtRule -RuleId $rule.Id
        $rule.ItemId | Should -Not -BeNullOrEmpty
    }
}
