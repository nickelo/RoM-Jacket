goto :SORTOUT
:INTO
mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" & call :%LINKR%
exit /b

:WINV
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%"
exit /b
:WINLEG
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%"
exit /b

:SORTOUT
mkdir "SOURCE"
ATTRIB +H "SOURCE"
move /y "*.zip" "SOURCE"
pushd "%GBG%\%GAM%\%CONS%\%CPS2%\SOURCE"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROM=%%~nxa
call :"%%~a"
)
popd
exit /b

:"ssf2.zip"
for %%a in ("Super Street Fighter II - The New Challengers (World 930911)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2u.zip"
for %%a in ("Super Street Fighter II - The New Challengers (USA 930911)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2a.zip"
for %%a in ("Super Street Fighter II - The New Challengers (Asia 931005)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2ar1.zip"
for %%a in ("Super Street Fighter II - The New Challengers (Asia 930914)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2j.zip"
for %%a in ("Super Street Fighter II - The New Challengers (Japan 931005)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2jr1.zip"
for %%a in ("Super Street Fighter II - The New Challengers (Japan 930911)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2jr2.zip"
for %%a in ("Super Street Fighter II - The New Challengers (Japan 930910)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2h.zip"
for %%a in ("Super Street Fighter II - The New Challengers (Hispanic 930911)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2tb.zip"
for %%a in ("Super Street Fighter II - The Tournament Battle (World 931119)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2tbr1.zip"
for %%a in ("Super Street Fighter II - The Tournament Battle (World 930911)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2tbj.zip"
for %%a in ("Super Street Fighter II - The Tournament Battle (Japan 930911)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ecofghtr.zip"
for %%a in ("Eco Fighters (World 931203)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ecofghtru.zip"
for %%a in ("Eco Fighters (USA 940215)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ecofghtru1.zip"
for %%a in ("Eco Fighters (USA 931203)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ecofghtra.zip"
for %%a in ("Eco Fighters (Asia 931203)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ecofghtrh.zip"
for %%a in ("Eco Fighters (Hispanic 931203)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"uecology.zip"
for %%a in ("Ultimate Ecology (Japan 931203)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtod.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Euro 940412)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodr1.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Euro 940113)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodu.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (USA 940125)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodur1.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (USA 940113)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodj.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Japan 940412)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodjr1.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Japan 940125)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodjr2.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Japan 940113)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtoda.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Asia 940113)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodh.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Hispanic 940412)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodhr1.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Hispanic 940125)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodhr2.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Hispanic 940113)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2t.zip"
for %%a in ("Super Street Fighter II Turbo (World 940223)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2tu.zip"
for %%a in ("Super Street Fighter II Turbo (USA 940323)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2tur1.zip"
for %%a in ("Super Street Fighter II Turbo (USA 940223)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2ta.zip"
for %%a in ("Super Street Fighter II Turbo (Asia 940223)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2xj.zip"
for %%a in ("Super Street Fighter II X - Grand Master Challenge (Japan 940223)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"avsp.zip"
for %%a in ("Alien vs. Predator (Euro 940520)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"avspu.zip"
for %%a in ("Alien vs. Predator (USA 940520)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"avspj.zip"
for %%a in ("Alien vs. Predator (Japan 940520)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"avspa.zip"
for %%a in ("Alien vs. Predator (Asia 940520)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"avsph.zip"
for %%a in ("Alien vs. Predator (Hispanic 940520)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dstlk.zip"
for %%a in ("Darkstalkers - The Night Warriors (Euro 940705)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dstlku.zip"
for %%a in ("Darkstalkers - The Night Warriors (USA 940818)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dstlkur1.zip"
for %%a in ("Darkstalkers - The Night Warriors (USA 940705)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dstlka.zip"
for %%a in ("Darkstalkers - The Night Warriors (Asia 940705)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dstlkh.zip"
for %%a in ("Darkstalkers - The Night Warriors (Hispanic 940818)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vampj.zip"
for %%a in ("Vampire - The Night Warriors (Japan 940705)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vampja.zip"
for %%a in ("Vampire - The Night Warriors (Japan 940705 alt)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vampjr1.zip"
for %%a in ("Vampire - The Night Warriors (Japan 940630)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ringdest.zip"
for %%a in ("Ring of Destruction - Slammasters II (Euro 940902)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"smbomb.zip"
for %%a in ("Super Muscle Bomber - The International Blowout (Japan 940831)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"smbombr1.zip"
for %%a in ("Super Muscle Bomber - The International Blowout (Japan 940808)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"armwar.zip"
for %%a in ("Armored Warriors (Euro 941024)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"armwarr1.zip"
for %%a in ("Armored Warriors (Euro 941011)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"armwaru.zip"
for %%a in ("Armored Warriors (USA 941024)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"armwaru1.zip"
for %%a in ("Armored Warriors (USA 940920)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pgear.zip"
for %%a in ("Powered Gear - Strategic Variant Armor Equipment (Japan 941024)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pgearr1.zip"
for %%a in ("Powered Gear - Strategic Variant Armor Equipment (Japan 940916)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"armwara.zip"
for %%a in ("Armored Warriors (Asia 940920)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcota.zip"
for %%a in ("X-Men - Children of the Atom (Euro 950105)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotau.zip"
for %%a in ("X-Men - Children of the Atom (USA 950105)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotah.zip"
for %%a in ("X-Men - Children of the Atom (Hispanic 950331)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotahr1.zip"
for %%a in ("X-Men - Children of the Atom (Hispanic 950105)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotaj.zip"
for %%a in ("X-Men - Children of the Atom (Japan 950105)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotaj1.zip"
for %%a in ("X-Men - Children of the Atom (Japan 941222)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotaj2.zip"
for %%a in ("X-Men - Children of the Atom (Japan 941219)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotaj3.zip"
for %%a in ("X-Men - Children of the Atom (Japan 941217)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotaa.zip"
for %%a in ("X-Men - Children of the Atom (Asia 950105)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotaar1.zip"
for %%a in ("X-Men - Children of the Atom (Asia 941217)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotajr.zip"
for %%a in ("X-Men - Children of the Atom (Japan 941208 rent version)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nwarr.zip"
for %%a in ("Night Warriors - Darkstalkers' Revenge (Euro 950316)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nwarru.zip"
for %%a in ("Night Warriors - Darkstalkers' Revenge (USA 950406)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nwarrh.zip"
for %%a in ("Night Warriors - Darkstalkers' Revenge (Hispanic 950403)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nwarrb.zip"
for %%a in ("Night Warriors - Darkstalkers' Revenge (Brazil 950403)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nwarra.zip"
for %%a in ("Night Warriors - Darkstalkers' Revenge (Asia 950302)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vhuntj.zip"
for %%a in ("Vampire Hunter - Darkstalkers' Revenge (Japan 950316)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vhuntjr1.zip"
for %%a in ("Vampire Hunter - Darkstalkers' Revenge (Japan 950307)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vhuntjr2.zip"
for %%a in ("Vampire Hunter - Darkstalkers' Revenge (Japan 950302)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cybots.zip"
for %%a in ("Cyberbots - Fullmetal Madness (Euro 950424)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cybotsu.zip"
for %%a in ("Cyberbots - Fullmetal Madness (USA 950424)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cybotsj.zip"
for %%a in ("Cyberbots - Fullmetal Madness (Japan 950420)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfa.zip"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950727)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfar1.zip"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950718)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfar2.zip"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950627)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfar3.zip"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950605)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfau.zip"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (USA 950627)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfza.zip"
for %%a in ("Street Fighter Zero (Asia 950627)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfzj.zip"
for %%a in ("Street Fighter Zero (Japan 950727)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfzjr1.zip"
for %%a in ("Street Fighter Zero (Japan 950627)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfzjr2.zip"
for %%a in ("Street Fighter Zero (Japan 950605)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfzh.zip"
for %%a in ("Street Fighter Zero (Hispanic 950718)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfzhr1.zip"
for %%a in ("Street Fighter Zero (Hispanic 950627)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfzb.zip"
for %%a in ("Street Fighter Zero (Brazil 951109)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfzbr1.zip"
for %%a in ("Street Fighter Zero (Brazil 950727)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mmancp2u.zip"
for %%a in ("Mega Man - The Power Battle (CPS2, USA 951006, SAMPLE Version)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rmancp2j.zip"
for %%a in ("Rockman - The Power Battle (CPS2, Japan 950922)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"msh.zip"
for %%a in ("Marvel Super Heroes (Euro 951024)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshu.zip"
for %%a in ("Marvel Super Heroes (USA 951024)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshj.zip"
for %%a in ("Marvel Super Heroes (Japan 951117)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshjr1.zip"
for %%a in ("Marvel Super Heroes (Japan 951024)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"msha.zip"
for %%a in ("Marvel Super Heroes (Asia 951024)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshh.zip"
for %%a in ("Marvel Super Heroes (Hispanic 951117)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshb.zip"
for %%a in ("Marvel Super Heroes (Brazil 951117)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"19xx.zip"
for %%a in ("19XX - The War Against Destiny (USA 951207)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"19xxj.zip"
for %%a in ("19XX - The War Against Destiny (Japan 951225)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"19xxjr1.zip"
for %%a in ("19XX - The War Against Destiny (Japan 951207)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"19xxa.zip"
for %%a in ("19XX - The War Against Destiny (Asia 951207)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"19xxh.zip"
for %%a in ("19XX - The War Against Destiny (Hispanic 951218)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"19xxb.zip"
for %%a in ("19XX - The War Against Destiny (Brazil 951218)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsom.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (Euro 960619)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomr1.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (Euro 960223)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomr2.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (Euro 960209)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomr3.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (Euro 960208)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomu.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (USA 960619)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomur1.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (USA 960209)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomjr1.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (Japan 960206)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomj.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (Japan 960619)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsoma.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (Asia 960619)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomh.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (Hispanic 960223)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomb.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (Brazil 960223)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfa2.zip"
for %%a in ("Street Fighter Alpha 2 (Euro 960229)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfa2u.zip"
for %%a in ("Street Fighter Alpha 2 (USA 960306)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2j.zip"
for %%a in ("Street Fighter Zero 2 (Japan 960227)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2a.zip"
for %%a in ("Street Fighter Zero 2 (Asia 960227)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2b.zip"
for %%a in ("Street Fighter Zero 2 (Brazil 960531)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2br1.zip"
for %%a in ("Street Fighter Zero 2 (Brazil 960304)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2h.zip"
for %%a in ("Street Fighter Zero 2 (Hispanic 960304)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2n.zip"
for %%a in ("Street Fighter Zero 2 (Oceania 960229)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"spf2t.zip"
for %%a in ("Super Puzzle Fighter II Turbo (USA 960620)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"spf2xj.zip"
for %%a in ("Super Puzzle Fighter II X (Japan 960531)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"spf2ta.zip"
for %%a in ("Super Puzzle Fighter II Turbo (Asia 960529)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"spf2th.zip"
for %%a in ("Super Puzzle Fighter II Turbo (Hispanic 960531)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"qndream.zip"
for %%a in ("Quiz Nanairo Dreams - Nijiirochou no Kiseki (Japan 960826)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"megaman2.zip"
for %%a in ("Mega Man 2 - The Power Fighters (USA 960708)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"megaman2a.zip"
for %%a in ("Mega Man 2 - The Power Fighters (Asia 960708)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rockman2j.zip"
for %%a in ("Rockman 2 - The Power Fighters (Japan 960708)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"megaman2h.zip"
for %%a in ("Mega Man 2 - The Power Fighters (Hispanic 960712)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gigamn2.zip"
for %%a in ("Giga Man 2 - The Power Fighters (bootleg of Mega Man 2 - The Power Fighters)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2al.zip"
for %%a in ("Street Fighter Zero 2 Alpha (Asia 960826)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2alj.zip"
for %%a in ("Street Fighter Zero 2 Alpha (Japan 960805)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2alh.zip"
for %%a in ("Street Fighter Zero 2 Alpha (Hispanic 960813)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2alb.zip"
for %%a in ("Street Fighter Zero 2 Alpha (Brazil 960813)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsf.zip"
for %%a in ("X-Men Vs. Street Fighter (Euro 961004)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfr1.zip"
for %%a in ("X-Men Vs. Street Fighter (Euro 960910)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfu.zip"
for %%a in ("X-Men Vs. Street Fighter (USA 961023)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfur1.zip"
for %%a in ("X-Men Vs. Street Fighter (USA 961004)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfj.zip"
for %%a in ("X-Men Vs. Street Fighter (Japan 961004)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfjr1.zip"
for %%a in ("X-Men Vs. Street Fighter (Japan 960910)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfjr2.zip"
for %%a in ("X-Men Vs. Street Fighter (Japan 960909)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfa.zip"
for %%a in ("X-Men Vs. Street Fighter (Asia 961023)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfar1.zip"
for %%a in ("X-Men Vs. Street Fighter (Asia 960919)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfar2.zip"
for %%a in ("X-Men Vs. Street Fighter (Asia 960910)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfh.zip"
for %%a in ("X-Men Vs. Street Fighter (Hispanic 961004)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfb.zip"
for %%a in ("X-Men Vs. Street Fighter (Brazil 961023)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"batcir.zip"
for %%a in ("Battle Circuit (Euro 970319)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"batcirj.zip"
for %%a in ("Battle Circuit (Japan 970319)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"batcira.zip"
for %%a in ("Battle Circuit (Asia 970319)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vsav.zip"
for %%a in ("Vampire Savior - The Lord of Vampire (Euro 970519)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vsavu.zip"
for %%a in ("Vampire Savior - The Lord of Vampire (USA 970519)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vsavj.zip"
for %%a in ("Vampire Savior - The Lord of Vampire (Japan 970519)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vsava.zip"
for %%a in ("Vampire Savior - The Lord of Vampire (Asia 970519)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vsavh.zip"
for %%a in ("Vampire Savior - The Lord of Vampire (Hispanic 970519)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsf.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Euro 970625)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfu.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (USA 970827)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfu1.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (USA 970625)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfj.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Japan 970707)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfj1.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Japan 970702)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfj2.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Japan 970625)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfh.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Hispanic 970625)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfa.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Asia 970625)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfa1.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Asia 970620)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfb.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Brazil 970827)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfb1.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Brazil 970625)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"csclub.zip"
for %%a in ("Capcom Sports Club (Euro 971017)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"csclub1.zip"
for %%a in ("Capcom Sports Club (Euro 970722)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"csclubj.zip"
for %%a in ("Capcom Sports Club (Japan 970722)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cscluba.zip"
for %%a in ("Capcom Sports Club (Asia 970722)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"csclubh.zip"
for %%a in ("Capcom Sports Club (Hispanic 970722)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sgemf.zip"
for %%a in ("Super Gem Fighter Mini Mix (USA 970904)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pfghtj.zip"
for %%a in ("Pocket Fighter (Japan 970904)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sgemfa.zip"
for %%a in ("Super Gem Fighter - Mini Mix (Asia 970904)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sgemfh.zip"
for %%a in ("Super Gem Fighter - Mini Mix (Hispanic 970904)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vhunt2r1.zip"
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge (Japan 970913)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vhunt2.zip"
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge (Japan 970929)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vsav2.zip"
for %%a in ("Vampire Savior 2 - The Lord of Vampire (Japan 970913)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvsc.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Euro 980123)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvscr1.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Euro 980112)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvscu.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (USA 980123)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvscur1.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (USA 971222)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvscj.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Japan 980123)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvscjr1.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Japan 980112)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvsca.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Asia 980123)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvscar1.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Asia 980112)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvsch.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Hispanic 980123)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvscb.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Brazil 980123)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfa3.zip"
for %%a in ("Street Fighter Alpha 3 (Euro 980904)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfa3u.zip"
for %%a in ("Street Fighter Alpha 3 (USA 980904)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfa3ur1.zip"
for %%a in ("Street Fighter Alpha 3 (USA 980629)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfa3h.zip"
for %%a in ("Street Fighter Alpha 3 (Hispanic 980629)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfa3b.zip"
for %%a in ("Street Fighter Alpha 3 (Brazil 980629)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz3j.zip"
for %%a in ("Street Fighter Zero 3 (Japan 980904)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz3jr1.zip"
for %%a in ("Street Fighter Zero 3 (Japan 980727)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz3jr2.zip"
for %%a in ("Street Fighter Zero 3 (Japan 980629)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz3a.zip"
for %%a in ("Street Fighter Zero 3 (Asia 980904)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz3ar1.zip"
for %%a in ("Street Fighter Zero 3 (Asia 980701)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gigawing.zip"
for %%a in ("Giga Wing (USA 990222)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gigawingj.zip"
for %%a in ("Giga Wing (Japan 990223)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gigawinga.zip"
for %%a in ("Giga Wing (Asia 990222)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gigawingh.zip"
for %%a in ("Giga Wing (Hispanic 990222)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gigawingb.zip"
for %%a in ("Giga Wing (Brazil 990222)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"jyangoku.zip"
for %%a in ("Jyangokushi - Haoh no Saihai (Japan 990527)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dimahoo.zip"
for %%a in ("Dimahoo (Euro 000121)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dimahoou.zip"
for %%a in ("Dimahoo (USA 000121)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gmahou.zip"
for %%a in ("Great Mahou Daisakusen (Japan 000121)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mmatrix.zip"
for %%a in ("Mars Matrix - Hyper Solid Shooting (USA 000412)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mmatrixj.zip"
for %%a in ("Mars Matrix - Hyper Solid Shooting (Japan 000412)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"1944.zip"
for %%a in ("1944 - The Loop Master (USA 000620)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"1944j.zip"
for %%a in ("1944 - The Loop Master (Japan 000620)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mpang.zip"
for %%a in ("Mighty! Pang (Euro 001010)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mpangr1.zip"
for %%a in ("Mighty! Pang (Euro 000925)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mpangu.zip"
for %%a in ("Mighty! Pang (USA 001010)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mpangj.zip"
for %%a in ("Mighty! Pang (Japan 001011)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"progear.zip"
for %%a in ("Progear (USA 010117)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"progearj.zip"
for %%a in ("Progear no Arashi (Japan 010117)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"progeara.zip"
for %%a in ("Progear (Asia 010117)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pzloop2.zip"
for %%a in ("Puzz Loop 2 (Euro 010302)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pzloop2j.zip"
for %%a in ("Puzz Loop 2 (Japan 010205)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"choko.zip"
for %%a in ("Janpai Puzzle Choukou (Japan 010820)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"hsf2.zip"
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition (USA 040202)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"hsf2j.zip"
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition (Japan 031222)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"hsf2a.zip"
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition (Asia 040202)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2ud.zip"
for %%a in ("Super Street Fighter II - The New Challengers (USA 930911 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddtodd.zip"
for %%a in ("Dungeons & Dragons - Tower of Doom (Euro 940412 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ecofghtrd.zip"
for %%a in ("Eco Fighters (World 931203 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"avspd.zip"
for %%a in ("Alien vs. Predator (Euro 940520 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dstlku1d.zip"
for %%a in ("Darkstalkers - The Night Warriors (USA 940705 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ringdstd.zip"
for %%a in ("Ring of Destruction - Slammasters II (Euro 940902 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmcotad.zip"
for %%a in ("X-Men - Children of the Atom (Euro 950105 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nwarrud.zip"
for %%a in ("Night Warriors - Darkstalkers' Revenge (USA 950406 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfad.zip"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950727 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshud.zip"
for %%a in ("Marvel Super Heroes (US 951024 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"19xxd.zip"
for %%a in ("19XX - The War Against Destiny (USA 951207 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2ad.zip"
for %%a in ("Street Fighter Zero 2 (Asia 960227 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2jd.zip"
for %%a in ("Street Fighter Zero 2 (Japan 960227 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"spf2td.zip"
for %%a in ("Super Puzzle Fighter II Turbo (USA 960620 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"spf2xjd.zip"
for %%a in ("Super Puzzle Fighter II X (Japan 960531 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ddsomud.zip"
for %%a in ("Dungeons & Dragons - Shadow over Mystara (USA 960619 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"megamn2d.zip"
for %%a in ("Mega Man 2 - The Power Fighters (USA 960708 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz2ald.zip"
for %%a in ("Street Fighter Zero 2 Alpha (Asia 960826 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"xmvsfu1d.zip"
for %%a in ("X-Men Vs. Street Fighter (USA 961004 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"batcird.zip"
for %%a in ("Battle Circuit (Euro 970319 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vsavd.zip"
for %%a in ("Vampire Savior - The Lord of Vampire (Euro 970519 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mvscud.zip"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (USA 980123 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfa3ud.zip"
for %%a in ("Street Fighter Alpha 3 (USA 980904 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gigawingd.zip"
for %%a in ("Giga Wing (USA 990222 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b

:"gigawingjd.zip"
for %%a in ("Giga Wing (Japan 990223 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"1944d.zip"
for %%a in ("1944 - The Loop Master (USA 000620 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"progearud.zip"
for %%a in ("Progear (USA 010117 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"progearjd.zip"
for %%a in ("Progear no Arashi (Japan 010117 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"progearjbl.zip"
for %%a in ("Progear no Arashi (Japan 010117) (decrypted bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"hsf2d.zip"
for %%a in ("Hyper Street Fighter II - The Anniversary Edition (Asia 040202 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2tbd.zip"
for %%a in ("Super Street Fighter II - The Tournament Battle (World 931119 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssf2xjd.zip"
for %%a in ("Super Street Fighter II X - Grand Master Challenge (Japan 940223 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sgemfd.zip"
for %%a in ("Super Gem Fighter Mini Mix (USA 970904 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"armwar1d.zip"
for %%a in ("Armored Warriors (Euro 941011 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"dimahoud.zip"
for %%a in ("Dimahoo (USA 000121 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mmatrixd.zip"
for %%a in ("Mars Matrix - Hyper Solid Shooting (Japan 000412 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vhunt2d.zip"
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge (Japan 970929 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vsav2d.zip"
for %%a in ("Vampire Savior 2 - The Lord of Vampire (Japan 970913 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"csclub1d.zip"
for %%a in ("Capcom Sports Club (Euro 970722 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cybotsud.zip"
for %%a in ("Cyberbots - Fullmetal Madness (USA 950424 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mshvsfu1d.zip"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (USA 970625 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sfz3jr2d.zip"
for %%a in ("Street Fighter Zero 3 (Japan 980629 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"csclubjr.zip"
for %%a in ("Capcom Sports Club (970722 Japan, Rent version)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b