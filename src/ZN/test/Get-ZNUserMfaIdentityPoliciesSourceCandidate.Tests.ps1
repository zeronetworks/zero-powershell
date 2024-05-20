if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserMfaIdentityPoliciesSourceCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserMfaIdentityPoliciesSourceCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserMfaIdentityPoliciesSourceCandidate' {
    It 'List' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        { (Get-ZNUserMfaIdentityPoliciesSourceCandidate -UserId $user.Id).Items } | Should -Not -Be $null
    }
}
