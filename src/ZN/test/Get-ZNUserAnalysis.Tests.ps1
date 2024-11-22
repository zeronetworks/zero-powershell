if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserAnalysis'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserAnalysis.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserAnalysis' {
    It 'Get' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq 'zero'}
        { Get-ZNUserAnalysis -UserId $user.id -TrafficType 3 -from $epoch -Connectionstate 3 -Sort occurred_desc } | Should -Not -Throw
    }
}
