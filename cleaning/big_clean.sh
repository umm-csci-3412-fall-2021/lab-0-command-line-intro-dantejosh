#!/usr/bin/env bash
tar_file=$1
SCRATCH=$(mktemp --directory)
tar zxf "$tar_file" --directory "$SCRATCH"
grep -lr "DELETE ME!" "$SCRATCH" | xargs rm 
cd $SCRATCH
f=$(basename -s  .tgz $tar_file)
tar zcf "$OLDPWD"/cleaned_"$tar_file" $f 
