#####"" bwnyasse Alias
alias c='clear'
alias gopro='cd /home/bwnyasse/work/project/'
alias oloodi='cd /home/bwnyasse/work/project/oloodi'

#GIT
alias gs='git status'
alias status='git status'
alias ga='git add'
alias add='git add'
alias commit='git commit'
alias gc='git commit'
alias push='git push'
alias gl='git log --pretty=oneline --abbrev-commit'
alias fetch='git fetch --tags'
alias gf='git fetch --tags'
alias pull='git pull --all'
alias gpr='git pull'
alias merge='git merge'
alias init='git init;cp /home/bwnyasse/work/utils/.gitignore .'
alias jdownloader='cd /home/bwnyasse/.jd &&  ./launch.sh'
#MAVEN
#alias install='mvn clean javadoc:jar source:jar  install'
alias install='mvn clean source:jar  install'
#alias installD='mvn clean javadoc:jar source:jar  install -DskipTests'
alias installD='mvn clean source:jar  install -DskipTests'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#DOCKER
alias d='docker'
alias dc='docker-compose'
alias dm='docker-machine'
alias dcnet='docker-compose --x-networking'

# alias PNSCHOOL REMOTE
alias pnschool-remote='ssh pnschool@91.121.143.111'

# alias OVH REMOTE
alias ovh-remote='ssh root@vps258232.ovh.net'

# alias Wicanplay Kimsufi REMOTE
alias wicanplay-remote='ssh root@91.121.141.204'
