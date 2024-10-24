if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetMfaIdentityPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetMfaIdentityPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetMfaIdentityPolicy' {
    It 'UpdateExpanded' {
        $asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $group = (Get-ZNMfaIdentityPoliciesDestinationCandidate -Search "databases").items | where {$_.Id -like "g:t:*"}
        $source = (Get-ZNMfaIdentityPoliciesSourceCandidate -Search "Any Asset").items
        $users = (Get-ZNMfaIdentityPoliciesSourceUserCandidate -Search "Domain Admins").items
        $policy = New-ZNAssetMfaIdentityPolicy -AssetId $asset -DstAssetId $group.id -FallbackToSingleLoggedOnUser:$true -IdentityProtectionCategoryList @(5) -MfaMethodsList @(4) -OverrideBuiltins:$false -RuleDuration 6 -SrcAssetIdsList @($source.id) -SrcUserIdsList @($users.id) -State 1
        
        Update-ZNAssetMfaIdentityPolicy -AssetId $asset -ReactivePolicyId $policy.ItemId -Description "updatedpolicy"
        $updatedpolicy = Get-ZNAssetMfaIdentityPolicy -AssetId $asset -ReactivePolicyId $policy.ItemId
        $updatedpolicy.ItemDescription | Should -Be "updatedpolicy"
        Remove-ZNMfaIdentityPolicy -ReactivePolicyId $policy.ItemId
    }
}
