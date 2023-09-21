$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNGroupsInboundBlockRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'New-ZNGroupsInboundBlockRule' {
    It 'CreateExpanded' {
        $group = Get-ZNGroup -Search "domain controllers" | where {$_.id -like "g:t:*"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNGroupsInboundBlockRulesSourceCandidate -GroupId $group.Id -GroupType tag -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsInboundBlockRule -GroupId $group.Id -GroupType tag -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        $rule.ItemId | Should -Not -Be $null
    }
}
