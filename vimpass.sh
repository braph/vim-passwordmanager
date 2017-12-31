#!/bin/sh

for arg; do
   if [ -e "$arg" ]; then
      cp -f "$arg" "$arg~"
   fi
done

vim -S /usr/share/vimpass/vimpass.vim "$@"
