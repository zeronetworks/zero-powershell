function RandomString([bool]$allChars, [int32]$len) {
    if ($allChars) {
        return -join ((33..126) | Get-Random -Count $len | % {[char]$_})
    } else {
        return -join ((48..57) + (97..122) | Get-Random -Count $len | % {[char]$_})
    }
}
$env = @{}
if ($UsePreviousConfigForRecord) {
    $previousEnv = Get-Content (Join-Path $PSScriptRoot 'env.json') | ConvertFrom-Json
    $previousEnv.psobject.properties | Foreach-Object { $env[$_.Name] = $_.Value }
}
# Add script method called AddWithCache to $env, when useCache is set true, it will try to get the value from the $env first.
# example: $val = $env.AddWithCache('key', $val, $true)
$env | Add-Member -Type ScriptMethod -Value { param( [string]$key, [object]$val, [bool]$useCache) if ($this.Contains($key) -and $useCache) { return $this[$key] } else { $this[$key] = $val; return $val } } -Name 'AddWithCache'
function setupEnv() {
    # Preload subscriptionId and tenant from context, which will be used in test
    # as default. You could change them if needed.
    #$env.SubscriptionId = (Get-AzContext).Subscription.Id
    #$env.Tenant = (Get-AzContext).Tenant.Id

    #Constants
    $constants = Get-Content .\test\constants.json | ConvertFrom-Json
    #$constants.psobject.Properties | ForEach-Object { $env[$_.Name] = $_.Value }

    $env.Add("baseUri", "https://portal.zeronetworks.com/api/v1")

    $znHeader = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
    $znHeader.Add("Authorization", $constants.ZNApiKey)
    $znHeader.Add("Content-Type","application/json")

    $znTeamHeader = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
    $znTeamHeader.Add("Authorization", $constants.ZNTeamApiKey)
    $znTeamHeader.Add("Content-Type","application/json")
    $znTeamHeader.Add("zn-env-id",$constants.ZNEnvId)


    $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()
    #Create Review Rules
    #Asset 1-1024, 1025-2048, 2049-3072
    #InboundAllow
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1 -Maximum 1024)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-allow") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1025 -Maximum 2048)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-allow") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 2049 -Maximum 3072)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-allow") -method POST -Headers $znTeamHeader -Body $rule
    #InboundBlock
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1 -Maximum 1024)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-block") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1025 -Maximum 2048)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-block") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 2049 -Maximum 3072)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-block") -method POST -Headers $znTeamHeader -Body $rule
    #OutboundAllow
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1 -Maximum 1024)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1025 -Maximum 2048)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 2049 -Maximum 3072)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule
    #OutboundBlock
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1 -Maximum 1024)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound-block") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1025 -Maximum 2048)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound-block") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 2049 -Maximum 3072)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound-block") -method POST -Headers $znTeamHeader -Body $rule
    
    #AssetOt 3073-4096, 4097-5120, 5121-6144
    #InboundAllow
    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 3073 -Maximum 4096)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-allow") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 4097 -Maximum 5120)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-allow") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 5121 -Maximum 6144)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-allow") -method POST -Headers $znTeamHeader -Body $rule
    #InboundBlock
    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 3073 -Maximum 4096)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-block") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 4097 -Maximum 5120)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-block") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 5121 -Maximum 6144)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-block") -method POST -Headers $znTeamHeader -Body $rule
    #OutboundAllow
    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 3073 -Maximum 4096)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 4097 -Maximum 5120)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 5121 -Maximum 6144)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule
    #OutboundBlock
    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 3073 -Maximum 4096)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound-block") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 4097 -Maximum 5120)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound-block") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""remoteEntityIdsList"":[""a:t:OeG7qsVV""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 5121 -Maximum 6144)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound-block") -method POST -Headers $znTeamHeader -Body $rule
    

    #Generic 6145-7168, 7169-8192, 8193-9216
    #InboundAllow
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 6145 -Maximum 7168)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-allow") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 7169 -Maximum 8192)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-allow") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 8193 -Maximum 9216)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-allow") -method POST -Headers $znTeamHeader -Body $rule
    #InboundBlock
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 6145 -Maximum 7168)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-block") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 7169 -Maximum 8192)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-block") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 8193 -Maximum 9216)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound-block") -method POST -Headers $znTeamHeader -Body $rule
    #OutboundAllow
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 6145 -Maximum 7168)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 7169 -Maximum 8192)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 8193 -Maximum 9216)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule
    #OutboundBlock
    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 6145 -Maximum 7168)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound-block") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 7169 -Maximum 8192)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound-block") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""remoteEntityIdsList"":[""a:l:goXZ3fpT""],""localEntityId"":""a:l:hC8rOTo0"",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 8193 -Maximum 9216)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound-block") -method POST -Headers $znTeamHeader -Body $rule


# For any resources you created for test, you should add it to $env here.
    $envFile = 'env.json'
    if ($TestMode -eq 'live') {
        $envFile = 'localEnv.json'
    }
    set-content -Path (Join-Path $PSScriptRoot $envFile) -Value (ConvertTo-Json $env)
}
function cleanupEnv() {
    # Clean resources you create for testing
    
    $env = @{}
    $constants = Get-Content .\test\constants.json | ConvertFrom-Json
    #$constants.psobject.Properties | ForEach-Object { $env[$_.Name] = $_.Value }

    $env.Add("baseUri", "https://portal.zeronetworks.com/api/v1")

    $znHeader = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
    $znHeader.Add("Authorization", $constants.ZNApiKey)
    $znHeader.Add("Content-Type","application/json")

}   

