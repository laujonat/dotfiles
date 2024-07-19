# Dotfiles for Zsh

This repository was created to transfer my dotfiles from Ubuntu to Mac. Since I only use zsh setup scripts for OSX now, that's the only thing I know that works.

## Zsh Setup

The zsh setup includes a package manager, a prompt, and a collection of helpful aliases.

```bash
./<folder>/zsh/install
```

After you should have everything symlinked from your directory:

```bash
lrwxr-xr-x    1 jon   staff    31B Jul 19 04:07 .zshrc -> /Users/jon/.dotfiles/zsh/.zshrc
lrwxr-xr-x    1 jon   staff    32B Jul 19 04:07 .zshenv -> /Users/jon/.dotfiles/zsh/.zshenv
lrwxr-xr-x    1 jon   staff    34B Jul 19 04:07 .zprofile -> /Users/jon/.dotfiles/zsh/.zprofile
lrwxr-xr-x    1 jon   staff    50B Jul 19 04:07 .zsh_plugins.txt -> /Users/jon/.dotfiles/zsh/antidote/.zsh_plugins.txt
lrwxr-xr-x    1 jon   staff    52B Jul 19 04:07 .aliases_20240719040729 -> /Users/jon/.dotfiles/aliases/.aliases_20240719040729
```

### Package Manager

The package manager used in this setup is [Antidote](https://getantidote.github.io/). The install script loads Antidote and creates symbolic links for `zsh/antidote/.zsh_plugins.txt` and other zsh configuration files into the home directory. It's a straightforward setup with no frills.

### Prompt

The prompt used in this setup is [Purity](https://github.com/therealklanni/purity). It's a minimalist, fast, and customizable zsh prompt.

### Aliases

This setup also includes a collection of helpful aliases. For example, the `http-headers` alias can be used to fetch HTTP headers from a URL:

```bash
~  ❯ http-headers https://google.com    
HTTP/2 301 
location: https://www.google.com/
content-type: text/html; charset=UTF-8
content-security-policy-report-only: object-src 'none';base-uri 'self';script-src 'nonce-66u9QvbcxRfyDMkkd24--g' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
date: Fri, 19 Jul 2024 09:10:15 GMT
expires: Sun, 18 Aug 2024 09:10:15 GMT
cache-control: public, max-age=2592000
# ..(cont)
```

# ~~Bash Easy Setup~~ Old

### ~~How To Use~~

~~Install Bash~~

```sh
cd ~ && mkdir -p dotfiles
git clone git@github.com:laujonat/bash.git ~/<dotfiles-directory>
. /<dotfiles-directory>/install
```

Homebrew

```sh
sh ~/.dotfiles/scripts/install_brew
```

FZF Fuzzy Search - junegunn/fzf.vim

```
sh ~/.dotfiles/scripts/fzf_bash_setup
```

Source from script to regenerate ~/.sources file (Currently only works if you ran the install script from user home)

```sh
srcbash // alias for ./<install_directory>/install
```

Environment configurations are aggregated into a generated file like bash_1570869366 when `./install` is run or sourced.
Creates a symlinked `~/.sources` file in user home directory for quick access to see sourced declarations.

### Features

- Works with Linux and MacOs
- History of sourced script copied into a history folder inside repo direcotry

### References

- Kerollos Magdy: <https://github.com/kerolloz/go-installer/blob/master/go.sh>
- Nathan Landau: <https://natelandau.com/my-mac-osx-bash_profile/>~~
