#!/bin/bash

# First let's find out if the user has NPM installed
command -v npm >/dev/null 2>&1 || {
	echo >&2 "I require NPM but it's not installed. Aborting.";
	exit 1;
}

# Ask if the user wants to remove the current release directory
if [ -d "release" ] then
	while true; do
		read -p "Do you want to remove the current release?" yn
		case $yn in
			[Yy]* ) rm -R release ;;
			[Nn]* ) ;;
			* ) echo "Please answer with yes or no.";;
		esac
	done
fi

# Create a release directory if it doesn't exist yet
if [ -d "release" ] then
	mkdir release
fi

# Running the SCSS compiler
echo "Compiling SCSS files to CSS files"

# Copy all the necesarry HTML files
echo "Copying HTML files ...";
cp index.html ./release/

# Fix the paths for the CSS and JS files
echo "Setting paths for the JavaScript, CSS and image files";

# Copy all the assests (like JS, CSS and image files)
echo "Copying JavaScript files ...";

# Create the JS directoy if doesnt exist, then create it
if [ -d "/release/js" ] then
	mkdir release/js
if

# Create the CSS directoy if doesnt exist, then create it
echo "Copying CSS files";
if [ -d "release/css" ] then
	mkdir release/css
fi

# Create the images directoy if doesnt exist, then create it
echo "Copying images";
if [ -d "release/images"] then
	mkdir release/images
fi
