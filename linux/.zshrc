# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mezerotm/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Personal
if [ -f ~/.antigen/antigen.zsh ]; then
	source ~/.antigen/antigen.zsh

	antigen use oh-my-zsh
	antigen theme arrow
	antigen bundle ael-code/zsh-colored-man-pages

	antigen bundle desyncr/auto-ls
	auto-ls-custom () {
		ls -F --color=auto
	}
	AUTO_LS_COMMANDS=(custom)

	antigen bundle zsh-users/zsh-autosuggestions
	antigen bundle zsh-users/zsh-syntax-highlighting
	antigen apply
fi

if [ -f ~/.aliasrc ]; then
	source ~/.aliasrc
fi

export LESS='-R'
export LESSOPEN='|~/.config/less/lessfilter %s'
