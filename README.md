# Overview
My setup scripts for a Windows VM

Individual steps are in `install\` and designed to be on a Windows machine.

## Installation Steps

1. On a Linux/mac machine, run bootsrap over ssh
```
bash remote_bootstrap.sh <hostname>
```

2. Set a password for RDP login
```
ssh Administrator@<hostname> "net user Administrator <password>"
```

3. Login via RDP and run local boostrap in powershell
```
cd z:\winsetup
./local_bootstrap.ps1
```

## TODO

Git Setup
VS Code setup - install extensions

## Other Software
Wireshark - https://chocolatey.org/packages/wireshark
Network Monitor - https://chocolatey.org/packages/networkmonitor
SysInternals - https://chocolatey.org/packages/sysinternals
curl - https://chocolatey.org/packages/curl
vim - https://chocolatey.org/packages/vim
https://chocolatey.org/packages/SourceTree

## Manual steps

Vivaldi
- Extensions
  - Enable Developer Mode
  - Add z:\repo... 
- add bookmarks for work sites
- Under search/Search Engines
  - add j alias for https://jira.mongodb.org/browse/%s


### Git Todo
https://github.com/dandavison/delta