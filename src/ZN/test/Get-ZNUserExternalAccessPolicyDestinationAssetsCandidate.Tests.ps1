if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserExternalAccessPolicyDestinationAssetsCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserExternalAccessPolicyDestinationAssetsCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserExternalAccessPolicyDestinationAssetsCandidate' {
    It 'List' {
        $userId = ((Get-ZNUser -Search "zero").Items | where {$_.Name -eq "zero"}).Id
        (Get-ZNUserExternalAccessPolicyDestinationAssetsCandidate -UserId $userId).Count | Should -BeGreaterThan 0
    }
}
