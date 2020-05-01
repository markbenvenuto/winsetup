# Create a c:\bin directory
# Add it to the path

function ScriptDirectory {
    Split-Path -parent $PSCommandPath
}

. .\lib\path_lib.ps1

$p =  ScriptDirectory
"Current Path: $p"

$src_path = "$(ScriptDirectory)\..\data\bin"
echo $src_path

New-Item c:\bin\ -Type Directory -ErrorAction SilentlyContinue | Out-Null
Copy-Item -Path $src_path\* -Destination c:\bin\

ADD-PATH('c:\bin')