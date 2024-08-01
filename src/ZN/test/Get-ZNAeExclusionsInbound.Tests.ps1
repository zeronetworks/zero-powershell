<<<<<<<< HEAD:src/ZN/test/Get-ZNAeExclusionsInbound.Tests.ps1
if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAeExclusionsInbound'))
========
if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNSettingsIdentityProtectionPolicy'))
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/test/Get-ZNSettingsIdentityProtectionPolicy.Tests.ps1
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
<<<<<<<< HEAD:src/ZN/test/Get-ZNAeExclusionsInbound.Tests.ps1
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAeExclusionsInbound.Recording.json'
========
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNSettingsIdentityProtectionPolicy.Recording.json'
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/test/Get-ZNSettingsIdentityProtectionPolicy.Tests.ps1
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

<<<<<<<< HEAD:src/ZN/test/Get-ZNAeExclusionsInbound.Tests.ps1
Describe 'Get-ZNAeExclusionsInbound' {
    It 'List' {
        (Get-ZNAeExclusionsInbound).Count | Should -BeGreaterThan 0
========
Describe 'Get-ZNSettingsIdentityProtectionPolicy' {
    It 'List' {
        (get-ZNSettingsIdentityProtectionPolicy).Count | Should -BeGreaterThan 0
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/test/Get-ZNSettingsIdentityProtectionPolicy.Tests.ps1
    }
}
