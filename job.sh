#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: $0 <file>"
    exit 0
fi

file=$1

output_file="${file}.processed"

tr '[:upper:]' '[:lower:]' < "$file" | sed 's/[[:punct:]]//g' | tr -s '[:blank:]' '\n' | grep -vE '^\s*$' | sort > "$output_file"

echo "Processed file: $output_file"
