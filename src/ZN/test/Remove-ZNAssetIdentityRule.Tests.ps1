if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNAssetIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNAssetIdentityRule' {
    It 'Delete' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        $user = (Get-ZNUser).Items | Select -First 1
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetIdentityRule -AssetId $asset -Action 1 -AssetId1 $asset -IdentityProtectionCategoryList 1 -State 1 -UserIdsList @($user.Id) -ExpiresAt $expiresAt
        { Remove-ZNAssetIdentityRule -Asset $asset -RuleId $rule.itemId } | Should -Not -Throw
    }
}
