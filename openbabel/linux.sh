export CMAKE_C_COMPIILER=gcc
export CMAKE_CXX_COMPILER=g++

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DPYTHON_LIBRARY=$PREFIX/libs/libpython27.lib \
      -DPYTHON_EXECUTABLE=$PYTHON \
      -DPYTHON_INCLUDE_DIR=$PREFIX/include \
      -DPYTHON_BINDINGS=ON \
      -DRUN_SWIG=ON \
      -DZLIB_INCLUDE_DIR=$PREFIX/include \
      -DZLIB_LIBRARY=$PREFIX/Library/lib/zlib.lib \
      -DLIBXML2_INCLUDE_DIR=$PREFIX/include \
      -DLIBXML2_LIBRARIES=$PREFIX/Library/lib/libxml2.lib \
      -G "MSYS Makefiles" 