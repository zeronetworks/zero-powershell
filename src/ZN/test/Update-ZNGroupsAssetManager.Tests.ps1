if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNGroupsAssetManager'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNGroupsAssetManager.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNGroupsAssetManager' {
    It 'UpdateExpanded' {
        $manager = (get-znuser).Items | select -First 1
        New-ZNCustomGroup -Name "AddGroupsAssetManagerTest"
        $customGroup = (Get-ZNGroup -Search AddGroupsAssetManagerTest).Items
        Add-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom -ManagerIds $manager.id -Permission 3

        Update-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom -ManagerId $manager.id -Permission 2
        $managers = Get-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom
        $managers.Permission | Should -Be 2
        Remove-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom -GroupOrUserId $manager.id
        Remove-ZNCustomGroup -GroupId $customGroup.Id
    }
}
