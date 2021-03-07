Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cy6x/dotfiles/main/Windows/qBittorrent/qBittorrent.ini" -OutFile (New-Item -Path "$env:APPDATA\qBittorrent\qBittorrent.ini" -Force)
