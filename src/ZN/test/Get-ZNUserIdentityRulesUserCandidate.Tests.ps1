if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserIdentityRulesUserCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserIdentityRulesUserCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserIdentityRulesUserCandidate' {
    It 'List' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        { Get-ZNUserIdentityRulesUserCandidate -UserId $user.Id } | Should -Not -BeNullOrEmpty
    }
}
