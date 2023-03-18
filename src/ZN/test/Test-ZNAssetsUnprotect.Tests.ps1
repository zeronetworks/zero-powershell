if(($null -eq $TestName) -or ($TestName -contains 'Test-ZNAssetsUnprotect'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNAssetsUnprotect.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Test-ZNAssetsUnprotect' {
    It 'ValidateExpanded' {
        $asset = (Get-ZNAsset).Items | where {$_.ProtectionState -eq 3} | select -First 1
        $test =  Test-ZNAssetsUnprotect -Items $asset.Id
        $test | Should -Be 1
    }
}
