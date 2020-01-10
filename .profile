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

alias python-server="python -m SimpleHTTPServer"

alias docker-mysql-create="docker run --name generic-mysql -e MYSQL_ROOT_PASSWORD=toor -p 3399:3306 -d mysql:latest"
alias docker-mysql="docker exec -it generic-mysql mysql -p"

alias gst="git status"
alias gdf="git diff"
alias gdc="git diff --cached"
alias gad="git add"
alias gcm="git commit -m"
alias gch="git checkout"
alias gpu="git push"
alias gpl="git pull"
alias gft="git fetch"
alias gbr="git branch"
alias ghi="git log --all --graph --decorate --oneline --simplify-by-decoration"
