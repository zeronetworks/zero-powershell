if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNGroupsRpcRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNGroupsRpcRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNGroupsRpcRule' {
    It 'Delete' {
        $asset = (Search-ZNAsset -Fqdn as01.posh.local).AssetId
        $group = (Get-ZNGroup -Search 'domain controllers').Items | where {$_.Id -like 'g:t:*'}
        $user = (Get-ZNGroupsRpcRulesUserCandidate -GroupId $group.Id -GroupType tag -Search 'Any User').Id
        $rule = New-ZNGroupsRpcRule -GroupId $group.Id -GroupType tag -Action 1 -Description "New RPC Rule" -ExcludedAssetIdsList @() -InterfaceUuidsList @('rpcAnyInterfaceId') -LocalAssetId $group.Id -OpNumbersList @() -ProtocolsList @() -RemoteAssetIdsList @($asset) -State 1 -UserIdsList @($user)
        { Remove-ZNGroupsRpcRule -GroupId $group.Id -GroupType tag -RuleId $rule.ItemId } | Should -Not -Throw
    }
}
