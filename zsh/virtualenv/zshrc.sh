# Virtualenv custom prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1
function venv_prompt {
    local venv=""
    local whatvenv="${VIRTUAL_ENV:-$CONDA_ENV_PATH}"
    if [ -n "$whatvenv" ]; then
        name=$(basename "$whatvenv")
        if [ -n "$CONDA_ENV_PATH" ]; then
            venv="(%{$fg[red]%}C%{$reset_color%}|%{$fg[cyan]%}$name%{$reset_color%}) "
        else
            venv="(%{$fg[magenta]%}V%{$reset_color%}|%{$fg[cyan]%}$name%{$reset_color%}) "
        fi
    fi
    echo $venv
}

function activate {
    source $1/bin/activate
}
