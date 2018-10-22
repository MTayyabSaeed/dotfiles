which_os() {
	python -c "import platform;print(platform.platform().rsplit('-')[0])"
}

which_window() {
	tmux display-message -p "#W"
}
