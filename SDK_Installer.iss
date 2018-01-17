; Ceci est un modèle d'installateur à compiler avec Inno Setup.
; Il permet déployer facilement les fichiers "SDK E-connecteur".
; Placez les fichiers à déployer dans le dossier C:\Vaisonet\E-connecteur\SDK (à créer s'il est absent),
; lancez la compilation via Inno Setup. Le déploiement se fait simplement en double cliquant sur l'exécutable.
; Attention, ce script ne valide pas le bon fonctionnement de vos développements. Il aide à les déployer seulement !
; Copyright 2017 - Vaisonet - https://www.vaisonet.com

[Setup]
AppName=Installateur composants SDK - Vaisonet E-connecteur
AppVersion=1.0
Compression=lzma2
SolidCompression=True
AppCopyright=Vaisonet
AppId={{4B5DEDED-9B3D-455E-BA6C-B5448EEE7F8D}
CreateAppDir=False
UsePreviousGroup=False
AppendDefaultGroupName=False
AppPublisher=Votre nom
Uninstallable=no
VersionInfoVersion=1.1
VersionInfoCompany=Vaisonet
VersionInfoDescription=Installateur Composants SDK
VersionInfoCopyright=2017 - Vaisonet
VersionInfoProductName=E-connecteur
VersionInfoProductVersion=6
OutputDir=C:\Vaisonet\E-connecteur
OutputBaseFilename=Personnalisation_E-connecteur_SDK
SourceDir=C:\Vaisonet\E-connecteur\SDK

[Files]
Source:C:\Vaisonet\E-connecteur\SDK\*; DestDir: C:\ProgramData\Vaisonet\Connecteur; 

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Run]
;Filename: "{pf32}\Vaisonet\connecteur\econnecteur\Plannif.exe"; Parameters: "--installSDK"; WorkingDir: "{pf32}\Vaisonet\connecteur\econnecteur"; Flags: postinstall waituntilterminated runhidden; Description: "Lancer l'intégration dans E-connecteur"; Languages: french
