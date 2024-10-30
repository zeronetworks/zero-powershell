$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNGroupsMfaInboundPolicy.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNGroupsMfaInboundPolicy' {
    It 'List' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        $source = (Get-ZNGroupsMfaInboundPoliciesSourceCandidate -GroupId $group.id -GroupType tag -search "Any Asset").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUser = (Get-ZNGroupsMfaInboundPoliciesSourceUserCandidate -GroupId $group.id -GroupType tag -search "Any User").Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $sourceUser.Id
        [string]$dstPorts = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNGroupsMfaInboundPolicy -GroupId $group.id -GroupType tag -AdditionalPortsList $portsList -DstEntityInfoId $group.id -DstPort $dstPorts -DstProcessNames @("*") -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 -OverrideBuiltins:$false -RestrictLoginToOriginatingUser:$false
        { Get-ZNGroupsMfaInboundPolicy -GroupId $group.id -GroupType tag } | Should -Not -BeNullOrEmpty
        Remove-ZNGroupsMfaInboundPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId $policy.Itemid
    }

    It 'Get' {
        $group = (Get-ZNGroup -Search "domain controllers").Items | where {$_.id -like "g:t:*"}
        $source = (Get-ZNGroupsMfaInboundPoliciesSourceCandidate -GroupId $group.id -GroupType tag -search "Any Asset").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUser = (Get-ZNGroupsMfaInboundPoliciesSourceUserCandidate -GroupId $group.id -GroupType tag -search "Any User").Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyInboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $sourceUser.Id
        [string]$dstPorts = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNGroupsMfaInboundPolicy -GroupId $group.id -GroupType tag -AdditionalPortsList $portsList -DstEntityInfoId $group.id -DstPort $dstPorts -DstProcessNames @("*") -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 -OverrideBuiltins:$false -RestrictLoginToOriginatingUser:$false
        $policy = Get-ZNGroupsMfaInboundPolicy -GroupId $group.id -GroupType tag | Select-Object -First 1
        { (Get-ZNGroupsMfaInboundPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId $policy.Id).ItemId } | Should -Not -BeNullOrEmpty
        Remove-ZNGroupsMfaInboundPolicy -GroupId $group.id -GroupType tag -ReactivePolicyId $policy.id
    }
}
