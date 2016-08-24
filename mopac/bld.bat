mkdir -p %PREFIX%\Scripts
xcopy /s %SRC_DIR% %PREFIX%\Scripts

mkdir %PREFIX%\bin

(echo set MOPAC_LICENSE=%PREFIX%\Scripts) >> %PREFIX%\Scripts\mopac.bat
(echo %PREFIX%\Scripts\MOPAC2016.exe %%1) >> %PREFIX%\Scripts\mopac.bat
chmod +x %PREFIX%\Scripts\mopac.bat
