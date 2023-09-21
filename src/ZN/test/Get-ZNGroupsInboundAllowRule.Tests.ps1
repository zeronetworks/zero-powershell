$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsInboundAllowRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNGroupsInboundAllowRule' {
    It 'List' {
        $group = Get-ZNGroup -Search "domain controllers" | where {$_.id -like "g:t:*"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNGroupsInboundAllowRulesSourceCandidate -GroupId $group.id -GroupType tag -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsInboundAllowRule -GroupId $group.id -GroupType tag -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        { Get-ZNGroupsInboundAllowRule -GroupId $group.id -GroupType tag } | Should -Not -Be $null
        Remove-ZNGroupsInboundAllowRule -GroupId $group.id -GroupType tag -RuleId $rule.ItemId
    }

    It 'Get' {
        $group = Get-ZNGroup -Search "domain controllers" | where {$_.id -like "g:t:*"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $source = (Get-ZNGroupsInboundAllowRulesSourceCandidate -GroupId $group.id -GroupType tag -search "any asset").Items
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsInboundAllowRule -GroupId $group.id -GroupType tag -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNGroupsInboundAllowRule -GroupId $group.id -GroupType tag | Select-Object -First 1
        { (Get-ZNGroupsInboundAllowRule -GroupId $group.id -GroupType tag -RuleId $rule.Id).ItemId } | Should -Not -Be $null
        Remove-ZNGroupsInboundAllowRule -GroupId $group.id -GroupType tag -RuleId $rule.Id
    }
}
