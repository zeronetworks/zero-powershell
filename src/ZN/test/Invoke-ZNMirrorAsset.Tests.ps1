if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNMirrorAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNMirrorAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNMirrorAsset' {
    It 'MirrorExpanded' {
        { Invoke-ZNMirrorAsset -OriginalAssetId "a:l:4NMHdoaO" -TargetAssetId "a:l:18VODYZg" } | Should -Not -Throw
    }

    It 'MirrorExpanded1' -skip {
        { Invoke-ZNMirrorAsset -AssetId "a:l:4NMHdoaO" -OriginalAssetId "a:l:4NMHdoaO" -TargetAssetId "a:l:18VODYZg" } | Should -Not -Throw
    }
}
