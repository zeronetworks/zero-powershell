$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNAssetOutboundBlockRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Update-ZNAssetOutboundBlockRule' {
    It 'UpdateExpanded' {
        $asset= (Search-ZNAsset -Fqdn linux0.posh.local).AssetId
        $portsList = New-ZNPortsList -Protocol TCP -Ports (Get-Random -Minimum 1 -Maximum 1024)
        $destination = Invoke-ZNEncodeEntityIp -IP 1.2.3.4
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNOutboundBlockRule -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -ExpiresAt $expiresAt
        
        $newdescription = "new description" + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNAssetOutboundBlockRule -Asset $asset -RuleId $rule.Item.Id -Description $newdescription
        $updatedRule = Get-ZNAssetOutboundBlockRule -Asset $asset -RuleId $rule.Item.Id
        $updatedRule.Item.Description | Should -Be $newdescription
    }
}
