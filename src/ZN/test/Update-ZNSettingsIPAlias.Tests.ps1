if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsIPAlias'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsIPAlias.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsIPAlias' {
    It 'UpdateExpanded' {
        $aliasName = "poshtestalias"+ (Get-Random -Min 1 -Maximum 1000)
        $alias = New-ZNSettingsIPAlias -Alias $aliasName -IP "1.1.1.28"
        Update-ZNSettingsIPAlias -IPAliasId $alias.ItemId -Alias $alias.ItemAlias -IPAddress "1.1.1.29"
        $updatedAlias = (Get-ZNSettingsIPAlias).Items | where {$_.Id -eq $alias.ItemId}
        $updatedAlias.IP | Should -Be "1.1.1.29"
        Remove-ZNSettingsIPAlias -IPAliasId $alias.ItemId
    }
}
