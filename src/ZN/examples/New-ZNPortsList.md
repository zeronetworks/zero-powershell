### Example 1: Create a portsList for rule objects
```powershell
$portsList = New-ZNPortsList -Protocol TCP -Ports "44,45"

```

This cmdlet creates a portsList for use in other cmdlets. It returns the created object.

### Example 2: Create a portsList with TCP and UDP
```powershell
$portsList = @()
$tcp = New-ZNPortsList -Protocol TCP -Ports "44"
$udp = New-ZNPortsList -Protocol UDP -Ports "44"
$portsList +=$tcp
$portsList +=$udp
$portsList
Ports ProtocolType
----- ------------
44    6
44    17
```

This is an example of how to build a portsList with both TCP and UDP ports.

