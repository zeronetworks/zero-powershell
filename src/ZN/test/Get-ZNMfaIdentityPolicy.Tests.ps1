if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNMfaIdentityPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNMfaIdentityPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNMfaIdentityPolicy' {
    It 'List' {
        { (Get-ZNMfaIdentityPolicy).Items } | Should -Not -Be $null
    }

    It 'Get' {
        $policy = (Get-ZNMfaIdentityPolicy).Items | select -first 1
        { (Get-ZNMfaIdentityPolicy -ReactivePolicyId $policy.ItemId).ItemId } | Should -Not -Be $null
    }
}
