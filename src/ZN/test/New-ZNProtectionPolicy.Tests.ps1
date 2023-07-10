if(($null -eq $TestName) -or ($TestName -contains 'New-ZNProtectionPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNProtectionPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNProtectionPolicy' {
    It 'CreateExpanded' {
        $group = Get-ZNADGroup -Search "Domain Controllers" | where {$_.Name -eq "Domain Controllers"}
        $protectionPolicy = New-ZNProtectionPolicy -GroupId $group.Id -MinQueueDays 30 -InitialQueueDays 30
        $protectionPolicy.ItemId | Should -Not -Be $null
        Remove-ZNProtectionPolicy -ProtectionPolicyId $protectionPolicy.ItemId
    }
}
