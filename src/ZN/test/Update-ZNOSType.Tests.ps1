if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNOSType'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNOSType.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNOSType' {
    It 'UpdateExpanded' -skip {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local                
        Update-ZNOSType -AssetIds @($asset.AssetId) -OSType 2
        (Get-ZNAsset -AssetId $asset.AssetId).Entity.AssetType | Should -Be 2
        Update-ZNOSType -AssetIds @($asset.AssetId) -OSType 1
    }
}
