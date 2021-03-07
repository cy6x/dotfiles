$ProgressPreference = 'SilentlyContinue'

# qBittorrent
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/qBittorrent/qBittorrent.ini" -OutFile (New-Item -Path "$env:APPDATA\qBittorrent\qBittorrent.ini" -Force)

# Terminus font
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/Terminal/font/Terminus.ttf" -OutFile "$env:windir\Fonts\Terminus.ttf"

# Windows Terminal
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/Terminal/settings.json" -OutFile (New-Item -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force)
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/Terminal/font/Terminus.ttf" -OutFile (New-Item -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force)
