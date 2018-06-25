########################################
#         What I'm Working ON          #
########################################

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
    printf "wkon: easily keep track of what you are working on\n\n";
    printf "USAGE:\n";
    printf "  $ wkon [message] # appends [message] to \$WKON_FILE and displays it's content\n";
    printf "  $ wkon           # display \$WKON_FILE content\n\n";
    printf "CONFIGURATION:\n";
    printf "  \$WKON_FILE defaults to \"WORKING-ON.txt\", change it to use a different file.\n\n";
    printf "OPTIONS:\n";
    printf "  -h, --help    show help\n";
    printf "  -d, --delete  removes \$WKON_FILE\n";

    return;
  fi

  # add content and create file if necessary
  # this must come after flags, as they are params also
  if [ ! -z ${1+x} ]; then
    echo "$@" >> $file;
  fi

  # only show content if file exists and has content
  if [ -f $file ] && [ -s $file ]; then
    cat $file;
  fi
}

########################################
