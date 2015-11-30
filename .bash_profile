if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

for file in ~/.{bashrc,aliases,dockerfunc}; do
    [[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file
