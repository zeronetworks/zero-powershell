<<<<<<<< HEAD:src/ZN/test/Update-ZNUsersManagedAsset.Tests.ps1
if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNUsersManagedAsset'))
========
if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNAssetsIdentityQueued'))
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/test/Get-ZNAssetsIdentityQueued.Tests.ps1
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
<<<<<<<< HEAD:src/ZN/test/Update-ZNUsersManagedAsset.Tests.ps1
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNUsersManagedAsset.Recording.json'
========
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetsIdentityQueued.Recording.json'
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/test/Get-ZNAssetsIdentityQueued.Tests.ps1
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

<<<<<<<< HEAD:src/ZN/test/Update-ZNUsersManagedAsset.Tests.ps1
Describe 'Update-ZNUsersManagedAsset' {
    It 'UpdateExpanded' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
========
Describe 'Get-ZNAssetsIdentityQueued' {
    It 'List' {
        { (Get-ZNAssetsIdentityQueued).Items } | Should -Not -Be $null
>>>>>>>> b291f81 (v0.0.13-preview):src/ZN/test/Get-ZNAssetsIdentityQueued.Tests.ps1
    }
}
