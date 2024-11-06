# Install multiple apps using winget
# Made by tomkosdev

$apps = @(
##############################OTHER:
    "Telegram.TelegramDesktop",
    "Obsidian.Obsidian",
    "Spotify.Spotify",
    "Doist.Todoist",
    "Notion.Notion",
##############################COMMON:
    "Mozilla.Firefox",
    "VideoLAN.VLC",
    "RARLab.WinRAR",
    "KeePassXCTeam.KeePassXC",
    "Google.GoogleDrive",
    "voidtools.Everything",
    "Logitech.OptionsPlus",
    "Microsoft.PowerShell",
    "Google.Chrome",
    "qBittorrent.qBittorrent",
    "File-New-Project.EarTrumpet",
    "Microsoft.WindowsTerminal",
    "Microsoft.Teams",
#   "Discord.Discord",
##############################TOOLS:
    "7zip.7zip",
    "REALiX.HWiNFO",
    "CrystalDewWorld.CrystalDiskInfo",
    "OBSProject.OBSStudio",
    "WiresharkFoundation.Wireshark",
    "Debian.Debian",
    "Canonical.Ubuntu",
    "Espanso.Espanso",
    "WinSCP.WinSCP",
    "Ventoy.Ventoy",
    "Rufus.Rufus",
##############################DEV:
    "Docker.DockerDesktop",
    "Git.Git",
    "PuTTY.PuTTY",
    "Python.Python.3.13",
    "Microsoft.VisualStudioCode",
    "Microsoft.PowerToys",
    "DevToys-app.DevToys",
    "JetBrains.Toolbox",
    "Postman.Postman",
#   "dbeaver.dbeaver",
    "Azul.Zulu.21.JDK",
    "Azul.Zulu.17.JDK",
    "Azul.Zulu.11.JDK",
    "Azul.Zulu.8.JDK",
##############################DESKTOP:
#   "Nvidia.GeForceExperience",
##############################GAMES:
#   "Veloren.Airshipper",
#   "Ubisoft.Connect",
    "Valve.Steam"
)

foreach ($app in $apps) {
    Write-Output "Installing $app..."
    winget install --id $app --silent --accept-package-agreements --accept-source-agreements
    
    if ($LASTEXITCODE -eq 0) {
        Write-Output "$app installed successfully."
    } else {
        Write-Output "Failed to install $app. Error code: $LASTEXITCODE"
    }
}

Write-Output "All applications have been processed."
