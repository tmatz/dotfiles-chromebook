# ~/.bash_aliases

RC_D=~/setup/rc.d

if [ -d $RC_D -a -x $RC_D ]; then
  for f in "$RC_D"/* ; do
    if [ -f "$f" -a -r "$f" ]; then
      . "$f"
    fi
  done
fi

