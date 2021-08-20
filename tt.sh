#!/usr/bin/env sh
if [[ -z "$TMUX" && -z "$VIRTUAL_ENV" && -z "$PIPENV_ACTIVE" ]]
then
    TMUXLS=$(tmux ls 2>&1)
    if [[ "$TMUXLS" == "no server running on /tmp/tmux-1000/default" || "$TMUXLS" == "error connecting to /tmp/tmux-1000/default (No such file or directory)" ]]
    then
        echo -n "tmux sesh: "
        read INPUT
    else
        tmux ls
        echo -n "tmux sesh: "
        read INPUT
    fi
else
    INPUT=""
fi

if [ ! -z "$INPUT" ]
then
    { tmux attach -t $INPUT 2>/dev/null || tmuxp load $INPUT 2>/dev/null || exec tmux new-session -t $INPUT \; rename-session $INPUT; }
fi

