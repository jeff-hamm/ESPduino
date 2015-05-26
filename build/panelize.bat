IF %1.==. GOTO error
IF %2.==. (
	SET panelCFG="%cd%/panel.cfg"
) ELSE (
	SET panelCFG=%2
)
IF %3.==. (
	SET panelLayout="panel.layout"
) ELSE (
	SET panelLayout=%3
)
set startDir=%cd%
set brdPath="%1"
set projectDir=%~dp1
cd %projectDir%"
rm "gerber\panel*"
c:\python27\python.exe "%startDir%\..\submodules\gerbmerge-patched\gerbmerge\gerbmerge.py" --ack %panelCFG% %panelLayout%
rm gerber/panel-*.zip"
SET _mytime=%time: =0%
SET _mytime=%_mytime::=%
cd gerber
zip -D "panel-%DATE:~-4%%DATE:~4,2%%DATE:~7,2%-%_mytime:~0,6%.zip" panel*
cd ..
goto end
:error
echo "Missing .brd argument"
goto end

:end
cd %startDir%
echo "Done."



