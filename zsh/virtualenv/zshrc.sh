# Virtualenv custom prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1
function venv_prompt {
    local venv=""
    if [ -n "$VIRTUAL_ENV" ]; then
        name=$(basename "$VIRTUAL_ENV")
        venv="(%{$fg[cyan]%}$name%{$reset_color%}) "
    fi
    echo $venv
}

function activate {
    source $1/bin/activate
}
