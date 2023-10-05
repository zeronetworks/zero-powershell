if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetQueue' {
    It 'LearnExpanded' {
        $asset = Search-ZNAsset -Fqdn ls01.posh.local
        { Invoke-ZNAssetQueue -AssetId $asset -QueueDays 30 } | Should -Not -Throw
        Unprotect-ZNAsset -AssetId $asset
    }
}
