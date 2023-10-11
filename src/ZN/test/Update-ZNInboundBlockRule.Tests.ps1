if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNInboundBlockRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNInboundBlockRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNInboundBlockRule' {
    It 'UpdateExpanded' {
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = Invoke-ZNEncodeEntityIP -Ip 1.1.1.1
        $destination = (Get-ZNInboundAllowRulesDestinationCandidate -Search "all segmented assets").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundBlockRule -LocalEntityId $destination.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source) -State 1 -ExpiresAt $expiresAt
        
        $newdescription = "new description " + (Get-Random -Minimum 1 -Maximum 100)
        $updatedRule = Update-ZNInboundBlockRule -RuleId $rule.Id -Description $newdescription
        $updatedRule.Description | Should -Be $newdescription
    }
}
