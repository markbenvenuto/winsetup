# profile_install.ps1

function ScriptDirectory {
    Split-Path -parent $PSCommandPath
}

New-Item -path $profile -type file -force

$src_path = "$(ScriptDirectory)\..\data\profile";
echo $src_path

Copy-Item -Path $src_path\profile.ps1 -Destination $profile
