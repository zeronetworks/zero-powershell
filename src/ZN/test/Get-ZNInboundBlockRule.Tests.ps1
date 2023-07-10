if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNInboundBlockRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNInboundBlockRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNInboundBlockRule' {
    It 'List' {
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = Invoke-ZNEncodeEntityIP -Ip 1.1.1.1
        $destination = (Get-ZNInboundAllowRulesDestinationCandidate -Search "all protected assets").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundBlockRule -LocalEntityId $destination.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source) -State 1 -ExpiresAt $expiresAt
        { (Get-ZNInboundBlockRule).Items } | Should -Not -Be $null
    }

    It 'Get' {
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = Invoke-ZNEncodeEntityIP -Ip 1.1.1.1
        $destination = (Get-ZNInboundAllowRulesDestinationCandidate -Search "all protected assets").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundBlockRule -LocalEntityId $destination.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNInboundBlockRule | Select-Object -First 1
        { (Get-ZNInboundBlockRule -RuleId $rule.Id).Item } | Should -Not -Be $null
    }
}
