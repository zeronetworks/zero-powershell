$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetsInboundAllowRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Update-ZNAssetsInboundAllowRule' {
    It 'UpdateExpanded' {
        $asset = Search-ZNAsset -fqdn linux0.posh.local
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNInboundAllowRulesSourceCandidate -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNInboundAllowRule -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        
        $newdescription = "new description " + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNAssetsInboundAllowRule -AssetId $asset -RuleId $rule.ItemId -Description $newdescription
        $updatedRule = Get-ZNAssetsInboundAllowRule -AssetId $asset -RuleId $rule.ItemId
        $updatedRule.ItemDescription | Should -Be $newdescription
        Remove-ZNInboundAllowRule -RuleId $rule.ItemId
    }
}
