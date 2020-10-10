#!/bin/bash
# Script to set up OpenGL on Debian Linux (Ubuntu)

sudo apt install -y xorg-dev libgl1-mesa-dev libglu-dev libassimp-dev libglm-dev

mkdir opengl-setup
cd opengl-setup

sudo apt install libglm-dev
sudo apt-get install -y libglew-dev
sudo apt install glew-utils
sudo apt-get install xorg-dev libglu1-mesa-dev
sudo apt install doxygen
sudo apt-get install libx11-dev


git clone https://github.com/glfw/glfw.git
cd glfw
cmake ./
make
sudo make install
cd ..

git clone https://github.com/Dav1dde/glad.git
cd glad
cmake ./
make
sudo cp -a include /usr/local/
cd ..

# May not need this as it is in the dependencies above
#git clone https://github.com/g-truc/glm.git
#cd glm
#cmake ./
#make
#sudo make install

git clone https://github.com/nothings/stb.git
cd stb
cp -a stb* /usr/local/include/
cd ..

git clone https://github.com/assimp/assimp.git
cd assimp
cmake ./
make
sudo make install
cd ..

echo "OpenGL Environment  Setup Complete"
