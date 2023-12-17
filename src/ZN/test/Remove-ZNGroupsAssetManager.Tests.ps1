$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNGroupsAssetManager.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Remove-ZNGroupsAssetManager' {
    It 'Delete' {
        $manager = (Get-ZNUser).Items | Select -First 1
        New-ZNCustomGroup -Name "RemoveGroupsAssetManagerTest"
        $customGroup = (Get-ZNGroup -Search RemoveGroupsAssetManagerTest).Items
        Add-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom -ManagerIds $manager.id
        $managers = Get-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType Custom
        { Remove-ZNGroupsAssetManager -GroupId $customGroup.Id -GroupType custom -GroupOrUserId $manager.id} | Should -Not -Throw
        Remove-ZNCustomGroup -GroupId $customGroup.Id
    }
}
 