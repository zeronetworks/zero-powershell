### Example 1: Get possible source users for inbound MFA Policy simulation
```powershell
(Get-ZNMfaInboundPoliciesSimulateSourceUserCandidate).Items
```

```output
Domain Id           Name
------ --           ----
       u:a:r6ZkL5Y0 Guest
       u:a:IiObBkVQ krbtgt
       u:a:w27loY5p nicholas
       u:a:Tolw5kf6 test
       u:a:RVVXGo4w zero
       u:a:V61t0gZB ZNRemoteManagemen
```

This cmdlet will return possbile candidates for source users in an inbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNMfaInboundPoliciesSimulateSourceUserCandidate -Search zero).Items
```

```output
Domain Id           Name
------ --           ----
       u:a:RVVXGo4w zero
```

To find a specific candidate use the search parameter with the Name to be searched.
