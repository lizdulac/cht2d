#!/bin/bash
rm d* e* k* f* hat* crt* rct* *.nek5000
#rm -r *.bp
rm nek5000
rm -r config
cp ../compile_image/nek5000 .
cp ../compile_image/catalystSpace .
cp -r ../compile_image/config .
echo cht2d > SESSION.NAME
echo `pwd`'/' >> SESSION.NAME
cp data/* .
mpirun -np 4 ./nek5000 : -np 2 ./catalystSpace

