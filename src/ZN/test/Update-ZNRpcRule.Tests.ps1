if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNRpcRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNRpcRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNRpcRule' {
    It 'UpdateExpanded' {
        $asset = (Search-ZNAsset -Fqdn switch03).AssetId
        $group = (Get-ZNGroup -Search 'domain controllers').Items | where {$_.Id -like 'g:t:*'}
        $user = (Get-ZNRpcRulesUserCandidate -Search 'Any User').Id
        $rule = New-ZNRpcRule -Action 1 -Description "New RPC Rule" -ExcludedAssetIdsList @() -InterfaceUuidsList @("rpcAnyInterfaceId") -LocalAssetId $group.Id -OpNumbersList @() -ProtocolsList @() -RemoteAssetIdsList @($asset) -State 1 -UserIdsList @($user)
        $description = "description" + (Get-Random -Minimum 1 -Maximum 50)
        $updatedRule = Update-ZNRpcRule -RuleId $rule.ItemId -Description $description
        $updatedRule.ItemDescription | Should -Be $description
        Remove-ZNRpcRule -RuleId $rule.ItemId 
    }
}
