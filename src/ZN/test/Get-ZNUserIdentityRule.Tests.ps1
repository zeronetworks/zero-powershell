if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserIdentityRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserIdentityRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserIdentityRule' {
    It 'List' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $rules = Get-ZNUserIdentityRule -UserId $user.Id -AddBuiltins
        $rules.Count | Should -BeGreaterThan 0
    }
    It 'Get' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $rules = Get-ZNUserIdentityRule -UserId $user.Id -AddBuiltins 
        $rule = Get-ZNUserIdentityRule -UserId $user.Id -RuleId $rules.Items[0].Id
        $rule.ItemId | Should -Be $rules.Items[0].Id
    }
}
