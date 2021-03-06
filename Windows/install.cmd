robocopy qBittorrent %appdata%\qBittorrent

xcopy Terminal\font\Terminus.ttf %windir%\Fonts
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "FontName (TrueType)" /t REG_SZ /d Terminus.ttf /f
robocopy Terminal %localappdata%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
