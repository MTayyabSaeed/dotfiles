#! /bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"
source "$HOME/.colorSauce"

get_window_icon() {
	v="$(eval "echo $(echo "$"$1Icon)")"
	echo $v
	# echo $(eval "echo $(echo "$"$(tmux display-message -p '#W')Icon)")
}

main() {
	s=$(get_window_icon $1)
	echo $s
}

main "$1"
