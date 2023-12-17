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
    It 'DeleteExpanded' { 
        $name = "cgroup" + (Get-Random -Maximum 999999)
        New-ZNCustomGroup -Name $name -Description "test"
        $customGroup = (Get-ZNGroup -Search $name).Items
        $asset = Search-ZNAsset -fqdn linux0.posh.local
        Add-ZNCustomGroupsMember -GroupId $customGroup.Id -MembersId @($asset)
        { Remove-ZNCustomGroupsMember -GroupId $customGroup.Id -MembersId $asset } | Should -Not -Throw
        Remove-ZNCustomGroup -GroupId $customGroup.Id
    }
}
