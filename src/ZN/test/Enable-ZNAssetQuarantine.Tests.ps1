if(($null -eq $TestName) -or ($TestName -contains 'Enable-ZNAssetQuarantine'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Enable-ZNAssetQuarantine.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Enable-ZNAssetQuarantine' {
    It 'EnableExpanded' {
        $assetId = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        #Protect-ZNAssetNetworkSegment -AssetId $assetId
        { Enable-ZNAssetQuarantine -AssetId $assetId -Quarantine } | Should -Not -Throw
        Enable-ZNAssetQuarantine -AssetId $assetId -Quarantine:$false
        #Unprotect-ZNAssetNetworkSegment -AssetId $assetId
    }

    It 'Enable' {
        $assetId = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        #Protect-ZNAssetNetworkSegment -AssetId $assetId
        { Enable-ZNAssetQuarantine -AssetIds @($assetId) -Quarantine } | Should -Not -Throw
        Enable-ZNAssetQuarantine -AssetIds @($assetId) -Quarantine:$false
        #Unprotect-ZNAssetNetworkSegment -AssetId $assetId
    }
}
