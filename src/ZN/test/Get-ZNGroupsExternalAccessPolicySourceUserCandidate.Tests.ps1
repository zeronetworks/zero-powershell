if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsExternalAccessPolicySourceUserCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsExternalAccessPolicySourceUserCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsExternalAccessPolicySourceUserCandidate' {
    It 'List' {
        $groupId = ((Get-ZNGroup -Search "Externally Facing Servers").Items).Id
        (Get-ZNGroupsExternalAccessPolicySourceUserCandidate -GroupId $groupId -GroupType tag).Count | Should -BeGreaterThan 0
    }
}
