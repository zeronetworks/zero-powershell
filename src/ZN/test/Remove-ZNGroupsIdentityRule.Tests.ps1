if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNGroupsIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNGroupsIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNGroupsIdentityRule' {
    It 'Delete' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        $user = (Get-ZNUser).Items | Select -First 1
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsIdentityRule -GroupId $group.id -GroupType tag -Action 1 -AssetId $group.Id -IdentityProtectionCategoryList @(1,3) -State 1 -UserIdsList @($user.Id) -ExpiresAt $expiresAt
        { Remove-ZNGroupsIdentityRule -GroupId $group.id -GroupType tag -RuleId $rule.itemId } | Should -Not -Throw
    }
}
