if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNGroupsIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNGroupsIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNGroupsIdentityRule' {
    It 'UpdateExpanded' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        $user = (Get-ZNUser -Search user1).Items | where {$_.Name -eq "User1"}
        $description = "updatedtest"
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsIdentityRule -GroupId $group.id -GroupType tag -Action 1 -AssetId $group.Id -IdentityProtectionCategoryList 1 -State 1 -UserIdsList @($user.Id) -Description "test" -ExpiresAt $expiresAt
        Update-ZNGroupsIdentityRule -GroupId $group.Id -GroupType tag -RuleId $rule.itemId -Description $description
        $updatedrule = Get-ZNGroupsIdentityRule -GroupId $group.Id -GroupType tag -RuleId $rule.itemId
        $updatedRule.ItemDescription | Should -Be $description
        Remove-ZNGroupsIdentityRule -GroupId $group.Id -GroupType tag -RuleId $rule.itemId
    }
}
