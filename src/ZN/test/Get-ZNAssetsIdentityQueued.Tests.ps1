if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetsIdentityQueued'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetsIdentityQueued.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetsIdentityQueued' {
    It 'List' {
        $asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $assetProps = (Get-ZNAsset -AssetId $asset).Entity
        if($assetProps.StateIdentityProtectionState -ne 5){
            Invoke-ZNAssetIdentityQueue -AssetId $asset -QueueDays -1
        }
        (Get-ZNAssetsIdentityQueued).Count | Should -BeGreaterThan 0
    }
}
