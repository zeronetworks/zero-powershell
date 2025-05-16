if(($null -eq $TestName) -or ($TestName -contains 'New-ZNSwitchOutboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNSwitchOutboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNSwitchOutboundOtRule' {
    It 'CreateExpanded' {
        $switch = (Get-ZNSwitch).Items | Select -First 1
        $protocolsList = New-ZNProtocolsList -Protocol tcp -LocalPorts (get-Random -min 1 -max 1024)
        $destination = Invoke-ZNEncodeEntityIp -Ip 1.1.1.100
        $source = (Get-ZNInboundOtRulesSourceCandidate -Search "otv2").items | where {$_.Name -eq "OTv2"}
        $rule = New-ZNSwitchOutboundOtRule -SwitchId $switch.id -Action 1 -Direction 2 -localEntityId $source.Id -RemoteEntitiesIdList @($destination.id) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
        $rule.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNOutboundOtRule -RuleId $rule.ItemId
    }
}
