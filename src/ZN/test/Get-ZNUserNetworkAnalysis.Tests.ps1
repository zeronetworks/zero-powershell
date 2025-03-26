if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserNetworkAnalysis'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserNetworkAnalysis.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserNetworkAnalysis' {
    It 'Get' {
        $user = (get-znuser -Search "zero").Items | where {$_.Name -eq "zero"}
        $analysis = Get-ZNUserNetworkAnalysis -UserId $user.Id
        $analysis.CountByDstAsset | Should -BeGreaterThan 0
    }
}
