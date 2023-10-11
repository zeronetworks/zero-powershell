if(($null -eq $TestName) -or ($TestName -contains 'Add-ZNGroupsAssetManager'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Add-ZNGroupsAssetManager.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Add-ZNGroupsAssetManager' {
    It 'AddExpanded' {
        $manager = Get-ZNUser -Search Test
        New-ZNCustomGroup -Name "AddGroupsAssetManagerTest"
        $customGroup = Get-ZNGroup -Search AddGroupsAssetManagerTest
        Add-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom -ManagerIds $manager.id
        $managers = Get-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom
        $managers.ManagerId | Should -Be $manager.id
        Remove-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom -GroupOrUserId $manager.id
        Remove-ZNCustomGroup -GroupId $customGroup.Id
    }
}
