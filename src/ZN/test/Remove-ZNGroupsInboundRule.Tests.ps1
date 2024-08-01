if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNGroupsInboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNGroupsInboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNGroupsInboundRule' {
    It 'Delete' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNGroupsInboundRulesSourceCandidate -GroupId $group.Id -GroupType tag -RuleType 1 -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsInboundRule -GroupId $group.Id -GroupType tag -Action 1 -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt -IPSecOpt 1
        { Remove-ZNGroupsInboundRule -GroupId $group.Id -GroupType tag -RuleId $rule.ItemId } | Should -Not -Throw
    }
}
