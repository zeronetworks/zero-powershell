if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupMemberOf'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupMemberOf.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupMemberOf' {
    It 'Get' {
        $group = Get-ZNAdGroup -Search "Domain Admins" | Select-Object -first 1
        { Get-ZNGroupMemberOf -GroupId $group.id } | Should -Not -Be $null
    }
}
