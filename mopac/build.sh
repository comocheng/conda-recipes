#!/bin/bash
mkdir -p $PREFIX/opt/mopac
cp -R $SRC_DIR/* $PREFIX/opt/mopac/
chmod +x $PREFIX/opt/mopac/MOPAC2012.exe

mkdir $PREFIX/bin
cp $RECIPE_DIR/mopac.sh $PREFIX/bin/mopac
chmod +x $PREFIX/bin/mopac

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
