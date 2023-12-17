if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsAssetManager'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsAssetManager.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsAssetManager' {
    It 'List' {
        $manager = (Get-ZNUser).Items | Select -First 1
        New-ZNCustomGroup -Name "GetGroupsAssetManagerTest"
        $customGroup = (Get-ZNGroup -Search GetGroupsAssetManagerTest).Items
        Add-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom -ManagerIds $manager.id
        $managers = Get-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom
        $managers.ManagerId | Should -Be $manager.id
        Remove-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom -GroupOrUserId $manager.id
        Remove-ZNCustomGroup -GroupId $customGroup.Id
    }
}
