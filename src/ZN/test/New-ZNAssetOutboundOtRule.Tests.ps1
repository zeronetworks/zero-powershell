if(($null -eq $TestName) -or ($TestName -contains 'New-ZNAssetOutboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNAssetOutboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNAssetOutboundOtRule' {
    It 'CreateExpanded' {
        $asset = (Search-ZNAsset -Fqdn poshotv2.posh.local).AssetId
        $protocolsList = New-ZNProtocolsList -Protocol tcp -LocalPorts 111
        $destination = (Get-ZNOutboundOtRulesDestinationCandidate -Search "any asset").items[0]
        $rule = New-ZNAssetOutboundOtRule -AssetId $asset -Action 1 -Direction 2 -localEntityId $asset -RemoteEntitiesIdList @($destination.id) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
        $rule.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNAssetOutboundOtRule -AssetId $asset -RuleId $rule.ItemId
    }
}
