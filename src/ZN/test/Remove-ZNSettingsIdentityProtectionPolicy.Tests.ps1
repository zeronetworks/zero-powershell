if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNSettingsIdentityProtectionPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNSettingsIdentityProtectionPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNSettingsIdentityProtectionPolicy' {
    It 'Delete' {
        $group = (Get-ZNGroup -Search servers).Items | where {$_.Domain -eq "system" -and $_.Name -eq "Servers"}
        $policy = New-ZNSettingsIdentityProtectionPolicy -ExistingMembersLearningDays 30 -GroupId $group.id -NewMembersLearningDays 30 -Enabled:$false
        {Remove-ZNSettingsIdentityProtectionPolicy -ProtectionPolicyId $policy.ItemId } | Should -Not -Throw
    }
}
