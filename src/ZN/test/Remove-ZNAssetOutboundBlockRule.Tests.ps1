$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNAssetOutboundBlockRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Remove-ZNAssetOutboundBlockRule' {
    It 'Delete' {
        $asset = Search-ZNAsset -Fqdn "linux0.posh.local"
        $portsList = New-ZNPortsList -Protocol TCP -Ports (Get-Random -Minimum 1 -Maximum 1024)
        $destination = Invoke-ZNEncodeEntityIp -IP 8.8.8.8
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNAssetOutboundBlockRule -AssetId $asset -LocalEntityId $asset -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination) -State 1 -ExpiresAt $expiresAt
        { Remove-ZNAssetOutboundBlockRule -AssetId $asset -RuleId $rule.ItemId } | Should -Not -Throw
    }
}
