export PATH="/usr/local/bin:$PATH"
export PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '

eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source ~/.git-completion.bash
source ~/.git-prompt.sh
source ~/.git-completion.bash
source ~/.git-prompt.sh

alias be='bundle exec'

gprf() {
  current_branch=$(git rev-parse --abbrev-ref HEAD)
  git push origin HEAD:refs/for/"${1-$current_branch}";
}

gr() {
  git rebase -i HEAD~${1}
}

hc() {
  heroku run rails c -a "$1";
}
