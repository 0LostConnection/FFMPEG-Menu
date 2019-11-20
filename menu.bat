::Before of everything, sorry for my english, feel free to correct me :D

echo off
::Main Menu
:main
title Menu
cls
mode 30,13
::Cecho = Color Changing Program
cecho {0e}
echo             FFMPEG
echo           Select One
cecho {0f}
echo.
echo.
echo.
::cmdMenuSel = Program For Creation Of Selectable Options
cmdMenuSel f870 "         -= Mp4-Mp3 =-" "         -= Mp4-Avi =-" "         -= Mp4-Gif =-" "         -= Mp3-Mp4 =-" "         -= Command =-" "         -=  Close  =-" " "
if %ERRORLEVEL% == 1 goto Mp4-Mp3

if %ERRORLEVEL% == 2 goto Mp4-Avi

if %ERRORLEVEL% == 3 goto Mp4-Gif

if %ERRORLEVEL% == 4 goto Mp3-Mp4

if %ERRORLEVEL% == 5 goto code

if %ERRORLEVEL% == 6 exit

::Secret Option To Refresh The Menu
if %ERRORLEVEL% == 7 goto main

::Conversion Menu
:Mp4-Mp3
title Mp4-Mp3
cd input
cls
cecho {0e}

set /p input=Mp4-Input-File: 
::Return Action
if %input% == return goto gomain
echo.
set /p output=Mp3-Output-File: 
::Return Action
if %output% == return goto gomain
::Start Of Conversion
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
::Return Action
if %input% == return goto gomain
echo.
set /p output=Avi-Output-File: 
::Return Action
if %output% == return goto gomain
::Start Of Conversion
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
::Return Action
if %input% == return goto gomain
echo.
set /p output=Gif-Output-File: 
::Return Action
if %output% == return goto gomain
::Start Of Conversion
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
::Return Action
if %input% == return goto gomain
echo.
set /p img=Img-Input-File: 
::Return Action
if %img% == return goto gomain
echo.
set /p output=Mp4-Output-File: 
::Return Action
if %output% == return goto gomain
::Start Of Conversion
cd input
color 0f
mode 95,25
ffmpeg -i %img% -i %input%.mp3 -acodec copy %output%.mp4
move %output%.mp4 ..\output
cd..
goto main

::Start Another CMD
:code
title Command
start cmd
goto main

::"Go To Main" Action
:gomain
cd..
goto main

::Thanks for looking my code! I hope you liked it!