@echo off
echo Uninstalling bcml package...
pip uninstall bcml --yes >nul
echo BCML package uninstalled.

rd /s /q %LOCALAPPDATA%\bcml\merged

echo Installing bcml package...
pip install bcml --no-input >nul
echo bcml package installed.

echo Done! Opening BCML
bcml
timeout 2
exit