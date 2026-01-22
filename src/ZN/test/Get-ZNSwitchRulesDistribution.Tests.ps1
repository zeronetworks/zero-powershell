if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSwitchRulesDistribution'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSwitchRulesDistribution.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSwitchRulesDistribution' {
    It 'Get' {
        $switch = (Get-ZNSwitch).Items | Select-Object -First 1
        $rule =  (Get-ZNInboundOtRule).Items| Select-Object -First 1
        { Get-ZNSwitchRulesDistribution -Ruleid $rule.id -SwitchId $switch.id -RuleDirection 1 } | Should -Not -Throw
    }
}
