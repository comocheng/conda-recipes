copy "%PREFIX%\..\..\libs\libpython27.dll.a" "%PREFIX%\libs\libpython27.a"
copy "%PREFIX%\..\..\Lib\distutils\distutils.cfg" "%PREFIX%\Lib\distutils\distutils.cfg"

cd extra\Python
"%PYTHON%" setup.py install
if errorlevel 1 exit 1
