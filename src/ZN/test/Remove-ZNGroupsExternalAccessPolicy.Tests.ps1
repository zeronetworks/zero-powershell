if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNGroupsExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNGroupsExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNGroupsExternalAccessPolicy' {
    It 'Delete' {
        $groupId = ((Get-ZNGroup -Search "Externally Facing Servers").Items).Id
        $srcUser = Get-ZNExternalAccessPolicySourceUserCandidate -Search "Any user"
        $portsList = New-ZNPortsList -Protocol TCP -Ports 12
        $Policy = New-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag -DstAssetId $groupId -DstPortsList $portsList -DstProcessNamesList @("*") -Name "ExternalDeleteGroupsTest" -RuleDuration 4 -SrcUserIdsList @($srcUser.Id) -State 1 -Url "https://external.posh.local"
        { Remove-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag -PolicyId $Policy.ItemId } | Should -Not -Throw
    }
}
