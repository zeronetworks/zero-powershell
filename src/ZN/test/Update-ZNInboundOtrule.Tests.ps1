if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNInboundOtrule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNInboundOtrule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNInboundOtrule' {
    It 'UpdateExpanded' {
        $rules = Get-ZNInboundOtRule
        $rule = $rules.Items[0]
        $description = $rule.Description + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNInboundOtRule -RuleId $rule.Id -Description $description
        $updatedRule = Get-ZNInboundOtRule -RuleId $rule.Id
        $updatedRule.ItemDescription | Should -Be $description
    }
}
