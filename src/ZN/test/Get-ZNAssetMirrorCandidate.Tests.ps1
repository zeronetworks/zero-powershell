if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetMirrorCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetMirrorCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetMirrorCandidate' {
    It 'List' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        $mirrorCandidate = Get-ZNAssetMirrorCandidate -AssetId $asset.AssetId
        $mirrorCandidate.Count | Should -BeGreaterThan 0
    }
}
