if(($null -eq $TestName) -or ($TestName -contains 'Protect-ZNUserIdentity'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Protect-ZNUserIdentity.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Protect-ZNUserIdentity' {
    It 'ProtectExpanded' {
        $svcAccount = (Get-ZNUsersServiceAccount).Items | where {$_.ProtectionState -eq 1}
        { Protect-ZNUserIdentity -UserIds @($svcAccount.Id) } | Should -Not -Throw
        Unprotect-ZNUserIdentity -UserIds @($svcAccount.Id)
    }
}
