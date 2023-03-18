if(($null -eq $TestName) -or ($TestName -contains 'Unprotect-ZNAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Unprotect-ZNAsset' {
    It 'UnprotectExpanded' {
        $asset = (Get-ZNAsset).Items | where {$_.ProtectionState -eq 3} | select -First 1
        { Unprotect-ZNAsset -Items $asset.Id } | Should -Not -Throw
        Protect-ZNAsset -Items $asset.Id
    }
}
