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
        $group = (Get-ZNGroup -Search "ProtectionPolicy").Items
        $protectionPolicy = New-ZNProtectionPolicy -GroupId $group.Id -newMembersLearningDays 30 -InitialQueueDays 30
        $protectionPolicy = Get-ZNProtectionPolicy | Select -First 1
        if($protectionPolicy.newMembersLearningDays -eq 30){
            $newMembersLearningDays = 14
        } else {
            $newMembersLearningDays = 30
        }
        $updatedProtectionPolicy = Update-ZNProtectionPolicy -ProtectionPolicyId $protectionPolicy.Id -newMembersLearningDays $newMembersLearningDays
        $updatedProtectionPolicy.ItemnewMembersLearningDays | Should -Be $newMembersLearningDays
        Remove-ZNProtectionPolicy -ProtectionPolicyId $protectionPolicy.Id
    }
}
