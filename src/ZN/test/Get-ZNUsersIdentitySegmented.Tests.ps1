if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUsersIdentitySegmented'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUsersIdentitySegmented.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUsersIdentitySegmented' {
    It 'List' {
        $svcAccount = ((Get-ZNUsersServiceAccount).Items | where {$_.ProtectionState -eq 1})[0]
        Protect-ZNUserIdentitySegment -UserIds @($svcAccount.Id)
        (Get-ZNUsersIdentitySegmented).Items.Count | Should -BeGreaterThan 0
        Unprotect-ZNUserIdentitySegment -UserIds @($svcAccount.Id)
    }
}
