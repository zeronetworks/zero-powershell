if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSwitchInboundOtRulesUserCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSwitchInboundOtRulesUserCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSwitchInboundOtRulesUserCandidate' {
    It 'List' {
        $switch = (Get-ZNSwitch).Items | select -First 1
        (Get-ZNSwitchInboundOtRulesUserCandidate -SwitchId $switch.id).Items.Count | Should -BegreaterThan 0
    }
}
