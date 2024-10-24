if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsIdentityRulesExcludedAssetsCandidate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsIdentityRulesExcludedAssetsCandidate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsIdentityRulesExcludedAssetsCandidate' {
    It 'List' {
        $group = Get-ZNGroup -Search "domain controllers" | where {$_.Id -like "g:t:*"}
        { Get-ZNGroupsIdentityRulesExcludedAssetsCandidate -GroupId $group.Id -GroupType tag } | Should -Not -BeNullOrEmpty
    }
}
