if(($null -eq $TestName) -or ($TestName -contains 'New-ZNAssetsOt'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNAssetsOt.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNAssetsOt' {
    It 'CreateExpanded' { 
        $name = ("ot"+(Get-Random -Maximum 999999))
        [string]$ip = (Get-Random -Minimum 1 -Maximum 254).ToString() + "." + (Get-Random -Minimum 1 -Maximum 254).ToString() + "." + (Get-Random -Minimum 1 -Maximum 254).ToString() + "." + (Get-Random -Minimum 1 -Maximum 254).ToString()
        {  New-ZNAssetsOt -DisplayName $name -Fqdn ($name+"posh.local") -Ipv4 $ip -Type 4 } | Should -Not -Throw
    }
}
