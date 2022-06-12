@echo off
pushd .

if  not exist build/src/main.exe (
    echo "error  no exe"
    md build
)

cd build/src
main.exe
popd