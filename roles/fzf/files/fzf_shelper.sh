#!/usr/bin/sh

fzh() {
	CMD=$(cat $HOME/.sh_history | cut -f2 | fzf)
    if [ -n "$CMD" ]
    then
        echo $CMD
        echo $CMD >> "$HISTFILE"
        sh -i -c "$CMD"
    fi
}

# alias fh='sh -i -c "$(cat $HOME/.sh_history | cut -f2 | fzf)"'
alias fzgco='git branch | cut -c 3- | fzf | xargs git checkout'
alias fzps="ps axww -o pid,user,%cpu,%mem,start,time,command | fzf | sed 's/^ *//' | cut -f1 -d' '"
alias fzcd='cd $(find * -type d 2> /dev/null | fzf)'

# Fuzzy GRepEDit:
fzgred() {
    CMD=$(rg --no-heading -H "$@" | fzf )
    if [ -n "$CMD" ]
    then
        FILE=`echo $CMD | cut -d":" -f 1`
        NUM=`echo $CMD | cut -d":" -f 2`
        $EDITOR +${NUM} ${FILE}
    fi
}

# Fuzzy vim any files under the current tree
fzvi() {
	CMD=$(find * -type f 2> /dev/null | fzf)
    if [ -n "$CMD" ]
    then
        echo $CMD
        echo "$EDITOR $CMD" >> "$HISTFILE"
        $EDITOR $CMD
    fi
}
alias fzinf='$EDITOR $(find ~/opt/infra -type f | fzf)'

alias fzgdf='git status --short | fzf | cut -d" " -f3 - | xargs git diff'
alias fzga='git status --short | fzf -m | cut -d" " -f3 - | xargs git add'
alias fzgco='git branch | fzf | xargs git checkout'
