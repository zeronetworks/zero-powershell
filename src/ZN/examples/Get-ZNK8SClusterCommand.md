### Example 1: Get K8s cluster command
```powershell
Get-ZNK8SClusterCommand -ClusterId k:c:FYe7yLUJ
```

```output
InstallationCommand
-------------------                                                                                                             
helm upgrade --install znk8s-cloud-connector oci://us-docker.pkg.dev/zeronetworks-ci-cd/on-prem/znk8s-cloud-connector --version 0
```

This cmdlet gets the K8s cluster commands.
