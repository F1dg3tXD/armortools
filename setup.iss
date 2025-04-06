; armor_tools_installer.iss - Installer for ArmorTools Package

[Setup]
AppName=ArmorTools
AppVersion=0.2.1
DefaultDirName={pf}\ArmorTools
DefaultGroupName=ArmorTools
AllowNoIcons=yes
OutputDir=.
OutputBaseFilename=ArmorToolsInstaller
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
SetupIconFile=E:\source\armortools\icon.ico
WizardStyle=modern
DisableWelcomePage=no
DisableDirPage=no
DisableProgramGroupPage=no
DisableReadyPage=no
DisableFinishedPage=no

[Types]
Name: "full"; Description: "Full installation"
Name: "compact"; Description: "Compact installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
Name: "armorpaint"; Description: "ArmorPaint"; Types: full compact custom; Flags: checkablealone
Name: "armorlab"; Description: "ArmorLab"; Types: full custom

[Files]
; --- ArmorPaint Files ---
Source: "armorpaint\build\out\*"; DestDir: "{app}\ArmorPaint"; Flags: recursesubdirs ignoreversion; Components: armorpaint

; --- ArmorLab Files ---
Source: "E:\source\armortools\armorlab\build\out\*"; DestDir: "{app}\ArmorLab"; Flags: recursesubdirs ignoreversion; Components: armorlab

[Icons]
; --- Shortcuts for installed apps ---
Name: "{group}\ArmorPaint"; Filename: "{app}\ArmorPaint\ArmorPaint.exe"; WorkingDir: "{app}\ArmorPaint"; \
    IconFilename: "{app}\ArmorPaint\ArmorPaint.ico"; Components: armorpaint

Name: "{group}\ArmorLab"; Filename: "{app}\ArmorLab\ArmorLab.exe"; WorkingDir: "{app}\ArmorLab"; \
    IconFilename: "{app}\ArmorLab\ArmorLab.ico"; Components: armorlab

; --- Uninstaller Shortcut ---
Name: "{group}\Uninstall ArmorTools"; Filename: "{uninstallexe}"

[Run]
; --- Launch apps after installation if selected ---
Filename: "{app}\ArmorPaint\ArmorPaint.exe"; Description: "Launch ArmorPaint"; Flags: nowait postinstall skipifsilent; Components: armorpaint
Filename: "{app}\ArmorLab\ArmorLab.exe"; Description: "Launch ArmorLab"; Flags: nowait postinstall skipifsilent; Components: armorlab
