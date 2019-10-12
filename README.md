# Bash Easy Setup

### How To Use

Install
```sh
$ cd ~
$ git clone git@github.com:laujonat/bash.git
$ ./bash/install
```

Source from script to regenerate ~/.sources file
```sh
$ srcbash # alias ./<install_directory>/install
```

Environment configurations are aggregated into a generated file like bash_1570869366 when `./install` is run or sourced.

### Nice to Haves
- Version history of sourced script copied into a history folder inside repo direcotry

###References
- Kerollos Magdy: https://github.com/kerolloz/go-installer/blob/master/go.sh
- Nathan Landau: https://natelandau.com/my-mac-osx-bash_profile/
