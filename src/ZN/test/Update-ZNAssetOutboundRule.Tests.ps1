if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNAssetOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNAssetOutboundRule' {
    It 'UpdateExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $portsList = New-ZNPortsList -Protocol TCP -Ports (Get-Random -Minimum 1 -Maximum 1024)
        $destination = Invoke-ZNEncodeEntityIp -IP 8.8.8.8
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNOutboundRule -Action 1 -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt  -IPSecOpt 1
        
        $newdescription = "new description" + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNAssetOutboundRule -AssetId $asset -RuleId $rule.ItemId -Description $newdescription
        $updatedRule = Get-ZNOutboundRule -RuleId $rule.ItemId
        $updatedRule.ItemDescription | Should -Be $newdescription
    }
}
