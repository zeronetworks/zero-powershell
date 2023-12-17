if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetIdentityRule' {
    It 'UpdateExpanded' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        $user = (Get-ZNUser -Search user1).Items | Select -First 1
        $description = "updatedtest"
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetIdentityRule -AssetId $asset -Action 1 -AssetId1 $asset -IdentityProtectionCategoryList @(4,5) -State 1 -UserIdsList @($user.Id) -description "test" -ExpiresAt $expiresAt
        Update-ZNAssetIdentityRule -AssetId $asset -RuleId $rule.Itemid -Description $description
        $updatedrule = Get-ZNAssetIdentityRule -AssetId $asset -RuleId $rule.Itemid
        $updatedRule.ItemDescription | Should -Be $description
        Remove-ZNAssetIdentityRule -AssetId $asset -RuleId $rule.ItemId
    }
}
