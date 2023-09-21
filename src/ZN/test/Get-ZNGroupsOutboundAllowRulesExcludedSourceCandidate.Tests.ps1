$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsOutboundAllowRulesExcludedSourceCandidate.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNGroupsOutboundAllowRulesExcludedSourceCandidate' {
    It 'List' {
        $group = Get-ZNGroup -Search "domain controllers" | where {$_.id -like "g:t:*"}
        { (Get-ZNGroupsOutboundAllowRulesExcludedSourceCandidate -GroupId $group.Id -GroupType tag).Items } | Should -Not -Be $null
    }
}
