if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNAssetInboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetInboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNAssetInboundOtRule' {
    It 'Delete' {
        $asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $protocolsList = New-ZNProtocolsList -Protocol tcp -LocalPorts 123
        $destination = (Get-ZNOutboundOtRulesDestinationCandidate -Search "otv2").items
        $rule = New-ZNAssetInboundOtRule -AssetId $asset -Action 1 -Direction 1 -localEntityId $destination.Id -RemoteEntitiesIdList @($asset) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
        Remove-ZNAssetInboundOtRule -AssetId $asset -RuleId $rule.ItemId | Should -Not -Throw
    }
}
