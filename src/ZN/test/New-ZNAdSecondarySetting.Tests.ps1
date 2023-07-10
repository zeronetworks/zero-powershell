if(($null -eq $TestName) -or ($TestName -contains 'New-ZNAdSecondarySetting'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNAdSecondarySetting.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNAdSecondarySetting' {
    It 'CreateExpanded' {
        $forestId = (Get-ZNAdSetting)[0].ForestId
        { New-ZNAdSecondarySetting -Forest $forestId -Domain child03.posh.local -Dc dc1.child03.posh.local } | Should -Not -Throw
        Remove-ZNAdSecondarySetting -forest $forestId -DomainId "child03.posh.local"

    }
}
