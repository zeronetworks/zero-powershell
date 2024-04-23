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
    $constants = Get-Content ../../tools/constants.json | ConvertFrom-Json
    #$constants.psobject.Properties | ForEach-Object { $env[$_.Name] = $_.Value }
    if($constants.envToTest){
        $envToTest = $constants.envToTest
    } else { 
        Write-Host "Couldnt find environment to test in constants.json"
        exit
    }

    $env.Add("baseUri", ($constants.$envToTest.baseURL+"/api/v1"))

    $znHeader = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
    $znHeader.Add("Authorization", $constants.$envToTest.ZNApiKey)
    $znHeader.Add("Content-Type","application/json")

    $znTeamHeader = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
    $znTeamHeader.Add("Authorization", $constants.$envToTest.ZNTeamApiKey)
    $znTeamHeader.Add("Content-Type","application/json")
    $znTeamHeader.Add("zn-env-id",$constants.$envToTest.ZNEnvId)


    $expiresAt = [DateTimeOffset]::UtcNow.AddHours(1).ToUnixTimeMilliseconds()

    #assets
    $asset1 = Invoke-RestMethod ($env.baseUri+"/assets/searchId?fqdn=linux0.posh.local") -method GET -Headers $znTeamHeader
    $asset2 = Invoke-RestMethod ($env.baseUri+"/assets/searchId?fqdn=linux1.posh.local") -method GET -Headers $znTeamHeader
    $asset3 = Invoke-RestMethod ($env.baseUri+"/assets/searchId?fqdn=switch01") -method GET -Headers $znTeamHeader

    #Create Review Rules
    #Asset 1-1024, 1025-2048, 2049-3072
    #Inbound
    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1 -Maximum 1024)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1025 -Maximum 2048)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 2049 -Maximum 3072)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound") -method POST -Headers $znTeamHeader -Body $rule
    #Outbound
    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1 -Maximum 1024)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 1025 -Maximum 2048)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule
    
    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 2049 -Maximum 3072)+""",""protocolType"":6}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule
    
    #Generic 6145-7168, 7169-8192, 8193-9216
    #Inbound
    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 6145 -Maximum 7168)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 7169 -Maximum 8192)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 8193 -Maximum 9216)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/inbound") -method POST -Headers $znTeamHeader -Body $rule
    #Outbound
    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 6145 -Maximum 7168)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 7169 -Maximum 8192)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule

    $rule = "{""action"":1,""remoteEntityIdsList"":["""+($asset2.assetid)+"""],""localEntityId"":"""+($asset1.assetid)+""",""excludedLocalIdsList"":[],""portsList"":[{""ports"":"""+(Get-Random -Minimum 8193 -Maximum 9216)+""",""protocolType"":17}],""expiresAt"":"+($expiresAt)+",""description"":"""",""state"":4,""localProcessesList"":[""*""]}"
    Invoke-RestMethod ($env.baseUri+"/protection/rules/outbound") -method POST -Headers $znTeamHeader -Body $rule

    #$tagGroup = "g:t:27"+$constants.$envtoTest.ZNEnvId.Substring($constants.$envtoTest.ZNEnvId.Length-6)
    #$assets = Invoke-RestMethod -Method GET -URi ($env.baseUri+"/assets/monitored?_limit=400&_offset=0&_filters=&with_count=true&order=asc&orderColumns[]=name&showInactive=false") -Headers $znTeamHeader
    #$assetId = ($assets.items | where {$_.Name -eq "dc01"}).Id
    #$tagbody = @{
        #"membersId" = @(
    #        "$assetId"
    #    )
    #} | ConvertTo-Json
    #Invoke-RestMethod -Method PUT -URi ($env.baseUri+"/internal/tag-groups/"+$tagGroup+"/members") -Headers $znTeamHeader -Body $tagbody

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

    
}   

