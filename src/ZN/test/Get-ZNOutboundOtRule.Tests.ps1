if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNOutboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNOutboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNOutboundOtRule' {
    It 'List' {
        (Get-ZNOutboundOtRule -AddBuiltins).Items | Should -BeGreaterThan 0
    }

    It 'Get' {
        $rule = (Get-ZNOutboundOtRule -AddBuiltins).Items | Select -First 1
        $rule = Get-ZNOutboundOtRule -RuleId $rule.Id
        $rule.Id | Should -Not -BeNullOrEmpty
    }
}
