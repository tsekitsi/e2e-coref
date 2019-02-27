#!/bin/bash

percent_taining=80
percent_dev=10

num_paths=("$#")
paths=("$@")

train_mark=$(( num_paths*percent_taining/100 ))
dev_mark=$(( train_mark + num_paths*percent_dev/100 ))

mkdir train
mkdir development
mkdir test

counter=1

#Training:
while [ $counter -lt $train_mark ]
do
	cp ${paths[$counter]} train
	((counter++))
done

#Development:
while [ $counter -lt $dev_mark ]
do
	cp ${paths[$counter]} development
	((counter++))
done

#Testing:
while [ $counter -lt $(( num_paths + 1 )) ]
do
	cp ${paths[$counter]} test
	((counter++))
done

#paths=( ../WikiCoref/WikiCoref-CoNLLAberfoyle_Stirling.v4_gold_conll )
#cp ${paths[0]} train