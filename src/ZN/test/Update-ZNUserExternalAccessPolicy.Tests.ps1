if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNUserExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNUserExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNUserExternalAccessPolicy' {
    It 'UpdateExpanded' {
        $userId = ((Get-ZNUser -Search "zero").Items | where {$_.Name -eq "zero"}).Id
        $portsList = New-ZNPortsList -Protocol TCP -Ports 12
        $dstAsset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        $Policy = New-ZNUserExternalAccessPolicy -UserId $userId -DstAssetId $dstAsset -DstPortsList $portsList -DstProcessNamesList @("*") -Name "ExternalUpdateUserTest" -RuleDuration 4 -SrcUserIdsList @($userId) -State 1 -Url "https://external.posh.local"
        
        $updatedPolicy = Update-ZNUserExternalAccessPolicy -UserId $userId -PolicyId $Policy.ItemId -Name "ExternalTestUpdateUser" -Url "https://external.posh.local/updated"
        
        $updatedPolicy.ItemUrl | Should -Be "https://external.posh.local/updated"
        Remove-ZNUserExternalAccessPolicy -UserId $userId -PolicyId $Policy.ItemId
    }
}
