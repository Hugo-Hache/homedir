export PATH="/usr/local/bin:$PATH"
export PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '
eval "$(rbenv init -)"
source ~/.git-completion.bash
source ~/.git-prompt.sh
