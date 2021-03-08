autoload -Uz vcs_info

setopt noautomenu
setopt prompt_subst

zstyle ':vcs_info:*' formats '[%b] '
precmd () { vcs_info }

PROMPT="%n:%~ \$vcs_info_msg_0_$ "

export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin/"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin/"

alias idea="open -na \"IntelliJ IDEA.app\" --args"

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
# git rebase progress
alias grp='( RaD="$( git rev-parse --git-path 'rebase-apply/' )" && N=$( cat "${RaD}next" ) && L=$( cat "${RaD}last" ) && echo "${N} / ${L}" ; )'