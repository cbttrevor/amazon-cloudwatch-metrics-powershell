while ($true) {
    $Value = (New-Guid).Guid
    Set-Content -Path c:\data\$Value`.txt -Value $Value*10000
}