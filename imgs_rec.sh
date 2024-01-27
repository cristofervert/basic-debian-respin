#!/bin/bash

bg_dir="/usr/share/backgrounds"
format="jpg"
prefix="Shrek"
i=0

download_files(){
	echo -e "DOWNLOADING BACKGROUNDS"
	wget https://pastebin.com/raw/$1
	dos2unix $1
	while read element;
	do
        	wget -A jpg,jpeg -nd $element
	done < $1
	echo -e "IMAGES DOWNLOADED"
}

format_files(){
	files=$(ls -l *.$format | awk '{print $NF}')
	for file in $files;
	do
		echo $file
		i=$((i+1))
		mv $file "$prefix$i.$format"
	done
	echo -e "IMAGES FORMATED"
}

move_files(){
	mv *.$format $bg_dir
	echo -e "BACKGROUND SETUP DONE"
}
