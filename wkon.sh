########################################
#         What I'm Working ON          #
########################################

# zsh on directoy change hook
add-zsh-hook chpwd wkon;

function wkon () {
  file="${WKON_FILE:-WORKING-ON.txt}";

  # -d, --delete flag
  if [ "$1" == "-d" ] || [ "$1" == "--delete" ] ; then
    printf "removing %s ...\n" "$file";

    rm $file;
    return;
  fi

  # -h, --help flag
  if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    printf "wkon: easy keep track of what you are working on\n\n";
    printf "USAGE:\n";
    printf "  $ wkon [message] # appends [message] to %s and displays it's content\n\n" "$file";
    printf "CONFIGURATION:\n";
    printf "  Use \$WKON_FILE to save to a custom file. Defatul: \"WORKING-ON.txt\"\n\n";
    printf "OPTIONS:\n";
    printf "  -h, --help    show help\n";
    printf "  -d, --delete  remove %s\n" "$file";

    return;
  fi

  # add content and create file if necessary
  # this must come after flags, as they are params also
  if [ ! -z ${1+x} ]; then
    echo "$@" >> $file;
  fi

  # only show content if file exists and has content
  if [ -f $file ] && [ -s $file ]; then
    echo "----- WORKING ON: -----\n";
    cat $file;
  fi
}

########################################
