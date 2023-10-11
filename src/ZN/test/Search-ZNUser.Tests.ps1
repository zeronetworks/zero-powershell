if(($null -eq $TestName) -or ($TestName -contains 'Search-ZNUser'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Search-ZNUser.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Search-ZNUser' {
    It 'Search' {
        { Search-ZNUser -Sid "S-1-5-21-897785097-3420057113-2083682306-2101"} | Should -Not -Throw
    }

    It 'Search1' {
        { Search-ZNUser -PrincipalName "posh\nicholas" } | Should -Not -Throw
    }
}
