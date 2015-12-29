cd "%GBG%\%GAM%\%CONS%\%SEGM2%"
goto :SORTOUT

:INTO
mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" & call :%LINKR%
exit /b

:WINV
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%"
exit /b
:WINLEG
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%"
exit /b

:SORTOUT
mkdir "SOURCE"
ATTRIB +H "SOURCE"
move /y "*.zip" "SOURCE"
cd "%GBG%\%GAM%\%CONS%\%SEGM2%\SOURCE"
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
:"bel.zip"
for %%a in ("Behind Enemy Lines") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dayton93.zip"
for %%a in ("Daytona USA Deluxe '93") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"daytona.zip"
for %%a in ("Daytona USA (Japan, Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"daytonagtx.zip"
for %%a in ("Daytona USA - GTX 2004 Edition") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"daytonam.zip"
for %%a in ("Daytona USA (Japan, To The MAXX)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"daytonas.zip"
for %%a in ("Daytona USA (With Saturn Adverts)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"daytonat.zip"
for %%a in ("Daytona USA Turbo") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"desert.zip"
for %%a in ("Desert Tank") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"doa.zip"
for %%a in ("Dead or Alive (Model 2B, Revision B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"doaa.zip"
for %%a in ("Dead or Alive (Model 2A, Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dynabb.zip"
for %%a in ("Dynamite Baseball '97 (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dynamcop.zip"
for %%a in ("Dynamite Cop (Export, Model 2A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dyndek2b.zip"
for %%a in ("Dynamite Deka 2 (Japan, Model 2B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dyndeka2.zip"
for %%a in ("Dynamite Deka 2 (Japan, Model 2A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dynmcopb.zip"
for %%a in ("Dynamite Cop (Export, Model 2B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"dynmcopc.zip"
for %%a in ("Dynamite Cop (USA, Model 2C)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"fvipers.zip"
for %%a in ("Fighting Vipers (Revision D)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"gunblade.zip"
for %%a in ("Gunblade NY (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"hotd.zip"
for %%a in ("House of the Dead") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"indy500.zip"
for %%a in ("INDY 500 Twin (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"indy500d.zip"
for %%a in ("INDY 500 Deluxe (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"lastbrnj.zip"
for %%a in ("Last Bronx (Japan, Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"lastbrnx.zip"
for %%a in ("Last Bronx (Export, Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"manxtt.zip"
for %%a in ("Manx TT Superbike") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"motoraid.zip"
for %%a in ("Motoraid") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"overrev.zip"
for %%a in ("Over Rev (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"pltkids.zip"
for %%a in ("Pilot Kids (Model 2B, Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"pltkidsa.zip"
for %%a in ("Pilot Kids (Model 2A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"rchase2.zip"
for %%a in ("Rail Chase 2 (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"schamp.zip"
for %%a in ("Sonic The Fighters") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"segawski.zip"
for %%a in ("Sega Water Ski") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"sgt24h.zip"
for %%a in ("Super GT 24h") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"skisuprg.zip"
for %%a in ("Sega Ski Super G") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"skytargt.zip"
for %%a in ("Sky Target") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"srallyc.zip"
for %%a in ("Sega Rally Championship") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"srallyp.zip"
for %%a in ("Sega Rally Pro Drivin'") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"stcc.zip"
for %%a in ("Sega Touring Car Championship (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"topskatr.zip"
for %%a in ("Top Skater (Export, Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"topskatu.zip"
for %%a in ("Top Skater (USA)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vcop.zip"
for %%a in ("Virtua Cop (Revision B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vcop2.zip"
for %%a in ("Virtua Cop 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vf2.zip"
for %%a in ("Virtua Fighter 2 (Version 2.1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vf2a.zip"
for %%a in ("Virtua Fighter 2 (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vf2b.zip"
for %%a in ("Virtua Fighter 2 (Revision B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vf2o.zip"
for %%a in ("Virtua Fighter 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"von.zip"
for %%a in ("Virtual On Cyber Troopers (US, Revision B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vonj.zip"
for %%a in ("Virtual On Cyber Troopers (Japan, Revision B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vstriker.zip"
for %%a in ("Virtua Striker (Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"vstrikro.zip"
for %%a in ("Virtua Striker") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"waverunr.zip"
for %%a in ("Wave Runner (Japan, Revision A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"zerogun.zip"
for %%a in ("Zero Gunner (Model 2B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"zeroguna.zip"
for %%a in ("Zero Gunner (Model 2A)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:"zerogunj.zip"
for %%a in ("Zero Gunner (Japan Model 2B)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b
:REMAINING
for %%a in ("%ROM%") do set NWDIR=%%~na
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%ROM%" CALL :%LINKR%
attrib +h "%ROM%"
exit /b