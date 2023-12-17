$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsOutboundBlockRule.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNGroupsOutboundBlockRule' {
    It 'List' { 
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $destination = $source = Invoke-ZNEncodeEntityIP -Ip 1.1.1.1
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsOutboundBlockRule -GroupId $group.id -GroupType tag -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination) -State 1 -ExpiresAt $expiresAt
        { (Get-ZNGroupsOutboundBlockRule -GroupId $group.id -GroupType tag).Items } | Should -Not -Be $null
        Remove-ZNGroupsOutboundBlockRule -GroupId $group.id -GroupType tag -RuleId $rule.Id
    }

    It 'Get' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        [string]$ports = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Protocol TCP -Ports $ports
        $destination = $source = Invoke-ZNEncodeEntityIP -Ip 1.1.1.1
        $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
        $rule = New-ZNGroupsOutboundBlockRule -GroupId $group.id -GroupType tag -LocalEntityId $group.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination) -State 1 -ExpiresAt $expiresAt
        $rule = Get-ZNGroupsOutboundBlockRule -GroupId $group.id -GroupType tag | Select-Object -First 1
        { (Get-ZNGroupsOutboundBlockRule -GroupId $group.id -GroupType tag -RuleId $rule.Id).ItemId } | Should -Not -Be $null
        Remove-ZNGroupsOutboundBlockRule -GroupId $group.id -GroupType tag -RuleId $rule.Id
    }
}
