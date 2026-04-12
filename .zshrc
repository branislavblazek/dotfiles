export PATH="/Users/branislav/bin:/Users/branislav/.local/bin:$PATH"

if [ -f "/Users/branislav/dotfiles/aliases" ]; then
    source "/Users/branislav/dotfiles/aliases"
fi

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

# Completion
autoload -Uz compinit && compinit

# Plugins (brew install zsh-syntax-highlighting zsh-autosuggestions)
[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && alias nvm='unalias nvm node npm && . "$NVM_DIR/nvm.sh" && nvm'
[ -s "$NVM_DIR/nvm.sh" ] && alias node='unalias nvm node npm && . "$NVM_DIR/nvm.sh" && node'
[ -s "$NVM_DIR/nvm.sh" ] && alias npm='unalias nvm node npm && . "$NVM_DIR/nvm.sh" && npm'

# Basic prompt
# PROMPT='%n [%~] %# '
# Colorful prompt
PROMPT='%F{cyan}%n%f [%F{yellow}%~%f] %# '

export LANG=sk_SK.UTF-8
export LC_ALL=sk_SK.UTF-8

clear
