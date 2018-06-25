# What I'm Working ON

Bash utility to keep track of what you are working per directory.

## Install

```bash
$ antigen bundle gillchristian/wkon
```

Alternatively you can copy the script from
[here](https://raw.githubusercontent.com/gillchristian/wkon/master/wkon.sh) and
paste it in your profile file of choice (`.bashrc`, `.profile`, `.zshrc`).

## Use

```bash
$ wkon --help
wkon: easily keep track of what you are working on

USAGE:
  $ wkon [message] # appends [message] to $WKON_FILE and displays it's content
  $ wkon           # display $WKON_FILE content

CONFIGURATION:
  $WKON_FILE defaults to "WORKING-ON.txt", change it to use a different file.

OPTIONS:
  -h, --help    show help
  -d, --delete  removes $WKON_FILE
```

To generate the file for the first time you have to pass a message, otherwise
`wkon` will do nothing:

```bash
$ wkon

$ wkon take out the trash
take out the trash
```

When the file has be generated `wkon` will append the message in a new line (if
provided) and show you the updated notes:

```bash
$ wkon
take out the trash

$ wkon finish ticket 123
take out the trash
finish ticket 123

```

## Tips

- To show whant you are working on when entering a directory use the following
`zsh` hook:

```zsh
add-zsh-hook chpwd wkon;
```

- Use
[git's global ignore](https://help.github.com/articles/ignoring-files/#create-a-global-gitignore)
to prevent comminting your `wkon` file (defaults to `WROKING-ON.txt`).
