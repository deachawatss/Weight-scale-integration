# PKBridge Build Script - Config Wizard + Bridge Service
# =======================================================
# This script builds BOTH the config wizard and bridge service from source
#
# CHANGES IN THIS VERSION:
# - Builds bridge service from source (fixes wrong binary issue)
# - Default FrontendUrl: 192.168.0.10 → 192.168.0.11
# - Default BackendUrl: 192.168.0.10 → 192.168.0.11
# - Ensures fresh binaries from Partial-Picking project (not old BPP/PK)
#
# Prerequisites:
# - Windows 10/11
# - .NET 8 SDK (download from https://dotnet.microsoft.com/download/dotnet/8.0)
# - Run this script in PowerShell as Administrator

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "PKBridge Complete Builder" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if running as Administrator
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
    Write-Host "WARNING: Not running as Administrator" -ForegroundColor Yellow
    Write-Host "   Some build steps may fail without admin privileges" -ForegroundColor Yellow
    Write-Host ""
}

# Check .NET SDK
Write-Host "Checking .NET SDK..." -ForegroundColor Green
try {
    $dotnetVersion = dotnet --version
    Write-Host "FOUND: .NET SDK version: $dotnetVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: .NET SDK not found!" -ForegroundColor Red
    Write-Host "   Download from: https://dotnet.microsoft.com/download/dotnet/8.0" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Press Enter to exit (you can copy text before pressing Enter)..." -ForegroundColor Gray
    $null = Read-Host
    exit 1
}
Write-Host ""

# Setup paths
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$configWizardSourceDir = Join-Path $scriptDir "config-wizard"
$bridgeServiceSourceDir = Join-Path $scriptDir "bridge-service"
$outputDir = Join-Path $scriptDir "config-wizard-build"
$bridgeServiceTempDir = Join-Path $scriptDir "bridge-service-temp"

# Validate source directories
if (-not (Test-Path $configWizardSourceDir)) {
    Write-Host "ERROR: Config wizard source not found: $configWizardSourceDir" -ForegroundColor Red
    Write-Host ""
    Write-Host "Press Enter to exit (you can copy text before pressing Enter)..." -ForegroundColor Gray
    $null = Read-Host
    exit 1
}

if (-not (Test-Path $bridgeServiceSourceDir)) {
    Write-Host "ERROR: Bridge service source not found: $bridgeServiceSourceDir" -ForegroundColor Red
    Write-Host "   Expected at: $scriptDir\bridge-service" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Press Enter to exit (you can copy text before pressing Enter)..." -ForegroundColor Gray
    $null = Read-Host
    exit 1
}

Write-Host "Config wizard source: $configWizardSourceDir" -ForegroundColor Cyan
Write-Host "Bridge service source: $bridgeServiceSourceDir" -ForegroundColor Cyan
Write-Host "Output directory: $outputDir" -ForegroundColor Cyan
Write-Host ""

# Create output directory
if (Test-Path $outputDir) {
    Write-Host "Cleaning previous build..." -ForegroundColor Yellow
    Remove-Item -Path $outputDir -Recurse -Force
}
New-Item -ItemType Directory -Path $outputDir -Force | Out-Null

# Clean temporary bridge service build directory
if (Test-Path $bridgeServiceTempDir) {
    Remove-Item -Path $bridgeServiceTempDir -Recurse -Force
}

try {
    # ==========================================
    # Step 1/5: Build Bridge Service
    # ==========================================
    Write-Host "Step 1/5: Building Bridge Service from source..." -ForegroundColor Green
    Push-Location $bridgeServiceSourceDir

    try {
        # Restore NuGet packages for bridge service
        Write-Host "  Restoring bridge service packages..." -ForegroundColor White
        dotnet restore
        if ($LASTEXITCODE -ne 0) {
            throw "Bridge service NuGet restore failed"
        }

        # Publish bridge service for Windows (self-contained)
        Write-Host "  Publishing bridge service (Release, win-x64)..." -ForegroundColor White
        dotnet publish -c Release -r win-x64 --self-contained true -o $bridgeServiceTempDir
        if ($LASTEXITCODE -ne 0) {
            throw "Bridge service publish failed"
        }

        Write-Host "SUCCESS: Bridge service built successfully" -ForegroundColor Green
        Write-Host ""
    } finally {
        Pop-Location
    }

    # ==========================================
    # Step 2/5: Restore Config Wizard Packages
    # ==========================================
    Write-Host "Step 2/5: Restoring config wizard NuGet packages..." -ForegroundColor Green
    Push-Location $configWizardSourceDir

    dotnet restore
    if ($LASTEXITCODE -ne 0) {
        throw "Config wizard NuGet restore failed"
    }
    Write-Host "SUCCESS: Config wizard packages restored" -ForegroundColor Green
    Write-Host ""

    # ==========================================
    # Step 3/5: Build Config Wizard
    # ==========================================
    Write-Host "Step 3/5: Building config wizard (Release)..." -ForegroundColor Green
    dotnet build --configuration Release --no-restore
    if ($LASTEXITCODE -ne 0) {
        throw "Config wizard build failed"
    }
    Write-Host "SUCCESS: Config wizard build completed" -ForegroundColor Green
    Write-Host ""

    # ==========================================
    # Step 4/5: Copy Config Wizard Output
    # ==========================================
    Write-Host "Step 4/5: Copying config wizard output files..." -ForegroundColor Green
    $configWizardBuildOutput = Join-Path $configWizardSourceDir "bin\Release\net8.0-windows"

    if (-not (Test-Path $configWizardBuildOutput)) {
        throw "Config wizard build output not found: $configWizardBuildOutput"
    }

    Copy-Item -Path "$configWizardBuildOutput\*" -Destination $outputDir -Recurse -Force
    Write-Host "SUCCESS: Config wizard output copied to: $outputDir" -ForegroundColor Green
    Write-Host ""

    Pop-Location

    # ==========================================
    # Step 5/5: Package Bridge Service
    # ==========================================
    Write-Host "Step 5/5: Packaging bridge service..." -ForegroundColor Green
    $bridgeOutputDir = Join-Path $outputDir "bridge-service"

    if (Test-Path $bridgeOutputDir) {
        Remove-Item -Path $bridgeOutputDir -Recurse -Force
    }

    Copy-Item -Path $bridgeServiceTempDir -Destination $bridgeOutputDir -Recurse -Force

    # Clean up temporary build directory
    Remove-Item -Path $bridgeServiceTempDir -Recurse -Force

    Write-Host "SUCCESS: Bridge service packaged to: $bridgeOutputDir" -ForegroundColor Green
    Write-Host ""

    # ==========================================
    # Success Summary
    # ==========================================
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "BUILD SUCCESSFUL!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "BUILT FROM SOURCE:" -ForegroundColor Cyan
    Write-Host "  1. Bridge Service: $bridgeServiceSourceDir" -ForegroundColor White
    Write-Host "  2. Config Wizard:  $configWizardSourceDir" -ForegroundColor White
    Write-Host ""
    Write-Host "PACKAGE CONTENTS:" -ForegroundColor Cyan
    Write-Host "  Config Wizard: $outputDir\PKBridgeConfigWizard.exe" -ForegroundColor White
    Write-Host "  Bridge Service: $outputDir\bridge-service\pk-bridge-service.exe" -ForegroundColor White
    Write-Host ""
    Write-Host "CONFIGURATION DEFAULTS:" -ForegroundColor Cyan
    Write-Host "  FrontendUrl: http://192.168.0.11:6060" -ForegroundColor White
    Write-Host "  BackendUrl:  http://192.168.0.11:7075" -ForegroundColor White
    Write-Host "  BridgePort:  5000 (localhost)" -ForegroundColor White
    Write-Host ""
    Write-Host "TO INSTALL:" -ForegroundColor Yellow
    Write-Host "  1. Copy entire folder to Windows workstation" -ForegroundColor White
    Write-Host "  2. Right-click: PKBridgeConfigWizard.exe" -ForegroundColor White
    Write-Host "  3. Select: 'Run as administrator'" -ForegroundColor White
    Write-Host "  4. Complete the setup wizard" -ForegroundColor White
    Write-Host "  5. Verify service starts successfully" -ForegroundColor White
    Write-Host ""
    Write-Host "Press Enter to exit (you can copy text before pressing Enter)..." -ForegroundColor Gray
    $null = Read-Host

} catch {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "BUILD FAILED!" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "Error: $_" -ForegroundColor Red
    Write-Host ""
    Write-Host "Troubleshooting:" -ForegroundColor Yellow
    Write-Host "  1. Ensure .NET 8 SDK is installed" -ForegroundColor White
    Write-Host "  2. Run PowerShell as Administrator" -ForegroundColor White
    Write-Host "  3. Verify bridge-service source exists at parent directory" -ForegroundColor White
    Write-Host "  4. Verify config-wizard exists in current directory" -ForegroundColor White
    Write-Host ""
    Write-Host "Press Enter to exit (you can copy text before pressing Enter)..." -ForegroundColor Gray
    $null = Read-Host

    # Clean up temporary directory on failure
    if (Test-Path $bridgeServiceTempDir) {
        Remove-Item -Path $bridgeServiceTempDir -Recurse -Force -ErrorAction SilentlyContinue
    }

    exit 1
} finally {
    # Ensure we're back in the script directory
    if ((Get-Location).Path -ne $scriptDir) {
        Set-Location $scriptDir
    }
}
