if(($null -eq $TestName) -or ($TestName -contains 'Deny-ZNAssetInboundRulesCleanup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Deny-ZNAssetInboundRulesCleanup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Deny-ZNAssetInboundRulesCleanup' {
    It 'Deny' {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        $rule = (Get-ZNAssetInboundRule -AssetId $asset.AssetId -AddAncestors -AddBuiltins).Items | where {$_.SuggestionType -eq 2} | Select-Object -First 1
        { Deny-ZNAssetInboundRulesCleanup -AssetId $asset.assetId -RuleId $rule.id -Details "powershelltesting" -Reason 7} | Should -Not -Throw
    }
}
