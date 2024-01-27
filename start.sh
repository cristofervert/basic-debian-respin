#!/bin/bash

source update.sh
source imgs_rec.sh

update_system
download_files $1
format_files
move_files

