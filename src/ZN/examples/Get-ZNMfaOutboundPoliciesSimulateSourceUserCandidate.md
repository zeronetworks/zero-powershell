### Example 1: Get possible source users for outbound MFA Policy simulation
```powershell
(Get-ZNMfaOutboundPoliciesSimulateSourceUserCandidate).Items
```

```output
Domain Id           Name
------ --           ----
       u:a:r6ZkL5Y0 Guest
       u:a:IiObBkVQ krbtgt
       u:a:w27loY5p nicholas
       u:a:Tolw5kf6 test
       u:a:RVVXGo4w zero
       u:a:V61t0gZB ZNRemoteManagement
```

This cmdlet will return possbile candidates for source users in an outbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNMfaOutboundPoliciesSimulateSourceUserCandidate -Search zero).Items
```

```output
Domain Id           Name
------ --           ----
       u:a:RVVXGo4w zero
```

To find a specific candidate use the search parameter with the Name to be searched.
