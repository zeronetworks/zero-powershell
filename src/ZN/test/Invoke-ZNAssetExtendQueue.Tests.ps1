if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetExtendQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetExtendQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetExtendQueue' {
    It 'LearnExpanded' {
        $asset = Search-ZNAsset -Fqdn ls01.posh.local
        Invoke-ZNAssetQueue -AssetId $asset -QueueDays 14
        { Invoke-ZNAssetExtendQueue -AssetId $asset -ExtendByDays 14 } | Should -Not -Throw
        Unprotect-ZNAsset -Assetid $asset
    }
}
