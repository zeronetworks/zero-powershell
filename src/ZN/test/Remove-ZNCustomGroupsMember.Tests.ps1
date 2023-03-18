if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNCustomGroupsMember'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNCustomGroupsMember.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNCustomGroupsMember' {
    It 'DeleteExpanded' -skip { 
        $name = "cgroup" + (Get-Random -Maximum 999999)
        $cgroup =  New-ZNCustomGroup -Name $name -Description "test"
        $asset = (Get-ZNAsset -GroupId $cgroup.ItemId -Search "dc01.posh.local").Items
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
