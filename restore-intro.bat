@echo off
chcp 65001 >nul
title Restore Space Engineers Intro

:: PLACE THIS INTO THE GAME ROOT FOLDER

::intro video path
set intro=%~dp0Content\Videos\-disabled-KSH.wmv

IF EXIST=="%intro%" (
goto :run
) else (
echo ! Не удалось найти переименованный файл интро
echo ! Убедитесь что запускаемый файл находится в корневой папке игры Space Engineers
goto end
)


:run

set ksh=%~dp0Content\Videos\KSH.wmv
IF EXIST=="%ksh%" (
>nul erase /q /s "%ksh%"
echo.
echo Удалён лишний двойник видео
)

>nul ren "%intro%" "KSH.wmv"
echo Интро восстановлено
echo.
echo Путь к интро: "%~dp0Content\Videos\KSH.wmv"


:end
echo.
echo Нажмите любую кнопку чтобы закрыть окно
pause >nul
