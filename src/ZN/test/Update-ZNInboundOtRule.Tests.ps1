if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNInboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNInboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNInboundOtRule' {
    It 'UpdateExpanded' {
        $rule = (Get-ZNInboundOtrule -AddBuiltins).Items | select -First 1
        $description = "Updated $(Get-Random -Minimum 1 -Maximum 1000)"
        $updated = Update-ZNInboundOtrule -RuleId $rule.Id -Description $description
        $updated.ItemDescription | Should -Be $description
    }
}
