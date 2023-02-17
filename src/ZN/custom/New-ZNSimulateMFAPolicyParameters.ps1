    <#
    .Synopsis
    Create a in-memory object for Simulation Parameters
    .Description
    Create a in-memory object for Simulation Parameters

    .Outputs
    ZeroNetworks.PowerShell.Cmdlets.Api.Models.Components1Tw47WoParametersSimulationparameterSchema
    .Link
    https://github.com/zeronetworks/zn.api/new-znsimulatemfainboundpolicyparameters
    #>
    function New-ZNSimulateMFAPolicyParameters {
        [OutputType([ZeroNetworks.PowerShell.Cmdlets.Api.Models.Components1Tw47WoParametersSimulationparameterSchema])]
        [CmdletBinding(PositionalBinding=$false)]
        Param(
    
            [Parameter(Mandatory, HelpMessage="Source Asset")]
            [string]
            $SourceAsset,

            [Parameter(HelpMessage="Source Process")]
            [string]
            $SourceProcess,

            [Parameter(Mandatory, HelpMessage="Source User")]
            [string]
            $SourceUser,

            [Parameter(Mandatory, HelpMessage="Destination Asset")]
            [string]
            $DestinationAsset,

            [Parameter(HelpMessage="Destination Process")]
            [string]
            $DestinationProcess,

            [Parameter(Mandatory, HelpMessage="Destination Process")]
            [ValidateSet("TCP","UDP")]
            [string]
            $Protocol,

            [Parameter(Mandatory, HelpMessage="Destination Process")]
            [ValidateRange(1,65535)]
            [int]
            $Port
        )

        process {
            $Object = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.Components1Tw47WoParametersSimulationparameterSchema]::New()
            
            $srcAsset = (Get-ZNMfaInboundPoliciesSimulateSourceCandidate -Search $SourceAsset).Items
            if($srcAsset.Count -eq 1){
                $Object.SrcAssetId = $srcAsset.Id
            }
            else{
                Write-Host "Found more than 1 Source Asset, please narrow down to the specific source asset" -ForegroundColor Red
                write-Host $srcAsset
                break
            }

            if ($PSBoundParameters['SourceProcess']){
                $Object.SrcProcess = $PSBoundParameters['SourceProcess']
            }

            $srcUser = (Get-ZNMfaInboundPoliciesSimulateSourceUserCandidate -Search $SourceUser).Items
            if($srcAsset.Count -eq 1){
                $Object.SrcUserId = $srcUser.Id
            }
            else{
                Write-Host "Found more than 1 Source User, please narrow down to the specific source user" -ForegroundColor Red
                write-Host $srcUser
                break
            }

            $dstAsset = (Get-ZNMfaInboundPoliciesSimulateDestinationCandidate -Search $DestinationAsset).Items
            if($dstAsset.Count -eq 1){
                $Object.DstAssetId = $dstAsset.Id
            }
            else{
                Write-Host "Found more than 1 Destination Asset, please narrow down to the specific destination asset" -ForegroundColor Red
                write-Host $dstAsset
                break
            }

            if ($PSBoundParameters['DestinationProcess']){
                $Object.DstProcess = $PSBoundParameters['DestinationProcess']
            }

            $object.ProtocolType = $Protocol

            [string]$strPort = $Port

            $object.Port = $strPort

            return $Object
        }
    }
    
