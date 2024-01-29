@echo off
mode con: cols=80 lines=25

:: Create necessary directories
if not exist "BO3" mkdir BO3
if not exist "BO3\Client" mkdir BO3\Client
if not exist "BO3\SteamPatch" mkdir BO3\SteamPatch
if not exist "b03MM" mkdir b03MM
if not exist "b03MM\ModMan" mkdir b03MM\ModMan
if not exist "b03MM\ModMan\Logs" mkdir b03MM\ModMan\Logs
if not exist "b03MM\ModMan\Logs\PastInstalls" mkdir b03MM\ModMan\Logs\PastInstalls
if not exist "b03MM\ModMan\Logs\ErrorLogs" mkdir b03MM\ModMan\Logs\ErrorLogs
goto title

:title
cls
echo ====================================================
echo   COD-MANAGER for Black Ops 3   By: Mr. Asterisk   |
echo ====================================================
echo.
echo 1. Install Game
echo 2. Install BO3 Mod Manager
echo 3. Apply Steam DRM Patch / DLC
echo 4. Exit
echo.
echo Please choose an option:

set /p choice="Enter your choice [1-4]: "
if "%choice%"=="1" goto InstallGame
if "%choice%"=="2" goto ModManager
if "%choice%"=="3" goto SteamDRM
if "%choice%"=="4" goto End

goto title

:InstallGame
cls
echo ==============================================
echo            Game Installation                 |
echo ==============================================
echo.
echo Are you sure you want to open the torrent file? (Y/N)
set /p confirm=
if /I "%confirm%" neq "Y" goto title
echo Attempting to open the torrent file...
PowerShell -Command "Start-Process -FilePath 'https://cdn.discordapp.com/attachments/1118286874067357736/1118287465166422138/t7_full_game.torrent?ex=65c2a15c&is=65b02c5c&hm=ec59928d55bee4a1f1853a07c584bc7d528e919f08c060996049acefe54bcf0b'" > b03MM\ModMan\Logs\PastInstalls\install_game_%date%.log 2> b03MM\ModMan\Logs\ErrorLogs\error_game_%date%.log
goto title

:ModManager
cls
echo ==============================================
echo           BO3 Mod Manager Installation       |
echo ==============================================
echo.
start https://github.com/Ezz-lol/boiii-free/releases > b03MM\ModMan\Logs\PastInstalls\install_modmanager_%date%.log 2> b03MM\ModMan\Logs\ErrorLogs\error_modmanager_%date%.log
goto title

:SteamDRM
cls
echo ==============================================
echo           Steam DRM and DLC Patch            |
echo ==============================================
echo.
start https://forum.ezz.lol/assets/uploads/files/1687274331519-t7_dlc.torrent > b03MM\ModMan\Logs\PastInstalls\install_steamdrm_%date%.log 2> b03MM\ModMan\Logs\ErrorLogs\error_steamdrm_%date%.log
goto title

:End
exit