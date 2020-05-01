# Install programs via Chocolately and pin some to the taskbar

choco install --yes vscode.install vivaldi.install slack git.install poshgit ripgrep


# Pin programs to task bar
..\lib\pin_to_taskbar.ps1 'C:\Program Files\Vivaldi\Application\vivaldi.exe'

..\lib\pin_to_taskbar.ps1 'C:\Program Files\Slack\Slack.exe'

..\lib\pin_to_taskbar.ps1 'C:\Program Files\Microsoft VS Code\Code.exe'

..\lib\pin_to_taskbar.ps1 'C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe'
