function cde() { cd .\src\mongo\db\modules\enterprise\ }
function cdn() { cd .\src\mongo\db\modules\ninja\ }

function devshell() {
    Import-Module "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\Tools\Microsoft.VisualStudio.DevShell.dll";
    Enter-VsDevShell -DevCmdArguments "-arch=amd64 -host_arch=amd64" 98353fc6
} 

$env:PATH="c:\tools\vim\vim82;c:\python\python37;$env:PATH"

# Set WIX tools path for building MSI
$env:WIX="c:\wixtools"
