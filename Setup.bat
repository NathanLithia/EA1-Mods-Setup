@echo off
echo Cleaning up older installations.
del EAModenv.zip
del changelog.txt
rmdir /s /Q BepInEx
rmdir /s /Q EA1-Mod-Env-main
rmdir /s /Q scripts
rmdir /s /Q Licenses
del doorstop_config.ini
del winhttp.dll
echo Downloading Modding Files.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/NathanLithia/EA1-Mod-Env/archive/refs/heads/main.zip', 'EAModenv.zip')"
echo Extracting Modding Files.
powershell Expand-Archive EAModenv.zip -DestinationPath .
robocopy .\EA1-Mod-Env-main\ . /E
echo Cleaning up temp files.
rmdir /s /Q EA1-Mod-Env-main
del EAModenv.zip
del changelog.txt
echo Done!
pause
