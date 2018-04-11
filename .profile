function parse_git_branch() {
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ ! "${BRANCH}" == "" ]
  then
    echo "[${BRANCH}]"
  else
    echo ""
  fi
}

export PS1="\u:\w \`parse_git_branch\`\\$ "

alias ll="ls -la"

alias gst="git status"
alias gdf="git diff"
alias gdc="git diff --cached"
alias gad="git add"
alias gcm="git commit -m"
alias gch="git checkout"
alias gpu="git push"
alias ghi="git log --all --graph --decorate --oneline --simplify-by-decoration"
