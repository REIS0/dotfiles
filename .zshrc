# History
HISTCONTROL=ignoreboth
HISTSIZE=1000
SAVEHIST=1000
HISTFILESIZE=2000
HISTFILE=~/.zsh_history
# set history options
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS

# Antibody
source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

# Dircolors
eval `dircolors $HOME/.dir_colors`

# Theme
eval "$(starship init zsh)"

# Completion
source $HOME/completion.zsh

# Python path
export PATH="/home/arthur/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# Rust path
export PATH="/home/arthur/.cargo/bin:/home/arthur/.cargo/bin:/home/arthur/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# alias
alias ls='ls --color'
alias la='ls -a'
alias grep='grep --color'
alias zshconf='vim $HOME/.zshrc'
alias rzsh='source $HOME/.zshrc'
