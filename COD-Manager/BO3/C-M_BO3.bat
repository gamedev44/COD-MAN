@echo off
mode con: cols=80 lines=25

:: Create necessary directories
echo Checking and creating necessary directories...

:: Check and create BO3 directory
if not exist "BO3" (
    echo Creating BO3 directory...
    mkdir BO3
) else (
    echo BO3 directory already exists.
)

:: Check and create BO3\Client directory
if not exist "BO3\Client" (
    echo Creating BO3\Client directory...
    mkdir BO3\Client
) else (
    echo BO3\Client directory already exists.
)

:: Check and create BO3\SteamPatch directory
if not exist "BO3\SteamPatch" (
    echo Creating BO3\SteamPatch directory...
    mkdir BO3\SteamPatch
) else (
    echo BO3\SteamPatch directory already exists.
)

:: Check and create b03MM directory
if not exist "b03MM" (
    echo Creating b03MM directory...
    mkdir b03MM
) else (
    echo b03MM directory already exists.
)

:: Check and create b03MM\ModMan directory
if not exist "b03MM\ModMan" (
    echo Creating b03MM\ModMan directory...
    mkdir b03MM\ModMan
) else (
    echo b03MM\ModMan directory already exists.
)

:: Check and create b03MM\ModMan\Logs directory
if not exist "b03MM\ModMan\Logs" (
    echo Creating b03MM\ModMan\Logs directory...
    mkdir b03MM\ModMan\Logs
) else (
    echo b03MM\ModMan\Logs directory already exists.
)

:: Check and create b03MM\ModMan\Logs\PastInstalls directory
if not exist "b03MM\ModMan\Logs\PastInstalls" (
    echo Creating b03MM\ModMan\Logs\PastInstalls directory...
    mkdir b03MM\ModMan\Logs\PastInstalls
) else (
    echo b03MM\ModMan\Logs\PastInstalls directory already exists.
)

:: Check and create b03MM\ModMan\Logs\ErrorLogs directory
if not exist "b03MM\ModMan\Logs\ErrorLogs" (
    echo Creating b03MM\ModMan\Logs\ErrorLogs directory...
    mkdir b03MM\ModMan\Logs\ErrorLogs
) else (
    echo b03MM\ModMan\Logs\ErrorLogs directory already exists.
)

echo Directory check and creation complete.
pause

:: Menu for further actions
:menu
cls
echo ========================================
echo     BO3 CODMAN MAIN MENU By:Asterisk
echo ========================================
echo 1. Install Game
echo 2. Install BO3 Mod Manager
echo 3. Apply Steam DRM Patch / DLC
echo 4. Exit
echo.
set /p ans="Enter your choice [1-4]: "

if "%ans%"=="1" goto InstallGame
if "%ans%"=="2" goto InstallModManager
if "%ans%"=="3" goto ApplySteamDRMPatch
if "%ans%"=="4" goto End

echo Invalid input, please try again.
pause
goto menu

:InstallGame
cls
echo You chose to Install the Game.
start https://cdn.discordapp.com/attachments/1118286874067357736/1118287465166422138/t7_full_game.torrent
echo Game installer opened. Press any key to return to the menu...
pause >nul
goto menu

:InstallModManager
cls
echo You chose to Install BO3 Mod Manager.
start https://github.com/Ezz-lol/boiii-free/releases
echo Mod Manager installer opened. Press any key to return to the menu...
pause >nul
goto menu

:ApplySteamDRMPatch
cls
echo You chose to Apply Steam DRM Patch / DLC.
start https://forum.ezz.lol/assets/uploads/files/1687274331519-t7_dlc.torrent
echo Steam DRM Patch / DLC opened. Press any key to return to the menu...
pause >nul
goto menu

:End
echo Exiting the script. Goodbye!
pause >nul
exit
