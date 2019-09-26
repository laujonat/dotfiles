#!/bin/bash

# SOvfl: questions/394230/how-to-detect-the-os-from-a-bash-script
export pkgmgr_get = ''

fuction system_os() {
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  $pkgmgr = 'apt update && apt-get'
elif [[ "$OSTYPE" == "darwin"* ]]; then
  $pkgmgr = 'brew update && brew install'
elif [[ "$OSTYPE" == "cygwin" ]]; then
  $pkgmgr = 'brew update && brew install'
elif [[ "$OSTYPE" == "msys" ]]; then
  $pkgmgr = "Unable to detect OS"
elif [[ "$OSTYPE" == "win32" ]]; then
  $pkgmgr = "Unable to detect OS"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  $pkgmgr = "Unable to detect OS"
else
  $pkgmgr = "Unable to detect OS"
fi
}

system_os
