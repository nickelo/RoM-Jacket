cd "%GBG%\%GAM%\%CONS%\%ATMS%"
goto :SORTOUT
:INTO
mkdir "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" & move /y "%ROM%" "%NWDIR%"
exit /b

:SORTOUT
pushd "%GBG%\%GAM%\%CONS%\%ATMS%"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROM=%%~nxa
call :"%%~a"
)
move /y "awbios.zip" "%GBE%\%EMUZ%\%DMUL%"
exit /b

:"anmlbskt.zip"
for %%a in ("Animal Basket") do set NWDIR=%%~a
call :INTO
exit /b
:"demofist.zip"
for %%a in ("Demolish Fist") do set NWDIR=%%~a
call :INTO
exit /b
:"dirtypig.zip"
for %%a in ("Dirty Pigskin Football") do set NWDIR=%%~a
call :INTO
exit /b
:"dolphin.zip"
for %%a in ("Dolphin Blue") do set NWDIR=%%~a
call :INTO
exit /b
:"fotns.zip"
for %%a in ("Fist Of The North Star") do set NWDIR=%%~a
call :INTO
exit /b
:"ftspeed.zip"
for %%a in ("Faster Than Speed") do set NWDIR=%%~a
call :INTO
exit /b
:"ggisuka.zip"
for %%a in ("Guilty Gear Isuka") do set NWDIR=%%~a
call :INTO
exit /b
:"ggx15.zip"
for %%a in ("Guilty Gear X Ver. 1.5") do set NWDIR=%%~a
call :INTO
exit /b
:"kofnw.zip"
for %%a in ("The King of Fighters - Neo Wave (EN)") do set NWDIR=%%~a
call :INTO
exit /b
:"kofnwj.zip"
for %%a in ("The King of Fighters - Neo Wave (JP)") do set NWDIR=%%~a
call :INTO
exit /b
:"kofxi.zip"
for %%a in ("The King of Fighters XI") do set NWDIR=%%~a
call :INTO
exit /b
:"kov7sprt.zip"
for %%a in ("Knights of Valor - The Seven Spirits") do set NWDIR=%%~a
call :INTO
exit /b
:"maxspeed.zip"
for %%a in ("Maximum Speed") do set NWDIR=%%~a
call :INTO
exit /b
:"mslug6.zip"
for %%a in ("Metal Slug 6") do set NWDIR=%%~a
call :INTO
exit /b
:"ngbc.zip"
for %%a in ("Neo-Geo Battle Coliseum") do set NWDIR=%%~a
call :INTO
exit /b
:"salmankt.zip"
for %%a in ("Salary Man Kintaro") do set NWDIR=%%~a
call :INTO
exit /b
:"samsptk.zip"
for %%a in ("Smurai Shodown VI") do set NWDIR=%%~a
call :INTO
exit /b
:"sprtshot.zip"
for %%a in ("Sports Shooting USA") do set NWDIR=%%~a
call :INTO
exit /b
:"rangrmsn.zip"
for %%a in ("Ranger Mission") do set NWDIR=%%~a
call :INTO
exit /b
:"rumblef.zip"
for %%a in ("The Rumble Fish") do set NWDIR=%%~a
call :INTO
exit /b
:"rumblef2.zip"
for %%a in ("The Rumble Fish 2") do set NWDIR=%%~a
call :INTO
exit /b
:"xtrmhunt.zip"
for %%a in ("Extreme Hunting") do set NWDIR=%%~a
call :INTO
exit /b
:"xtrmhnt2.zip"
for %%a in ("Extreme Hunting 2") do set NWDIR=%%~a
call :INTO
exit /b
:"vfurlong.zip"
for %%a in ("Net Select Keiba Victory Furlong") do set NWDIR=%%~a
call :INTO
exit /b
:"bass.zip"
for %%a in ("Sega Bass Fishing") do set NWDIR=%%~a
call :INTO
exit /b
:"vf3.zip"
for %%a in ("Virtua Fighter 3 (Rev. C)") do set NWDIR=%%~a
call :INTO
exit /b
:"vf3a.zip"
for %%a in ("Virtua Fighter 3 (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"vf3tb.zip"
for %%a in ("Virtua Fighter 3 Team Battle") do set NWDIR=%%~a
call :INTO
exit /b
:"getbass.zip"
for %%a in ("Get Bass") do set NWDIR=%%~a
call :INTO
exit /b
:"lemans24.zip"
for %%a in ("LeMans 24") do set NWDIR=%%~a
call :INTO
exit /b
:"scud.zip"
for %%a in ("Scud Race (AUS)") do set NWDIR=%%~a
call :INTO
exit /b
:"scudj.zip"
for %%a in ("Scud Race (JAP)") do set NWDIR=%%~a
call :INTO
exit /b
:"scuda.zip"
for %%a in ("Scud Race (EXP)") do set NWDIR=%%~a
call :INTO
exit /b
:"scudp.zip"
for %%a in ("Scud Race Plus") do set NWDIR=%%~a
call :INTO
exit /b
:"vs215.zip"
for %%a in ("Virtua Striker 2") do set NWDIR=%%~a
call :INTO
exit /b
:"vs29815.zip"
for %%a in ("Virtua Striker 2 '98") do set NWDIR=%%~a
call :INTO
exit /b
:"lostwsga.zip"
for %%a in ("The Lost World") do set NWDIR=%%~a
call :INTO
exit /b
:"vs2.zip"
for %%a in ("Virtua Striker 2 (Step 2.0)") do set NWDIR=%%~a
call :INTO
exit /b
:"harley.zip"
for %%a in ("Harley-Davidson and L.A. Riders (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"harleyb.zip"
for %%a in ("Harley-Davidson and L.A. Riders (Rev. B)") do set NWDIR=%%~a
call :INTO
exit /b
:"lamachin.zip"
for %%a in ("L.A. Machineguns") do set NWDIR=%%~a
call :INTO
exit /b
:"oceanhun.zip"
for %%a in ("The Ocean Hunter") do set NWDIR=%%~a
call :INTO
exit /b
:"skichamp.zip"
for %%a in ("Ski Champ") do set NWDIR=%%~a
call :INTO
exit /b
:"srally2.zip"
for %%a in ("Sega Rally 2") do set NWDIR=%%~a
call :INTO
exit /b
:"srally2x.zip"
for %%a in ("Sega Rally 2 DX") do set NWDIR=%%~a
call :INTO
exit /b
:"von2.zip"
for %%a in ("Virtual On 2: Oratorio Tangram (Rev. B)") do set NWDIR=%%~a
call :INTO
exit /b
:"von254g.zip"
for %%a in ("Virtual On 2: Oratorio Tangram (Ver. 5.4g)") do set NWDIR=%%~a
call :INTO
exit /b
:"fvipers2.zip"
for %%a in ("Fighting Vipers 2 (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"vs298.zip"
for %%a in ("Virtua Striker 2 '98 (Step 2.0)") do set NWDIR=%%~a
call :INTO
exit /b
:"vs2v991.zip"
for %%a in ("Virtua Striker 2 '99.1 (Rev. B)") do set NWDIR=%%~a
call :INTO
exit /b
:"vs299b.zip"
for %%a in ("Virtua Striker 2 '99 (Rev. B)") do set NWDIR=%%~a
call :INTO
exit /b
:"vs299a.zip"
for %%a in ("Virtua Striker 2 '99 (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"vs299.zip"
for %%a in ("Virtua Striker 2 '99") do set NWDIR=%%~a
call :INTO
exit /b
:"daytona2.zip"
for %%a in ("Daytona USA 2 (Revision A)") do set NWDIR=%%~a
call :INTO
exit /b
:"dayto2pe.zip"
for %%a in ("Daytona USA 2 Power Edition") do set NWDIR=%%~a
call :INTO
exit /b
:"dirtdvls.zip"
for %%a in ("Dirt Devils (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"dirtdvlsa.zip"
for %%a in ("Dirt Devils (alt) (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"swtrilgy.zip"
for %%a in ("Star Wars Trilogy (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"swtrilgya.zip"
for %%a in ("Star Wars Trilogy") do set NWDIR=%%~a
call :INTO
exit /b
:"spikeout.zip"
for %%a in ("Spikeout") do set NWDIR=%%~a
call :INTO
exit /b
:"spikeofe.zip"
for %%a in ("Spikeout Final Edition") do set NWDIR=%%~a
call :INTO
exit /b
:"magtruck.zip"
for %%a in ("Magical Truck Adventure") do set NWDIR=%%~a
call :INTO
exit /b
:"eca.zip"
for %%a in ("Emergency Call Ambulance") do set NWDIR=%%~a
call :INTO
exit /b
:"ecax.zip"
for %%a in ("Emergency Call Ambulance (EXP)") do set NWDIR=%%~a
call :INTO
exit /b