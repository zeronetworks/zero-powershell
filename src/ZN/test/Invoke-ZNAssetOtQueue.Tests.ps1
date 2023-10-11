if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNAssetOtQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNAssetOtQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNAssetOtQueue' {
    It 'LearnExpanded' {
        $asset = Search-ZNAsset -Fqdn ot202879
        { Invoke-ZNAssetOtQueue -AssetId $asset -QueueDays 30 } | Should -Not -Throw
        Unprotect-ZNAssetOt -AssetId $asset
    }
}
