# Install

- Initialize all submodules
    ```sh
    git submodule update --init \
        .oh-my-zsh/custom/themes/powerlevel10k \
        dot-config/nvim \
        dot-tmux-themepack \
        fzf \
        bbg # remove this line if on a personal machine
    ```
- Run environment stow command
    - `./ubuntu`
<!-- - test stow command -->
<!--     1. `stow --simulate -v --dotfiles --adopt . --ignore='install.*` -->
<!--     2. `stow --simulate -v --dotfiles --adopt .` -->
<!--         - you don't need to add an ignore regex option if you add items to the -->
<!--           `.stow-local-ignore` -->
<!--     1. `stow --dotfiles --adopt *` -->
<!-- - run install scripts -->
<!--     2. `./install` -->
<!-- - stow private repos -->
<!--     1. `stow -v --dotfiles --adopt personal-dotfiles` -->
<!--     2. `stow -v --dotfiles --adopt work-dotfiles` -->
