$ProgressPreference = 'SilentlyContinue'

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/qBittorrent/qBittorrent.ini" -OutFile (New-Item -Path "$env:APPDATA\qBittorrent\qBittorrent.ini" -Force)
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/Terminal/settings.json" -OutFile (New-Item -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState" -Force)
