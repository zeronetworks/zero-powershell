if(($null -eq $TestName) -or ($TestName -contains 'Unprotect-ZNUserIdentitySegment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNUserIdentitySegment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Unprotect-ZNUserIdentitySegment' {
    It 'UnprotectExpanded' {
        $svcAccount = (Get-ZNUsersServiceAccount).Items | where {$_.ProtectionState -eq 1} | Select -First 1
        Protect-ZNUserIdentitySegment -UserIds @($svcAccount.Id) 
        { Unprotect-ZNUserIdentitySegment -UserIds @($svcAccount.Id) } | Should -Not -Throw
    }
}
