alias ls='exa --icons --group-directories-first'
alias l='ls -a'
alias c='clear'
#alias mv='mv -i'
#alias cp='cp -i'
#alias rm='echo "use trash-put"'
alias fd='fdfind'
alias tp='trash-put -v'
alias cfish='vim $HOME/.config/fish/config.fish'
alias lfish='vim $HOME/.config/fish/local.fish'
alias rfish='exec fish'
alias python='python3'
alias py='python'
alias pip='pip3'
alias cpuhi='echo -n performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpulo='echo -n ondemand | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias startdocker='sudo systemctl start docker.service docker.socket'
alias stopdocker='sudo systemctl stop docker.service docker.socket'
if not type -q bat
   alias bat='batcat'
end

# fzf
set fzf_fd_opts --no-ignore

# file used for local configs that don't need to be saved
source $HOME/.config/fish/local.fish

# set command color
set -U fish_color_command green

# check if fisher is installed
if not type -q fisher
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    fisher update
end
