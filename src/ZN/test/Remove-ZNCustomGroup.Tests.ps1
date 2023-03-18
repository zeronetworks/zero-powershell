if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNCustomGroup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNCustomGroup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNCustomGroup' {
    It 'Delete' -skip {
        $name = "cgroup" + (Get-Random -Maximum 999999)
        $cGroup = New-ZNCustomGroup -Name $name -Description "test"
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
