$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOutboundBlockRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAssetOutboundBlockRule' {
    It 'List' {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $destination = (Get-ZNAssetOutboundBlockRulesDestinationCandidate -AssetId $asset -search "cs01").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetOutboundBlockRule -AssetId $asset -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt
        { (Get-ZNAssetOutboundBlockRule -AssetId $asset).Items } | Should -Not -Be $null
        Remove-ZNAssetOutboundBlockRule -AssetId $asset -RuleId $rule.ItemId
    }

    It 'Get' { 
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $destination = (Get-ZNAssetOutboundBlockRulesDestinationCandidate -AssetId $asset -search "cs01").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetOutboundBlockRule -AssetId $asset -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNAssetOutboundBlockRule -AssetId $asset | Select-Object -First 1
        { (Get-ZNAssetOutboundBlockRule -AssetId $asset -RuleId $rule.Id).ItemId } | Should -Not -Be $null
        Remove-ZNAssetOutboundBlockRule -AssetId $asset -RuleId $rule.Id
    }
}
