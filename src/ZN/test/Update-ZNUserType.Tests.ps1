if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNUserType'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNUserType.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNUserType' {
    It 'Update' {
        $user = (Get-ZNUser -Search user1).Items | where {$_.Name -eq "User1"}
        if($user.UserType -ne 1){
            $newType = 2
        } else {
            $newType = 1
        }
        { Update-ZNUserType -Comment "fix" -UserType $newType -UserIds @($user.Id) } | Should -Not -Throw
    }
    It 'UpdateExpanded' {
        $user = (Get-ZNUser).Items | select -first 1
        if($user.UserType -ne 1){
            $newType = 2
        } else {
            $newType = 1
        }
        { Update-ZNUserType -Comment "Fix" -UserType $newType -UserId $user.Id } | Should -Not -Throw
    }
}
