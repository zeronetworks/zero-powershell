if(($null -eq $TestName) -or ($TestName -contains 'Invoke-ZNMirrorAsset'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-ZNMirrorAsset.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-ZNMirrorAsset' {
    It 'MirrorExpanded' {
        $asset1 = Search-ZNAsset -Fqdn mirror1.posh.local
        $asset2 = Search-ZNAsset -Fqdn mirror2.posh.local
        $group =  (Get-ZNGroup -Search MirrorAsset).Items
        Invoke-ZNMirrorAsset -OriginalAssetId $asset1.AssetId -TargetAssetId $asset2.AssetId 
        $members = (Get-ZNGroupsMember -Groupid $group.Id -GroupType custom -IncludeNestedMembers).ITems | select Name
        $members.Count | Should -BeGreaterThan 1
        Remove-ZNCustomGroupsMember -GroupId $group.id -MembersId @($asset2.AssetId)
    }
}
