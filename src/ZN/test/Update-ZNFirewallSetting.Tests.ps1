if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNFirewallSetting'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNFirewallSetting.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNFirewallSetting' {
    It 'UpdateExpanded' {
        $setting = Get-ZNFirewallSetting
        if($setting -eq $true){
            $newsetting = $false
        }
        else{
            $newsetting = $true
        }
        Update-ZNFirewallSetting -ImplicitIcmpRuleEnabled:$newsetting
        $updatesetting = Get-ZNFirewallSetting
        $updatesetting | Should -Be $newsetting
    }
}
