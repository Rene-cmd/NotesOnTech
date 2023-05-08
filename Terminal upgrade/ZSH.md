#setup #linux #terminal 
**zsh** is a shell designed for interactive use, although it is also a powerful scripting language. Many of the useful features of bash, ksh, and tcsh were incorporated into zsh; many original features were added. This document details some of the unique features of zsh. It assumes basic knowledge of the standard UNIX shells; the intent is to show a reader already familiar with one of the other major shells what makes zsh more useful or more powerful. This document is not at all comprehensive; read the manual entry for a description of the shell that is complete and concise, although somewhat overwhelming and devoid of examples.

Manpage https://zsh.sourceforge.io/Intro/intro_toc.html

## Installing ZSH

First as allways make sure your repository is up to date. 

```bash
sudo apt update
```

Then fire off the command for base level install of zsh

```bash
sudo apt install zsh
```

Now ZSH is on your machine and can be used in scripts and called with functions but the bash is still dominant on you system. to change the default terminal from bash to zsh we need to do a coupple of things, firstly:

getting a install script:

```bash
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
```

Now run the script with an sh command:

```bash
sh install.sh
```

Now just restart you terminal.

## Installing ZSH Autocomplete.

Clone this repository somewhere on your machine. This guide will assume `~/.zsh/zsh-autosuggestions`.

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

Now open the config for zsh:

```bash
nano ~/.zshrc 
```

Add the following under **source** to your `.zshrc`:

```bash
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```

Now restart your terminal autosuggestion shoul be enabled.

to change Foreground and Background Colours

```
nano ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```

find the line: typeset -g ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE And change to you prefered colours, ETC: typeset -g ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=21,bg=green,bold' When you're done editing the fil Save&Close and then restart the Terminal.