if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserMfaIdentityPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserMfaIdentityPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserMfaIdentityPolicy' {
    It 'List' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        (Get-ZNUserMfaIdentityPolicy -UserId $user.Id).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $policy = (Get-ZNUserMfaIdentityPolicy -UserId $user.Id).Items | select -first 1
        (Get-ZNUserMfaIdentityPolicy -UserId $user.Id -ReactivePolicyId $policy.id).ItemId | Should -Not -BeNullOrEmpty
    }
}
