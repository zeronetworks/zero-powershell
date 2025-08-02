if(($null -eq $TestName) -or ($TestName -contains 'Enable-ZNUserQuarantine'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Enable-ZNUserQuarantine.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Enable-ZNUserQuarantine' {
    It 'EnableExpanded' {
        $user = (Get-ZNUser -Search bad).Items[0]
        Enable-ZNUserQuarantine -UserId $user.Id -Quarantine
        $quser = (Get-ZNUser -Search bad).Items[0]
        $quser.IsQuarantined | Should -Be $true
        Enable-ZNUserQuarantine -UserId $user.Id -Quarantine:$false
    }
}
