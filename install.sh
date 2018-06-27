#!/usr/bin/env bash

trap exit ERR

if [ "$1" == "-j" ] ; then
    parallel=$1
fi

### check environment variables
if [ -z "$AGILE" ] || [ -z $(env | grep "AGILE=") ] ; then
    echo "AGILE environment variable not set. Abort."
    exit
fi
if [ -z "$CFITSIO" ] || [ -z $(env | grep "CFITSIO=") ] ; then
    echo "CFITSIO environment variable not set. Abort."
    exit
fi
if [ -z "$ROOTSYS" ] || [ -z $(env | grep "ROOTSYS=") ] ; then
    echo "ROOTSYS environment variable not set. Abort."
    exit
fi
if [ -z "$GSL" ] || [ -z $(env | grep "GSL=") ] ; then
    echo "GSL environment variable not set. Abort."
    exit
fi

if [ "$1" == "clean" ] ; then
    cd libagilepil
    make clean
    cd ../libagilewcs
    make clean
    cd ../libagilesci
    make clean
    cd ../agilesci1
    make clean
    exit
fi

echo "install libagilepil"
cd libagilepil
make ${parallel} install prefix=$AGILE
cd ..

echo "install libagilewcs"
cd libagilewcs
make ${parallel} install prefix=$AGILE
cd ..

echo "install libagilesci"
cd libagilesci
make ${parallel} install prefix=$AGILE CFLAGS=-g
cd ..

echo "install agilesci1"
cd agilesci1
make ${parallel} install prefix=$AGILE CFLAGS=-g
cd ..

cp profile $AGILE

#echo "install scripts"
#test -d $AGILE/scripts || mkdir -p $AGILE/scripts

#cp -rf scripts/* $AGILE/scripts

#echo "install catalogs"
#test -d $AGILE/catalogs || mkdir -p $AGILE/catalogs
#cp -rf catalogs/* $AGILE/catalogs

echo "install AGILE scripts"
cd AGILE-GRID-scripts
./install.sh
cd ..

echo "install AG_extspot"
cd agextspot-v2
#make ${parallel} install prefix=$AGILE
cd ..

echo "install ellipse matching"
cd EllipseMatching
./install.sh
cd ..

echo "install WTOOLS"
cd WTOOLS
./install.sh
cd ..
