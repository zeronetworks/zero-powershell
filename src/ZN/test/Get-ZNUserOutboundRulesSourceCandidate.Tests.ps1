if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserOutboundRulesSourceCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserOutboundRulesSourceCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserOutboundRulesSourceCandidate' {
    It 'List' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        (Get-ZNUserOutboundRulesSourceCandidate -UserId $user.Id).Items.Count | Should -BeGreaterThan 0
    }
}
