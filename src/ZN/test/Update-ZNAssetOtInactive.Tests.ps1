if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetOtInactive'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetOtInactive.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetOtInactive' {
    It 'SetExpanded' {
        $assetOT = Get-ZNAssetsOt -ShowInactive -Limit 400 | where {$_.Name -eq "activeOT"}
        { Update-ZNAssetOtInactive -AssetId $assetOT.Id } | Should -Not -Throw
        Update-ZNAssetOtActive -AssetId $assetOT.Id -DisplayName $assetOT.Name -Fqdn $assetOT.Fqdn -Ipv4 $assetOT.IPV4Addresses[0] -Type 5
    }
}
