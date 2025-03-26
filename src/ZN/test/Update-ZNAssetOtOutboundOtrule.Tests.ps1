if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetOtOutboundOtrule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetOtOutboundOtrule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetOtOutboundOtrule' {
    It 'UpdateExpanded' {
        $assetOT = Get-ZNAssetsOt -Limit 400 | where {$_.Name -like "otv2"}
        $rule = (Get-ZNAssetOtOutboundOtrule -AssetId $assetOT.Id -AddBuiltins).Items | select -First 1
        $description = "Updated $(Get-Random -Minimum 1 -Maximum 1000)"
        $updated = Update-ZNAssetOtOutboundOtrule -AssetId $assetOT.Id -RuleId $rule.Id -Description $description
        $updated.ItemDescription | Should -Be $description
    }
}
