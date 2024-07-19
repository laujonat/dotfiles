# Zsh Configuration Installation

* `$ chmod +x install`
* `$ ./install`

After running the script, the following changes will be made to your system:

1. **Zsh and related tools installation**: If not already installed, the script installs Zsh, zsh-autosuggestions, and zsh-syntax-highlighting using Homebrew.

2. **Antidote installation**: If not already installed, the script installs Antidote, a plugin manager for Zsh.

3. **Zsh configuration files**: The script creates symbolic links from your home directory to the `.zshrc`, `.zprofile`, and `.zshenv` files in the repository.

4. **Aliases**: The script concatenates all alias files in the repository into a single file with a unique timestamp, then creates a symbolic link to this file from your home directory.

5. **Private Zsh file**: If a `.zsh_private` file does not already exist in your home directory, the script creates one.

6. **Zsh plugins**: The script creates a symbolic link from your home directory to the `.zsh_plugins.txt` file in the repository. If this file does not already exist in your home directory, the script creates one.

7. **Personal Zsh file**: The script creates a `.zsh_personal` file in your home directory, which contains an updated PATH, an alias to cd into the repository, and a command to source the aliases file.

8. **FZF installation**: The script installs FZF, a command-line fuzzy finder, in your home directory.




You will probably want to remove these lines from `.zshrc`:

```bash
. "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
```