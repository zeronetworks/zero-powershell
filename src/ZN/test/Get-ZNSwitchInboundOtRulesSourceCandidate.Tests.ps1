if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSwitchInboundOtRulesSourceCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSwitchInboundOtRulesSourceCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSwitchInboundOtRulesSourceCandidate' {
    It 'List' {
        $switch = (Get-ZNSwitch).Items[0]
        (Get-ZNSwitchInboundOtRulesSourceCandidate -SwitchId $switch.Id).Items.Count | Should -BeGreaterThan 0
    }
}
