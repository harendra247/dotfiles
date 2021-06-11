#!/bin/bash

#gentagfiles file list build script
set -x

cd ~/Code_base
CSCOPE_DIR="$PWD/cscope"

if [ ! -d "$CSCOPE_DIR" ]; then
echo "cscope dir " $CSCOPE_DIR
mkdir "$CSCOPE_DIR"
fi

echo "Finding files ..."
export CSCOPE_EDITOR=`which emacs`
#find . -name "*.c" -o -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.hpp" > cscope.files
#-o -name '*.java' \
#-o -name '*properties' \
#-o -name '*.py' \
#-o -name '*.php' \
find "$PWD" -name '*.[ch]' \
-o -name '*.cpp' \
-o -name '*.cc' \
-o -name '*.hpp' \
-o -name '*.cu' > "$CSCOPE_DIR/cscope.files"

sort "$CSCOPE_DIR/cscope.files" > "$CSCOPE_DIR/cscope.files.sorted"
mv "$CSCOPE_DIR/cscope.files.sorted" "$CSCOPE_DIR/cscope.files"

echo "Adding files to cscope db: $PWD/cscope.db ..."
cscope -q -R -b -i "$CSCOPE_DIR/cscope.files"
export CSCOPE_DB="$PWD/cscope.out"
echo "Exported CSCOPE_DB to: '$CSCOPE_DB'"
#cscope -d
#ctags -R *.c
ctags -L "$CSCOPE_DIR/cscope.files"
