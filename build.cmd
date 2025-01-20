@echo off
git pull origin master

if not exist build (
    mkdir build
)

cd build

cmake -G "MinGW Makefiles" -DCMAKE_C_COMPILER="gcc" -DCMAKE_CXX_COMPILER="g++" ..

cmake --build .


pause
