if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNIdentityRule' {
    It 'UpdateExpanded' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        $user = (Get-ZNUser -Search user1).Items | where {$_.Name -eq "zUser1"}
        $description = "updatedtest"
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNIdentityRule -Action 1 -AssetId $group.Id -IdentityProtectionCategoryList @(2,3) -State 1 -UserIdsList @($user.Id) -Description "test" -ExpiresAt $expiresAt
        Update-ZNIdentityRule -RuleId $rule.itemid -Description $description
        $updatedrule = Get-ZNIdentityRule -RuleId $rule.itemid
        $updatedRule.ItemDescription | Should -Be $description
        Remove-ZNIdentityRule -RuleId $rule.itemId
    }
}
