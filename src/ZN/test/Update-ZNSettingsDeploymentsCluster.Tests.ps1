if(($null -eq $TestName) -or ($TestName -contains 'Update-ZNSettingsDeploymentsCluster'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsDeploymentsCluster.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-ZNSettingsDeploymentsCluster' {
    It 'UpdateExpanded' {
        $Name = "POSHTestUpdate"+ (Get-Random -Min 1 -Maximum 100)
        New-ZNSettingsDeploymentsCluster -ClusterName $Name -Strategy 1
        $cluster = Get-ZNSettingsDeploymentsCluster | where {$_.Name -eq $Name}
        Update-ZNSettingsDeploymentsCluster -DeploymentsClusterId $cluster.Id -Strategy 2 -ClusterName $cluster.Name
        $updatedCluster = Get-ZNSettingsDeploymentsCluster | where {$_.Name -eq $Name}
        $updatedCluster.Strategy | Should -Be 2
        Remove-ZNSettingsDeploymentsCluster -DeploymentsClusterId $cluster.Id
    }
}
