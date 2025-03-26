if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNSwitchInboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNSwitchInboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNSwitchInboundOtRule' {
    It 'Delete' {
        $switch = (Get-ZNSwitch).Items | Select -First 1
        $protocolsList = New-ZNProtocolsList -Protocol tcp -Ports 456
        $source = Invoke-ZNEncodeEntityIp -Ip 1.1.1.100
        $destination = (Get-ZNInboundOtRulesDestinationCandidate -Search "otv2").items
        $rule = New-ZNSwitchInboundOtRule -SwitchId $switch.id -Action 1 -Direction 1 -localEntityId $destination.Id -RemoteEntitiesIdList @($source.id) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
        { Remove-ZNInboundOtRule -RuleId $rule.ItemId } | Should -Not -Throw
    }
}
