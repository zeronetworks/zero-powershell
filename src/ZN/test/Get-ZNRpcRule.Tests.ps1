if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNRpcRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNRpcRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNRpcRule' {
    It 'List' {
        (Get-ZNRpcRule -AddBuiltins).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $rules = (Get-ZNRpcRule -AddBuiltins).Items
        $rule = Get-ZNRpcRule -RuleId $rules[0].Id
        $rule.ItemId | Should -Not -BeNullOrEmpty
    }
}
