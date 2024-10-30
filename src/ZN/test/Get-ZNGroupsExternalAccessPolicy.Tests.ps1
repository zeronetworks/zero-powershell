if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsExternalAccessPolicy' {
    It 'List' {
        $groupId = ((Get-ZNGroup -Search "Externally Facing Servers").Items).Id
        (Get-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag).Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $groupId = ((Get-ZNGroup -Search "Externally Facing Servers").Items).Id
        $policy = (Get-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag).Items | Select-Object -First 1
        $policy = Get-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag -PolicyId $policy.Id
        $policy.ItemId | Should -Not -BeNullOrEmpty
    }
}
