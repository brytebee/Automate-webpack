#!/usr/bin/env bash

npm init -y
touch webpack.config.js README.md .gitignore
echo -e "## To Do" >> README.md
echo -e "node_modules/" >> .gitignore
mkdir dist src
cd src && touch index.js style.css index.html
cd ..
echo "Installing Webpack"
npm install webpack webpack-cli --save-dev
echo "Installing Style Loader & css-loader"
npm install --save-dev style-loader css-loader
echo "Installing Webpack"
npm install --save-dev html-webpack-plugin
echo "Installing Webpack-dev-server"
npm install --save-dev webpack-dev-server
