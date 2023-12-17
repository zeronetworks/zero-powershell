if(($null -eq $TestName) -or ($TestName -contains 'Remove-ZNProtectionPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-ZNProtectionPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-ZNProtectionPolicy' {
    It 'Delete' {
        $group = (Get-ZNGroup -Search "Domain Admins").Items
        $protectionPolicy = New-ZNProtectionPolicy -GroupId $group.Id -MinQueueDays 30 -InitialQueueDays 30
        $protectionPolicy.ItemId
        { Remove-ZNProtectionPolicy -ProtectionPolicyId $protectionPolicy.ItemId } | Should -Not -Throw
    }
}
