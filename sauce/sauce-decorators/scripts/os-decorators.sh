#! /bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

get_os_icon() {
	o=$(which_os)
	if [[ $o = "Darwin" ]];then
		icon=""
	else
		icon=""
	fi
	echo $icon
}

main(){
	oi=$(get_os_icon)
	echo $oi
}
