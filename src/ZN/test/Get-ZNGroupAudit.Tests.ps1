if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupAudit'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupAudit.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupAudit' {
    It 'Get' {
        $group = (Get-ZNGroup -Search "Domain Controllers").Items | where {$_.Name -eq "Domain Controllers" -and $_.domain -eq "tag"}
        (Get-ZNGroupAudit -GroupId $group.id -grouptype ad).Items.Count | Should -BeGreaterThan 0
    }
}
