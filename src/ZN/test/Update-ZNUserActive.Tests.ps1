if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNUserActive'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNUserActive.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNUserActive' {
    It 'SetExpanded' {
        $user = (Get-ZNUser).Items | where {$_.Name -like "Guest*"}
        Update-ZNUserInactive -Items @($user.Id)
        { Update-ZNUserActive -Items @($user.Id) } | Should -Not -Throw
    }

    It 'SetExpanded1' {
        $user = (Get-ZNUser).Items | where {$_.Name -like "Guest*"}
        Update-ZNUserInactive -UserId $user.Id
        { Update-ZNUserActive -UserId $user.Id } | Should -Not -Throw
    }
}
