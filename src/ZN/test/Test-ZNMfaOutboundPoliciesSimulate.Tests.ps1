$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Test-ZNMfaOutboundPoliciesSimulate.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Test-ZNMfaOutboundPoliciesSimulate' {
    It 'Test' {
        $destination = (Get-ZNMfaOutboundPoliciesSimulateDesinationCandidate -Search switch01).Items
        $sourceAsset = (Get-ZNMfaOutboundPoliciesSimulateSourceCandidate -Search WC01).Items
        $sourceUser = (Get-ZNMfaOutboundPoliciesSimulateSourceUserCandidate -Search test).Items
        $result = Test-ZNMfaOutboundPoliciesSimulate -DstAssetId $destination.Id -SrcAssetId $sourceAsset.Id -SrcUserId $sourceUser.Id -Port 22 -ProtocolType 6
        $result.OrderedReactivePolicies | Should -Not -Be $null

    }
}
