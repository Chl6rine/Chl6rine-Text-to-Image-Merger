::program created by Chl6rine::
::::program load::::
@echo off
@cls
title Text To Image Merger By Chl6rine
color 04

::::menu::::
cls
echo.
echo.../text to image merger\...
echo.
echo this program will hide any text you like into an image.
echo To get started. press Enter
echo.
pause
cls

::::create::::
:create
echo.
echo.../text to image merger\...
echo.
echo please enter the text you would like to hide in the image
echo.
set /p text=
echo.
echo the message "%text%" will be hidden in the text image.
echo.
pause
cls
echo.
echo.../text to image merger\...
echo.
echo Please type the name of the image you want to merge the text with.
echo the image Must be in the same folder as the program.
set /p image=
echo.
echo When you are ready please press Enter to merge them together
pause
cls
(
echo
echo
echo %text%) >text.txt
copy /b %image% + text.txt output.jpg
cls
:A
echo.
echo.../text to image merger\...
echo.
echo The image has been created. would you like to create another one?
echo [1] Yes
echo [2] NO
set /p menu=selection:
if %menu%--1 goto create
if %menu%--2 goto exit
echo.
echo Invalid option. please try again
goto A
:exit
echo.
echo.../text to image merger\...
echo.
echo Thanks for using this program! See ya later
ping localhost -n 5 >nul
exit

