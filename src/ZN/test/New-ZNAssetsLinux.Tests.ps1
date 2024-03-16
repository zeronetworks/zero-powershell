if(($null -eq $TestName) -or ($TestName -contains 'New-ZNAssetsLinux'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNAssetsLinux.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNAssetsLinux' {
    It 'CreateExpanded' {
        $name = ("linux"+(Get-Random -Maximum 999999))
        { New-ZNAssetsLinux -DisplayName $name -Fqdn "$name.posh.local" } | Should -Not -Throw
        $asset= (Search-ZNAsset -Fqdn "$name.posh.local").AssetId
        Update-ZNAssetInactive -AssetId $asset
    }
}
