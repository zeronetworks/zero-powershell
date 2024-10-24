if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNGroupsOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNGroupsOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNGroupsOutboundRule' {
    It 'UpdateExpanded' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        $portsList = New-ZNPortsList -Protocol TCP -Ports (Get-Random -Minimum 1 -Maximum 1024)
        $destination = Invoke-ZNEncodeEntityIp -IP 8.8.8.8
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag -Action 1 -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt
        
        $newdescription = "new description" + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNGroupsOutboundRule -GroupId $group.id -GroupType tag -RuleId $rule.ItemId -Description $newdescription
        $updatedRule = Get-ZNOutboundRule -RuleId $rule.ItemId
        $updatedRule.ItemDescription | Should -Be $newdescription
        Remove-ZNOutboundRule -RuleId $rule.ItemId
    }
}
