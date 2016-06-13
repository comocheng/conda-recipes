:: # CAUTION: This file is generated automatically, any customisation will be lost.
copy "%PREFIX%\..\..\libs\libpython27.a" "%PREFIX%\libs\libpython27.a"
copy "%PREFIX%\..\..\Lib\distutils\distutils.cfg" "%PREFIX%\Lib\distutils\distutils.cfg"

pushd wrappers\Python
"%PYTHON%" setup.py install
if errorlevel 1 exit 1
popd 
 
:: Add more build steps here, if they are necessary.
 
:: See
:: http://docs.continuum.io/conda/build.html
:: for a list of environment variables that are set during the build process.
