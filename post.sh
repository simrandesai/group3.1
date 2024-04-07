#!/bin/bash

sort -m < "file00.processed" "file01.processed" "file02.processed" "file03.processed" "file04.processed" | uniq -c > "countOfWords"
