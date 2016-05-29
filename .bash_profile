for file in ~/.{bashrc,aliases,functions,dockerfunc}; do
    [[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file

export GOPATH=$HOME
export PATH=~/bin:"$PATH"

