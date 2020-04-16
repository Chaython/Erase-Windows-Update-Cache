net stop bits
net stop wuauserv
rd /s /q "C:\WINDOWS\SoftwareDistribution"
net start bits
net start wuauserv
wuauclt /resetauthorization /detectnow
PowerShell.exe (New-Object -ComObject Microsoft.Update.AutoUpdate).DetectNow()
