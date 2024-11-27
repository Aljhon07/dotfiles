# Created by newuser for 5.9
path+=('/home/blanc/.local/bin')
export PATH

autoload -Uz compinit
compinit

HISTSIZE=100
SAVEHIST=100
HISTFILE=~/.zsh_history

plugins_path='/home/blanc/.zsh-plugins'
source $plugins_path/zsh-autosuggestions/zsh-autosuggestions.zsh
source $plugins_path/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

theme_name='catppuccin_mocha'
eval "$(oh-my-posh init zsh --config "/home/blanc/.config/oh-my-posh-themes/$theme_name.omp.json")"

fastfetch

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
