if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNQueueAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNQueueAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNQueueAsset' {
    It 'QueueExpanded' {
        $assetId = Search-ZNAsset -Fqdn ls01.posh.local
        Invoke-ZNQueueAsset -Items @($assetId) -QueueDays 14
        $asset = (Get-ZNAssetsQueued).Items | where {$_.Fqdn -eq 'ls01.posh.local'}
        $asset.ProtectionState | Should -Be 5
        Unprotect-ZNAsset -Items @($assetId)
    }
}

