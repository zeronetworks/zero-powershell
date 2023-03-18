if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAiExclusionNetworkBoth'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAiExclusionNetworkBoth.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAiExclusionNetworkBoth' {
    It 'SetExpanded' {
        $setting = Get-ZNAiExclusionNetworkboth
        $newsetting = Update-ZNAiExclusionNetworkBoth -Icmp
        $newsetting.Icmp | Should -be $true
        Update-ZNAiExclusionNetworkBoth -Icmp:$false
    }
}
