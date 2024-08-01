if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNInboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNInboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNInboundRule' {
    It 'List' {
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNInboundRulesSourceCandidate -RuleType 1 -search "any asset").Items
        $destination = (Get-ZNInboundRulesDestinationCandidate -Search "all segmented assets").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundRule -LocalEntityId $destination.Id -Action 1 -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt -IPSecOpt 1
        { (Get-ZNInboundRule).Items } | Should -Not -Be $null
        Remove-ZNInboundRule -RuleId $rule.ItemId
    }

    It 'Get' {
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNInboundRulesSourceCandidate -RuleType 1 -search "any asset").Items
        $destination = (Get-ZNInboundRulesDestinationCandidate -Search "all segmented assets").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundRule -LocalEntityId $destination.Id -Action 1 -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt -IPSecOpt 1
        $rule = Get-ZNInboundRule | Select-Object -First 1
        { (Get-ZNInboundRule -RuleId $rule.Id).Id } | Should -Not -Be $null
        Remove-ZNInboundRule -RuleId $rule.Id
    }
}
