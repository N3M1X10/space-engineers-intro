:: PLACE THIS BATCH INTO THE GAME ROOT FOLDER

@echo off
chcp 65001>nul
setlocal

echo ! Restore Space Engineers Intro

cd /d "%~dp0"

::intro video path
set disabled-intro=%~dp0Content\Videos\-disabled-KSH.wmv
set intro=%~dp0Content\Videos\KSH.wmv

IF EXIST "%disabled-intro%" (
goto run
) else (
	echo.
    echo ! The intro file could not be found
    echo ! Perhaps the intro has already been restored
    echo ! Or make sure that this batch file is located in the root folder of the Space Engineers game
    goto end
)

:run

IF EXIST "%intro%" (
echo I found new intro file
echo.
erase /q /s "%disabled-intro%"
echo.
echo The extra double of the intro has been removed
echo Intro has restored!
echo.
goto end
)

echo Restoring disabled intro . . .
ren "%disabled-intro%" "KSH.wmv"
echo.
echo Intro has restored!

:end
echo.
pause&endlocal&exit
