if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNCustomGroupMember'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNCustomGroupMember.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNCustomGroupMember' {
    It 'List' {
        $group = (Get-ZNGroup -Limit 400).items | where {$_.Id -like "g:c:*"} | where {$_.DirectMembersCount -gt 0} | Select-Object -First 1
        $customGroup = Get-ZNCustomGroup -GroupId $group.Id
        $Members = Get-ZNCustomGroupMember -GroupId $group.Id
        $Members.count | Should -BeGreaterThan 0
    }
}
