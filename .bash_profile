# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# I am lazy
alias l='ls -lsah'
alias ld='lazydocker'

# Aliases for tmux iTerm2 integration
alias tmux='tmux -2'
alias ta='tmux -CC attach -t'
alias tnew='tmux -CC new-session -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

# Anaconda
alias sa='source venv/bin/activate'
alias sda='deactivate'

# Change command promt to user@hostname
export PS1="nico@macbook:\W$ "

# Docker remove exited containers and dangling images
alias dc='docker-compose'
alias dre='docker rm $(docker ps -a -f status=exited -q)'
alias drd='docker images --quiet --filter=dangling=true | xargs docker rmi -f'

# Place /usr/local/bin in front of /usr/bin sucht that brew installs will be preferred
export PATH=/usr/local/Cellar/:$PATH
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/Users/nico/.local/bin:$PATH"
export PATH="/Users/nico/anaconda3/bin/:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nico/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nico/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nico/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nico/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PYTHONPATH=$PYTHONPATH:/usr/local/lib

# Node aliases
alias node12='/usr/local/opt/node@12/bin/node'
alias node10='/usr/local/opt/node@10/bin/node'

# Hide big sur zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Ruby and docker-sync
export PATH="/usr/local/opt/ruby@2.6/bin:$PATH"
if which ruby >/dev/null && which gem >/dev/null; then
	PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
