### Example 1: Get possible source users for inbound MFA Policy simulation
```powershell
(Get-ZNSegmentMfaInboundPoliciesSimulateSourceUserCandidate).Items
```

```output
Domain Id           Name
------ --           ----
       u:a:eTpnZu08 Administrator
       u:a:iGn4Hiqf Amir Duo
       u:a:PfGBMNXZ Amir Frankel
       u:a:ILBOlZpe Benny Duo
       u:a:JinEj0u0 Benny Lakunishok
       u:a:7Fp0hF2k duo account
       u:a:sJKzqaGn Ema Duo
       u:a:5bMryabz Emanuele Bianchi
       u:a:qRcDkgrW Guest
       u:a:r0HtwNuC krbtgt
```

This cmdlet will return possbile candidates for source users in an inbound MFA policy simulation.

### Example 2: Search for a candidate
```powershell
(Get-ZNSegmentMfaInboundPoliciesSimulateSourceUserCandidate -Search Administrator).Items
```

```output
Domain Id           Name
------ --           ----
       u:a:eTpnZu08 Administrator
```

To find a specific candidate use the search parameter with the Name to be searched.
