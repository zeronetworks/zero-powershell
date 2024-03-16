if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetOtRpcRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetOtRpcRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetOtRpcRule' {
    It 'UpdateExpanded' {
        $asset = (Get-ZNAssetsOt | Select -First 1).Id
        $group = (Get-ZNGroup -Search 'domain controllers').Items | where {$_.Id -like 'g:t:*'}
        $user = (Get-ZNAssetRpcRulesUserCandidate -AssetId $asset -Search 'Any User').Id
        $rule = New-ZNAssetOtRpcRule -AssetId $asset -Action 1 -Description "New RPC Rule" -ExcludedAssetIdsList @() -InterfaceUuidsList @() -LocalAssetId $group.Id -OpNumbersList @() -ProtocolsList @() -RemoteAssetIdsList @($asset) -State 1 -UserIdsList @($user)
        $description = "description" + (Get-Random -Minimum 1 -Maximum 50)
        $updatedRule = Update-ZNAssetOtRpcRule -AssetId $asset -RuleId $rule.ItemId -Description $description
        $updatedRule.ItemDescription | Should -Be $description
        Remove-ZNAssetRpcRule -AssetId $asset -RuleId $rule.ItemId 
    }
}
