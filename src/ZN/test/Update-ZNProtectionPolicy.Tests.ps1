if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNProtectionPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNProtectionPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNProtectionPolicy' {
    It 'UpdateExpanded' {
        $group = (Get-ZNProtectionPoliciesGroupCandidate).Items | Select-Object -First 1
        New-ZNProtectionPolicy -GroupId $group.Id -InitialQueueDays 30 -MinQueueDays 30 -Description "Update-ZNProtectionPolicy Test"
        $protectionPolicy = Get-ZNProtectionPolicy | Select -First 1
        if($protectionPolicy.MinQueueDays -eq 30){
            $MinQueueDays = 14
        } else {
            $MinQueueDays = 30
        }
        $updatedProtectionPolicy = Update-ZNProtectionPolicy -ProtectionPolicyId $protectionPolicy.Id -MinQueueDays $MinQueueDays
        $updatedProtectionPolicy.ItemMinQueueDays | Should -Be $MinQueueDays
        Remove-ZNProtectionPolicy -ProtectionPolicyId $protectionPolicy.Id
    }
}
