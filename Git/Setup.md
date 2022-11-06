Git started on a new machine
=========================================

Git is relatively easy to use once you're setup, but there's a few one-time hassles to get out of the way first.

## Install Git
If you're on Linux, you can skip this step, as it's 99% certain you already have it (unless you're on a fresh Arch install). Otherwise, you know the drill.

On a Windows machine you basically have two options: grab the installer from the official website, or get a distributed executable through a package manager.

The Windows installer likes to include a bunch of useless crap, so I tend to prefer the latter.  
`Scoop` is a great option.  
It can be installed by invoking the following commands in a `PowerShell` session _(might require admin priviliges)_

```pwsh
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

And then simply be used like any other package manager:
```pwsh
scoop install git
```
(run `scoop help` to explore additional commands available)

## Basic config
Git requires a bit of personal information. It's exclusively used for tagging contributions, and thus do not need to be valid.

```sh
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```

Many repositories are moving away from the calling the default branch "master" and eventually it will alsoo be deprecated in git itself, so it's a good idea to change that as well:

```sh
git config --global init.defaultBranch main
```

## Setup SSH key for github
In order to interact with your repositories on github without having to authenticate, you should register an SSH key.
If you already have a keypair that you use for remote access you can just use that.

To generate a new pair use `ssh-keygen`. To create a key using the `ed25519` algorithm and 4Kib of security, run:
```sh
ssh-keygen -t ed25519 -b 4096
```

~~Blindly spam Enter untill it shuts up~~ Follow the instructions on the screen to complete the generation.
The key pair can now be found in the directory chosen under generation. The default for both Linux and Window is under `~/.ssh`

Simply navigate to your Github profile, and register a new SSH key with the contents of your **public** key.




New repository
====================================================

Depending on your case, there are different ways to make a repository:

## You already have a repo online, and want to add it to a new device
This is the simplest case. Go to the repository, press the green `Code` button and grab the URL.
then simply run `git clone` where you want the project to be stored.
```sh
git clone git@github.com:Rene-cmd/NotesOnTech.git
```
this would create the repo in `./NotesOnTech`

---

## You are making a new project from scratch
In this case it's easiest to first create the repository on github and then clone it (as described above).  
This takes care of setting the remote, and also gives you the option to include some rudementary stuff like a README and a `.gitignore` file.

---

## You want to create a new repo from an existing project
This is the most involved case, but it's not too bad.  
Simply navigate to your project root and call

```sh
git init
```
to create the repository.

Once you've made a commit and you're ready to make your first push, go to github and create a new repository, fetch the url and then call
```sh
git remote add origin <repo URL>
```
The first time you push you need to tell git to use this as your upstream target:
```sh
git push --set-upstream origin main
```