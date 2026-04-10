if(($null -eq $TestName) -or ($TestName -contains 'New-ZNSettingsWebhooksTrigger'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNSettingsWebhooksTrigger.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNSettingsWebhooksTrigger' {
    It 'RulesReview' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Rules' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'MFAPolicies' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
