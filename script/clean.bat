@echo off
pushd .

if  not exist build (
    md build
)

cd build
minGw32-make.exe clean
popd