if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetOutboundRestriction'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetOutboundRestriction.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetOutboundRestriction' {
    It 'UpdateExpanded' {
        $assetId = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        { Update-ZNAssetOutboundRestriction -AssetIds @($AssetId) -OutboundRestriction 2 } | Should -Not -Throw
        Update-ZNAssetOutboundRestriction -AssetIds @($AssetId) -OutboundRestriction 1
    }
}
