if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetPreferredSegmentServer'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetPreferredSegmentServer.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetPreferredSegmentServer' {
    It 'UpdateExpanded' {
        $asset = (Search-ZNAsset -Fqdn dc01.posh.local).AssetId
        $deployment = (Get-ZNSegmentServer | Select -First 1).Id
        if((Get-ZNAssetPreferredSegmentServer -AssetId $asset).PreferredDeployment -ne $deployment){
            # set if empty
            { Update-ZNAssetPreferredSegmentServer -AssetId $asset -PreferredDeploymentId $deployment  } | Should -Not -Throw
        } else {
            #set to none
            { Update-ZNAssetPreferredSegmentServer -AssetId $asset } | Should -Not -Throw
        }
       
    }
}
