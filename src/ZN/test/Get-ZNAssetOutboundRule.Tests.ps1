if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOutboundRule' {
    It 'Get' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        { Get-ZNAssetOutboundRule -AssetId $asset -AddBuiltins } | Should -Not -BeNullOrEmpty
    }

    It 'List' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $rule = Get-ZNAssetOutboundRule -AssetId $asset -AddBuiltins | Select -first 1
        { Get-ZNAssetOutboundRule -AssetId $asset -RuleId $rule.id } | Should -Not -BeNullOrEmpty
    }
}
