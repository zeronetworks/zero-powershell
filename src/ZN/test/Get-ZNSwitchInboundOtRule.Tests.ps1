if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSwitchInboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSwitchInboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSwitchInboundOtRule' {
    It 'List' {
        $switch = (Get-ZNSwitch).Items | select -First 1
        (Get-ZNSwitchInboundOtRule -SwitchId $switch.id).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $switch = (Get-ZNSwitch).Items | select -First 1
        $rule = (Get-ZNSwitchInboundOtRule -SwitchId $switch.id -AddBuiltins).Items | select -First 1
        $rule = Get-ZNSwitchInboundOtRule -SwitchId $switch.id -RuleId $rule.id
        $rule.ItemLocalEntityId | Should -Not -BeNullOrEmpty
    }
}
