@echo off
setlocal

:: --- CONFIGURATION ---
:: Path to 7-Zip executable. Change this if you installed it somewhere else.
set "SEVENZIP=C:\Program Files\7-Zip\7z.exe"
:: Name of the output zip file
set "ZIP_NAME=PigstealWeapons.zip"
:: ---------------------

echo [1/3] Creating Zip file...
if not exist "%SEVENZIP%" (
    echo Error: 7-Zip not found at "%SEVENZIP%"
    echo Please edit this script to set the correct path.
    pause
    exit /b 1
)

:: Delete old zip if it exists
if exist "%ZIP_NAME%" del "%ZIP_NAME%"

:: Create new zip with assets folder and pack.mcmeta
"%SEVENZIP%" a -tzip "%ZIP_NAME%" assets pack.mcmeta

echo.
echo [2/3] Pushing source code to GitHub...
git add .
git commit -m "Update resource pack and build release"
git push origin main

echo.
echo [3/3] Release Instructions
echo -----------------------------------------------------------------------
echo The file "%ZIP_NAME%" has been created successfully.
echo.
echo Since GitHub CLI (gh) is not installed, you need to upload the release manually:
echo 1. Open: https://github.com/Drqad/Pigsteal-Repo/releases/new
echo 2. Create a new tag (e.g., v1.0)
echo 3. Drag and drop "%ZIP_NAME%" into the "Attach binaries" box.
echo 4. Click "Publish release".
echo.
echo NOTE: To automate step 3, install GitHub CLI: https://cli.github.com/
echo -----------------------------------------------------------------------
pause
