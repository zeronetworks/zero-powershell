if(($null -eq $TestName) -or ($TestName -contains 'Add-ZNCustomGroupsMember'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Add-ZNCustomGroupsMember.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Add-ZNCustomGroupsMember' {
    It 'AddExpanded' {
        New-ZNCustomGroup -Name "AddMemberTest"
        $customGroup = (Get-ZNGroup -Search AddMemberTest).Items
        $member= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        Add-ZNCustomGroupsMember -GroupId $customGroup.Id -MembersId $member
        $updatedcustomGroup = Get-ZNGroup -Search AddMemberTest
        (Get-ZNGroupsMember -GroupId $customGroup.id -GroupType custom -IncludeNestedMembers).Entities[0].id | Should -Be $member
        Remove-ZNCustomGroup -GroupId $customGroup.Id
    }
}
