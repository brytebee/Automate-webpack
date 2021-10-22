#!/usr/bin/env bash

echo "Enter project name"
read projectName
mkdir $projectName && cd $projectName
npm init -y
touch webpack.config.js README.md .gitignore
echo -e "## $projectName" >> README.md
echo -e "./node_modules/" >> .gitignore
mkdir dist src
cd src && touch index.js style.css index.html
cd ../../
cp ./index.html ./$projectName/src/index.html
cp ./index.js ./$projectName/src/index.js
cp ./style.css ./$projectName/src/style.css
cp ./webpack.config.js ./$projectName/webpack.config.js
cd $projectName
npm install webpack webpack-cli --save-dev
npm install --save-dev style-loader css-loader
npm install --save-dev html-webpack-plugin
npm install --save-dev webpack-dev-server
npm start
code .
