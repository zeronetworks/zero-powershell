if(($null -eq $TestName) -or ($TestName -contains 'Protect-ZNAssetsOt'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Protect-ZNAssetsOt.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Protect-ZNAssetsOt' {
    It 'ProtectExpanded' {
        $asset = Get-ZNAssetsOt | Select-Object -First 1
        { Protect-ZNAssetsOt -Items @($asset.Id) } | Should -Not -Throw
        Unprotect-ZNAssetsOt -Items @($asset.Id)
    }
}
