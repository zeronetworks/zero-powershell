if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsOutboundRule' {
    It 'List' { 
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $destination = (Get-ZNGroupsOutboundRulesDestinationCandidate -GroupId $group.id -GroupType tag -RuleType 3 -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag -Action 1 -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt
        { (Get-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag).Items } | Should -Not -BeNullOrEmpty
        Remove-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag -RuleId $rule.ItemId
    }

    It 'Get' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $destination = (Get-ZNGroupsOutboundRulesDestinationCandidate -GroupId $group.id -GroupType tag -RuleType 3 -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag -Action 1 -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag | Select-Object -First 1
        { (Get-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag -RuleId $rule.Id).ItemId } | Should -Not -BeNullOrEmpty
        Remove-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag -RuleId $rule.Id
    }
}
