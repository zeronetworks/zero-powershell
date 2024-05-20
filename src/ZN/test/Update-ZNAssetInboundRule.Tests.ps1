if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetInboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetInboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetInboundRule' {
    It 'UpdateExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNInboundRulesSourceCandidate -RuleType 1 -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetInboundRule -AssetId $asset -Action 1 -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        
        $newdescription = "new description " + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNAssetInboundRule -AssetId $asset -RuleId $rule.Item.Id -Description $newdescription
        $updatedRule = Get-ZNAssetInboundRule -AssetId $asset -RuleId $rule.Item.Id
        $updatedRule.Item.Description | Should -Be $newdescription
        Remove-ZNInboundRule -RuleId $rule.Item.Id
    }
}
