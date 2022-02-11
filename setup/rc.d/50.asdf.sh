ASDF_SH=~/.asdf/asdf.sh

if [ ! -d ~/.asdf ]; then
  exit
fi

. ~/.asdf/asdf.sh
. ~/.asdf/completions/asdf.bash
