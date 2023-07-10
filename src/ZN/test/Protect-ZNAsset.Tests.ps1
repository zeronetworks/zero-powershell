if(($null -eq $TestName) -or ($TestName -contains 'Protect-ZNAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Protect-ZNAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Protect-ZNAsset' {
    It 'ProtectExpanded' {
        $asset = Search-ZNAsset -Fqdn TS01.posh.local
        { Protect-ZNAsset -Items @($asset) } | Should -Not -Throw
        Unprotect-ZNAsset -Items @($asset)
    }
}
