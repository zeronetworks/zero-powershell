if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNGroupsOutboundOtRule'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNGroupsOutboundOtRule.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNGroupsOutboundOtRule' {
    It 'UpdateExpanded' {
        $group = (Get-ZNGroup -Search "3D Printer").Items | where {$_.Name -eq "3D Printer"}
        $description = "NewDescription" + (Get-Random -minimum 1 -maximum 1000)
        $rule = Get-ZNGroupsOutboundOtrule -GroupId $group.Id -groupType ot
        Update-ZNGroupsOutboundOtrule -GroupId $group.Id -groupType ot -RuleId $rule.Items.id -Description $description
        $rule = Get-ZNGroupsOutboundOtrule -GroupId $group.Id -groupType ot -RuleId $rule.Items.id
        $rule.ItemDescription | Should -Be $description
    }
}
