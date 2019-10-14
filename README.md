# Bash Easy Setup

### How To Use

Install Bash
```sh
$ cd ~
$ git clone git@github.com:laujonat/bash.git
$ ./bash/install
```

Homebrew
```sh
$ sh ./scripts/install_brew
```

Source from script to regenerate ~/.sources file
```sh
$ srcbash # alias ./<install_directory>/install
```

Environment configurations are aggregated into a generated file like bash_1570869366 when `./install` is run or sourced.
Creates a symlinked `~/.sources` file in user home directory for quick access to see sourced declarations.


### Features
- Works with Linux and MacOs
- History of sourced script copied into a history folder inside repo direcotry

### References
- Kerollos Magdy: https://github.com/kerolloz/go-installer/blob/master/go.sh
- Nathan Landau: https://natelandau.com/my-mac-osx-bash_profile/
