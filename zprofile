export EDITOR=nvim

# Add brew's sbin to path
export PATH="/usr/local/sbin:$PATH"

# Use asdf versions of languages
. /usr/local/opt/asdf/libexec/asdf.sh

# ohmyzsh settings
plugins=(git rails)

# Aliases
alias n="nvim"

# fzf
source <(fzf --zsh)
