# Similar colors to linux
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
alias ls='ls -G'
alias cleartrash="sudo rm -rf ~/.Trash/*"

function fixcoreaudio {
    sudo kill $(ps -ax | grep 'coreaudiod' | grep 'sbin' | awk '{print $1}')
}
