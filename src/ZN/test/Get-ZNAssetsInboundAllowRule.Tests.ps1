$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetsInboundAllowRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAssetsInboundAllowRule' {
    It 'List' {
        $asset = (Get-ZNAssetsMonitored -Limit 400).Items | where {$_.Fqdn -eq "DC01.posh.local"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNInboundAllowRulesSourceCandidate -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundAllowRule -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        { (Get-ZNAssetsInboundAllowRule -AssetId $asset.id).Items } | Should -Not -Be $null
    }

    It 'Get' {
        $asset = (Get-ZNAssetsMonitored -Limit 400).Items | where {$_.Fqdn -eq "DC01.posh.local"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNInboundAllowRulesSourceCandidate -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundAllowRule -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNAssetsInboundAllowRule -AssetId $asset.id | select-object -first 1
        { (Get-ZNAssetsInboundAllowRule -AssetId $asset.id -RuleId $Rule.Id).ItemId } | Should -Not -Be $null
    }
}
