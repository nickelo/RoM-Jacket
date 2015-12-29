goto :SORTOUT
:INTO
mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" & call :%LINKR%
exit /b

:WINV
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%"
exit /b
:WINLEG
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%"
exit /b

:SORTOUT
mkdir "SOURCE"
ATTRIB +H "SOURCE"
move /y "*.zip" "SOURCE"
pushd "%GBG%\%GAM%\%CONS%\%CPS%\SOURCE"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROM=%%~nxa
call :"%%~a"
)
popd
exit /b

:"forgottn.zip"
for %%a in ("Forgotten Worlds (World)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"forgottnu.zip"
for %%a in ("Forgotten Worlds (USA, B-Board 88621B-2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"forgottnua.zip"
for %%a in ("Forgotten Worlds (USA, B-Board 88618B-?)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"lostwrld.zip"
for %%a in ("Lost Worlds (Japan)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"lostwrldo.zip"
for %%a in ("Lost Worlds (Japan Old Ver.)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ghouls.zip"
for %%a in ("Ghouls'n Ghosts (World)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ghoulsu.zip"
for %%a in ("Ghouls'n Ghosts (USA)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"daimakai.zip"
for %%a in ("Daimakaimura (Japan)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"daimakair.zip"
for %%a in ("Daimakaimura (Japan Resale Ver.)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"strider.zip"
for %%a in ("Strider (USA, B-Board 89624B-2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"striderua.zip"
for %%a in ("Strider (USA, B-Board 89624B-3)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"striderj.zip"
for %%a in ("Strider Hiryu (Japan)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"striderjr.zip"
for %%a in ("Strider Hiryu (Japan Resale Ver.)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dynwar.zip"
for %%a in ("Dynasty Wars (USA, B-Board 89624B-?)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dynwara.zip"
for %%a in ("Dynasty Wars (USA, B-Board 88622B-3)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dynwarj.zip"
for %%a in ("Tenchi wo Kurau (Japan)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"willow.zip"
for %%a in ("Willow (USA)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"willowj.zip"
for %%a in ("Willow (Japan, Japanese)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"willowje.zip"
for %%a in ("Willow (Japan, English)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"unsquad.zip"
for %%a in ("U.N. Squadron (USA)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"area88.zip"
for %%a in ("Area 88 (Japan)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"area88r.zip"
for %%a in ("Area 88 (Japan Resale Ver.)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ffight.zip"
for %%a in ("Final Fight (World)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ffightu.zip"
for %%a in ("Final Fight (USA)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ffightua.zip"
for %%a in ("Final Fight (USA 900112)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ffightub.zip"
for %%a in ("Final Fight (USA 900613)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ffightj.zip"
for %%a in ("Final Fight (Japan)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ffightj1.zip"
for %%a in ("Final Fight (Japan 900112)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ffightj2.zip"
for %%a in ("Final Fight (Japan 900305)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ffightjh.zip"
for %%a in ("Street Smart  - Final Fight (Japan, hack)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"1941.zip"
for %%a in ("1941 - Counter Attack (World)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"1941j.zip"
for %%a in ("1941 - Counter Attack (Japan)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mercs.zip"
for %%a in ("Mercs (World 900302)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mercsu.zip"
for %%a in ("Mercs (USA 900302)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mercsua.zip"
for %%a in ("Mercs (USA 900608)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mercsj.zip"
for %%a in ("Senjou no Ookami II (Japan 900302)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mtwins.zip"
for %%a in ("Mega Twins (World 900619)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"chikij.zip"
for %%a in ("Chiki Chiki Boys (Japan 900619)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"msword.zip"
for %%a in ("Magic Sword - Heroic Fantasy (World 900725)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mswordr1.zip"
for %%a in ("Magic Sword - Heroic Fantasy (World 900623)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mswordu.zip"
for %%a in ("Magic Sword - Heroic Fantasy (USA 900725)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mswordj.zip"
for %%a in ("Magic Sword - Heroic Fantasy (Japan 900623)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cawing.zip"
for %%a in ("Carrier Air Wing (World 901012)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cawingr1.zip"
for %%a in ("Carrier Air Wing (World 901009)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cawingu.zip"
for %%a in ("Carrier Air Wing (USA 901012)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cawingj.zip"
for %%a in ("U.S. Navy (Japan 901012)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nemo.zip"
for %%a in ("Nemo (World 901130)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nemoj.zip"
for %%a in ("Nemo (Japan 901120)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2.zip"
for %%a in ("Street Fighter II - The World Warrior (World 910522)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2eb.zip"
for %%a in ("Street Fighter II - The World Warrior (World 910214)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ebbl.zip"
for %%a in ("Street Fighter II - The World Warrior (TAB Austria, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ua.zip"
for %%a in ("Street Fighter II - The World Warrior (USA 910206)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ub.zip"
for %%a in ("Street Fighter II - The World Warrior (USA 910214)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ud.zip"
for %%a in ("Street Fighter II - The World Warrior (USA 910318)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ue.zip"
for %%a in ("Street Fighter II - The World Warrior (USA 910228)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2uf.zip"
for %%a in ("Street Fighter II - The World Warrior (USA 910411)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ui.zip"
for %%a in ("Street Fighter II - The World Warrior (USA 910522)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2uk.zip"
for %%a in ("Street Fighter II - The World Warrior (USA 911101)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2j.zip"
for %%a in ("Street Fighter II - The World Warrior (Japan 911210)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ja.zip"
for %%a in ("Street Fighter II - The World Warrior (Japan 910214)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2jc.zip"
for %%a in ("Street Fighter II - The World Warrior (Japan 910306)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2qp1.zip"
for %%a in ("Street Fighter II - The World Warrior (Quicken Pt-I, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2thndr.zip"
for %%a in ("Street Fighter II - The World Warrior (Thunder Edition, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"3wonders.zip"
for %%a in ("Three Wonders (World 910520)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"3wondersu.zip"
for %%a in ("Three Wonders (USA 910520)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wonder3.zip"
for %%a in ("Wonder 3 (Japan 910520)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"3wondersh.zip"
for %%a in ("Three Wonders (hack)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kod.zip"
for %%a in ("The King of Dragons (World 910711)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kodu.zip"
for %%a in ("The King of Dragons (USA 910910)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kodj.zip"
for %%a in ("The King of Dragons (Japan 910805, B-Board 90629B-3)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kodja.zip"
for %%a in ("The King of Dragons (Japan 910805, B-Board 89625B-1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"captcomm.zip"
for %%a in ("Captain Commando (World 911202)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"captcommr1.zip"
for %%a in ("Captain Commando (World 911014)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"captcommu.zip"
for %%a in ("Captain Commando (USA 910928)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"captcommj.zip"
for %%a in ("Captain Commando (Japan 911202)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"captcommjr1.zip"
for %%a in ("Captain Commando (Japan 910928)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"captcommb.zip"
for %%a in ("Captain Commando (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"knights.zip"
for %%a in ("Knights of the Round (World 911127)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"knightsu.zip"
for %%a in ("Knights of the Round (USA 911127)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"knightsj.zip"
for %%a in ("Knights of the Round (Japan 911127, B-Board 91634B-2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"knightsja.zip"
for %%a in ("Knights of the Round (Japan 911127, B-Board 89625B-1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"knightsb.zip"
for %%a in ("Knights of the Round (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ce.zip"
for %%a in ("Street Fighter II' - Champion Edition (World 920513)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ceea.zip"
for %%a in ("Street Fighter II' - Champion Edition (World 920313)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ceua.zip"
for %%a in ("Street Fighter II' - Champion Edition (USA 920313)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ceub.zip"
for %%a in ("Street Fighter II' - Champion Edition (USA 920513)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2ceuc.zip"
for %%a in ("Street Fighter II' - Champion Edition (USA 920803)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2cej.zip"
for %%a in ("Street Fighter II' - Champion Edition (Japan 920513)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2rb.zip"
for %%a in ("Street Fighter II' - Champion Edition (Rainbow set 1, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2rb2.zip"
for %%a in ("Street Fighter II' - Champion Edition (Rainbow set 2, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2rb3.zip"
for %%a in ("Street Fighter II' - Champion Edition (Rainbow set 3, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2red.zip"
for %%a in ("Street Fighter II' - Champion Edition (Red Wave, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2v004.zip"
for %%a in ("Street Fighter II' - Champion Edition (V004, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2acc.zip"
for %%a in ("Street Fighter II' - Champion Edition (Accelerator!, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2accp2.zip"
for %%a in ("Street Fighter II' - Champion Edition (Accelerator Pt.II, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2dkot2.zip"
for %%a in ("Street Fighter II' - Champion Edition (Double K.O. Turbo II, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2m1.zip"
for %%a in ("Street Fighter II' - Champion Edition (M1, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2m2.zip"
for %%a in ("Street Fighter II' - Champion Edition (M2, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2m3.zip"
for %%a in ("Street Fighter II' - Champion Edition (M3, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2m4.zip"
for %%a in ("Street Fighter II' - Champion Edition (M4, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2m5.zip"
for %%a in ("Street Fighter II' - Champion Edition (M5, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2m6.zip"
for %%a in ("Street Fighter II' - Champion Edition (M6, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2m7.zip"
for %%a in ("Street Fighter II' - Champion Edition (M7, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2yyc.zip"
for %%a in ("Street Fighter II' - Champion Edition (YYC, bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2koryu.zip"
for %%a in ("Street Fighter II' - Champion Edition (Xiang Long, Chinese bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2mdt.zip"
for %%a in ("Street Fighter II' - Magic Delta Turbo (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"varth.zip"
for %%a in ("Varth - Operation Thunderstorm (World 920714)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"varthr1.zip"
for %%a in ("Varth - Operation Thunderstorm (World 920612)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"varthu.zip"
for %%a in ("Varth - Operation Thunderstorm (USA 920612)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"varthj.zip"
for %%a in ("Varth - Operation Thunderstorm (Japan 920714)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cworld2j.zip"
for %%a in ("Adventure Quiz Capcom World 2 (Japan 920611)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wof.zip"
for %%a in ("Warriors of Fate (World 921002)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wofa.zip"
for %%a in ("Sangokushi II (Asia 921005)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wofu.zip"
for %%a in ("Warriors of Fate (USA 921031)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wofj.zip"
for %%a in ("Tenchi wo Kurau II - Sekiheki no Tatakai (Japan 921031)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wofhfh.zip"
for %%a in ("Huo Feng Huang (Chinese bootleg of Sangokushi II)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2hf.zip"
for %%a in ("Street Fighter II' - Hyper Fighting (World 921209)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2hfu.zip"
for %%a in ("Street Fighter II' - Hyper Fighting (USA 921209)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2hfj.zip"
for %%a in ("Street Fighter II' Turbo - Hyper Fighting (Japan 921209)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dino.zip"
for %%a in ("Cadillacs and Dinosaurs (World 930201)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dinou.zip"
for %%a in ("Cadillacs and Dinosaurs (USA 930201)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dinoj.zip"
for %%a in ("Cadillacs - Kyouryuu Shin Seiki (Japan 930201)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dinopic.zip"
for %%a in ("Cadillacs and Dinosaurs (bootleg with PIC16c57, set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dinopic2.zip"
for %%a in ("Cadillacs and Dinosaurs (bootleg with PIC16c57, set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dinohunt.zip"
for %%a in ("Dinosaur Hunter (Chinese bootleg of Cadillacs and Dinosaurs)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"punisher.zip"
for %%a in ("The Punisher (World 930422)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"punisheru.zip"
for %%a in ("The Punisher (USA 930422)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"punisherj.zip"
for %%a in ("The Punisher (Japan 930422)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"punipic.zip"
for %%a in ("The Punisher (bootleg with PIC16c57, set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"punipic2.zip"
for %%a in ("The Punisher (bootleg with PIC16c57, set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"punipic3.zip"
for %%a in ("The Punisher (bootleg with PIC16c57, set 3)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"punisherbz.zip"
for %%a in ("Biaofeng Zhanjing (Chinese bootleg of The Punisher)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"slammast.zip"
for %%a in ("Saturday Night Slam Masters (World 930713)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"slammastu.zip"
for %%a in ("Saturday Night Slam Masters (USA 930713)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mbomberj.zip"
for %%a in ("Muscle Bomber - The Body Explosion (Japan 930713)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mbombrd.zip"
for %%a in ("Muscle Bomber Duo - Ultimate Team Battle (World 931206)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mbombrdj.zip"
for %%a in ("Muscle Bomber Duo - Heat Up Warriors (Japan 931206)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pnickj.zip"
for %%a in ("Pnickies (Japan 940608)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"qad.zip"
for %%a in ("Quiz & Dragons - Capcom Quiz Game (USA 920701)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"qadj.zip"
for %%a in ("Quiz & Dragons - Capcom Quiz Game (Japan 940921)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"qtono2j.zip"
for %%a in ("Quiz Tonosama no Yabou 2 - Zenkoku-ban (Japan 950123)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pang3.zip"
for %%a in ("Pang! 3 (Euro 950601)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pang3n.zip"
for %%a in ("Pang! 3 (Euro 950511, not encrypted)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pang3j.zip"
for %%a in ("Pang! 3 - Kaitou Tachi no Karei na Gogo (Japan 950511)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"megaman.zip"
for %%a in ("Mega Man - The Power Battle (CPS1, Asia 951006)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rockmanj.zip"
for %%a in ("Rockman - The Power Battle (CPS1, Japan 950922)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dinoh.zip"
for %%a in ("Cadillacs and Dinosaurs (Hack)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"knightsh.zip"
for %%a in ("Knights of the Round (Hack)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfzch.zip"
for %%a in ("Street Fighter Zero (CPS Changer)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfach.zip"
for %%a in ("Street Fighter Alpha (Publicity CPS Changer 950727)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wofh.zip"
for %%a in ("Warriors of Fate (Hack)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2turyu.zip"
for %%a in ("Street Fighter II' - Champion Edition (non-MAME, Turyu)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2turyu1.zip"
for %%a in ("Street Fighter II' - Champion Edition (Turyu Alternate)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sf2toryu.zip"
for %%a in ("Street Fighter II' - Champion Edition (Tulong)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b