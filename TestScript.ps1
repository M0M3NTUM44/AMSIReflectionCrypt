# Benign test script to test if the Bypass was seccussful(This will tyoe your username to terminal).
$username = $env:USERNAME
$evilString = "Invoke Mimikatz"
Write-Host "$username $evilString if you see this AMSI is Bypassed"
