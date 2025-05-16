if(($null -eq $TestName) -or ($TestName -contains 'New-ZNGroupsInboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNGroupsInboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNGroupsInboundOtRule' {
    It 'CreateExpanded' {
        $group = (Get-ZNGroup -Search ATM).Items | where {$_.Name -eq "ATM"} 
        $protocolList = New-ZNProtocolsList -Pro udp -LocalPorts (Get-Random -min 1 -max 1024)
        $source = (Get-ZNGroupsInboundOtRulesSourceCandidate -GroupType ot -GroupId $group.Id -Search "Any asset").Items | where {$_.Id -like "b:*"}
        $rule = New-ZNGroupsInboundOtRule -GroupId $group.Id -GroupType ot -Action 1 -LocalEntityId $group.Id -ProtocolsList $protocolList -ShouldBuildMirrorRules:$true -State 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -RemoteEntitiesIdList @($source.Id)
        $rule.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNGroupsInboundOtRule -GroupId $group.Id -GroupType ot -RuleId $rule.ItemId
    }
}
