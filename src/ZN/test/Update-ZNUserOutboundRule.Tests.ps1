if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNUserOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNUserOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNUserOutboundRule' {
    It 'UpdateExpanded' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $rules = Get-ZNUserOutboundRule -UserId $user.Id
        $rule = $rules.Items[0]
        $description = $rule.Description + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNUserOutboundRule -UserId $user.Id -RuleId $rule.Id -Description $description
        $updatedRule = Get-ZNUserOutboundRule -UserId $user.Id -RuleId $rule.Id
        $updatedRule.ItemDescription | Should -Be $description
    }
    
}
