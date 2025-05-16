if(($null -eq $TestName) -or ($TestName -contains 'New-ZNUserOutboundRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNUserOutboundRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNUserOutboundRule' {
    It 'CreateExpanded' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $portsList = New-ZNPortsList -Protocol TCP -Ports "44,45"
        $source = (Get-ZNOutboundRulesSourceCandidate -search "All Segmented Assets").Items
        $destination = (Get-ZNOutboundRulesDestinationCandidate -Search FS01 -RuleType 3).Items
        $sourceUserEntity = [ZeroNetworks.PowerShell.Cmdlets.Api.Models.SrcUsersListItem]::new()
        $sourceUserEntity.Id = $user.id
        $rule = New-ZNUserOutboundRule -UserId $user.id -Action 1 -LocalEntityId $source$.Id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -State 1 -SrcUsersList @($sourceUserEntity)
        $rule.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNUserOutboundRule -UserId $user.id -RuleId $rule.ItemId
    }
}
