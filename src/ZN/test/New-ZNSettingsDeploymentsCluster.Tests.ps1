if(($null -eq $TestName) -or ($TestName -contains 'New-ZNSettingsDeploymentsCluster'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-ZNSettingsDeploymentsCluster.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-ZNSettingsDeploymentsCluster' {
    It 'CreateExpanded' {
        $Name = "POSHTestNew"+ (Get-Random -Min 1 -Maximum 100)
        New-ZNSettingsDeploymentsCluster -ClusterName $Name -Strategy 1
        $cluster = Get-ZNSettingsDeploymentsCluster | where {$_.Name -eq $Name}
        $cluster.Name | Should -Be $Name
        Remove-ZNSettingsDeploymentsCluster -DeploymentsClusterId $cluster.Id
    }
}
