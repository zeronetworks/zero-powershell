if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNExternalAccessPolicy' {
    It 'UpdateExpanded' {
        $assetId = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        $srcUser = Get-ZNExternalAccessPolicySourceUserCandidate -Search "Any user"
        $portsList = New-ZNPortsList -Protocol TCP -Ports 12
        $dstAsset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        $Policy = New-ZNExternalAccessPolicy -DstAssetId $dstAsset -DstPortsList $portsList -DstProcessNamesList @("*") -Name "ExternalUpdateTest" -RuleDuration 4 -SrcUserIdsList @($srcUser.Id) -State 1 -Url "https://external.posh.local"
        
        $updatedPolicy = Update-ZNExternalAccessPolicy -PolicyId $Policy.ItemId -Name "ExternalTestUpdated" -Url "https://external.posh.local/updated"
        
        $Policy.ItemUrl | Should -Be "https://external.posh.local/updated"
        Remove-ZNExternalAccessPolicy -PolicyId $Policy.ItemId
    }
}
