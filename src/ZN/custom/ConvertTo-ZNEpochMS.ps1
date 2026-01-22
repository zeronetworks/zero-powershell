function ConvertTo-ZNEpochMS{
    [CmdletBinding()]
    param(
        [DateTime]$DateTimeValue
    )

    $return = (New-TimeSpan -Start ([datetime]'1970-01-01Z').ToUniversalTime() -End $DateTimeValue.ToUniversalTime()).TotalMilliseconds
    return $return

}