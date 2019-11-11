# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

alias getip="curl ifconfig.me"
alias localhost="python -m SimpleHTTPServer"
alias beep="echo $'\a'"

# configure jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jamesconkling/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jamesconkling/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jamesconkling/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jamesconkling/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

