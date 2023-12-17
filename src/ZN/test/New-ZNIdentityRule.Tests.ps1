if(($null -eq $TestName) -or ($TestName -contains 'New-ZNIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNIdentityRule' {
    It 'CreateExpanded' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        $user = (Get-ZNUser).Items | Select -First 1
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsIdentityRule -GroupId $group.id -GroupType tag -Action 1 -AssetId $group.Id -IdentityProtectionCategoryList @(1,2) -State 1 -UserIdsList @($user.Id) -ExpiresAt $expiresAt
        $rule.ItemAssetId | Should -Be $group.id
        Remove-ZNIdentityRule -RuleId $rule.itemId
    }
}
