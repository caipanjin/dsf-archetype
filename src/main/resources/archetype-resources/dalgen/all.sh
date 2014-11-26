#!/bin/bash

target=dal
if [ $1 ]; then
	target=$1
fi

for i in `cat name_of_tables`; do ./gen.sh $target $i; done
