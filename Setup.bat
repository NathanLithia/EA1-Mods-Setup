@echo off
echo Cleaning up older installations.
del BepInEx.zip
del changelog.txt
del /s /q BepInEx
del doorstop_config.ini
del winhttp.dll
echo Downloading BepInEx.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/BepInEx/BepInEx/releases/download/v5.4.16/BepInEx_x64_5.4.16.0.zip', 'BepInEx.zip')"
echo Extracting BepInEx.
powershell Expand-Archive BepInEx.zip -DestinationPath .
echo Cleaning up temp files.
del BepInEx.zip
del changelog.txt
echo Done!
start executiveassault64.exe
pause