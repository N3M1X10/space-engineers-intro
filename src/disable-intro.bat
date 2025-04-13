:: PLACE THIS BATCH INTO THE GAME ROOT FOLDER

@echo off
chcp 65001>nul
setlocal

echo ! Disable Space Engineers intro

cd /d "%~dp0"

:: intro video path
set intro=%~dp0Content\Videos\KSH.wmv
set disabled-intro=%~dp0Content\Videos\-disabled-KSH.wmv

IF EXIST "%disabled-intro%" (
echo.
echo ! The intro is already disabled
	
	:: remove extra double
	IF EXIST "%intro%" (
	 echo I found extra double!
	 >nul erase /q /s "%intro%"
	 echo.
	 echo The extra double of the intro has been removed
	 echo.
	)
echo The intro won't bother you :^)
goto end
)

IF NOT EXIST "%intro%" (
echo ! The intro file could not be found
echo ! Make sure that this batch file is located in the root folder of the Space Engineers game
goto end
)

:run
::rename the video (with checking of existing this filename)
echo.
echo Renaming intro . . .
ren "%intro%" "-disabled-KSH.wmv"
echo Complete
echo.
echo The intro won't bother you anymore :^)
echo.
echo Here is the renamed video, which is responsible for the intro of the game:
echo "%disabled-intro%"
goto end

:end
echo.
pause&endlocal&exit
