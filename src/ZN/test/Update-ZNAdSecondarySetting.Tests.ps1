if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAdSecondarySetting'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAdSecondarySetting.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAdSecondarySetting' {
    It 'UpdateExpanded' {
        $forestId = (Get-ZNAdSetting)[0].ForestId
        New-ZNAdSecondarySetting -Forest $forestId -Domain child05.posh.local -Dc dc1.child05.posh.local
        { Update-ZNAdSecondarySetting -Forest $forestId -DomainId "child05.posh.local" -Dc "newdc.child05.posh.local"  } | Should -Not -Throw
        Remove-ZNAdSecondarySetting -Forest $forestId -DomainId "child05.posh.local"
    }
}
