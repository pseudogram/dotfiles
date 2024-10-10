#!/bin/zsh
source $HOME/.config/zsh/utils

## Mac OS Specific
## if command -v sw-vers &>/dev/null; then
if uname -a|grep -i darwin  &>/dev/null; then
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

source_all_files_in_directory $HOME/.config/zsh

addToPathFront $HOME/.local/bin
addToPathFront $HOME/.local/scripts

bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^s "tmux-session-finder\n"

# # dir env for automatically loading ENV Variables when in directories.
# eval "$(direnv hook zsh)"

# fzf
# . /usr/share/doc/fzf/examples/key-bindings.zsh
# . /usr/share/doc/fzf/examples/completion.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
