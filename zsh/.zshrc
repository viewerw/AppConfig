export HOMEBREW_NO_AUTO_UPDATE=1
export ZSH="$HOME/.oh-my-zsh"

plugins=(git npm kubectl vscode autojump zsh-autosuggestions fast-syntax-highlighting)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
# Alias
alias hosts="vi /etc/hosts"
alias ip="ipconfig getifaddr en0 && ipconfig getifaddr en1"
## system
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

# cd
alias ..='cd ../'
alias ...='cd ../../'

# use nvm
source /opt/homebrew/opt/nvm/nvm.sh

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

# bun completions
[ -s "/Users/wangweiyuan/.bun/_bun" ] && source "/Users/wangweiyuan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/wangweiyuan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end%