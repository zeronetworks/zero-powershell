if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNCustomGroup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNCustomGroup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNCustomGroup' {
    It 'List' {
        $name = "cgroup" + (Get-Random -Maximum 999999)
        New-ZNCustomGroup -Name $name -Description "test"
        $cgroup = Get-ZNCustomGroup | where {$_.Name -eq $name}
        (Get-ZNCustomGroup).Count | Should -BeGreaterThan 0
        Remove-ZNCustomGroup -GroupId $cgroup.Id
    }
}
