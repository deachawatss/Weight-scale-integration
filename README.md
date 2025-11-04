# PKBridge Installer Package

This folder contains the complete source code and build scripts for PKBridge Config Wizard and Bridge Service.

**IMPORTANT**: This package now builds BOTH projects from source to ensure the correct binaries are deployed.

## Changes in This Version (2025-10-31)

### Build System Updates
- **NEW**: Bridge service now builds from source (fixes wrong binary issue)
- **NEW**: Single BUILD-ON-WINDOWS.ps1 script builds both projects
- **FIXED**: Ensures correct binaries from Partial-Picking project (not old BPP/PK)

### Bridge Service Updates (CRITICAL FIX) 🔧
- **FIXED**: Negative weight parsing for Mettler Toledo tare mode
  - Problem: Scale sends different status codes: `-3` (tare offset), `-9` (weighing after tare)
  - Root cause: Code was negating weight for ALL negative status codes, not just `-3`
  - Solution: Only negate weight when status is SPECIFICALLY `-3` (tare offset)
  - Result:
    - Empty tared scale: `-0.323 KG` ✅
    - Item on tared scale: `+1.945 KG` ✅ (not `-1.945 KG`)
- **File modified**: `bridge-service/Services/SerialScaleReader.cs` (lines 826-835)

### Config Wizard Updates
- **FIXED**: Scale testing now displays negative weights correctly
  - Problem: Scale Testing page showed positive values even when scale displayed negative weights
  - Solution: Applied same tare mode detection logic as bridge service (status `-3` only)
  - File modified: `config-wizard/Pages/ScaleTestingPage.xaml.cs` (lines 288-337)
- **Default FrontendUrl**: Changed from `http://192.168.0.10:6060` to `http://192.168.0.11:6060`
- **Default BackendUrl**: Changed from `http://192.168.0.10:7075` to `http://192.168.0.11:7075`
- **BridgePort**: Remains `5000` (client localhost only)

### Frontend Updates (Deploy Separately) ✅
- **Tare mode support**: Negative weights now display correctly with purple/blue gradient
- **Progress bar fix**: No longer stuck at 0% when Tare button is pressed
- **Exact weight display**: Shows exact scale values (e.g., "-0.030 KG")

## Build Instructions for Windows

### Prerequisites
1. **Windows 10/11** (required for WPF applications)
2. **.NET 8 SDK** - Download from https://dotnet.microsoft.com/download/dotnet/8.0
3. **Administrator privileges** (required for building)

### Quick Build (Recommended)

1. **Copy this entire `installer-package` folder to your Windows machine**
   ```
   Copy to ANY location on your Windows workstation, for example:
   - C:\Temp\installer-package
   - Desktop\installer-package
   - Downloads\installer-package
   - Any folder you prefer
   ```

2. **Open PowerShell as Administrator**
   - Press `Win + X`
   - Select "Windows PowerShell (Admin)" or "Terminal (Admin)"

3. **Navigate to the installer-package folder** (adjust path to where you copied it)
   ```powershell
   # Example if copied to Temp:
   cd C:\Temp\installer-package

   # Example if copied to Desktop:
   cd "$env:USERPROFILE\Desktop\installer-package"

   # Example if copied to Downloads:
   cd "$env:USERPROFILE\Downloads\installer-package"
   ```

4. **Run the build script**
   ```powershell
   .\BUILD-ON-WINDOWS.ps1
   ```

5. **Wait for build to complete**
   - The script will restore NuGet packages
   - Build the Release configuration
   - Copy output to `config-wizard-build` folder

6. **Run the wizard**
   ```powershell
   cd config-wizard-build
   .\PKBridgeConfigWizard.exe
   ```

   **OR**

   Right-click `PKBridgeConfigWizard.exe` → "Run as administrator"

### Manual Build (Alternative)

If the script doesn't work, build manually:

```powershell
cd config-wizard
dotnet restore
dotnet build --configuration Release
```

Executable will be in: `config-wizard\bin\Release\net8.0-windows\PKBridgeConfigWizard.exe`

## Testing the Updated Wizard

1. **Launch the wizard** (as administrator)

2. **Navigate to "Server URLs" page**

3. **Verify the defaults**:
   - ✅ Frontend URL should show: `http://192.168.0.11:6060`
   - ✅ Backend URL should show: `http://192.168.0.11:7075`
   - ✅ Bridge Port should show: `5000`

4. **Click "Test Connection"**:
   - Should successfully connect to 192.168.0.11 server
   - If connection fails, verify the server is running

5. **Complete the wizard setup**

## Directory Structure

```
installer-package/
├── README.md                           ← This file
├── BUILD-ON-WINDOWS.ps1                ← Automated build script (builds BOTH projects)
├── DIAGNOSE-SERVICE.ps1                ← Service diagnostic tool
├── TEST-SERVICE-CONSOLE.ps1            ← Console mode testing tool
├── FIX-APPSETTINGS.md                  ← Troubleshooting guide
├── config-wizard/               ← Config wizard source code
│   ├── Models/
│   │   └── ConfigurationData.cs       ← Updated with new IPs
│   ├── Pages/
│   ├── Services/
│   └── PKBridgeConfigWizard.csproj
├── bridge-service/                     ← Bridge service SOURCE CODE
│   ├── bridge-service.csproj          ← .NET 8 project file
│   ├── Program.cs                     ← Main entry point
│   ├── Models/                        ← Data models
│   ├── Options/                       ← Configuration options
│   └── Services/                      ← Scale communication services
└── config-wizard-build/                ← Build output (created after running BUILD-ON-WINDOWS.ps1)
    ├── PKBridgeConfigWizard.exe       ← Config wizard executable
    └── bridge-service/                ← Bridge service BUILT BINARIES
        ├── pk-bridge-service.exe      ← Ready for installation
        └── *.dll                      ← All dependencies
```

## Deployment to Production

After successful build and testing:

1. **Copy the built executable** from `config-wizard-build/`

2. **Distribute to all Windows client workstations**

3. **Run on each client**:
   - Right-click → "Run as administrator"
   - Complete the wizard
   - Verify server URLs are 192.168.0.11

4. **Test with Mettler Toledo scale**:
   - Press Tare button
   - Verify negative weights display correctly (frontend update needed separately)

## Troubleshooting Service Start Issues

### ❌ Error: "Cannot start service 'PKBridgeService' on computer"

This is the most common issue. The service requires database access to start.

#### Quick Diagnosis - Run Diagnostic Script

**Step 1**: Run the diagnostic script as Administrator:
```powershell
.\DIAGNOSE-SERVICE.ps1
```

This automatically checks:
- ✅ Service installation status
- ✅ Configuration file exists
- ✅ Database connection works
- ✅ Event log errors
- ✅ Attempts to start service

#### Test in Console Mode

**Step 2**: Test the service in console mode to see real-time errors:
```powershell
.\TEST-SERVICE-CONSOLE.ps1
```

This runs the bridge service in your terminal window so you can see exactly what's failing.

#### Common Solutions

**Problem 1: Database Connection Failed** 🔴
```
Symptom: Service starts then immediately stops
Event Log: "Cannot connect to database" or timeout errors
```
**Fix**:
- Verify SQL Server is running at configured IP:Port (default: 192.168.0.11:49381)
- Test connection: `sqlcmd -S 192.168.0.11,49381 -U sa -P YourPassword`
- Check `C:\Program Files\PK\BridgeService\appsettings.json` has correct credentials
- Verify Windows Firewall allows SQL Server port

**Problem 2: Configuration File Missing** 🔴
```
Symptom: Service won't start at all
Event Log: "appsettings.json not found"
```
**Fix**:
- Re-run the Config Wizard (PKBridgeConfigWizard.exe as Administrator)
- Complete all wizard steps to create appsettings.json
- Verify file exists: `C:\Program Files\PK\BridgeService\appsettings.json`

**Problem 3: Port Already in Use** 🟡
```
Symptom: Service fails with "Address already in use"
Event Log: "Failed to bind to http://0.0.0.0:5000"
```
**Fix**:
- Check what's using port 5000: `netstat -ano | findstr :5000`
- Stop conflicting process or change bridge port in appsettings.json

**Problem 4: Permission Denied** 🟡
```
Symptom: Service fails with "Access Denied"
Event Log: Permission errors
```
**Fix**:
- Run Config Wizard as Administrator
- Check file permissions: `C:\Program Files\PK\BridgeService` (should be readable by SYSTEM account)

#### Manual Service Control Commands

```powershell
# Check service status
Get-Service PKBridgeService

# Start service manually
Start-Service PKBridgeService

# Stop service
Stop-Service PKBridgeService

# Restart service
Restart-Service PKBridgeService

# View service details
sc.exe query PKBridgeService

# View service configuration
sc.exe qc PKBridgeService
```

#### Check Event Viewer for Errors

1. Open Event Viewer: Press `Win + R` → type `eventvwr.msc` → Enter
2. Navigate to: **Windows Logs > Application**
3. Filter by **Source**: `PKBridgeService`
4. Look for **Error** entries with timestamps matching your start attempt
5. Read the detailed error message

#### Verify Service is Working

After successful start:

```powershell
# 1. Check service status
Get-Service PKBridgeService
# Should show: Status = Running

# 2. Test HTTP health endpoint
Invoke-WebRequest http://localhost:5000/health
# Should return JSON: {"status":"ok","workstation":"YOUR-PC",...}

# 3. Test in browser
# Open: http://localhost:5000
# Should show: {"service":"PK Bridge Service",...}

# 4. Test WebSocket (from your application)
# Frontend should connect to: ws://localhost:5000/ws/scale/small
```

## Troubleshooting Build Issues

### Build Error: ".NET SDK not found"
**Solution**: Install .NET 8 SDK from https://dotnet.microsoft.com/download/dotnet/8.0

### Build Error: "Access denied"
**Solution**: Run PowerShell as Administrator

### Build Error: "NuGet restore failed"
**Solution**:
```powershell
cd config-wizard-source
dotnet restore --force
dotnet clean
dotnet build --configuration Release
```

### Runtime Error: "Administrator privileges required"
**Solution**: Right-click .exe → "Run as administrator"

### Wizard shows old IP (192.168.0.10)
**Problem**: You may be running the old version
**Solution**: Verify you're running the newly built executable from `config-wizard-build/`

### Connection test fails to 192.168.0.11
**Check**:
1. Verify server is running at 192.168.0.11
2. Check firewall allows ports 6060 and 7075
3. Ping 192.168.0.11 to verify network connectivity

## Next Steps After Installation

1. ✅ Config wizard installed with correct server IPs (192.168.0.11)
2. ⏳ Deploy updated frontend to server (for tare mode fix)
3. ⏳ Test tare button with Mettler Toledo scale
4. ⏳ Verify negative weights display with purple/blue gradient

## Support

For issues or questions, refer to:
- Config wizard source: `config-wizard/README.md`
- Build instructions: `config-wizard/BUILD_INSTRUCTIONS.md`
- OpenSpec proposal: `openspec/changes/improve-scale-negative-weight-support/`

## Version Info

- **Build Date**: 2025-10-31
- **OpenSpec Change**: `improve-scale-negative-weight-support`
- **Updated Files**:
  - `Models/ConfigurationData.cs` (lines 18-19)
- **Frontend Updates**: See frontend build artifacts (separate deployment)
