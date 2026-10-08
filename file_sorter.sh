#!/bin/bash

file_types="dvi aux log tex"

for type in $file_types
do
    echo "Processing category: $type"
    mkdir -p "$type"
   
    if ls *."$type" >/dev/null 2>&1; then
        mv *."$type" "$type/"
        echo "  --> Successfully moved all .$type files."
    else
        echo "  --> No files detected for .$type."
    fi
done

echo "System clean-up sequence complete!"
