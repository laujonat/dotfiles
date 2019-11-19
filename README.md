# Bash Easy Setup

### How To Use

Install Bash
```sh
$ cd ~ && mkdir -p dotfiles
$ git clone git@github.com:laujonat/bash.git ~/<dotfiles-directory>
$ . /<dotfiles-directory>/install
```

Homebrew
```sh
$ sh ~/.dotfiles/scripts/install_brew
```

FZF Fuzzy Search - junegunn/fzf.vim
```
$ sh ~/.dotfiles/scripts/fzf_bash_setup
```

Source from script to regenerate ~/.sources file (Currently only works if you ran the install script from user home)
```sh
$ srcbash // alias for ./<install_directory>/install
```

Environment configurations are aggregated into a generated file like bash_1570869366 when `./install` is run or sourced.
Creates a symlinked `~/.sources` file in user home directory for quick access to see sourced declarations.


### Features
- Works with Linux and MacOs
- History of sourced script copied into a history folder inside repo direcotry

### References
- Kerollos Magdy: https://github.com/kerolloz/go-installer/blob/master/go.sh
- Nathan Landau: https://natelandau.com/my-mac-osx-bash_profile/
