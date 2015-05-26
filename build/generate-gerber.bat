IF %1.==. GOTO error
set brdPath="%1"
set python="C:\python27\python.exe"
:error
echo "Missing .brd argument"
goto end

:end
cd %startDir%
echo "Done."
