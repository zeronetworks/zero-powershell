$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-ZNAssetOtmfaOutboundPolicy.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-ZNAssetOtmfaOutboundPolicy' {
    It 'List' {
        $asset = Search-ZNAsset -Fqdn ot1777
        $source = (Get-ZNAssetOtMfaOutboundPoliciesSourceCandidate -AssetId $asset -search "All Segmented Assets").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUser = (Get-ZNAssetOtMfaOutboundPoliciesSourceUserCandidate -AssetId $asset -search "Any User").Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $sourceUser.Id
        [string]$dstPort = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNAssetOtMfaOutboundPolicy -AssetId $asset -AdditionalPortsList $portsList -DstEntityInfoId $asset -DstPort $dstPort -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 -OverrideBuiltins:$false
        { (Get-ZNAssetOtMfaOutboundPolicy -AssetId $asset).Items } | Should -Not -Be $null
        Remove-ZNAssetOtMfaOutboundPolicy -AssetId $asset -ReactivePolicyId $policy.ItemId
        
    }

    It 'Get' {
        $asset = Search-ZNAsset -Fqdn ot1777
        $source = (Get-ZNAssetOtMfaOutboundPoliciesSourceCandidate -AssetId $asset -search "All Segmented Assets").Items
        $sourceEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcEntityInfosItem]::new()
        $sourceEntity.Id = $source.Id
        $sourceUser = (Get-ZNAssetMfaOutboundPoliciesSourceUserCandidate -AssetId $asset -search "Any User").Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.ReactivePolicyOutboundBodySrcUserInfosItem]::new()
        $sourceUserEntity.Id = $sourceUser.Id
        [string]$dstPort = Get-Random -Minimum 1 -Maximum 65000
        $portsList = New-ZNPortsList -Empty
        $policy = New-ZNAssetOtMfaOutboundPolicy -AssetId $asset -AdditionalPortsList $portsList -DstEntityInfoId $asset -DstPort $dstPort -FallbackToLoggedOnUser -MfaMethods @(4) -ProtocolType 6 -RuleDuration 6 -SrcEntityInfos @($sourceEntity) -SrcProcessNames @("*") -SrcUserInfos @($sourceUserEntity) -State 1 -OverrideBuiltins:$false
        $policy = Get-ZNAssetOtMfaOutboundPolicy -AssetId $asset| Select-Object -First 1
        { (Get-ZNAssetOtMfaOutboundPolicy -AssetId $asset -ReactivePolicyId $policy.Id).ItemId } | Should -Not -Be $null
        Remove-ZNAssetOtMfaOutboundPolicy -AssetId $asset -ReactivePolicyId $policy.Id
    }
}
