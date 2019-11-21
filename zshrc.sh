if [[ -d "$ZDOTDIR" ]]; then
	for file in "$ZDOTDIR"/*.zsh; do
		source "$file"
	done
fi
