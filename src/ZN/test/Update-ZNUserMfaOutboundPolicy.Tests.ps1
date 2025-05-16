if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNUserMfaOutboundPolicy'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNUserMfaOutboundPolicy.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNUserMfaOutboundPolicy' {
    It 'UpdateExpanded' {
        $user = (Get-ZNUser -Search zero).Items | where {$_.Name -eq "zero"}
        $policies = Get-ZNUserMfaOutboundPolicy -UserId $user.Id
        $policy = $policies.Items[0]
        $description = $policy.Description + (Get-Random -Minimum 1 -Maximum 100)
        Update-ZNUserMfaOutboundPolicy -UserId $user.Id -PolicyId $policy.Id -Description $description
        $updatedPolicy = Get-ZNUserMfaOutboundPolicy -UserId $user.Id -PolicyId $policy.Id
        $updatedPolicy.ItemDescription | Should -Be $description
    }
}
