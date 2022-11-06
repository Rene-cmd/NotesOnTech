# Git concepts

Git is built around a few very simple concepts.


## Repository
A repository is simply any directory managed by Git. 
and has one or more `branches` that you can `commit` changes to.
It can optionally register `remotes` which are references to external repositories to synchronize with.

When you make a repository, a hidden folder called `.git` is created in its root.   
This is where Git keeps everything it needs for its internals, and this is how the `git` command 
knows which repository you are currently in.  
You will rarely need to touch anything in there manually, but it's nice to know what it is.

It is possible to have nested repositories. These are known `submodules`, but they behave a bit 
funky and are beyond the scope of a light introduction.

## Commits
A commit is a single unit of change. It can be thought of as a checkpoint that Git knows how to get back to.
When you make changes to files in a repository git does not immediately update anything.  

Before becomming a part of the history they must first be `staged` and `commited`. 
This is done via the, aptly named, commands `git stage` and `git commit`.

"But why can't I just commit things directly? This whole staging thing seems redundant" - i hear you thinking.  
The staging area gives us a way to selectively include certain changes to a commit, rather than the entire working tree.  
As mentioned in the beginning, a commit ideally represents a single unit of change. 
What really makes version control valuable, is the ability to use it as a time machine, and go back to a specific moment
in the project history.  
Consider the following two histories.

```
82a2f - add nginx to the docker compose file
18bc5 - fix login bug (see github issue #10231)
a2ee7 - improve documentation for docker dev. environment
081ed - make frontend pull connection info from .env file
```
and
```
221a9 - misc changes
```

Where would you rather search for a bug?  
It doesn't have to be a big software project for this to be useful. This could be your personal dotfiles.

A good rule of thumb when writing commit messages is that they should finnish the sentence
> Applying this commit will ...

## Branches
The concept of branching is one of the features that make Git stand out from other version control systems. 
A branch is a single continous timeline of a project. When you commit a change to a branch, that branch will have its
version history updated, but every other branch remain unaffected unless explicitly merged together. 
This allows a project to diverge such that work can be made on several things simultaneously, 
independant from one another. 

Once work is done, histories can be joined back together. This is known as a `merge`. 
If two branches changes that are incompatible, this might cause a `merge conflict`, however git is pretty clever
about this, and also provides tools to resolve them manually.

Here's an example of what branching might look like:  
![[Git/illustrations/branching.png]]

This is incredibly useful when cooperating with others, but can also be very handy
even for personal projects.

That being said, it's also very common to not use branches at all, and simply make all updates
to the main branch. However, even if you never diverge from main, you are still working on a "branch",
and this is the primitive that git maintains your commit history for.
