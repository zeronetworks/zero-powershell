if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNRulesDistribution'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNRulesDistribution.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNRulesDistribution' {
    It 'Get' {
        $rule = Get-ZNInboundRule | select -First 1
        { Get-ZNRulesDistribution -RuleId $rule.Id -RuleDirection $rule.Direction } | Should -Not -BeNullOrEmpty
    }
}
