; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A905BA2A-2D24-4D44-AAFA-02B974775A00}
AppName=Virtual Machine USB Boot
AppVersion=1.72 x86
AppPublisher=DavidB
AppPublisherURL=http://reboot.pro/user/61891-davidb/
AppSupportURL=http://reboot.pro/topic/18736-virtual-machine-usb-boot/
AppUpdatesURL=http://reboot.pro/files/file/339-virtual-machine-usb-boot/
DefaultDirName={pf}\{#SetupSetting("AppName")}
DefaultGroupName={#SetupSetting("AppName")}
OutputDir=.
OutputBaseFilename={#SetupSetting("AppName")} {#SetupSetting("AppVersion")} setup
Compression=lzma
SolidCompression=yes
AllowNoIcons=yes
DisableWelcomePage=no
WizardImageFile=compiler:WizModernImage-IS.bmp
WizardSmallImageFile=compiler:WizModernSmallImage-IS.bmp
VersionInfoVersion=1.0.0.0

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "romanian"; MessagesFile: "compiler:Languages\Romanian.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"
Name: "bosnian"; MessagesFile: "compiler:Languages\Bosnian.isl"
Name: "bulgarian"; MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"
Name: "croatian"; MessagesFile: "compiler:Languages\Croatian.isl"
Name: "estonian"; MessagesFile: "compiler:Languages\Estonian.isl"
Name: "hindi"; MessagesFile: "compiler:Languages\Hindi.islu"
Name: "indonesian"; MessagesFile: "compiler:Languages\Indonesian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "swedish"; MessagesFile: "compiler:Languages\Swedish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"

[CustomMessages]
english.AskDeleteCfg=Do you want to delete the configuration and entries list files ?

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "Main\Output\{#SetupSetting("AppName")}.x86.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Main\Output\Languages\*.lng"; DestDir: "{app}\Languages"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#SetupSetting("AppName")}"; Filename: "{app}\{#SetupSetting("AppName")}.x86.exe"
Name: "{group}\{cm:UninstallProgram,{#SetupSetting("AppName")}}"; Filename: "{uninstallexe}"
Name: "{group}\{cm:ProgramOnTheWeb,{#SetupSetting("AppName")}}"; Filename: "http://reboot.pro/files/file/339-virtual-machine-usb-boot/"
Name: "{commondesktop}\{#SetupSetting("AppName")}"; Filename: "{app}\{#SetupSetting("AppName")}.x86.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#SetupSetting("AppName")}"; Filename: "{app}\{#SetupSetting("AppName")}.x86.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#SetupSetting("AppName")}.x86.exe"; Description: "{cm:LaunchProgram,{#SetupSetting("AppName")}}"; Flags: nowait postinstall skipifsilent shellexec

[Code]
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
   if CurUninstallStep = usPostUninstall then
      if DirExists(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}') then
      begin
         if FileExists(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}' + '\' + '{#SetupSetting("AppName")}' + '.cfg') or FileExists(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}' + '\' + '{#SetupSetting("AppName")}' + '.vml') or FileExists(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}' + '\' + '{#SetupSetting("AppName")}' + '.vml.bak') then
            if MsgBox(ExpandConstant('{cm:AskDeleteCfg}'), mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES then
            begin
               DeleteFile(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}' + '\' + '{#SetupSetting("AppName")}' + '.cfg');
               DeleteFile(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}' + '\' + '{#SetupSetting("AppName")}' + '.vml');
               DeleteFile(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}' + '\' + '{#SetupSetting("AppName")}' + '.vml.bak');
            end;
         RemoveDir(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}');
      end;       
end;

procedure CurStepChanged(CurStep: TSetupStep);
var s, ws: AnsiString;
   i, l: Integer;
begin
   if CurStep = ssPostInstall then
      if FileExists(ExpandConstant('{app}') + '\Languages\' + ExpandConstant('{language}') + '.lng') then
         if not FileExists(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}' + '\' + '{#SetupSetting("AppName")}' + '.cfg') then
         begin
            if not DirExists(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}') then
               if not ForceDirectories(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}') then
                  Exit;
            s := 'CurrLanguageFile=' + ExpandConstant('{language}') + '.lng';
            l := 2 * Length(s) + 2;
            SetLength(ws, l);
            ws[1] := Chr(255);
            ws[2] := Chr(254);
            for i := 3 to l do
               if (i mod 2) = 1 then
                  ws[i] := s[i div 2]
               else
                  ws[i] := #0;
            SaveStringToFile(ExpandConstant('{userappdata}') + '\' + '{#SetupSetting("AppName")}' + '\' + '{#SetupSetting("AppName")}' + '.cfg', ws, False);
         end;
end;