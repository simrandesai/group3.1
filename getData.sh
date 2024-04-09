#!/bin/bash

wget -O shakespeare.tar https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar
tar -xvf shakespeare.tar

find shakespeare/ -type f -not -name "README" -exec cat {} + > shakespeare_all.txt

#this wouldn't work for me so I made a different line (the one above) keeping yours just incase
#cat shakespeare/*.txt > shakespeare_all.txt

split -n l/5 -a 2 -d shakespeare_all.txt file

ls file0* > inputFileList
