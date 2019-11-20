echo off
goto main
set f%fmpeg%=ffmpeg.exe
:main
title Menu
cls
mode 30,13
cecho {0e}
echo             FFMPEG
echo           Select One
cecho {0f}
echo.
echo.
echo.

cmdMenuSel f870 "         -= Mp4-Mp3 =-" "         -= Mp4-Avi =-" "         -= Mp4-Gif =-" "         -= Mp3-Mp4 =-" "         -= Command =-" "         -=  Close  =-" " "
if %ERRORLEVEL% == 1 goto Mp4-Mp3

if %ERRORLEVEL% == 2 goto Mp4-Avi

if %ERRORLEVEL% == 3 goto Mp4-Gif

if %ERRORLEVEL% == 4 goto Mp3-Mp4

if %ERRORLEVEL% == 5 goto code

if %ERRORLEVEL% == 6 exit

if %ERRORLEVEL% == 7 goto main

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

:Mp3-Mp4
title Mp3-Mp4
cd input
cls
cecho {0e}
set /p input=Mp3-Input-File: 
echo.
set /p img=Img-Input-File: 
echo.
set /p output=Mp4-Output-File: 
cd input
color 0f
mode 95,25
ffmpeg -i %img% -i %input%.mp3 -acodec copy %output%.mp4
move %output%.mp4 ..\output
cd..
goto main

:code
title Command
start cmd
goto main

::ffmpeg -i %img% -i %input%.mp3 -acodec copy %output%.mp4