if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNAssetOtInboundOtrule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetOtInboundOtrule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNAssetOtInboundOtrule' {
    It 'Delete' { 
        $assetOt = Get-ZNAssetsOt | where {$_.Fqdn -eq "otv2.posh.local"}
        $protocolsList = New-ZNProtocolsList -Protocol tcp -Ports 111
        $source = Invoke-ZNEncodeEntityip -IP 1.1.1.2
        $destination = (Get-ZNInboundOtRulesDestinationCandidate -Search "otv2").items
        $rule = New-ZNAssetOtInboundOtRule -AssetID $assetOt.id -Action 1 -Direction 1 -localEntityId $destination.Id -RemoteEntitiesIdList @($source.id) -protocolsList $protocolsList -state 1 -LocalProcessesList @("*") -ExcludedLocalIdsList @() -ShouldBuildMirrorRules
        { Remove-ZNInboundOtRule -RuleId $rule.ItemId } | Should -Not -Throw
    }
}
