# Install programs via Chocolately and pin some to the taskbar

function ScriptDirectory {
    Split-Path -parent $PSCommandPath
}

choco install --yes vscode.install vivaldi.install slack git.install poshgit ripgrep

choco install --yes curl vim wireshark networkmonitor sysinternals

choco install --yes llvm --version=7.0.1

# Pin programs to task bar
& "$(ScriptDirectory)\..\lib\pin_to_taskbar.ps1" 'C:\Program Files\Vivaldi\Application\vivaldi.exe'

& "$(ScriptDirectory)\..\lib\pin_to_taskbar.ps1" 'C:\Program Files\Slack\Slack.exe'

& "$(ScriptDirectory)\..\lib\pin_to_taskbar.ps1" 'C:\Program Files\Microsoft VS Code\Code.exe'

& "$(ScriptDirectory)\..\lib\pin_to_taskbar.ps1" 'C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe'
