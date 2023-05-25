setlocal EnableDelayedExpansion
@echo off
chcp 65001
set FOLDER=%~dp0
if "%~1"=="-help" goto HELP
if NOT "%~1"=="" set FOLDER=%~1
echo currend folder: %FOLDER%
cd /d %FOLDER%
echo %1
echo For multiple parametres
echo %*

set COUNTER=0
echo the for is started
for %%x in (%*) do (
    echo %%x
    set /A COUNTER+=1
)
echo counter: %COUNTER%
echo the for is ended
mkdir "Лабораторные\ПЗ-22-2\КривоносовМС\batch\Скрытая_папка"
REM Созданы папки batch и Скрытая_папка
mkdir "Лабораторные\ПЗ-22-2\КривоносовМС\batch\Не_скрытая_папка"
REM Создана папка Не_скрытая_папка
attrib +h "Лабораторные\ПЗ-22-2\КривоносовМС\batch\Скрытая_папка"
REM Папка Скрытая_папка становится скрытой
xcopy /? > "Лабораторные\ПЗ-22-2\КривоносовМС\batch\Не_скрытая_папка\copyhelp.txt"
xcopy "Лабораторные\ПЗ-22-2\КривоносовМС\batch\Не_скрытая_папка\copyhelp.txt" "Лабораторные\ПЗ-22-2\КривоносовМС\batch\Скрытая_папка\copied_copyhelp.txt"
REM Копирование текстового файла из Не_скрытая_папка в Скрытая_папка
echo Скрипт завершается...
pause
exit 0
:HELP
echo "Автор программы 123"
echo "example"
echo "bat22.bat C:\Users\Миша\"
pause
exit 1