#!/bin/bash

bg_dir="/usr/share/kubuntu-default-settings"
format="jpg"
prefix="Shrek"
i=0

download_files(){
	echo -e "DOWNLOADING BACKGROUNDS"
	imgs='yfxKMpEQ'
	wget https://pastebin.com/raw/$imgs
	dos2unix $imgs
	while read element;
	do
        	wget -A jpg,jpeg -nd $element
	done < $imgs
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
