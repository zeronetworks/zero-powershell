if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetsOt'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetsOt.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetsOt' {
    It 'UpdateExpanded' {
        $otAsset = Get-ZNAssetsOt | Select-Object -First 1
        $name = "ot"+(Get-Random -Minimum 1000 -Maximum 2000)
        Update-ZNAssetsOt -AssetId $otAsset.Id -DisplayName $name -Type $otAsset.AssetType
        $updatedOtAsset = Get-ZNAssetsOt | where {$_.Id -eq $otAsset.id}
        $updatedOtAsset.Name | Should -Be $name
    }
}
