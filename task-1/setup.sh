#!/usr/bin/env bash
set -e
echo "Creating project..."
mkdir project
cd project
git init
mkdir resources
mkdir src
mkdir src/database
mkdir src/profile
touch README.md
touch settings.conf
touch "resources/family picture.jpg"
touch resources/icon.png
touch resources/logo.png
touch src/program.java
git add .
git commit -m "Initial commit"
sleep 3
echo "Setup project..."
echo "Welcome to my project" > README.md
rmdir src/profile
rm "resources/family picture.jpg"
git add .
git commit -m "update readme and remove profile and family picture"
sleep 3
ls resources
echo "Setup javascript"
mv src/program.java src/program.js
echo 'console.log("JavaScript works!");' > src/program.js
node src/program.js
git add .
git commit -m "convert program to JavaScript"
ls ~
echo "All done!"