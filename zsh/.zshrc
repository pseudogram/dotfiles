# Mac OS Specific
if command -v sw-vers &>/dev/null; then
    # Add homebrew to PATH
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh my zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git rails bundler asdf)

source $ZSH/oh-my-zsh.sh

# powerlevel10k configuration
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Set this variable as an env variable during install
PERSONAL=$HOME/.config/personal

source $PERSONAL/aliases
source $PERSONAL/env
source $PERSONAL/utils
# source $PERSONAL/nvm
# source $PERSONAL/nx-cache-hook
# source $PERSONAL/pyenv
# source ~/work-config/macbook.zshrc

# Directory settings used for NX cache and/or NVM
# source $PERSONAL/nx-cache-hook

addToPathFront $HOME/.local/bin
addToPathFront $HOME/.local/scripts

bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^s "tmux-session-finder\n"

# # ASDF
# . "$HOME/.asdf/asdf.sh"
# # append completions to fpath
# fpath=(${ASDF_DIR}/completions $fpath)
# # initialise completions with ZSH's compinit
# autoload -Uz compinit && compinit

# # rbenv laoding
# eval "$(rbenv init - zsh)"

# # dir env for automatically loading ENV Variables when in directories.
# eval "$(direnv hook zsh)"

# fzf
# . /usr/share/doc/fzf/examples/key-bindings.zsh
# . /usr/share/doc/fzf/examples/completion.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
