if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNGroupsExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNGroupsExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNGroupsExternalAccessPolicy' {
    It 'UpdateExpanded' {
        $groupId = ((Get-ZNGroup -Search "Externally Facing Servers").Items).Id
        $srcUser = Get-ZNExternalAccessPolicySourceUserCandidate -Search "Any user"
        $portsList = New-ZNPortsList -Protocol TCP -Ports 12
        $Policy = New-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag -DstAssetId $groupId -DstPortsList $portsList -DstProcessNamesList @("*") -Name "ExternalUpdateGroupsTest" -RuleDuration 4 -SrcUserIdsList @($srcUser.Id) -State 1 -Url "https://external.posh.local"
        
        $updatedPolicy = Update-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag -PolicyId $Policy.ItemId -Name "ExternalTestUpdateGroups" -Url "https://external.posh.local/updated"
        
        $updatedPolicy.ItemUrl | Should -Be "https://external.posh.local/updated"
        Remove-ZNGroupsExternalAccessPolicy -GroupId $groupId -GroupType tag -PolicyId $Policy.ItemId
    }
}
