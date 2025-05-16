if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAsset' {
    It 'UpdateExpanded' {
        $assetId = (Search-ZNAsset -Fqdn renameLinux.posh.linux).AssetId
        $random = Get-Random -Min 1 -Max 100
        Update-ZNAsset -AssetId $assetId -DisplayName "renameLinxux$random" -Fqdn renameLinux.posh.linux
        $asset = Get-ZNAsset -AssetId $assetId
        $asset.EntityName | Should -Be "renameLinxux$random"
    }
}
