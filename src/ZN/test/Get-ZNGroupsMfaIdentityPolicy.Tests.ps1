if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsMfaIdentityPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsMfaIdentityPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsMfaIdentityPolicy' {
    It 'List' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        { (Get-ZNGroupsMfaIdentityPolicy -GroupId $group.id -GroupType tag).Items } | Should -Not -BeNullOrEmpty
    }

    It 'Get' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        $policy = (Get-ZNGroupsMfaIdentityPolicy -GroupId $group.id -GroupType tag).Items | Select -First 1
        { (Get-ZNGroupsMfaIdentityPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId $policy.ItemId).ItemId } | Should -Not -BeNullOrEmpty
    }
}
