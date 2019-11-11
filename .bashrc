PATH=/usr/local/bin:~/bin:${PATH}
FIGNORE=".class:.svn:.cache"

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset


print_before_the_prompt () {
    GIT_BRANCH=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
    printf "\n$txtred%s $txtylw%s $txtgrn%s\n$txtrst" "$USER" "${PWD/#$HOME/~}" "$GIT_BRANCH"
}

PROMPT_COMMAND=print_before_the_prompt
PS1='$ '

# Set aliases
alias localhost="python -m SimpleHTTPServer"

alias getip="curl ifconfig.me"

alias beep="echo $'\a'"

# forward search w/ Ctlr-s
stty -ixon

export EDITOR=vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export M2_Home="/usr/local/apache-maven-3.3.9"
export M2="$M2_HOME/bin"
export PATH=$M2:$PATH

# Set Jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
export PATH="$HOME/.jenv/shims:$PATH"

# Set LaTeX
export PATH=/Library/TeX/texbin/latex:${PATH}

# Set Prolog Path
export PATH=/Applications/SWI-Prolog.app/Contents/MacOS:${PATH}

# Set Python3 packages to PATH
export PATH=/Users/jamesconkling/Library/Python/3.6/bin:${PATH}

# Set Gremlin PATH
export PATH=/Users/jamesconkling/bin/apache-tinkerpop-gremlin-console-3.3.4/bin:${PATH}

# Set GoPATH
export GOPATH=$HOME/go:$HOME/Documents/go:$HOME/Playground


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jamesconkling/bin/google-cloud-sdk/path.bash.inc' ]; then . '/Users/jamesconkling/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jamesconkling/bin/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/jamesconkling/bin/google-cloud-sdk/completion.bash.inc'; fi
source <(kubectl completion bash)
