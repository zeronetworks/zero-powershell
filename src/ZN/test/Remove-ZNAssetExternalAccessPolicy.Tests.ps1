if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNAssetExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNAssetExternalAccessPolicy' {
    It 'Delete' {
        $srcUser = Get-ZNExternalAccessPolicySourceUserCandidate -Search "Any user"
        $portsList = New-ZNPortsList -Protocol TCP -Ports 12
        $dstAsset = (Search-ZNAsset -Fqdn ls01.posh.local).AssetId
        $Policy = New-ZNExternalAccessPolicy -DstAssetId $dstAsset -DstPortsList $portsList -DstProcessNamesList @("*") -Name "ExternalDeleteAssetTest" -RuleDuration 4 -SrcUserIdsList @($srcUser.Id) -State 1 -Url "https://external.posh.local"
        { Remove-ZNAssetExternalAccessPolicy -AssetId $dstAsset -PolicyId $Policy.ItemId } | SHould -Not -Throw
    }
}
