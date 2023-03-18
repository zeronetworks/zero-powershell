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

    #Custom Group
    #Add Member
    $env.Add("AddCustomGroupMemberName","PoshTestAddMember")
    $body = @{
        "description" = ""
        "membersId" = @()
        "name" = $env.AddCustomGroupMemberName
    }
    $result = Invoke-RestMethod -method POST -uri ($env.baseUri+"/groups/custom") -Headers $znHeader -body ($body | convertto-json)
    $env.Add("AddCustomGroupMemberId",$result)

    #Ad Secondary Settings
    #For Get
    $primaryAd = Invoke-RestMethod -Method Get -uri ($env.baseUri+"/settings/asset-management/active-directory") -Headers $znHeader
    $env.Add("primaryAd",$primaryAd.adInfo.domainName)
    $childAd = "child."+$primaryAd.adInfo.domainName
    $env.Add("childAd01",$childAd)
    $body = @{
        "dc" = ("dc01"+$childAd)
    }
    Invoke-RestMethod -method POST -uri ($env.baseUri+"/settings/asset-management/active-directory/secondary/"+$childAd) -Headers $znHeader -body ($body | convertto-json) | Out-Null

    #for Remove
    $childAd = "child2."+$primaryAd.adInfo.domainName
    $env.Add("childAd02",$childAd)
    $body = @{
        "dc" = ("dc01"+$childAd)
    }
    Invoke-RestMethod -method POST -uri ($env.baseUri+"/settings/asset-management/active-directory/secondary/"+$childAd) -Headers $znHeader -body ($body | convertto-json) | Out-Null

    #AI Setting
    $asset = (Invoke-RestMethod -Method GET -uri ($env.baseUri+"/assets?_limit=100&_offset=-0") -Headers $znHeader).Items | Select-Object -First 1
    $body = "[`""+$asset.id+"`"]"
    Invoke-RestMethod -Method Put -uri ($env.baseUri+"/settings/ai/exclusion/src-entities") -Headers $znHeader -body $body


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

    #remove Custom Group
    foreach($item in $env.GetEnumerator()){
        if($item.Name -like "AddCustomGroupMemberId*"){
            invoke-RestMethod -method delete -uri ($env.baseUri+"/groups/custom/"+$item.Value ) -headers $znHeader
        }
    }

    #remove Ad secondary
    foreach($item in $env.GetEnumerator()){
        if($item.Name -like "childAd*"){
            invoke-RestMethod -method delete -uri ($env.baseUri+"/settings/asset-management/active-directory/secondary/"+ $item.Value ) -headers $znHeader
        }
    }
}

