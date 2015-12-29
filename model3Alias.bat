cd "%GBG%\%GAM%\%CONS%\%SEGM3%"
goto :SORTOUT
:INTO
mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" & call :%LINKR%
exit /b

:WINV
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%"
exit /b
:WINLEG
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%"
exit /b

:SORTOUT
mkdir "SOURCE"
ATTRIB +H "SOURCE"
move /y "*.zip" "SOURCE"
pushd "%GBG%\%GAM%\%CONS%\%SEGM3%\SOURCE"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROM=%%~nxa
call :"%%~a"
)
for /f "delims=" %%a in ('dir /b/l/a-h "*.zip"') do (
SET ROM=%%~nxa
call :REMAINING
)
popd
exit /b
:"bass.zip"
for %%a in ("Sega Bass Fishing") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dayto2pe.zip"
for %%a in ("Daytona USA 2 Power Edition") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"daytona2.zip"
for %%a in ("Daytona USA 2 (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dirtdvls.zip"
for %%a in ("Dirt Devils (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dirtdvlsa.zip"
for %%a in ("Dirt Devils (alt) (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"eca.zip"
for %%a in ("Emergency Call Ambulance") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"ecax.zip"
for %%a in ("Emergency Call Ambulance (Export)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"fvipers2.zip"
for %%a in ("Fighting Vipers 2 (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"getbass.zip"
for %%a in ("Get Bass") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"harley.zip"
for %%a in ("Harley-Davidson and L.A. Riders (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"harleyb.zip"
for %%a in ("Harley-Davidson and L.A. Riders (Revision B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"lamachin.zip"
for %%a in ("L.A. Machineguns") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"lemans24.zip"
for %%a in ("LeMans 24") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"lostwsga.zip"
for %%a in ("The Lost World") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"magtruck.zip"
for %%a in ("Magical Truck Adventure") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"oceanhun.zip"
for %%a in ("The Ocean Hunter") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"scud.zip"
for %%a in ("Scud Race (Australia)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"scuda.zip"
for %%a in ("Scud Race (Export)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"scudj.zip"
for %%a in ("Scud Race (Japan)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"scudp.zip"
for %%a in ("Scud Race Plus (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"skichamp.zip"
for %%a in ("Ski Champ") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"spikeofe.zip"
for %%a in ("Spikeout Final Edition") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"spikeout.zip"
for %%a in ("Spikeout (Revision C)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"srally2.zip"
for %%a in ("Sega Rally 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"srally2x.zip"
for %%a in ("Sega Rally 2 DX") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"swtrilgy.zip"
for %%a in ("Star Wars Trilogy (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"swtrilgya.zip"
for %%a in ("Star Wars Trilogy") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vf3.zip"
for %%a in ("Virtua Fighter 3 (Revision C)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vf3a.zip"
for %%a in ("Virtua Fighter 3 (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vf3tb.zip"
for %%a in ("Virtua Fighter 3 Team Battle") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"von2.zip"
for %%a in ("Virtual On 2: Oratorio Tangram (Revision B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"von254g.zip"
for %%a in ("Virtual On 2: Oratorio Tangram (ver 5.4g)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vs2.zip"
for %%a in ("Virtua Striker 2 (Step 2.0)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vs215.zip"
for %%a in ("Virtua Striker 2 (Step 1.5)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vs298.zip"
for %%a in ("Virtua Striker 2 '98 (Step 2.0)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vs29815.zip"
for %%a in ("Virtua Striker 2 '98 (Step 1.5)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vs299.zip"
for %%a in ("Virtua Striker 2 '99") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vs299a.zip"
for %%a in ("Virtua Striker 2 '99 (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vs299b.zip"
for %%a in ("Virtua Striker 2 '99 (Revision B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vs2v991.zip"
for %%a in ("Virtua Striker 2 '99.1 (Revision B)") do set NWDIR=%%~a
call :INTO
attrib +h "%ROM%"
exit /b
:REMAINING
for %%a in ("%ROM%") do set NWDIR=%%~na
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b