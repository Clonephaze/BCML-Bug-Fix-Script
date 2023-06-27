@echo off

rem Uninstall the bcml package
echo Uninstalling bcml package...
pip uninstall bcml --yes >nul
echo BCML package uninstalled.

rem Remove the merged folder
rd /s /q %LOCALAPPDATA%\bcml\merged

rem Install the bcml package
echo Installing bcml package...
pip install bcml --no-input >nul
echo bcml package installed.

rem Open BCML
echo Done! Opening BCML
bcml