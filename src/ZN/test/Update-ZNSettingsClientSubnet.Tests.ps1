if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsClientSubnet'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsClientSubnet.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsClientSubnet' {
    It 'UpdateExpanded' {
        $setting = Get-ZNSettingsClientSubnet
        { Update-ZNSettingsClientSubnet -PrivateNetworksList @("192.168.1.0/24") } | Should -Not -Throw
        Update-ZNSettingsClientSubnet -PrivateNetworksList $setting.ConfigPrivateNetworksList
    }
}
