#!/bin/bash

# This script adds a ref to refs.bib given the first argument is a valid arxiv-id.

if [ $1 ]
	then
		# Find recid from arxiv id
		recid=`wget -q -O - "https://inspirehep.net/search?p=$1&of=recjson&ot=recid" | grep -Eo '[0-9]{1,10}'`
		# Check if the output is just one word.
		if [ `echo $recid | wc -w` -eq 1 ]
			then
				# Get the bibtex page, just awk out from the source the bibtex stuff we want and append.
				wget -q -O - "https://inspirehep.net/record/$recid/export/hx" | awk '/^\@article{/,/^}/' >> refs.bib
				# Note: This does not support book or any other type.
			else
				echo "Something when wrong with the arxiv id you entered, it did not return one ID."
		fi
	else
		echo "No argument given."
fi
