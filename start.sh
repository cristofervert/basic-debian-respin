#!/bin/bash

source update.sh
source imgs_rec.sh
source settings.sh

update_system
download_files $direction
format_files
move_files

