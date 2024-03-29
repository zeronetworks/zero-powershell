if(($null -eq $TestName) -or ($TestName -contains 'New-ZNCustomGroup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNCustomGroup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNCustomGroup' {
    It 'CreateExpanded' {
        $name = "cgroup" + (Get-Random -Maximum 999999)
        New-ZNCustomGroup -Name $name -Description "test"
        $cgroup = (Get-ZNGroup -search $name).Items
        $cgroup.Name | Should -Be $name
        Remove-ZNCustomGroup -GroupId $cgroup.Id
    }
}
