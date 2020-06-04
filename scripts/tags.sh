#!/bin/bash
#ctags -R --languages=c++ --c++-kinds=+px --fields=+laiKSz --extra=+q
find . -not -name ".*" -a  \( -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" -o -name "*.java" -o -name "*.idl" -o -name "*.hal" -o -name "*.aidl" -o -name "*.hidl" \) > GTAGSFILES
gtags --accept-dotfiles --skip-unreadable --skip-symlink -f GTAGSFILES


