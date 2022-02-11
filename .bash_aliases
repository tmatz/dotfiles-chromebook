# ~/.bash_aliases

DIR=~/dotfiles/rc

if [ -d $DIR -a -x $DIR ]; then
  for file in $DIR/* ; do
    if [ -f $file -a -r $file ]; then
      . $file
    fi
  done
fi

