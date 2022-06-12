@echo off
pushd .
call script/clean.bat
if  not exist build (
    md build
)

cd build
cmake -G "MinGW Makefiles" ..
minGw32-make.exe
popd