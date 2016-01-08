set CC=%PREFIX%\bin\gcc.exe
set CXX=%PREFIX%\bin\g++.exe
set F77=%PREFIX%\bin\gfortran.exe
set F90=%PREFIX%\bin\gfortran.exe

cmake -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
      -DPYTHON_LIBRARY=%PREFIX%\libs\python27.lib ^
      -DPYTHON_EXECUTABLE=%PYTHON% ^
      -DPYTHON_INCLUDE_DIR=%PREFIX%\include ^
      -DPYTHON_BINDINGS=ON ^
      -DRUN_SWIG=ON ^
	  -G "MinGW Makefiles"

:: false # pause here to see what's going on

make -j%CPU_COUNT%
make install

::The python library and shared object do not install into site-packages so
::we put them there manually after the build.  This may be possible from CMake
::using option -DPYTHON_PREFIX from ob wiki, but doesn't seem to work

cd scripts\python
python setup.py install
