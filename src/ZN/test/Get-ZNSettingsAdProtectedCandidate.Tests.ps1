if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSettingsAdProtectedCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSettingsAdProtectedCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNSettingsAdProtectedCandidate' {
    It 'Get' {
        $ad = Get-ZNSettingsAd | where {$_.ActiveDirectoryInfoDomainName -eq "posh.local"}
        (Get-ZNSettingsAdProtectedCandidate -ForestId $ad.ForestId).Items.Count | Should -BeGreaterThan 0
    }
}
