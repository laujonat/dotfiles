#-- START ZCACHE GENERATED FILE
#-- GENERATED: Fri Mar 10 00:14:02 PST 2023
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/Users/jon/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/macos /Users/jon/.antigen/bundles/therealklanni/purity /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/httpie /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mosh /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /Users/jon/.antigen/bundles/lukechilds/zsh-nvm /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copypath /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/alias-finder /Users/jon/.antigen/bundles/luismayta/zsh-docker-compose-aliases /Users/jon/.antigen/bundles/webyneter/docker-aliases /Users/jon/.antigen/bundles/zsh-users/zsh-completions /Users/jon/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/jon/.antigen/bundles/zsh-users/zsh-syntax-highlighting) path+=(/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/macos /Users/jon/.antigen/bundles/therealklanni/purity /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/httpie /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mosh /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /Users/jon/.antigen/bundles/lukechilds/zsh-nvm /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copypath /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn /Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/alias-finder /Users/jon/.antigen/bundles/luismayta/zsh-docker-compose-aliases /Users/jon/.antigen/bundles/webyneter/docker-aliases /Users/jon/.antigen/bundles/zsh-users/zsh-completions /Users/jon/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/jon/.antigen/bundles/zsh-users/zsh-syntax-highlighting)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/Users/jon/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/macos/macos.plugin.zsh';
source '/Users/jon/.antigen/bundles/therealklanni/purity/purity.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku/heroku.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf/fzf.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/httpie/httpie.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mosh/mosh.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh';
source '/Users/jon/.antigen/bundles/lukechilds/zsh-nvm/zsh-nvm.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile/copyfile.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copypath/copypath.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn/yarn.plugin.zsh';
source '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/alias-finder/alias-finder.plugin.zsh';
source '/Users/jon/.antigen/bundles/luismayta/zsh-docker-compose-aliases/zsh-docker-compose-aliases.zsh';
source '/Users/jon/.antigen/bundles/webyneter/docker-aliases/docker-aliases.plugin.zsh';
source '/Users/jon/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/Users/jon/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/Users/jon/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/macos plugin true' 'https://github.com/therealklanni/purity.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/heroku plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/kubernetes plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/lein plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/fzf plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/httpie plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/mosh plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/npm plugin true' 'https://github.com/lukechilds/zsh-nvm.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/copyfile plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/copypath plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/yarn plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/alias-finder plugin true' 'https://github.com/luismayta/zsh-docker-compose-aliases.git / plugin true' 'https://github.com/webyneter/docker-aliases.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/macos' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/macos/macos.plugin.zsh' '/Users/jon/.antigen/bundles/therealklanni/purity//' '/Users/jon/.antigen/bundles/therealklanni/purity///purity.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku/heroku.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/kubernetes' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/fzf/fzf.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/httpie' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/httpie/httpie.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mosh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/mosh/mosh.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh' '/Users/jon/.antigen/bundles/lukechilds/zsh-nvm//' '/Users/jon/.antigen/bundles/lukechilds/zsh-nvm///zsh-nvm.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copyfile/copyfile.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copypath' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/copypath/copypath.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/yarn/yarn.plugin.zsh' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/alias-finder' '/Users/jon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/alias-finder/alias-finder.plugin.zsh' '/Users/jon/.antigen/bundles/luismayta/zsh-docker-compose-aliases//' '/Users/jon/.antigen/bundles/luismayta/zsh-docker-compose-aliases///zsh-docker-compose-aliases.zsh' '/Users/jon/.antigen/bundles/webyneter/docker-aliases//' '/Users/jon/.antigen/bundles/webyneter/docker-aliases///docker-aliases.plugin.zsh' '/Users/jon/.antigen/bundles/zsh-users/zsh-completions//' '/Users/jon/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/Users/jon/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/Users/jon/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/Users/jon/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/Users/jon/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
