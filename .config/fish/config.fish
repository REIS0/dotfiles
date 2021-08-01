if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end
fundle plugin 'oh-my-fish/theme-bobthefish'
#fundle plugin 'jethrokuan/fzf'
fundle plugin 'patrickf3139/fzf.fish'
#fundle plugin 'edc/bass'
#fundle plugin 'FabioAntunes/fish-nvm'
fundle plugin 'nickeb96/puffer-fish'
fundle plugin 'wfxr/forgit'

fundle init

alias ls='LS_COLORS=" " exa --icons --group-directories-first'
alias l='ls -a'
alias c='clear'
#alias mv='mv -i'
#alias cp='cp -i'
#alias rm='echo "use trash-put"'
alias tp='trash-put'
alias cfish='vim $HOME/.config/fish/config.fish'
alias rfish='exec fish'
alias python='python3'
alias py='python'
alias pip='pip3'
alias cpuhi='echo -n performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpulo='echo -n ondemand | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
