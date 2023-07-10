if(($null -eq $TestName) -or ($TestName -contains 'Test-ZNAssetsProtection'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNAssetsProtection.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Test-ZNAssetsProtection' {
    It 'ValidateExpanded' {
        $asset = (Get-ZNAsset).Items | where {$_.ProtectionState -eq 1} | select -First 1
        $test =  Test-ZNAssetsProtection -Items $asset.Id
        $test | Should -Be 1
    }
}
