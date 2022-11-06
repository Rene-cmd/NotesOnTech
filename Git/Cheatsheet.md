Git Commands Cheatsheet
========================================

## Common operations

Before starting work, you often want to ensure that you're in sync with your remote before making changes.
```sh
git fetch && git status  # optionally just update the history without pulling, to inspect differences first.
git pull # or just pull right away. it will automatically fetch.
```


The panic push
```sh
# when the house is on fire, this is what you do before leaving the building
git stage --all
git commit -m '...'
git push
``` 

## Staging and stashing

---
`git [stage|add] [path or file]`  
*stage changes. Targeting a directory will stage all changes within that directory.   
"stage" is simply a builtin alias for "add". Use whichever you prefer*

`git stage -p`  
*Start in interactive mode.  
This let's you selectively stage individual chunks within changed files. 
Very useful if a single file contains multiple changes you want to commit separately.*

`git stash [message]`  
*save all unstaged changes in the "stash" where they can be retrieved from again later.  
Handy if you need to do other work that requires a clean worktree, or to "move" your changes to a different branch*

---

# Inspect

`git status`  
*Get basic info about your current worktree such as state of the staging area, 
changed files, active branch and if your ahead or behind of the tracked remote branch.*

`git log`  
*Show the commit history for the current branch*  
> ### **Hot Tip**
> a handy alias to git log with a particularly useful set of flags
> ```sh
> # "git log all"
> alias gloga='git log --oneline --all --graph --decorate'
> ```
> Show **compact** log of **all** branches, **visualizing the graph** and **decorate with names and pointers**


`git diff [pointer | commit]`  
*show the diff for your current worktree and the target object. For example, to show the difference between the current state and the most recent commit:*
```sh
git diff HEAD
```

`git config --list [--global | --local]`  
*Print configured settings for the target config file*

---