if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSwitchOutboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSwitchOutboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSwitchOutboundOtRule' {
    It 'List' {
        $switch = (Get-ZNSwitch).Items | select -First 1
        (Get-ZNSwitchOutboundOtRule -SwitchId $switch.id).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $switch = (Get-ZNSwitch).Items | select -First 1
        $rule = (Get-ZNSwitchOutboundOtRule -SwitchId $switch.id -AddBuiltins).Items | select -First 1
        $rule = Get-ZNSwitchOutboundOtRule -SwitchId $switch.id -RuleId $rule.id
        $rule.ItemLocalEntityId | Should -Not -BeNullOrEmpty
    }
}
