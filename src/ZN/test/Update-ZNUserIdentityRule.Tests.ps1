if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNUserIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNUserIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNUserIdentityRule' {
    It 'UpdateExpanded' {
        $asset= (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $user = (Get-ZNUser -Search zuser1).Items | where {$_.Name -eq "zUser1"}
        $description = "updatedtest"
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNUserIdentityRule -UserId $user.Id -Action 1 -AssetId $asset -IdentityProtectionCategoryList @(2,5) -State 1 -UserIdsList @($user.Id) -Description "test" -ExpiresAt $expiresAt
        Update-ZNUserIdentityRule -UserId $user.Id -RuleId $rule.Itemid -Description $description
        $updatedrule = Get-ZNUserIdentityRule -UserId $user.Id -RuleId $rule.Itemid
        $updatedRule.ItemDescription | Should -Be $description
        Remove-ZNUserIdentityRule -UserId $user.Id -RuleId $rule.itemId
    }
}
