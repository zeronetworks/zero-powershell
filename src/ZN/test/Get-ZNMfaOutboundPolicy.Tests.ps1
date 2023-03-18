if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNMfaOutboundPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNMfaOutboundPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNMfaOutboundPolicy' {
    It 'List' {
        { Get-ZNMfaOutboundPolicy } | Should -Not -Be $null
    }

    It 'Get' {
        $policy = Get-ZNMfaOutboundPolicy | Select-Object -First 1
        { Get-ZNMfaOutboundPolicy -ReactivePolicyId $policy.Id } | Should -Not -Be $null
    }
}
