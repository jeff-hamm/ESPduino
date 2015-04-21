cd gerber
rm panel-*.zip
SET _mytime=%time: =0%
SET _mytime=%_mytime::=%
zip -D "panel-%DATE:~-4%%DATE:~4,2%%DATE:~7,2%-%_mytime:~0,6%.zip" panel*
cd ..