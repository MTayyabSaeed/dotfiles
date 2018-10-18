# if you read this, make sure you checked the dependencies:
# todo: create dependencies.md and link them here


if [[ -z "$LC_ALL" ]]; then
  export LC_ALL='en_US.UTF-8'
fi


# initializes the tmux-sessions
if [[ "$TERM" =~ "screen".* ]]; then
	if [[ ! -v INTMUX ]]; then
		tmux new-window -t 2 -n dev 2>/dev/null
		tmux new-window -t 3 -n misc 2>/dev/null
		tmux new-window -t 4 -n tests 2>/dev/null
		tmux new-window -t 5 -n tmux-admin 2>/dev/null
		tmux select-window -t 1
		clear
		source ~/.scripts/tmux-wall
	fi
	INTMUX=1
fi		

# this export has to remain above the tmux-initlialization
export SAUCE="$HOME/.colorSauce"


# instantiates the tmux-sessions
if [ -z "$TMUX" ]; then
	for label in static hotkey #toggler
	do
		tmux new -s $label -n main -d 2>/dev/null
	done
fi


function tmuxToggle(){
	tmux send-keys -t static:"tmux-admin" "tmux switch-client -t tmp" Enter
	tmux send-keys -t hotkey:"tmux-admin" "tmux switch-client -t static" Enter
	tmux send-keys -t tmp "tmux switch-client -t hotkey" Enter
}


function tt(){
	tmux new -d -s tmp;
	tmux send-keys -t toggler tmuxToggle Enter;
	sleep 1
	tmux kill-session -t tmp;
}


# aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -alF'

alias vi="vim"
alias vim="/usr/local/Cellar/vim/8.1.0450/bin/vim"
alias sauce="source $HOME/.zshrc"
alias screenfetch="screenfetch -E"

alias sroot="ssh root@10.0.0.165"
alias sgeb="ssh max@10.144.42.227"

alias hidedesk="~/.scripts/hidedesk.sh"
alias showdesk="~/.scripts/showdesk.sh"


# bindings
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward


# config
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000


# path
PATH=/usr/local/bin:$PATH
export LANG=en_US.UTF-8


# prompt
autoload -U promptinit; promptinit; prompt pure
unsetopt prompt_cr


# options
setopt AUTO_CD
setopt correct


# plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
