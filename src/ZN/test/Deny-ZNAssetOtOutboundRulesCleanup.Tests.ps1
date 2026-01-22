if(($null -eq $TestName) -or ($TestName -contains 'Deny-ZNAssetOtOutboundRulesCleanup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Deny-ZNAssetOtOutboundRulesCleanup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Deny-ZNAssetOtOutboundRulesCleanup' {
    It 'Deny' {
        $asset = Search-ZNAsset -Fqdn poshOTv2.posh.local
        $rule = (Get-ZNAssetOutboundRule -AssetId $asset.AssetId -Direction 3).Items | where {$_.SuggestionType -eq 2} | Select-Object -First 1
        { Deny-ZNAssetOTOutboundRulesCleanup -AssetId $asset.assetId -RuleId $rule.id -Details "powershelltesting" -Reason 7 } | Should -Not -Throw
    }
}
