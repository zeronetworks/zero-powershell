if(($null -eq $TestName) -or ($TestName -contains 'New-ZNSettingsIPAlias'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNSettingsIPAlias.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNSettingsIPAlias' {
    It 'CreateExpanded' {
        $aliasName = "poshtestalias"+ (Get-Random -Min 1 -Maximum 1000)
        $alias = New-ZNSettingsIPAlias -Alias $aliasName -IP "1.1.1.28"
        $alias.ItemAlias | Should -Be $aliasName
        Remove-ZNSettingsIPAlias -IPAliasId $alias.ItemId
    }
}
