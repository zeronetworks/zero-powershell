if(($null -eq $TestName) -or ($TestName -contains 'New-ZNAeExclusionsOutbound'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNAeExclusionsOutbound.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNAeExclusionsOutbound' {
    It 'CreateExpanded' {
        $portsList = New-ZNPortsList -Protocol TCP -Ports "44"
        $destination = Invoke-ZNEncodeEntityIP -IP 1.1.1.2
        $source = (Get-ZNAeExclusionsInboundSourceCandidate -Search "All segmented Clients").Items
        $aeExclusion = New-ZNAeExclusionsOutbound -LocalEntityId $source.id -LocalProcessesList @("*") -PortsList $portsList -RemoteEntityIdsList @($destination.id) -Action 1
        $aeExclusion.ItemId | Should -Not -BeNullOrEmpty
        Remove-ZNAeExclusionsOutbound -RuleId $aeExclusion.ItemId
    }
}
