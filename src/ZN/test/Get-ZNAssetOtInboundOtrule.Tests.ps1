if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetOtInboundOtrule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtInboundOtrule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetOtInboundOtrule' {
    It 'List' {
        $assetOt = (Get-ZNAssetsOt).Items | where {$_.Fqdn -eq "otv2.posh.local"}
        (Get-ZNAssetOtInboundOtrule -AssetId $assetOt.Id -AddBuiltins).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $assetOt = (Get-ZNAssetsOt).Items | where {$_.Fqdn -eq "otv2.posh.local"}
        $rule = (Get-ZNAssetOtInboundOtrule -AssetId $assetOt.Id -AddBuiltins).Items | Select -First 1
        $rule = Get-ZNAssetOtInboundOtrule -AssetId $assetOt.Id -RuleId $rule.Id
        $rule.ItemId | Should -Not -BeNullOrEmpty
    }
}
