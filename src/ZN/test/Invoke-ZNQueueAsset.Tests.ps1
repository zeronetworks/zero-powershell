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
        $asset = (Get-ZNAsset).Items | where {$_.ProtectionState -eq 1} | Select-Object -first 1
        { Invoke-ZNQueueAsset -Items @($asset.id) -QueueDays 30 } | Should -Not -Be $null
        Unprotect-ZNAsset -Items @($asset.id)
    }
}
