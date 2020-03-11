#!/bin/sh

for dir in ./*/
do
    dir=${dir%*/}      # remove the trailing "/"
    echo ${dir##*/}    # print everything after the final "/"
    (cd ${dir}; for i in *.md ; do echo "**${i%.md}**  \n"; cat "$i" ; echo '\n\n---' ; done) > ${dir}.md
done
