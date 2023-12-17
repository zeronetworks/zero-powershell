if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNUserIdentityQueue'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNUserIdentityQueue.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNUserIdentityQueue' {
    It 'QueueExpanded' {
        $svcAccount = ((Get-ZNUsersServiceAccount).Items | where {$_.ProtectionState -eq 1})[0]
        Invoke-ZNUserIdentityQueue -QueueDays 30 -UserIds @($svcAccount.Id)
        (Get-ZNUser -UserId $svcAccount.id).EntityProtectionState | Should -Be 5
        Unprotect-ZNUserIdentity -UserIds @($svcAccount.Id)
    }
}
