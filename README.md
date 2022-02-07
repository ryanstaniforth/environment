```bash
echo "source ~/dev/environment/.zshrc" >> ~/.zshrc
```

```bash
cd ~/Library/Application\ Support/Sublime\ Text/Packages/User
rm Preferences.sublime-settings
ln -s ~/dev/environment/Preferences.sublime-settings .
```

```bash
git config --global core.excludesfile ~/dev/environment/.gitignore_global
```
