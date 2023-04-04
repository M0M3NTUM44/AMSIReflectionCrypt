# AMSIReflectionCrypt
Forcing AMSI Fail by Decrypting 'Matt Graebers one-liner AMSI bypass' in memory [AES-128]
and invoke PowerShell command execution from remote scripts after AMSI is bypassed.


![ezgif com-resize (2)](https://user-images.githubusercontent.com/91469978/229790638-09003b42-08cd-4a4f-9a43-db74ee5ff4e9.gif)

# Usage
Replace the url where mantioned in the script to where your malicuios Powershell script is hosted.

The TestScript.ps1 file simply types "amsiutils" (flagged string) to the terminal to test if AMSI detection was Bypassed.
