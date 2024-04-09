#!/bin/bash

#sort -m < "file00.processed" "file01.processed" "file02.processed" "file03.processed" "file04.processed" | uniq -c > "countOfWords"

sort -m "file00.processed" "file01.processed" "file02.processed" "file03.processed" "file04.processed" > merged_sorted_file

uniq -c merged_sorted_file | sort -nr > countsOfWords


