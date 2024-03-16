if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsBreakGlass'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsBreakGlass.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsBreakGlass' {
    It 'UpdateExpanded' {
        { Update-ZNSettingsBreakGlass -AgentConfigAllowIdentity -AgentConfigAllowInbound -AgentConfigAllowOutbound -TrustConfigAllowIdentity -TrustConfigAllowInbound -TrustConfigAllowOutbound } | Should -Not -Throw
        Update-ZNSettingsBreakGlass -AgentConfigAllowIdentity:$false -AgentConfigAllowInbound:$false -AgentConfigAllowOutbound:$false -TrustConfigAllowIdentity:$false -TrustConfigAllowInbound:$false -TrustConfigAllowOutbound:$false 
    }
}
