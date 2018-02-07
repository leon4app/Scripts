#!/bin/bash
echo "This script is used to redirect source of podspec files to our custom server."
if [ $# != 1 ]
then
	echo "Usage: sh RedirectSpecs.sh dir"
	echo "@param dir Target directory you want to apply this script."
else
	echo "Applyint script to $1"
	export LC_COLLATE='C'
	export LC_CTYPE='C'
	sed -i '' 's|http.*\/\(.*\)\.git|http:\/\/git.dev.cmrh.com\/FrontEnd\/Vendors\/iOS\/\1.git|g' `grep 'http.*\/\(.*\)\.git' -rl ./`
	echo "Done!"
fi
