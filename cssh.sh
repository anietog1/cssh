#! /usr/bin/bash

usage() {
    cat << EOF
Usage:
  cssh --help
  cssh profile

Files:
  $HOME/.local/bin/cssh
    cssh executable file

  $HOME/.local/etc/cssh
    cssh profiles folder
EOF
}

if [ "$#" = 0 ] || [ "$1" = --help ]; then
    usage
    exit
fi

CSSH_PROFILE="$1"
if ! source "$HOME/.local/etc/cssh/$CSSH_PROFILE"; then
    usage
    exit 1
fi

SSHPASS="$CSSH_PASS" sshpass -v -e ssh -p "$CSSH_PORT" "$CSSH_USER@$CSSH_HOST"
