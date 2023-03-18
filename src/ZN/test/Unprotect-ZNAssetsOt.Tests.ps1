if(($null -eq $TestName) -or ($TestName -contains 'Unprotect-ZNAssetsOt'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Unprotect-ZNAssetsOt.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Unprotect-ZNAssetsOt' {
    It 'UnprotectExpanded' {
        $asset = Get-ZNAssetsOt | where {$_.ProtectionState -eq 1} | select -First 1
        Protect-ZNAssetsOt -Items $asset.Id
        { Unprotect-ZNAssetsOt -Items $asset.Id } | Should -Not -Throw
    }
}
