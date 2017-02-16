#!/bin/sh

# get into the operation folder
cd wstudio

# remove all html files
# rm *.html

# update
git pull

# save reports and changes
git add --all && git commit -a -m 'better' && git push

# finally
echo "well done!"  
