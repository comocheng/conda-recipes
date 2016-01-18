set CC=gcc
set CXX=g++
set F77=gfortran
set F90=gfortran

copy "%PREFIX%\..\..\libs\libpython27.a" "%PREFIX%\libs\libpython27.a"
cp "%PREFIX%\..\..\Lib\distutils\distutils.cfg" "%PREFIX%\Lib\distutils\distutils.cfg"
pip install -i https://pypi.anaconda.org/rmg/simple pycairo

cmake -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
      -DPYTHON_LIBRARY=%PREFIX%\libs\libpython27.a ^
      -DPYTHON_EXECUTABLE=%PYTHON% ^
      -DPYTHON_INCLUDE_DIR=%PREFIX%\include ^
      -DPYTHON_BINDINGS=ON ^
      -DRUN_SWIG=ON ^
      -G "MinGW Makefiles" 

mingw32-make -j4
mingw32-make install

::The python library and shared object do not install into site-packages so
::we put them there manually after the build.  This may be possible from CMake
::using option -DPYTHON_PREFIX from ob wiki, but doesn't seem to work

cd scripts\python
%PYTHON% setup.py build_ext --compiler=mingw32 --inplace
%PYTHON% setup.py install
