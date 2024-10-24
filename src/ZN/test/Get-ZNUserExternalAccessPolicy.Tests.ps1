if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserExternalAccessPolicy' {
    It 'List' {
        $userId = ((Get-ZNUser -Search "zero").Items | where {$_.Name -eq "zero"}).Id
        (Get-ZNUserExternalAccessPolicy -UserId $userId).Items.Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $userId = ((Get-ZNUser -Search "zero").Items | where {$_.Name -eq "zero"}).Id
        $policies = (Get-ZNUserExternalAccessPolicy -UserId $userId).Items | Select -First 1
        $policy = Get-ZNUserExternalAccessPolicy -UserId $userId -PolicyId $policies.Id
        $policy.ItemId | Should -Not -BeNullOrEmpty
    }
}
