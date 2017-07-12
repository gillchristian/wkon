# What I'm Working ON

Bash utility to keep track of what you are working, directory based.

## Install

```bash
$ curl https://raw.githubusercontent.com/gillchristian/wkon/master/wkon.sh > ~/.zshrc
```

Or you can copy the script from [here](https://raw.githubusercontent.com/gillchristian/wkon/master/wkon.sh) and paste it in your profile file of choice (`.bashrc`, `.profile`, `.zshrc`).

**NOTE**: it uses a `zsh` hook (`add-zsh-hook chpwd wkon`) to run `wkon` each time you enter a directory. If you don't want that behavior or you are not using `zsh` remove it or replace it with an equivalent for your environment. 

**PRO TIP**: use [git's global ignore](https://help.github.com/articles/ignoring-files/#create-a-global-gitignore) file to prevent comminting your `wkon` file (default is `WORKING-ON.txt`, but you can configure it).

## Use

```bash
$ wkon --help
wkon: easy keep track of what you are working on

USAGE:
  $ wkon [message] # appends [message] to WORKING-ON.txt and displays it's content

  Use $WKON_FILE to save in a custom file. Defatul: "WORKING-ON.txt"

OPTIONS:
  -h, --help    show help
  -d, --delete  remove WORKING-ON.txt
```

```bash
$ wkon '- clean up src/foo/bar.js'
----- WORKING ON: -----
- clean up src/foo/bar.js
```
