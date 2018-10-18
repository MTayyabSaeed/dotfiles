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

if [ -z "$TMUX" ]; then
	for label in static hotkey #toggler
	do
		tmux new -s $label -n main -d 2>/dev/null
	done
fi

autoload -U promptinit; promptinit; prompt pure
unsetopt prompt_cr

alias t="tmux new -s toggler tt"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias "et"="vi ~/.tmux.conf"
alias "ett"="vi ~/.tmuxtheme"
alias ll='ls -alF'
alias vi="vim"
alias vim="/usr/local/Cellar/vim/8.1.0450/bin/vim"
alias screenfetch="screenfetch -E"
alias batfg="~/.tmux/plugins/tmux-battery/scripts/battery_status_fg.sh"
alias batbg="~/.tmux/plugins/tmux-battery/scripts/battery_status_bg.sh"
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

alias sroot="ssh root@10.0.0.165"
alias sgeb="ssh max@10.144.42.227"

alias showdesk="~/.scripts/desktop_an.sh"
alias hidedesk="~/.scripts/desktop_aus.sh"

bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

PATH=/usr/local/bin:$PATH

setopt AUTO_CD
setopt correct

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
