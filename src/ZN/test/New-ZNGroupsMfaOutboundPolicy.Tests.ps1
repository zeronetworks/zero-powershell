$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNGroupsMfaOutboundPolicy.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'New-ZNGroupsMfaOutboundPolicy' {
    It 'CreateExpanded' {
        $group = (Get-ZNGroup -Search "card readers").Items
        $source = (Get-ZNGroupsMfaOutboundPoliciesSourceCandidate -GroupId $group.Id -GroupType tag -search "All segmented assets").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUser = (Get-ZNGroupsMfaOutboundPoliciesSourceUserCandidate -GroupId $group.Id -GroupType tag -search "Any User").Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $sourceUser.Id
        [string]$dstPorts = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNGroupsMfaOutboundPolicy -GroupId $group.Id -GroupType tag -AdditionalPortsList $portsList -DstEntityInfoId $group.Id -DstPort $dstPorts -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 -OverrideBuiltins:$false
        $policy.ItemId | Should -Not -Be $null
        Remove-ZNGroupsMfaOutboundPolicy -GroupId $group.Id -GroupType tag -ReactivePolicyId $policy.Itemid
    }
}
