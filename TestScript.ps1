# Benign test script to test if the Bypass was seccussful(This will connect to an Api to print your Public IP address).
$ip = Invoke-RestMethod 'https://api.ipify.org?format=json'
Write-Host "Your public IP address is $($ip.ip)"
