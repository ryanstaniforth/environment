## Install

- Xcode (git)
- Homebrew https://brew.sh
- Fast Node Manager https://github.com/Schniz/fnm

## Terminal

- Clone environment repo.
    ```bash
    git clone git@github.com:ryanstaniforth/environment.git
    ```

- Enable ZSH terminal configuration.
    ```bash
    echo "source ~/dev/environment/.zshrc" >> ~/.zshrc
    ```
- Set up VSCode settings symlink.
    ```bash
    cd ~/Library/Application\ Support/Code/User
    rm settings.json
    ln -s ~/dev/environment/vscode-settings.json settings.json
    ```

- Set up Sublime settings symlink.
    ```bash
    cd ~/Library/Application\ Support/Sublime\ Text/Packages/User
    rm Preferences.sublime-settings
    ln -s ~/dev/environment/Preferences.sublime-settings .
    ```

- Configure global .gitignore
    ```bash
    git config --global core.excludesfile ~/dev/environment/.gitignore_global
    ```
