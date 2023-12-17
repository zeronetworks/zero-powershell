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
        $user = (Get-ZNUser).Items | Where {$_.Sid -ne $null} | Select -First 1
        { Search-ZNUser -Sid $user.Sid } | Should -Not -Throw
    }

    It 'Search1' {
        $user = (Get-ZNUser).Items | where {$_.PrincipalName -like "*\*"} | select -First 1
        { Search-ZNUser -PrincipalName $user.PrincipalName } | Should -Not -Throw
    }
}
