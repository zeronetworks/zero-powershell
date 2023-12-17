$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsInboundAllowRulesSourceCandidate.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNGroupsInboundAllowRulesSourceCandidate' {
    It 'List' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        { (Get-ZNGroupsInboundAllowRulesSourceCandidate -GroupId $group.Id -GroupType tag).Items } | Should -Not -Be $null
    }
}
