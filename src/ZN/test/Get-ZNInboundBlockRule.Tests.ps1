if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNInboundBlockRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNInboundBlockRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNInboundBlockRule' {
    It 'List' {
        { Get-ZNInboundBlockRule } | Should -Not -Be $null
    }

    It 'Get' -skip {
        $rule = Get-ZNInboundBlockRule | Select-Object -First 1
        { Get-ZNInboundBlockRule -RuleId $rule.Id } | Should -Not -Be $null
    }
}
