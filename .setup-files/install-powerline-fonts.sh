#!/bin/bash

echo 'you may need sudo.'
git clone https://github.com/powerline/fonts
./fonts/install.sh
echo 'removing temp fonts folder.'
rm -r fonts
echo 'done.' 
