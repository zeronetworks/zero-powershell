if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNExternalAccessPolicy' {
    It 'List' {
        (Get-ZNExternalAccessPolicy).Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $policy = (Get-ZNExternalAccessPolicy).Items | Select-Object -First 1
        $policy = Get-ZNExternalAccessPolicy -PolicyId $policy.Id
        $policy.ItemId | Should -Not -BeNullOrEmpty
    }
}
