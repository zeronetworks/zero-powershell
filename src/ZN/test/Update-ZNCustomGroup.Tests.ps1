if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNCustomGroup'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNCustomGroup.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNCustomGroup' {
    It 'UpdateExpanded' -skip {
        $random = Get-Random -Minimum 1 -Maximum 100
        $cGroup = Get-ZNCustomGroup | select -first 1
        $updateCGroup = Update-ZNCustomGroup -GroupId $cGroup.Id -Description ("newdescription$random")
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
