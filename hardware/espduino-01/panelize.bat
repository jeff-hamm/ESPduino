rm gerber/panel*
c:\python27\python.exe C:\Python27\Lib\site-packages\gerbmerge\gerbmerge.py panel.cfg panel.layout
rm panel-*.zip
SET _mytime=%time: =0%
SET _mytime=%_mytime::=%
zip "panel-%DATE:~-4%%DATE:~4,2%%DATE:~7,2%-%_mytime:~0,6%.zip" gerber/panel*
