# dotfiles

Plain zsh config for macOS Terminal. No oh-my-zsh, no iTerm2.

## Prerequisites

```bash
brew install zsh-syntax-highlighting zsh-autosuggestions
```

## Install

Git clone this repo into `~/dotfiles`.

**Option 1** - link whole `.zshrc` file (recommended):

```bash
mv ~/.zshrc ~/.zshrc.backup
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

**Option 2** - append to your `.zshrc`:

```bash
cd ~/dotfiles/script
chmod +x install.sh
./install.sh
```

## Post install

1. Reload terminal: close and open Terminal, or run `source ~/.zshrc`
2. Verify PATH: `echo $PATH` should contain `/Users/branislav/bin`

## Structure

```
.zshrc          - main config (prompt, history, completion, plugins)
alias/          - alias files (docker, git, mac, school, work)
bin/            - custom scripts (symlinked to ~/bin)
script/         - install and helper scripts
```

## Edit

### Aliases

Edit file in `alias/`, save and reload terminal (`source ~/.zshrc`).

### bin/* scripts

Edit and save file, then:

```bash
cd ~/dotfiles
./script/install.sh
chmod +x ./bin/name_of_new_file
```
