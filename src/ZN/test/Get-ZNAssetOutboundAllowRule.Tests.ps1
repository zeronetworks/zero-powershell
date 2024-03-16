$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOutboundAllowRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAssetOutboundAllowRule' {
    It 'List' { 
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $destination = (Get-ZNAssetOutboundAllowRulesDestinationCandidate -AssetId $asset -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetOutboundAllowRule -AssetId $asset -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt
        { (Get-ZNAssetOutboundAllowRule -AssetId $asset).Items } | Should -Not -Be $null
        Remove-ZNAssetOutboundAllowRule -AssetId $asset -RuleId $rule.Item.Id
    }

    It 'Get' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $destination = (Get-ZNAssetOutboundAllowRulesDestinationCandidate -AssetId $asset -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetOutboundAllowRule -AssetId $asset -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNAssetOutboundAllowRule -AssetId $asset | Select-Object -First 1
        { (Get-ZNAssetOutboundAllowRule -AssetId $asset -RuleId $rule.Id).ItemId } | Should -Not -Be $null
        Remove-ZNAssetOutboundAllowRule -AssetId $asset -RuleId $rule.Id
    }
}
