if(($null -eq $TestName) -or ($TestName -contains 'Deny-ZNAssetOtInboundRulesCleanup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Deny-ZNAssetOtInboundRulesCleanup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Deny-ZNAssetOtInboundRulesCleanup' {
    It 'Deny' {
        $asset = Search-ZNAsset -Fqdn poshOTv2.posh.local
        $rule = (Get-ZNAssetInboundRule -AssetId $asset.AssetId ).Items | where {$_.SuggestionType -eq 2} | Select-Object -First 1
        { Deny-ZNAssetOTInboundRulesCleanup -AssetId $asset.assetId -RuleId $rule.id -Details "powershelltesting" -Reason 7 } | Should -Not -Throw
    }
}
