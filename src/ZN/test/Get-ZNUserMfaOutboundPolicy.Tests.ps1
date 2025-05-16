if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNUserMfaOutboundPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNUserMfaOutboundPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNUserMfaOutboundPolicy' {
    It 'List' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        (Get-ZNUserMfaOutboundPolicy -UserId $user.Id).Count | Should -BeGreaterThan 0
    }

    It 'Get' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $policy = Get-ZNUserMfaOutboundPolicy -UserId $user.Id | select -First 1
        (Get-ZNUserMfaOutboundPolicy -UserId $user.Id -reactivePolicyId $policy.Id).ItemId | Should -Not -BeNullOrEmpty
    }
}
