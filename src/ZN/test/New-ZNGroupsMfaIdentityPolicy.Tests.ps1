if(($null -eq $TestName) -or ($TestName -contains 'New-ZNGroupsMfaIdentityPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNGroupsMfaIdentityPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNGroupsMfaIdentityPolicy' {
    It 'CreateExpanded' {
        $group = (Get-ZNMfaIdentityPoliciesDestinationCandidate -Search "databases").items | where {$_.Id -like "g:t:*"}
        $source = (Get-ZNMfaIdentityPoliciesSourceCandidate -Search "Any Asset").items
        $users = (Get-ZNMfaIdentityPoliciesSourceUserCandidate -Search "Domain Admins").items
        $policy = New-ZNGroupsMfaIdentityPolicy -GroupId $group.id -GroupType tag -DstAssetId $group.id -FallbackToSingleLoggedOnUser:$true -IdentityProtectionCategoryList @(5) -MfaMethodsList @(4) -OverrideBuiltins:$false -RuleDuration 6 -SrcAssetIdsList @($source.id) -SrcUserIdsList @($users.id) -State 1
        $policy.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNMfaIdentityPolicy -ReactivePolicyId $policy.ItemId
    }
}
