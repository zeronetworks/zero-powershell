if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNAssetInboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetInboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNAssetInboundRule' {
    It 'Delete' {
        $asset= (Search-ZNAsset -Fqdn "linux0.posh.local").AssetId
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNAssetInboundRulesSourceCandidate -AssetId $asset -RuleType 1 -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetInboundRule -AssetId $asset -Action 1 -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt -IPSecOpt 1
        { Remove-ZNAssetInboundRule -AssetId $asset -RuleId $rule.ItemId } | Should -Not -Throw
    }
}
