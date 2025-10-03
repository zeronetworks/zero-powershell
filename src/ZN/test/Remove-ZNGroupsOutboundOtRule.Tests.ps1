if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNGroupsOutboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNGroupsOutboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNGroupsOutboundOtRule' {
    It 'Delete' {
        $group = (Get-ZNGroup -Search ATM).Items | where {$_.Name -eq "ATM"} 
        $protocolList = New-ZNProtocolsList -Pro udp -LocalPorts 4
        $destination = (Get-ZNGroupsOutboundOtRulesDestinationCandidate -GroupType ot -GroupId $group.Id -Search "Any asset").Items | where {$_.Id -like "b:*"}
        $rule = New-ZNGroupsOutboundOtRule -GroupId $group.Id -GroupType ot -Action 1 -LocalEntityId $group.Id -ProtocolsList $protocolList -ShouldBuildMirrorRules:$true -State 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -RemoteEntitiesIdList @($destination.Id)
        { Remove-ZNGroupsOutboundOtRule -GroupId $group.Id -GroupType ot -RuleId $rule.ItemId } | Should -Not -Throw
    }
}
