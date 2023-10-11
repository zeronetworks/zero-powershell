$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsMfaOutboundPolicy.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNGroupsMfaOutboundPolicy' {
    It 'List' {
        $group = Get-ZNGroup -Search "card readers"
        $source = (Get-ZNGroupsMfaOutboundPoliciesSourceCandidate -GroupId $group.id -GroupType tag -search "All Segmented Assets").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUser = (Get-ZNGroupsMfaOutboundPoliciesSourceUserCandidate -GroupId $group.id -GroupType tag -search "Any User").Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $sourceUser.Id
        [string]$dstPort = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNGroupsMfaOutboundPolicy -GroupId $group.id -GroupType tag -AdditionalPortsList $portsList -DstEntityInfoId $group.id -DstPort $dstPort -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 -OverrideBuiltins:$false
        { Get-ZNGroupsMfaOutboundPolicy -GroupId $group.id -GroupType tag } | Should -Not -Be $null
        Remove-ZNGroupsMfaOutboundPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId $policy.ItemId
        
    }

    It 'Get' {
        $group = Get-ZNGroup -Search "card readers"
        $source = (Get-ZNGroupsMfaOutboundPoliciesSourceCandidate -GroupId $group.id -GroupType tag -search "All Segmented Assets").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUser = (Get-ZNGroupsMfaOutboundPoliciesSourceUserCandidate -GroupId $group.id -GroupType tag -search "Any User").Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $sourceUser.Id
        [string]$dstPort = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNGroupsMfaOutboundPolicy -GroupId $group.id -GroupType tag -AdditionalPortsList $portsList -DstEntityInfoId $group.id -DstPort $dstPort -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 -OverrideBuiltins:$false
        $policy = Get-ZNGroupsMfaOutboundPolicy -GroupId $group.id -GroupType tag| Select-Object -First 1
        { (Get-ZNGroupsMfaOutboundPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId $policy.Id).ItemId } | Should -Not -Be $null
        Remove-ZNGroupsMfaOutboundPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId $policy.Id
    }
}
