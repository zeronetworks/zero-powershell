if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUsersIdentityQueued'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUsersIdentityQueued.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUsersIdentityQueued' {
    It 'List' {
        $svcAccount = ((Get-ZNUsersServiceAccount).Items | where {$_.ProtectionState -eq 1})[0]
        Invoke-ZNUserIdentityQueue -QueueDays 30 -UserIds @($svcAccount.Id)
        { Get-ZNUsersIdentityQueued } | Should -Not -Be $null
        Unprotect-ZNUserIdentity -UserIds @($svcAccount.Id)
    }
}
