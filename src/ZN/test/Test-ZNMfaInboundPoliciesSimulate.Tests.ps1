$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNMfaInboundPoliciesSimulate.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Test-ZNMfaInboundPoliciesSimulate' {
    It 'Test' {
        $destination = (Get-ZNMfaInboundPoliciesSimulateDestinationCandidate -Search DC01).Items
        $sourceAsset = (Get-ZNMfaInboundPoliciesSimulateSourceCandidate -Search WC01).Items
        $sourceUser = (Get-ZNMfaInboundPoliciesSimulateSourceUserCandidate).Items | Select -First 1
        $result = Test-ZNMfaInboundPoliciesSimulate -DstAssetId $destination.Id -SrcAssetId $sourceAsset.Id -SrcUserId $sourceUser.Id -Port 3389 -ProtocolType 6
        $result.OrderedReactivePolicies | Should -Not -Be $null
    }
}
