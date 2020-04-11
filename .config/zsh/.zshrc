# History
HISTCONTROL=ignoreboth
HISTSIZE=1000
SAVEHIST=1000
HISTFILESIZE=2000
HISTFILE=~/.zsh_history
# set history options
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS

# Antibody
source <(antibody init)
antibody bundle < ~/.config/zsh/.zsh_plugins.txt

# Dircolors
eval `dircolors $HOME/.config/zsh/.dir_colors`

# Theme
eval "$(starship init zsh)"

# Completion
source $HOME/.config/zsh/completion.zsh

# Python path
export PATH="/home/arthur/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# Rust path
export PATH="/home/arthur/.cargo/bin:/home/arthur/.cargo/bin:/home/arthur/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# Aliases
# alias ls='lsd'
# alias ls='ls --color'
# alias la='ls -a'
alias l='lsd -a'
alias grep='grep --color'
alias czsh='vim $HOME/.config/zsh/.zshrc'
alias rzsh='source $HOME/.config/zsh/.zshrc'
