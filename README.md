# Install

- Initialize all submodules
    ```sh
    git submodule update --init \                                                                                                                                                                                                             00:15:13
        zsh/.oh-my-zsh/custom/themes/powerlevel10k \
        nvim/.config/nvim \
        tmux/.tmux-themepack \
        fzf \
        ohmyzsh/.oh-my-zsh \
        bbg # remove this line if on a personal machine
    ```
- Run installers
    - `./ubuntuInstaller`
    - `./macOsInstaller`


## useful functions
```
git update-index --assume-unchanged <file>
git update-index --no-assume-unchanged <file>
```
