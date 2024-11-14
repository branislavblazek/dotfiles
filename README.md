# dotfiles

## Install

It's recommended to git clone this repo into `~/dotfiles`.
There are 2 options how to install them into system:

1. link whole `.zshrc` file (recommended):

```bash
mv ~/.zshrc ~/.zshrc.backup
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

2. append to your's `.zshrc`

```bash
cd ~/dotfiles/script
chmod +x install.sh
./install.sh
```

## Post install

1. <b>Reload terminal:</b>
   Just simply close and open terminal, now it should load all aliases and bin files.
   Or run command `source ~/.zshrc`.

2. <b>Make sure you have correct $PATH:</b> run `echo $PATH` and there sould be `/Users/branislav/bin:`

## Doc

Every alias and every bin file has it's own documentation in it's file.

## Edit

### Edit of aliases

Just edit alias, save file and reload terminal.

### Edit of bin/* files

Edit and save file. And do this changes:
```bash
cd ~/dotfiles
./script/install
chmod +x ./bin/name_of_new_file
```
