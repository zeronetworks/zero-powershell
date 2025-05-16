if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNUserExternalAccessPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNUserExternalAccessPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNUserExternalAccessPolicy' {
    It 'Delete' {
        $userId = ((Get-ZNUser -Search "zero").Items | where {$_.Name -eq "zero"}).Id
        $portsList = New-ZNPortsList -Protocol TCP -Ports 12
        $dstAsset = (Search-ZNAsset -Fqdn ml01.posh.local).AssetId
        $Policy = New-ZNUserExternalAccessPolicy -UserId $userId -DstAssetId $dstAsset -DstPortsList $portsList -DstProcessNamesList @("*") -Name "ExternalDeleteUserTest" -RuleDuration 4 -SrcUserIdsList @($userId) -State 1 -Url "https://external.posh.local"
        { Remove-ZNUserExternalAccessPolicy -UserId $userId -PolicyId $Policy.ItemId } | Should -Not -Throw
    }
}
