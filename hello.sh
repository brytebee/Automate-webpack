#!/usr/bin/env bash

# filename: hello.sh
# echo "What's your name?"
# read name
# echo "Hello there, $name!"
echo "Enter project name"
read projectName
mkdir $projectName && cd $projectName
# code .
npm init -y
# npm install webpack webpack-cli --save-dev
touch webpack.config.js README.md .gitignore
mkdir dist src
cd src && touch index.js style.css index.html
cd ../../
touch ./$projectName/sample.txt
copy webpack.config >> ./$projectName/webpack.config.js
# npm install --save-dev style-loader css-loader
# npm install --save-dev html-webpack-plugin
# npm install --save-dev webpack-dev-server
