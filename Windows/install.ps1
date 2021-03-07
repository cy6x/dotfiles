$ProgressPreference = 'SilentlyContinue'

# Configure qBittorrent
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/qBittorrent/qBittorrent.ini" -OutFile (New-Item -Path "$env:APPDATA\qBittorrent\qBittorrent.ini" -Force)

# Configure Windows Terminal
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/Terminal/settings.json" -OutFile (New-Item -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force)

## Install Terminus font
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/Terminal/font/Terminus.ttf" -OutFile "$env:windir\Fonts\Terminus.ttf"
New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" -Name "Terminus (TrueType)" -Type String -Value "Terminus.ttf" -Force | Out-Null
