$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetInboundAllowRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAssetInboundAllowRule' {
   It 'List' {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNAssetInboundAllowRulesSourceCandidate -AssetId $asset -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetInboundAllowRule -AssetId $asset -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        { Get-ZNAssetInboundAllowRule -AssetId $asset } | Should -Not -Be $null
        Remove-ZNAssetInboundAllowRule -AssetId $asset -RuleId $rule.Id
    }

    It 'Get' {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNInboundAllowRulesSourceCandidate -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetInboundAllowRule -AssetId $asset -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNAssetInboundAllowRule -AssetId $asset | Select-Object -First 1
        { (Get-ZNAssetInboundAllowRule -AssetId $asset -RuleId $rule.Id).ItemId } | Should -Not -Be $null
        Remove-ZNAssetInboundAllowRule -AssetId $asset -RuleId $rule.Id
    }
}
