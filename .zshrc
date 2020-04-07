source $HOME/.zsh_plugins.sh

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
