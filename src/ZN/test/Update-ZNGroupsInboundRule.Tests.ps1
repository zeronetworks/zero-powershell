if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNGroupsInboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNGroupsInboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNGroupsInboundRule' {
    It 'UpdateExpanded' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNInboundRulesSourceCandidate -RuleType 1 -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsInboundRule -GroupId $group.id -GroupType tag -Action 1 -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt -IPSecOpt 1
        
        $newdescription = "new description " + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNGroupsInboundRule -GroupId $group.id -GroupType tag -RuleId $rule.ItemId -Description $newdescription
        $updatedRule = Get-ZNGroupsInboundRule -GroupId $group.id -GroupType tag -RuleId $rule.ItemId
        $updatedRule.ItemDescription | Should -Be $newdescription
        Remove-ZNInboundRule -RuleId $rule.ItemId
    }
}
