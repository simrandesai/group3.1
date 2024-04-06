#!/bin/bash

wget -O shakespeare.tar https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar
tar -xf shakespeare.tar

cat shakespeare/*.txt > shakespeare_all.txt

split -n l/5 -a 2 -d shakespeare_all.txt file

