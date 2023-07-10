$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetsInboundBlockRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAssetsInboundBlockRule' {
    It 'List' { 
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = Invoke-ZNEncodeEntityIP -Ip 1.1.1.1
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundBlockRule -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source) -State 1 -ExpiresAt $expiresAt        
        { (Get-ZNAssetsInboundBlockRule -AssetId $asset).Items } | Should -Not -Be $null
    }

    It 'Get' {
        $asset = Search-ZNAsset -Fqdn linux0.posh.local
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = Invoke-ZNEncodeEntityIP -Ip 1.1.1.1
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundBlockRule -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNAssetsInboundBlockRule -AssetId $asset | select-Object -First 1
        { (Get-ZNAssetsInboundBlockRule -AssetId $asset -RuleId $rule.id).ItemId } | Should -Not -Be $null
    }
}
