source ~/.bash_alias

PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\e[32;1m\](\[\e[37;1m\]jobs:\j\[\e[32;1m\]) \[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ "
