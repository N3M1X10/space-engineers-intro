@echo off
chcp 65001 >nul
title Disable Space Engineers intro

:: PLACE THIS INTO THE GAME ROOT FOLDER

::intro video path
set intro=%~dp0Content\Videos\KSH.wmv
set ksh=%~dp0Content\Videos\KSH.wmv

IF EXIST=="%~dp0Content\Videos\-disabled-KSH.wmv" (
echo ! Интро уже отключено

IF EXIST=="%ksh%" (
>nul erase /q /s "%ksh%"
echo.
echo Удалён лишний двойник видео
echo.
)

goto end
)

IF EXIST=="%intro%" (
goto :run
) else (
echo ! Не удалось найти файл интро
echo ! Убедитесь что запускаемый файл находится в корневой папке игры Space Engineers
goto end
)

:run
::rename the video (with checking of existing this filename)

>nul ren "%intro%" "-disabled-KSH.wmv"

echo Интро больше вас не побеспокоит!
echo.
echo Здесь лежит переименованное видео из игры, что отвечает за интро:
echo "%~dp0Content\Videos\-disabled-KSH.wmv"
goto end


:end
echo.
echo Нажмите любую кнопку чтобы закрыть окно
pause >nul
