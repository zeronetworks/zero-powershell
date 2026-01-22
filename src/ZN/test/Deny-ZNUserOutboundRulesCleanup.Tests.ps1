if(($null -eq $TestName) -or ($TestName -contains 'Deny-ZNUserOutboundRulesCleanup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Deny-ZNUserOutboundRulesCleanup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Deny-ZNUserOutboundRulesCleanup' {
    It 'Deny' {
        $user = (Get-ZNUser -Search posh\zero).items | Select-Object -First 1
        $rule = (Get-ZNUserOutboundRule -UserId $user.id -AddAncestors -AddBuiltins -limit 400).Items | where {$_.SuggestionType -eq 2} | Select-Object -First 1
        { Deny-ZNUserOutboundRulesCleanup -UserId $user.id -RuleId $rule.id -Details "powershelltesting" -Reason 7 } | Should -Not -Throw
    }
}
