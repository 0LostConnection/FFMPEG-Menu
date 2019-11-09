echo off
goto main
set f%fmpeg%=ffmpeg.exe
:main
title Menu
cls
mode 34,10
cecho {0e}              FFMPEG
echo                           Select One
cecho {0f}
echo.
echo.

cmdMenuSel f870 "          -= Mp4-Mp3 =-" "          -= Mp4-Avi =-" "          -= Mp4-Gif =-" "          -= Command =-" "          -=  Close  =-"
if %ERRORLEVEL% == 1 goto Mp4-Mp3

if %ERRORLEVEL% == 2 goto Mp4-Avi

if %ERRORLEVEL% == 3 goto Mp4-Gif

if %ERRORLEVEL% == 4 goto code

if %ERRORLEVEL% == 5 exit

goto main
 
:Mp4-Mp3
title Mp4-Mp3
cd input
cls
cecho {0e}
set /p input=Mp4-Input-File: 
echo.
set /p output=Mp3-Output-File: 
cd input
color 0f
mode 95,25
ffmpeg -i %input%.mp4 %output%.mp3 
move %output%.mp3 ..\output
cd..
goto main
 
:Mp4-Avi
title Mp4-Avi
cd input
cls
cecho {0e}
set /p input=Mp4-Input-File: 
echo.
set /p output=Avi-Output-File: 
cd input
color 0f
mode 95,25
ffmpeg -i %input%.mp4 %output%.avi
move %output%.avi ..\output
cd..
goto main
 
:Mp4-Gif
title Mp4-Gif
cd input
cls
cecho {0e}
set /p input=Mp4-Input-File: 
echo.
set /p output=Gif-Output-File: 
cd input
color 0f
mode 95,25
ffmpeg -i %input%.mp4 %output%.gif
move %output%.gif ..\output
cd..
goto main

:code
title Command
start cmd
goto main