if(($null -eq $TestName) -or ($TestName -contains 'New-ZNGroupsOutboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNGroupsOutboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNGroupsOutboundOtRule' {
    It 'CreateExpanded' {
        $group = (Get-ZNGroup -Search ATM).Items | where {$_.Name -eq "ATM"} 
        $protocolList = New-ZNProtocolsList -Pro udp -LocalPorts (Get-Random -min 1 -max 1024)
        $destination = (Get-ZNGroupsOutboundOtRulesDestinationCandidate -GroupType ot -GroupId $group.Id -Search "Any asset").Items | where {$_.Id -like "b:*"}
        $rule = New-ZNGroupsOutboundOtRule -GroupId $group.Id -GroupType ot -Action 1 -LocalEntityId $group.Id -ProtocolsList $protocolList -ShouldBuildMirrorRules:$true -State 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -RemoteEntitiesIdList @($destination.Id)
        $rule.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNGroupsOutboundOtRule -GroupId $group.Id -GroupType ot -RuleId $rule.ItemId
    }
}
