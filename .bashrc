source ~/.bash_alias

function branch_name {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]' # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\e[32;1m\]'        # change to green
PS1="$PS1"'('                  # open parenthesis
PS1="$PS1"'\[\e[37;1m\]'        # change to white
PS1="$PS1"'jobs:\j'             # jobs:##
PS1="$PS1"'\[\e[32;1m\]'        # change to green
PS1="$PS1"')'                   # close parenthesis
PS1="$PS1"'\[\033[32m\]'       # change to green
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[35m\]'       # change to purple
PS1="$PS1"'$MSYSTEM '          # show MSYSTEM
PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
PS1="$PS1"'\w'                 # current working directory
PS1="$PS1"'\[\033[36m\]'       # change color to cyan
PS1="$PS1"'`branch_name`'      # get branch name
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $
