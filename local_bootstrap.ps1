
# Set timezone to something sane
Set-TimeZone -Id "Eastern Standard Time" -PassThru

# Install profile first since choco may customize
# posh-git is one known case
install\profile_install.ps1

install\choco_install.ps1

# Require interactive prompt
install\bin_install.ps1

install\git_install.ps1

