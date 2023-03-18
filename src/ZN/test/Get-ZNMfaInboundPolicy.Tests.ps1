if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNMfaInboundPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNMfaInboundPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNMfaInboundPolicy' {
    It 'List' {
        { Get-ZNMfaInboundPolicy } | Should -Not -Be $null
    }

    It 'Get' {
        $policy = Get-ZNMfaInboundPolicy | Select-Object -First 1
        { Get-ZNMfaInboundPolicy -ReactivePolicyId $policy.Id } | Should -Not -Be $null
    }
}
