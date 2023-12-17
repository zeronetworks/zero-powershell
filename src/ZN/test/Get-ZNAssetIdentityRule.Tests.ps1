if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNAssetIdentityRule' {
    It 'List' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        $rules = Get-ZNAssetIdentityRule -Asset $asset -AddBuiltins
        $rules.Count | Should -BeGreaterThan 0
    }
    It 'Get' {
        $asset = Search-ZNAsset -Fqdn dc01.posh.local
        $rules = Get-ZNAssetIdentityRule -Asset $asset -AddBuiltins
        $ruleId = $rules.Items[0].id
        $rule = Get-ZNAssetIdentityRule -Asset $asset -RuleId $ruleId
        $rule.ItemAssetId | Should -Not -Be $null
    }
}
