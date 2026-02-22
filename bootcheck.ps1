$ErrorActionPreference = 'Stop'
Set-Location 'C:\Users\Pedro\Documents\FivemCity'
if (Test-Path 'log_test_after.txt') { Remove-Item 'log_test_after.txt' -Force }
if (Test-Path 'log_test_after.err.txt') { Remove-Item 'log_test_after.err.txt' -Force }
$args = '+set gamename gta5 +set onesync_enableInfinity 1 +set onesync_population true +exec config.cfg'
$p = Start-Process -FilePath 'artifacts\FXServer.exe' -ArgumentList $args -RedirectStandardOutput 'log_test_after.txt' -RedirectStandardError 'log_test_after.err.txt' -PassThru
Start-Sleep -Seconds 25
if (!$p.HasExited) { Stop-Process -Id $p.Id -Force }
