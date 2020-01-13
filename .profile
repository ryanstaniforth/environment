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

alias docker-mysql-create="docker run --rm --name generic-mysql -e MYSQL_ROOT_PASSWORD=toor -e MYSQL_DATABASE=test -p 3399:3306 -d mysql --default-authentication-plugin=mysql_native_password"
alias docker-mysql-destroy="docker rm -f generic-mysql"
alias docker-mysql="docker exec -it generic-mysql mysql -p"

alias docker-postgres-create="docker run --rm --name generic-postgres -e POSTGRES_PASSWORD=toor -p 3398:5432 -d postgres"
alias docker-postgres-destroy="docker rm -f generic-postgres"
alias docker-postgres="docker exec -it generic-postgres psql -U postgres"

alias docker-redis-create="docker run --rm --name generic-redis -p 6400:6379 -d redis"
alias docker-redis-destroy="docker rm -f generic-redis"
alias docker-redis="docker exec -it generic-redis redis-cli"

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
