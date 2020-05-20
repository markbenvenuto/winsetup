#!/bin/bash
# remote_bootstrap.sh
# Must be run from mac or Linux machine

if [ "$#" -ne 1 ]; then
    echo "Must specify Remote Host to connect to (i.e. machine.example.com)"
    exit 1
fi

REMOTE_HOST=$1

ssh-copy-id Administrator@$REMOTE_HOST
scp $HOME/.evergreen.yml Administrator@$REMOTE_HOST:/cygdrive/c/Users/Administrator/.evergreen.yml

ssh Administrator@$REMOTE_HOST mkdir /cygdrive/c/Users/Administrator/.ssh
scp $HOME/.ssh/id_rsa Administrator@$REMOTE_HOST:/cygdrive/c/Users/Administrator/.ssh/id_rsa

ssh Administrator@$REMOTE_HOST git -C z:/ clone git@github.com:markbenvenuto/winsetup.git

# TODO - this deploys a broken git.diff
# scp $HOME/.gitconfig Administrator@$REMOTE_HOST:/cygdrive/c/Users/Administrator/.gitconfig
