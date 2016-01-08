mkdir -p %PREFIX%\opt\mopac
xcopy /s %SRC_DIR% %PREFIX%\opt\mopac
chmod +x %PREFIX%\opt\mopac\MOPAC2012.exe

mkdir %PREFIX%\bin
cp %RECIPE_DIR%\mopac.sh %PREFIX%\bin\mopac
chmod +x %PREFIX%\bin\mopac
