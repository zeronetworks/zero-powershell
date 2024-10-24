if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetInboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetInboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetInboundRule' {
    It 'List' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNAssetInboundRulesSourceCandidate -AssetId $asset -RuleType 1 -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetInboundRule -AssetId $asset -LocalEntityId $asset -Action 1 -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        { Get-ZNAssetInboundRule -AssetId $asset } | Should -Not -BeNullOrEmpty
        Remove-ZNAssetInboundRule -AssetId $asset -RuleId $rule.ItemId
    }

    It 'Get' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNInboundRulesSourceCandidate -RuleType 1 -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetInboundRule -AssetId $asset -LocalEntityId $asset -Action 1 -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNAssetInboundRule -AssetId $asset | Select-Object -First 1
        { (Get-ZNAssetInboundRule -AssetId $asset -RuleId $rule.Id).ItemId } | Should -Not -BeNullOrEmpty
        Remove-ZNAssetInboundRule -AssetId $asset -RuleId $rule.Id
    }
}
