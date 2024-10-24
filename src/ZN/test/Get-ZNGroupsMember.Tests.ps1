if(($null -eq $TestName) -or ($TestName -contains 'Get-ZNGroupsMember'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsMember.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-ZNGroupsMember' {
    It 'List' {
        $group = (Get-ZNGroup -Search "Administrators").Items | Select-Object -first 1
        { (Get-ZNGroupsMember -GroupId $group.id -IncludeNestedMembers:$false).Entities } | Should -Not -BeNullOrEmpty
    }
}
