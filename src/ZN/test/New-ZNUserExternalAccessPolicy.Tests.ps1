if(($null -eq $TestName) -or ($TestName -contains 'New-ZNUserExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNUserExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNUserExternalAccessPolicy' {
    It 'CreateExpanded' {
        $userId = ((Get-ZNUser -Search "zero").Items | where {$_.Name -eq "zero"}).Id
        $portsList = New-ZNPortsList -Protocol TCP -Ports 12
        $dstAsset = (Search-ZNAsset -Fqdn ls01.posh.local).AssetId
        $Policy = New-ZNUserExternalAccessPolicy -UserId $userId -DstAssetId $dstAsset -DstPortsList $portsList -DstProcessNamesList @("*") -Name "ExternalNewUserTest" -RuleDuration 4 -SrcUserIdsList @($userId) -State 1 -Url "https://external.posh.local"
        $Policy.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNUserExternalAccessPolicy -UserId $userId -PolicyId $Policy.ItemId
    }
}
