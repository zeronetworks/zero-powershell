if(($null -eq $TestName) -or ($TestName -contains 'New-ZNAssetOtrpcRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNAssetOtrpcRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNAssetOtrpcRule' {
    It 'CreateExpanded' {
        $asset = (Search-ZNAsset -Fqdn switch03).AssetId
        $group = (Get-ZNGroup -Search 'domain controllers').Items | where {$_.Id -like 'g:t:*'}
        $user = (Get-ZNAssetOtrpcRulesUserCandidate -AssetId $asset -Search 'Any User').Id
        $rule = New-ZNAssetOtRpcRule -AssetId $asset -Action 1 -Description "New RPC Rule" -ExcludedAssetIdsList @() -InterfaceUuidsList @() -LocalAssetId $group.Id -OpNumbersList @() -ProtocolsList @() -RemoteAssetIdsList @($asset) -State 1 -UserIdsList @($user)
        $rule.ItemId | Should -Not -Be $null
        Remove-ZNAssetOtRpcRule -AssetId $asset -RuleId $rule.ItemId
    }
}
