if(($null -eq $TestName) -or ($TestName -contains 'New-ZNAeExclusionsInbound'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNAeExclusionsInbound.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNAeExclusionsInbound' {
    It 'CreateExpanded' {
        $portsList = New-ZNPortsList -Protocol TCP -Ports "44"
        $source = Invoke-ZNEncodeEntityIP -IP 1.1.1.2
        $destination = (Get-ZNAeExclusionsInboundDestinationCandidate -Search "All segmented Clients").Items
        $aeExclusion = New-ZNAeExclusionsInbound -LocalEntityId $destination.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($source.id) -Action 1
        $aeExclusion.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNAeExclusionsInbound -RuleId $aeExclusion.ItemId
    }
}
