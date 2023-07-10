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
        $asset = Search-ZNAsset -fqdn linux0.posh.local
        Protect-ZNAsset -Items @($asset)
        { Unprotect-ZNAsset -Items $asset } | Should -Not -Throw
    }
}
