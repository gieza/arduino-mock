@echo off
set currentFileDir=%~dp0
set buildDir=%currentFileDir%\build
mkdir %buildDir%
cd /d %currentFileDir%\build

cmake -Dtest=ON .. -G "MinGW Makefiles"
make

cd test
test_all.exe

ctest -v
@echo on
pause