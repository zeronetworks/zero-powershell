if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNOutboundRule' {
    It 'Delete' {
        $portsList = New-ZNPortsList -Protocol TCP -Ports (Get-Random -Minimum 1 -Maximum 1024)
        $source = (Get-ZNOutboundRulesSourceCandidate -search "all segmented assets").Items
        $destination = Invoke-ZNEncodeEntityIp -IP 8.8.8.8
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNOutboundRule -Action 1 -LocalEntityId $source.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt
        { Remove-ZNOutboundRule -RuleId $rule.Item.Id } | Should -Not -Throw
    }
}
