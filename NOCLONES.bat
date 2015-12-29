goto :SORTOUT

:WINV
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%"
exit /b
:WINLEG
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%"
exit /b

:SORTOUT
mkdir "SOURCE"
attrib +h "SOURCE"
move /y "*.zip" "SOURCE"
pushd "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for %%a in ("88games.zip") do set ROM=%%~a
for %%a in ("'88 Games") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("005.zip") do set ROM=%%~a
for %%a in ("005") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("1on1gov.zip") do set ROM=%%~a
for %%a in ("1 on 1 Government (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("10yard.zip") do set ROM=%%~a
for %%a in ("10-Yard Fight (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtmr.zip") do set ROM=%%~a
for %%a in ("1000 Miglia- Great 1000 Miles Rally (94-07-18)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("progolf.zip") do set ROM=%%~a
for %%a in ("18 Holes Pro Golf (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("1941.zip") do set ROM=%%~a
for %%a in ("1941- Counter Attack (World 900227)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_1942.zip") do set ROM=%%~a
for %%a in ("1942 (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("1942.zip") do set ROM=%%~a
for %%a in ("1942 (Revision B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("1943kai.zip") do set ROM=%%~a
for %%a in ("1943 Kai- Midway Kaisen (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("1943.zip") do set ROM=%%~a
for %%a in ("1943- The Battle of Midway (Euro)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("1944.zip") do set ROM=%%~a
for %%a in ("1944- The Loop Master (USA 000620)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("1945kiii.zip") do set ROM=%%~a
for %%a in ("1945k III") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("19xx.zip") do set ROM=%%~a
for %%a in ("19XX- The War Against Destiny (USA 951207)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("openice.zip") do set ROM=%%~a
for %%a in ("2 On 2 Open Ice Challenge (rev 1.21)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("2020bb.zip") do set ROM=%%~a
for %%a in ("2020 Super Baseball (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("280zzzap.zip") do set ROM=%%~a
for %%a in ("280-ZZZAP") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("3countb.zip") do set ROM=%%~a
for %%a in ("3 Count Bout - Fire Suplex (NGM-043)(NGH-043)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("3on3dunk.zip") do set ROM=%%~a
for %%a in ("3 On 3 Dunk Madness (US, prototype- 1997-02-04)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bowl3d.zip") do set ROM=%%~a
for %%a in ("3-D Bowling") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("30test.zip") do set ROM=%%~a
for %%a in ("30 Test (Remake)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("39in1.zip") do set ROM=%%~a
for %%a in ("39 in 1 MAME bootleg") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("4enraya.zip") do set ROM=%%~a
for %%a in ("4 En Raya (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("4in1.zip") do set ROM=%%~a
for %%a in ("4 Fun in 1") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("4dwarrio.zip") do set ROM=%%~a
for %%a in ("4-D Warriors (315-5162)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("64street.zip") do set ROM=%%~a
for %%a in ("64th. Street - A Detective Story (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("7mezzo.zip") do set ROM=%%~a
for %%a in ("7 e Mezzo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("720.zip") do set ROM=%%~a
for %%a in ("720 Degrees (rev 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("9ballsht.zip") do set ROM=%%~a
for %%a in ("9-Ball Shootout (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qos.zip") do set ROM=%%~a
for %%a in ("A Question of Sport (set 1, 39-960-107)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ad2083.zip") do set ROM=%%~a
for %%a in ("A. D. 2083") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("abcop.zip") do set ROM=%%~a
for %%a in ("A.B. Cop (World) (FD1094 317-0169b)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("apb.zip") do set ROM=%%~a
for %%a in ("APB - All Points Bulletin (rev 7)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aso.zip") do set ROM=%%~a
for %%a in ("ASO - Armored Scrum Object") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_argh.zip") do set ROM=%%~a
for %%a in ("Aaargh (Arcadia)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ace.zip") do set ROM=%%~a
for %%a in ("Ace") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aceattac.zip") do set ROM=%%~a
for %%a in ("Ace Attacker (FD1094 317-0059)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("acedrvrw.zip") do set ROM=%%~a
for %%a in ("Ace Driver- Racing Evolution (Rev. AD2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("victlapw.zip") do set ROM=%%~a
for %%a in ("Ace Driver- Victory Lap (Rev. ADV2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("acrobatm.zip") do set ROM=%%~a
for %%a in ("Acrobat Mission") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dogfgt.zip") do set ROM=%%~a
for %%a in ("Acrobatic Dog-Fight") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("actfancr.zip") do set ROM=%%~a
for %%a in ("Act-Fancer Cybernetick Hyper Weapon (World revision 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("afighter.zip") do set ROM=%%~a
for %%a in ("Action Fighter (FD1089A 317-0018)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("actionhw.zip") do set ROM=%%~a
for %%a in ("Action Hollywood") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hatena.zip") do set ROM=%%~a
for %%a in ("Adventure Quiz 2 - Hatena- no Daibouken (Japan 900228)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cworld2j.zip") do set ROM=%%~a
for %%a in ("Adventure Quiz Capcom World 2 (Japan 920611)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aerofgt.zip") do set ROM=%%~a
for %%a in ("Aero Fighters (World - USA + Canada - Korea - Hong Kong - Taiwan) (newer hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sonicwi2.zip") do set ROM=%%~a
for %%a in ("Aero Fighters 2 - Sonic Wings 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sonicwi3.zip") do set ROM=%%~a
for %%a in ("Aero Fighters 3 - Sonic Wings 3") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aerofgts.zip") do set ROM=%%~a
for %%a in ("Aero Fighters Special (Taiwan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aburner2.zip") do set ROM=%%~a
for %%a in ("After Burner II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aoh.zip") do set ROM=%%~a
for %%a in ("Age Of Heroes - Silkroad 2 (v0.63 - 2001-02-07)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superbon.zip") do set ROM=%%~a
for %%a in ("Agent Super Bond (Super Cobra conversion)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aodk.zip") do set ROM=%%~a
for %%a in ("Aggressors of Dark Kombat - Tsuukai GANGAN Koushinkyoku (ADM-008)(ADH-008)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("agress.zip") do set ROM=%%~a
for %%a in ("Agress - Missile Daisenryaku (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("koshien.zip") do set ROM=%%~a
for %%a in ("Ah Eikou no Koshien (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("airass.zip") do set ROM=%%~a
for %%a in ("Air Assault (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("airattck.zip") do set ROM=%%~a
for %%a in ("Air Attack (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("airbustr.zip") do set ROM=%%~a
for %%a in ("Air Buster- Trouble Specialty Raid Unit (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("airduel.zip") do set ROM=%%~a
for %%a in ("Air Duel (World, M82-A-A + M82-B-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("agallet.zip") do set ROM=%%~a
for %%a in ("Air Gallet (Europe)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("airrace.zip") do set ROM=%%~a
for %%a in ("Air Race (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arescue.zip") do set ROM=%%~a
for %%a in ("Air Rescue (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("airwolf.zip") do set ROM=%%~a
for %%a in ("Airwolf") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ajax.zip") do set ROM=%%~a
for %%a in ("Ajax") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aladmdb.zip") do set ROM=%%~a
for %%a in ("Aladdin (bootleg of Japanese Megadrive version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alcon.zip") do set ROM=%%~a
for %%a in ("Alcon (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alexkidd.zip") do set ROM=%%~a
for %%a in ("Alex Kidd- The Lost Stars (set 2, unprotected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alibaba.zip") do set ROM=%%~a
for %%a in ("Ali Baba and 40 Thieves") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alienar.zip") do set ROM=%%~a
for %%a in ("Alien Arena") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aliencha.zip") do set ROM=%%~a
for %%a in ("Alien Challenge (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aliencr.zip") do set ROM=%%~a
for %%a in ("Alien Crush") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alinvade.zip") do set ROM=%%~a
for %%a in ("Alien Invaders") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aliensec.zip") do set ROM=%%~a
for %%a in ("Alien Sector") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("astorm.zip") do set ROM=%%~a
for %%a in ("Alien Storm (World, 2 Players) (FD1094 317-0154)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aliensyn.zip") do set ROM=%%~a
for %%a in ("Alien Syndrome (set 4, System 16B, unprotected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("avsp.zip") do set ROM=%%~a
for %%a in ("Alien vs. Predator (Euro 940520)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alien3.zip") do set ROM=%%~a
for %%a in ("Alien3- The Gun (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aliens.zip") do set ROM=%%~a
for %%a in ("Aliens (World set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aafb.zip") do set ROM=%%~a
for %%a in ("All American Football (rev E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alleymas.zip") do set ROM=%%~a
for %%a in ("Alley Master") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alphaho.zip") do set ROM=%%~a
for %%a in ("Alpha Fighter - Head On") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alpham2.zip") do set ROM=%%~a
for %%a in ("Alpha Mission II - ASO II - Last Guardian (NGM-007)(NGH-007)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alpinerd.zip") do set ROM=%%~a
for %%a in ("Alpine Racer (Rev. AR2 Ver.D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alpinr2b.zip") do set ROM=%%~a
for %%a in ("Alpine Racer 2 (Rev. ARS2 Ver.B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("alpine.zip") do set ROM=%%~a
for %%a in ("Alpine Ski (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("altair.zip") do set ROM=%%~a
for %%a in ("Altair") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("altbeast.zip") do set ROM=%%~a
for %%a in ("Altered Beast (set 8) (8751 317-0078)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("maze.zip") do set ROM=%%~a
for %%a in ("Amazing Maze") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ambush.zip") do set ROM=%%~a
for %%a in ("Ambush") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("amerdart.zip") do set ROM=%%~a
for %%a in ("AmeriDarts (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("horshoes.zip") do set ROM=%%~a
for %%a in ("American Horseshoes (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("amspdwy.zip") do set ROM=%%~a
for %%a in ("American Speedway (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("amidar.zip") do set ROM=%%~a
for %%a in ("Amidar") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("androdun.zip") do set ROM=%%~a
for %%a in ("Andro Dunos (NGM-049)(NGH-049)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("angelkds.zip") do set ROM=%%~a
for %%a in ("Angel Kids (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cadanglr.zip") do set ROM=%%~a
for %%a in ("Angler Dangler (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("animalc.zip") do set ROM=%%~a
for %%a in ("Animal Catch") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("anteater.zip") do set ROM=%%~a
for %%a in ("Anteater") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("apache3.zip") do set ROM=%%~a
for %%a in ("Apache 3") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("appoooh.zip") do set ROM=%%~a
for %%a in ("Appoooh") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aquajack.zip") do set ROM=%%~a
for %%a in ("Aqua Jack (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aquajet.zip") do set ROM=%%~a
for %%a in ("Aqua Jet (Rev. AJ2 Ver.B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aquarush.zip") do set ROM=%%~a
for %%a in ("Aqua Rush (Japan, AQ1-VER.A1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aquarium.zip") do set ROM=%%~a
for %%a in ("Aquarium (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arabian.zip") do set ROM=%%~a
for %%a in ("Arabian") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arabfgt.zip") do set ROM=%%~a
for %%a in ("Arabian Fight (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arabianm.zip") do set ROM=%%~a
for %%a in ("Arabian Magic (Ver 1.0O 1992-07-06)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arbalest.zip") do set ROM=%%~a
for %%a in ("Arbalester") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arcadecl.zip") do set ROM=%%~a
for %%a in ("Arcade Classics (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arcadian.zip") do set ROM=%%~a
for %%a in ("Arcadia (NMK)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("archrivl.zip") do set ROM=%%~a
for %%a in ("Arch Rivals (rev 4.0 6-29-89)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("area51.zip") do set ROM=%%~a
for %%a in ("Area 51 (R3000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("area51mx.zip") do set ROM=%%~a
for %%a in ("Area 51 - Maximum Force Duo v2.0") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("argus.zip") do set ROM=%%~a
for %%a in ("Argus") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("argusg.zip") do set ROM=%%~a
for %%a in ("Argus (Gottlieb, prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arkarea.zip") do set ROM=%%~a
for %%a in ("Ark Area") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arkanoid.zip") do set ROM=%%~a
for %%a in ("Arkanoid (World, oldest rev)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arknoid2.zip") do set ROM=%%~a
for %%a in ("Arkanoid - Revenge of DOH (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arkretrn.zip") do set ROM=%%~a
for %%a in ("Arkanoid Returns (Ver 2.02O 1997-02-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arlingtn.zip") do set ROM=%%~a
for %%a in ("Arlington Horse Racing (v1.21-D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("armchmp2.zip") do set ROM=%%~a
for %%a in ("Arm Champs II v2.6") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("armwrest.zip") do set ROM=%%~a
for %%a in ("Arm Wrestling") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("adillor.zip") do set ROM=%%~a
for %%a in ("Armadillo Racing (Rev. AM1 Ver.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("armedf.zip") do set ROM=%%~a
for %%a in ("Armed Formation") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("batrider.zip") do set ROM=%%~a
for %%a in ("Armed Police Batrider (Europe) (Fri Feb 13 1998)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("armora.zip") do set ROM=%%~a
for %%a in ("Armor Attack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("armorcar.zip") do set ROM=%%~a
for %%a in ("Armored Car (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("armwar.zip") do set ROM=%%~a
for %%a in ("Armored Warriors (Euro 941024)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aof.zip") do set ROM=%%~a
for %%a in ("Art of Fighting - Ryuuko no Ken (NGM-044)(NGH-044)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aof2.zip") do set ROM=%%~a
for %%a in ("Art of Fighting 2 - Ryuuko no Ken 2 (NGM-056)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aof3.zip") do set ROM=%%~a
for %%a in ("Art of Fighting 3 - The Path of the Warrior - Art of Fighting - Ryuuko no Ken Gaiden") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ashura.zip") do set ROM=%%~a
for %%a in ("Ashura Blaster (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("assault.zip") do set ROM=%%~a
for %%a in ("Assault (Rev B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("asterix.zip") do set ROM=%%~a
for %%a in ("Asterix (ver EAD)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("asteroid.zip") do set ROM=%%~a
for %%a in ("Asteroids (rev 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("astdelux.zip") do set ROM=%%~a
for %%a in ("Asteroids Deluxe (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("astrass.zip") do set ROM=%%~a
for %%a in ("Astra SuperStars (J 980514 V1.002)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("astrob.zip") do set ROM=%%~a
for %%a in ("Astro Blaster (version 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mf_achas.zip") do set ROM=%%~a
for %%a in ("Astro Chase (Max-A-Flex)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("castfant.zip") do set ROM=%%~a
for %%a in ("Astro Fantasia (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("astrof.zip") do set ROM=%%~a
for %%a in ("Astro Fighter (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("astrowar.zip") do set ROM=%%~a
for %%a in ("Astro Wars") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("astropal.zip") do set ROM=%%~a
for %%a in ("Astropal") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("asuka.zip") do set ROM=%%~a
for %%a in ("Asuka & Asuka (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("asurabld.zip") do set ROM=%%~a
for %%a in ("Asura Blade - Sword of Dynasty (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("asurabus.zip") do set ROM=%%~a
for %%a in ("Asura Buster - Eternal Warriors (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("asylum.zip") do set ROM=%%~a
for %%a in ("Asylum (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("abaseb.zip") do set ROM=%%~a
for %%a in ("Atari Baseball (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("atarifb.zip") do set ROM=%%~a
for %%a in ("Atari Football (revision 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mgolf.zip") do set ROM=%%~a
for %%a in ("Atari Mini Golf (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("soccer.zip") do set ROM=%%~a
for %%a in ("Atari Soccer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ataxx.zip") do set ROM=%%~a
for %%a in ("Ataxx (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("athena.zip") do set ROM=%%~a
for %%a in ("Athena") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("atehate.zip") do set ROM=%%~a
for %%a in ("Athena no Hatena -") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("atomicp.zip") do set ROM=%%~a
for %%a in ("Atomic Point (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("robokid.zip") do set ROM=%%~a
for %%a in ("Atomic Robo-kid") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("attackfc.zip") do set ROM=%%~a
for %%a in ("Attack Force") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("attckufo.zip") do set ROM=%%~a
for %%a in ("Attack Ufo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aurail.zip") do set ROM=%%~a
for %%a in ("Aurail (set 3, US) (unprotected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("avalnche.zip") do set ROM=%%~a
for %%a in ("Avalanche") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("avengers.zip") do set ROM=%%~a
for %%a in ("Avengers (US set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("avengrgs.zip") do set ROM=%%~a
for %%a in ("Avengers In Galactic Storm (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("avspirit.zip") do set ROM=%%~a
for %%a in ("Avenging Spirit") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("aztarac.zip") do set ROM=%%~a
for %%a in ("Aztarac") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("azurian.zip") do set ROM=%%~a
for %%a in ("Azurian Attack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bwings.zip") do set ROM=%%~a
for %%a in ("B-Wings (Japan new Ver.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bonkadv.zip") do set ROM=%%~a
for %%a in ("B.C. Kid - Bonk's Adventure - Kyukyoku!! PC Genjin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bcstry.zip") do set ROM=%%~a
for %%a in ("B.C. Story (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brapboys.zip") do set ROM=%%~a
for %%a in ("B.Rap Boys (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("backfirt.zip") do set ROM=%%~a
for %%a in ("Back Fire (Tecmo, bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bssoccer.zip") do set ROM=%%~a
for %%a in ("Back Street Soccer (KRB-0031 PCB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("backfire.zip") do set ROM=%%~a
for %%a in ("Backfire! (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("baddudes.zip") do set ROM=%%~a
for %%a in ("Bad Dudes vs. Dragonninja (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("badlands.zip") do set ROM=%%~a
for %%a in ("Bad Lands") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bagman.zip") do set ROM=%%~a
for %%a in ("Bagman") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bakubaku.zip") do set ROM=%%~a
for %%a in ("Baku Baku Animal (J 950407 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bkrtmaq.zip") do set ROM=%%~a
for %%a in ("Bakuretsu Quiz Ma-Q Dai Bouken (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bakutotu.zip") do set ROM=%%~a
for %%a in ("Bakutotsu Kijuutei") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("balcube.zip") do set ROM=%%~a
for %%a in ("Bal Cube") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ballbomb.zip") do set ROM=%%~a
for %%a in ("Balloon Bomber") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ballbros.zip") do set ROM=%%~a
for %%a in ("Balloon Brothers") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_bfght.zip") do set ROM=%%~a
for %%a in ("Balloon Fight (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("baluba.zip") do set ROM=%%~a
for %%a in ("Baluba-louk no Densetsu (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("banbam.zip") do set ROM=%%~a
for %%a in ("BanBam") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bangball.zip") do set ROM=%%~a
for %%a in ("Bang Bang Ball (v1.05)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("b2b.zip") do set ROM=%%~a
for %%a in ("Bang Bang Busters (2010 NCI release)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bangbead.zip") do set ROM=%%~a
for %%a in ("Bang Bead") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bang.zip") do set ROM=%%~a
for %%a in ("Bang!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bankp.zip") do set ROM=%%~a
for %%a in ("Bank Panic") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("barricad.zip") do set ROM=%%~a
for %%a in ("Barricade") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("barrier.zip") do set ROM=%%~a
for %%a in ("Barrier") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("baryon.zip") do set ROM=%%~a
for %%a in ("Baryon - Future Assault (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_bball.zip") do set ROM=%%~a
for %%a in ("Baseball (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bstars2.zip") do set ROM=%%~a
for %%a in ("Baseball Stars 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bstars.zip") do set ROM=%%~a
for %%a in ("Baseball Stars Professional (NGM-002)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_bstar.zip") do set ROM=%%~a
for %%a in ("Baseball Stars- Be a Champ! (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("basebal2.zip") do set ROM=%%~a
for %%a in ("Baseball- The Season II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_bload.zip") do set ROM=%%~a
for %%a in ("Bases Loaded (Prototype, PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bsktball.zip") do set ROM=%%~a
for %%a in ("Basketball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("batman.zip") do set ROM=%%~a
for %%a in ("Batman") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("batmanfr.zip") do set ROM=%%~a
for %%a in ("Batman Forever (JUE 960507 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("batsugun.zip") do set ROM=%%~a
for %%a in ("Batsugun") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("battlnts.zip") do set ROM=%%~a
for %%a in ("Battlantis (program code G)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ts2.zip") do set ROM=%%~a
for %%a in ("Battle Arena Toshinden 2 (USA 951124)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bbakraid.zip") do set ROM=%%~a
for %%a in ("Battle Bakraid - Unlimited Version (USA) (Tue Jun 8 1999)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bchopper.zip") do set ROM=%%~a
for %%a in ("Battle Chopper") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("batcir.zip") do set ROM=%%~a
for %%a in ("Battle Circuit (Euro 970319)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("battlex.zip") do set ROM=%%~a
for %%a in ("Battle Cross") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bcruzm12.zip") do set ROM=%%~a
for %%a in ("Battle Cruiser M-12") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flipshot.zip") do set ROM=%%~a
for %%a in ("Battle Flip Shot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bgaregga.zip") do set ROM=%%~a
for %%a in ("Battle Garegga (Europe - USA - Japan - Asia) (Sat Feb 3 1996)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("btlkroad.zip") do set ROM=%%~a
for %%a in ("Battle K-Road") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("battlane.zip") do set ROM=%%~a
for %%a in ("Battle Lane! Vol. 5 (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("battlera.zip") do set ROM=%%~a
for %%a in ("Battle Rangers (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bshark.zip") do set ROM=%%~a
for %%a in ("Battle Shark (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bzone.zip") do set ROM=%%~a
for %%a in ("Battle Zone (rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("atlantis.zip") do set ROM=%%~a
for %%a in ("Battle of Atlantis (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("botss.zip") do set ROM=%%~a
for %%a in ("Battle of the Solar System (rev. 1.1a 7-23-92)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("battlcry.zip") do set ROM=%%~a
for %%a in ("Battlecry") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("btoads.zip") do set ROM=%%~a
for %%a in ("Battletoads") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bayroute.zip") do set ROM=%%~a
for %%a in ("Bay Route (set 3, World) (FD1094 317-0116)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wbbc97.zip") do set ROM=%%~a
for %%a in ("Beach Festival World Championship 1997") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("beaminv.zip") do set ROM=%%~a
for %%a in ("Beam Invader") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bbusters.zip") do set ROM=%%~a
for %%a in ("Beast Busters (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("beastrzr.zip") do set ROM=%%~a
for %%a in ("Beastorizer (USA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("beathead.zip") do set ROM=%%~a
for %%a in ("BeatHead (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("beezer.zip") do set ROM=%%~a
for %%a in ("Beezer (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blswhstl.zip") do set ROM=%%~a
for %%a in ("Bells & Whistles (World, version L)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("benberob.zip") do set ROM=%%~a
for %%a in ("Ben Bero Beh (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("berabohm.zip") do set ROM=%%~a
for %%a in ("Beraboh Man (Japan, Rev C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bermudat.zip") do set ROM=%%~a
for %%a in ("Bermuda Triangle (World-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("berzerk.zip") do set ROM=%%~a
for %%a in ("Berzerk (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bbbxing.zip") do set ROM=%%~a
for %%a in ("Best Bout Boxing") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bestbest.zip") do set ROM=%%~a
for %%a in ("Best Of Best") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bestri.zip") do set ROM=%%~a
for %%a in ("Bestri (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bbhcotw.zip") do set ROM=%%~a
for %%a in ("Big Buck Hunter Call of the Wild (v3.02.5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bigbucks.zip") do set ROM=%%~a
for %%a in ("Big Bucks") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bigevglf.zip") do set ROM=%%~a
for %%a in ("Big Event Golf (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bigfight.zip") do set ROM=%%~a
for %%a in ("Big Fight - Big Trouble In The Atlantic Ocean") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bigkarnk.zip") do set ROM=%%~a
for %%a in ("Big Karnak") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bigrun.zip") do set ROM=%%~a
for %%a in ("Big Run (11th Rallye version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bigstrik.zip") do set ROM=%%~a
for %%a in ("Big Striker") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bbonk.zip") do set ROM=%%~a
for %%a in ("Bigfoot Bonkers") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bikkuric.zip") do set ROM=%%~a
for %%a in ("Bikkuri Card (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bilyard.zip") do set ROM=%%~a
for %%a in ("Billiard") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bioatack.zip") do set ROM=%%~a
for %%a in ("Bio Attack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_bio.zip") do set ROM=%%~a
for %%a in ("Bio-hazard Battle (Mega Play)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bioship.zip") do set ROM=%%~a
for %%a in ("Bio-ship Paladin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("biofreak.zip") do set ROM=%%~a
for %%a in ("BioFreaks (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("biomtoy.zip") do set ROM=%%~a
for %%a in ("Biomechanical Toy (Ver. 1.0.1885)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bionicc.zip") do set ROM=%%~a
for %%a in ("Bionic Commando (Euro)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bking.zip") do set ROM=%%~a
for %%a in ("Birdie King") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bking2.zip") do set ROM=%%~a
for %%a in ("Birdie King 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bking3.zip") do set ROM=%%~a
for %%a in ("Birdie King 3") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("birdtry.zip") do set ROM=%%~a
for %%a in ("Birdie Try (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("birdiy.zip") do set ROM=%%~a
for %%a in ("Birdiy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bishi.zip") do set ROM=%%~a
for %%a in ("Bishi Bashi Championship Mini Game Senshuken (ver JAA, 3 Players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blkheart.zip") do set ROM=%%~a
for %%a in ("Black Heart") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blkhole.zip") do set ROM=%%~a
for %%a in ("Black Hole") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blkpnthr.zip") do set ROM=%%~a
for %%a in ("Black Panther") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blktiger.zip") do set ROM=%%~a
for %%a in ("Black Tiger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blktouch.zip") do set ROM=%%~a
for %%a in ("Black Touch (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bwidow.zip") do set ROM=%%~a
for %%a in ("Black Widow") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bmaster.zip") do set ROM=%%~a
for %%a in ("Blade Master (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bladestl.zip") do set ROM=%%~a
for %%a in ("Blades of Steel (version T)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blastoff.zip") do set ROM=%%~a
for %%a in ("Blast Off (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_blast.zip") do set ROM=%%~a
for %%a in ("Blastaball (Arcadia, V 2.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blasted.zip") do set ROM=%%~a
for %%a in ("Blasted") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blaster.zip") do set ROM=%%~a
for %%a in ("Blaster") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blstroid.zip") do set ROM=%%~a
for %%a in ("Blasteroids (rev 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blasto.zip") do set ROM=%%~a
for %%a in ("Blasto") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blazeon.zip") do set ROM=%%~a
for %%a in ("Blaze On (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blazer.zip") do set ROM=%%~a
for %%a in ("Blazer (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blazlaz.zip") do set ROM=%%~a
for %%a in ("Blazing Lazers") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blazstar.zip") do set ROM=%%~a
for %%a in ("Blazing Star") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blzntrnd.zip") do set ROM=%%~a
for %%a in ("Blazing Tornado") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("block.zip") do set ROM=%%~a
for %%a in ("Block Block (World 910910)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blockcar.zip") do set ROM=%%~a
for %%a in ("Block Carnival - Thunder & Lightning 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blockhl.zip") do set ROM=%%~a
for %%a in ("Block Hole") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blockout.zip") do set ROM=%%~a
for %%a in ("Block Out (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blockade.zip") do set ROM=%%~a
for %%a in ("Blockade") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blocken.zip") do set ROM=%%~a
for %%a in ("Blocken (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blmbycar.zip") do set ROM=%%~a
for %%a in ("Blomby Car") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bloodbro.zip") do set ROM=%%~a
for %%a in ("Blood Bros. (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bloodstm.zip") do set ROM=%%~a
for %%a in ("Blood Storm (v2.22)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bloodwar.zip") do set ROM=%%~a
for %%a in ("Blood Warrior") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bldyror2.zip") do set ROM=%%~a
for %%a in ("Bloody Roar 2 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bloxeed.zip") do set ROM=%%~a
for %%a in ("Bloxeed (Japan) (FD1094 317-0139)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bluehawk.zip") do set ROM=%%~a
for %%a in ("Blue Hawk") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blueprnt.zip") do set ROM=%%~a
for %%a in ("Blue Print (Midway)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blueshrk.zip") do set ROM=%%~a
for %%a in ("Blue Shark") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bjourney.zip") do set ROM=%%~a
for %%a in ("Blue's Journey - Raguy (ALM-001)(ALH-001)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bballoon.zip") do set ROM=%%~a
for %%a in ("BnB Arcade") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bodyslam.zip") do set ROM=%%~a
for %%a in ("Body Slam (8751 317-0015)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bogeyman.zip") do set ROM=%%~a
for %%a in ("Bogey Manor") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("boggy84.zip") do set ROM=%%~a
for %%a in ("Boggy '84") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bombbee.zip") do set ROM=%%~a
for %%a in ("Bomb Bee") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bombjack.zip") do set ROM=%%~a
for %%a in ("Bomb Jack (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bombkick.zip") do set ROM=%%~a
for %%a in ("Bomb Kick (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bbmanw.zip") do set ROM=%%~a
for %%a in ("Bomber Man World - New Dyna Blaster - Global Quest") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bjtwin.zip") do set ROM=%%~a
for %%a in ("Bombjack Twin (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bnzabros.zip") do set ROM=%%~a
for %%a in ("Bonanza Bros (US, Floppy DS3-5000-07d- Based)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bongo.zip") do set ROM=%%~a
for %%a in ("Bongo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bonzeadv.zip") do set ROM=%%~a
for %%a in ("Bonze Adventure (World, Newer)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("boogwing.zip") do set ROM=%%~a
for %%a in ("Boogie Wings (Euro v1.5, 92.12.07)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("boomrang.zip") do set ROM=%%~a
for %%a in ("Boomer Rang'r - Genesis (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("boonggab.zip") do set ROM=%%~a
for %%a in ("Boong-Ga Boong-Ga (Spank'em!)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("boothill.zip") do set ROM=%%~a
for %%a in ("Boot Hill") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brdrline.zip") do set ROM=%%~a
for %%a in ("Borderline") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("borench.zip") do set ROM=%%~a
for %%a in ("Borench (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("borntofi.zip") do set ROM=%%~a
for %%a in ("Born To Fight") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bosco.zip") do set ROM=%%~a
for %%a in ("Bosconian (new version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("botanic.zip") do set ROM=%%~a
for %%a in ("Botanic (English - Spanish)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bottom9.zip") do set ROM=%%~a
for %%a in ("Bottom of the Ninth (version T)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cbdash.zip") do set ROM=%%~a
for %%a in ("Boulder Dash (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mf_bdash.zip") do set ROM=%%~a
for %%a in ("Boulder Dash (Max-A-Flex)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bouldash.zip") do set ROM=%%~a
for %%a in ("Boulder Dash - Boulder Dash Part 2 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bowlrama.zip") do set ROM=%%~a
for %%a in ("Bowl-O-Rama Rev 1.0") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bowler.zip") do set ROM=%%~a
for %%a in ("Bowling Alley") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("boxer.zip") do set ROM=%%~a
for %%a in ("Boxer (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("boxingb.zip") do set ROM=%%~a
for %%a in ("Boxing Bugs") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("boxyboy.zip") do set ROM=%%~a
for %%a in ("Boxy Boy (SB-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bradley.zip") do set ROM=%%~a
for %%a in ("Bradley Trainer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brain.zip") do set ROM=%%~a
for %%a in ("Brain") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brvblade.zip") do set ROM=%%~a
for %%a in ("Brave Blade (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brkthru.zip") do set ROM=%%~a
for %%a in ("Break Thru (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("breakers.zip") do set ROM=%%~a
for %%a in ("Breakers") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("breakrev.zip") do set ROM=%%~a
for %%a in ("Breakers Revenge") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("breakout.zip") do set ROM=%%~a
for %%a in ("Breakout [TTL]") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brickzn.zip") do set ROM=%%~a
for %%a in ("Brick Zone (v6.0, Joystick)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mf_brist.zip") do set ROM=%%~a
for %%a in ("Bristles (Max-A-Flex)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brixian.zip") do set ROM=%%~a
for %%a in ("Brixian") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brod.zip") do set ROM=%%~a
for %%a in ("Brodjaga (Arcade bootleg of ZX Spectrum 'Inspector Gadget and the Circus of Fear')") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brutforc.zip") do set ROM=%%~a
for %%a in ("Brute Force") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bublbobl.zip") do set ROM=%%~a
for %%a in ("Bubble Bobble (Japan, Ver 0.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bublbob2.zip") do set ROM=%%~a
for %%a in ("Bubble Bobble II (Ver 2.6O 1994-12-16)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bubblem.zip") do set ROM=%%~a
for %%a in ("Bubble Memories- The Story Of Bubble Bobble III (Ver 2.4O 1996-02-15)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bubbletr.zip") do set ROM=%%~a
for %%a in ("Bubble Trouble (Japan, Rev C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bubbles.zip") do set ROM=%%~a
for %%a in ("Bubbles") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("buccanrs.zip") do set ROM=%%~a
for %%a in ("Buccaneers (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("buckrog.zip") do set ROM=%%~a
for %%a in ("Buck Rogers- Planet of Zoom") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bucky.zip") do set ROM=%%~a
for %%a in ("Bucky O'Hare (ver EAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("buggyboy.zip") do set ROM=%%~a
for %%a in ("Buggy Boy-Speed Buggy (cockpit)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("buggychl.zip") do set ROM=%%~a
for %%a in ("Buggy Challenge") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bullfgtr.zip") do set ROM=%%~a
for %%a in ("Bull Fighter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bullet.zip") do set ROM=%%~a
for %%a in ("Bullet (FD1094 317-0041)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bullfgt.zip") do set ROM=%%~a
for %%a in ("Bullfight (315-5065)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bullsdrt.zip") do set ROM=%%~a
for %%a in ("Bulls Eye Darts") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cbtime.zip") do set ROM=%%~a
for %%a in ("Burger Time (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("btime.zip") do set ROM=%%~a
for %%a in ("Burger Time (Data East set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("burglarx.zip") do set ROM=%%~a
for %%a in ("Burglar X") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brubber.zip") do set ROM=%%~a
for %%a in ("Burnin' Rubber") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cburnrub.zip") do set ROM=%%~a
for %%a in ("Burnin' Rubber (DECO Cassette, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("burningf.zip") do set ROM=%%~a
for %%a in ("Burning Fight (NGM-018)(NGH-018)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("burnforc.zip") do set ROM=%%~a
for %%a in ("Burning Force (Japan, new version (Rev C))") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("brival.zip") do set ROM=%%~a
for %%a in ("Burning Rival (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("butasan.zip") do set ROM=%%~a
for %%a in ("Butasan - Pig's & Bomber's (Japan, English)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bygone.zip") do set ROM=%%~a
for %%a in ("Bygone") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cr589fwa.zip") do set ROM=%%~a
for %%a in ("CD-ROM Drive Updater (700A04)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cr589fw.zip") do set ROM=%%~a
for %%a in ("CD-ROM Drive Updater 2.0 (700B04)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cps3boot.zip") do set ROM=%%~a
for %%a in ("CPS3 Multi-game bootleg for HD6417095 type SH2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cabal.zip") do set ROM=%%~a
for %%a in ("Cabal (World, Joystick version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cachat.zip") do set ROM=%%~a
for %%a in ("Cachat (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cadash.zip") do set ROM=%%~a
for %%a in ("Cadash (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dino.zip") do set ROM=%%~a
for %%a in ("Cadillacs and Dinosaurs (World 930201)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("calibr50.zip") do set ROM=%%~a
for %%a in ("Caliber 50") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("calspeed.zip") do set ROM=%%~a
for %%a in ("California Speed (Version 2.1a Apr 17 1998, GUTS 1.25 Apr 17 1998 - MAIN Apr 17 1998)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("calipso.zip") do set ROM=%%~a
for %%a in ("Calipso") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("calorie.zip") do set ROM=%%~a
for %%a in ("Calorie Kun vs Moguranian") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cameltry.zip") do set ROM=%%~a
for %%a in ("Cameltry (US, YM2610)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("candy.zip") do set ROM=%%~a
for %%a in ("Candy Candy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cndypuzl.zip") do set ROM=%%~a
for %%a in ("Candy Puzzle (v1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cannonbp.zip") do set ROM=%%~a
for %%a in ("Cannon Ball (Pac-Man Hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cball.zip") do set ROM=%%~a
for %%a in ("Cannonball (Atari, prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("canvas.zip") do set ROM=%%~a
for %%a in ("Canvas Croquis") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("canyon.zip") do set ROM=%%~a
for %%a in ("Canyon Bomber") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cbasebal.zip") do set ROM=%%~a
for %%a in ("Capcom Baseball (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("capbowl.zip") do set ROM=%%~a
for %%a in ("Capcom Bowling (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("csclub.zip") do set ROM=%%~a
for %%a in ("Capcom Sports Club (Euro 971017)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cworld.zip") do set ROM=%%~a
for %%a in ("Capcom World (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("captaven.zip") do set ROM=%%~a
for %%a in ("Captain America and The Avengers (Asia Rev 1.4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("captcomm.zip") do set ROM=%%~a
for %%a in ("Captain Commando (World 911202)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("csilver.zip") do set ROM=%%~a
for %%a in ("Captain Silver (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_cshwk.zip") do set ROM=%%~a
for %%a in ("Captain Sky Hawk (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ctomaday.zip") do set ROM=%%~a
for %%a in ("Captain Tomaday") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("carhntds.zip") do set ROM=%%~a
for %%a in ("Car Hunt - Deep Scan (France)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("carjmbre.zip") do set ROM=%%~a
for %%a in ("Car Jamboree") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("carpolo.zip") do set ROM=%%~a
for %%a in ("Car Polo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("carket.zip") do set ROM=%%~a
for %%a in ("Carket Ball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("carnevil.zip") do set ROM=%%~a
for %%a in ("CarnEvil (v1.0.3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("carnival.zip") do set ROM=%%~a
for %%a in ("Carnival (upright)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("carrera.zip") do set ROM=%%~a
for %%a in ("Carrera (Version 6.7)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cawing.zip") do set ROM=%%~a
for %%a in ("Carrier Air Wing (World 901012)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("casanova.zip") do set ROM=%%~a
for %%a in ("Casanova") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cashquiz.zip") do set ROM=%%~a
for %%a in ("Cash Quiz (Type B, Version 5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cdracula.zip") do set ROM=%%~a
for %%a in ("Castle Of Dracula") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_cvnia.zip") do set ROM=%%~a
for %%a in ("Castlevania (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("catnmous.zip") do set ROM=%%~a
for %%a in ("Cat and Mouse (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("catacomb.zip") do set ROM=%%~a
for %%a in ("Catacomb") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("catchp.zip") do set ROM=%%~a
for %%a in ("Catch (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cavelon.zip") do set ROM=%%~a
for %%a in ("Cavelon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cninja.zip") do set ROM=%%~a
for %%a in ("Caveman Ninja (World ver 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("centiped.zip") do set ROM=%%~a
for %%a in ("Centipede (revision 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cerberus.zip") do set ROM=%%~a
for %%a in ("Cerberus") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chaknpop.zip") do set ROM=%%~a
for %%a in ("Chack'n Pop") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chainrec.zip") do set ROM=%%~a
for %%a in ("Chain Reaction (World, Version 2.2, 1995.09.25)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("challeng.zip") do set ROM=%%~a
for %%a in ("Challenger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chameleo.zip") do set ROM=%%~a
for %%a in ("Chameleon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("champbas.zip") do set ROM=%%~a
for %%a in ("Champion Base Ball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("champbb2.zip") do set ROM=%%~a
for %%a in ("Champion Base Ball Part-2- Pair Play (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chboxing.zip") do set ROM=%%~a
for %%a in ("Champion Boxing") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chwrestl.zip") do set ROM=%%~a
for %%a in ("Champion Pro Wrestling") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("champwr.zip") do set ROM=%%~a
for %%a in ("Champion Wrestler (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("champbwl.zip") do set ROM=%%~a
for %%a in ("Championship Bowling") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("csprint.zip") do set ROM=%%~a
for %%a in ("Championship Sprint (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chanbara.zip") do set ROM=%%~a
for %%a in ("Chanbara") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chkun.zip") do set ROM=%%~a
for %%a in ("Chance Kun (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cairblad.zip") do set ROM=%%~a
for %%a in ("Change Air Blade (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("changela.zip") do set ROM=%%~a
for %%a in ("Change Lanes") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("changes.zip") do set ROM=%%~a
for %%a in ("Changes") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chaoshea.zip") do set ROM=%%~a
for %%a in ("Chaos Heat (V2.09O)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("charlien.zip") do set ROM=%%~a
for %%a in ("Charlie Ninja") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cbombers.zip") do set ROM=%%~a
for %%a in ("Chase Bombers (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chasehq.zip") do set ROM=%%~a
for %%a in ("Chase H.Q. (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("checkman.zip") do set ROM=%%~a
for %%a in ("Check Man") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("checkmat.zip") do set ROM=%%~a
for %%a in ("Checkmate") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cheekyms.zip") do set ROM=%%~a
for %%a in ("Cheeky Mouse") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cheesech.zip") do set ROM=%%~a
for %%a in ("Cheese Chase") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chelnov.zip") do set ROM=%%~a
for %%a in ("Chelnov - Atomic Runner (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chqflag.zip") do set ROM=%%~a
for %%a in ("Chequered Flag") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cheyenne.zip") do set ROM=%%~a
for %%a in ("Cheyenne (version 1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("marukodq.zip") do set ROM=%%~a
for %%a in ("Chibi Marukochan Deluxe Quiz") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cfarm.zip") do set ROM=%%~a
for %%a in ("Chicken Farm (Version 2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cshift.zip") do set ROM=%%~a
for %%a in ("Chicken Shift") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chiller.zip") do set ROM=%%~a
for %%a in ("Chiller (version 3.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chimerab.zip") do set ROM=%%~a
for %%a in ("Chimera Beast (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chinagat.zip") do set ROM=%%~a
for %%a in ("China Gate (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chinatwn.zip") do set ROM=%%~a
for %%a in ("China Town (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chinhero.zip") do set ROM=%%~a
for %%a in ("Chinese Hero") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_rrngr.zip") do set ROM=%%~a
for %%a in ("Chip'n Dale- Rescue Rangers (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chokchok.zip") do set ROM=%%~a
for %%a in ("Choky! Choky!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("choplift.zip") do set ROM=%%~a
for %%a in ("Choplifter (8751 315-5151)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chopper.zip") do set ROM=%%~a
for %%a in ("Chopper I (US set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ironclad.zip") do set ROM=%%~a
for %%a in ("Choutetsu Brikin'ger - Iron clad (Prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cecmatch.zip") do set ROM=%%~a
for %%a in ("ChuckECheese's Match Game") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chukatai.zip") do set ROM=%%~a
for %%a in ("Chuka Taisen (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dw2001.zip") do set ROM=%%~a
for %%a in ("Chuugokuryuu 2001 [Dragon World 2001] (V100-, Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("circus.zip") do set ROM=%%~a
for %%a in ("Circus - Acrobat TV") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("circusc.zip") do set ROM=%%~a
for %%a in ("Circus Charlie (level select, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cischeat.zip") do set ROM=%%~a
for %%a in ("Cisco Heat") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("citybomb.zip") do set ROM=%%~a
for %%a in ("City Bomber (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("citycon.zip") do set ROM=%%~a
for %%a in ("City Connection (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("clshroad.zip") do set ROM=%%~a
for %%a in ("Clash-Road") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("claypign.zip") do set ROM=%%~a
for %%a in ("Clay Pigeon (version 2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("clayshoo.zip") do set ROM=%%~a
for %%a in ("Clay Shoot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("claybust.zip") do set ROM=%%~a
for %%a in ("Claybuster") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cleopatr.zip") do set ROM=%%~a
for %%a in ("Cleopatra Fortune (Ver 2.1J 1996-09-05)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cliffhgr.zip") do set ROM=%%~a
for %%a in ("Cliff Hanger (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cloak.zip") do set ROM=%%~a
for %%a in ("Cloak & Dagger (rev 5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cloud9.zip") do set ROM=%%~a
for %%a in ("Cloud 9 (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("clowns.zip") do set ROM=%%~a
for %%a in ("Clowns (rev. 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cluedo.zip") do set ROM=%%~a
for %%a in ("Cluedo (prod. 2D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cgraplop.zip") do set ROM=%%~a
for %%a in ("Cluster Buster (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cltchitr.zip") do set ROM=%%~a
for %%a in ("Clutch Hitter (US) (FD1094 317-0176)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cobracom.zip") do set ROM=%%~a
for %%a in ("Cobra-Command (World revision 5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cocoloco.zip") do set ROM=%%~a
for %%a in ("Coco Loco") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("colony7.zip") do set ROM=%%~a
for %%a in ("Colony 7 (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("colmns97.zip") do set ROM=%%~a
for %%a in ("Columns '97 (JET 961209 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("columns.zip") do set ROM=%%~a
for %%a in ("Columns (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("columns2.zip") do set ROM=%%~a
for %%a in ("Columns II- The Voyage Through Time (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_col3.zip") do set ROM=%%~a
for %%a in ("Columns III (Mega Play)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("combat.zip") do set ROM=%%~a
for %%a in ("Combat (version 3.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("combh.zip") do set ROM=%%~a
for %%a in ("Combat Hawk") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("combatsc.zip") do set ROM=%%~a
for %%a in ("Combat School (joystick)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toto.zip") do set ROM=%%~a
for %%a in ("Come Back Toto") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("commandw.zip") do set ROM=%%~a
for %%a in ("Command War - Super Special Battle & War Game (Ver 0.0J) (Prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("commsega.zip") do set ROM=%%~a
for %%a in ("Commando (Sega)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("commando.zip") do set ROM=%%~a
for %%a in ("Commando (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("comotion.zip") do set ROM=%%~a
for %%a in ("Comotion") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("compgolf.zip") do set ROM=%%~a
for %%a in ("Competition Golf Final Round (revision 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("complexx.zip") do set ROM=%%~a
for %%a in ("Complex X") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("congo.zip") do set ROM=%%~a
for %%a in ("Congo Bongo (Rev C, 2 board stack)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("m4conn4.zip") do set ROM=%%~a
for %%a in ("Connect 4") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("contcirc.zip") do set ROM=%%~a
for %%a in ("Continental Circus (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_cntra.zip") do set ROM=%%~a
for %%a in ("Contra (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("contra.zip") do set ROM=%%~a
for %%a in ("Contra (US - Asia, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cookbib.zip") do set ROM=%%~a
for %%a in ("Cookie & Bibi (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cookbib2.zip") do set ROM=%%~a
for %%a in ("Cookie & Bibi 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cookbib3.zip") do set ROM=%%~a
for %%a in ("Cookie & Bibi 3") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cbaj.zip") do set ROM=%%~a
for %%a in ("Cool Boarders Arcade Jam") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("coolmini.zip") do set ROM=%%~a
for %%a in ("Cool Minigame Collection") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("coolpool.zip") do set ROM=%%~a
for %%a in ("Cool Pool") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("coolridr.zip") do set ROM=%%~a
for %%a in ("Cool Riders") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cop01.zip") do set ROM=%%~a
for %%a in ("Cop 01 (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("copsnrob.zip") do set ROM=%%~a
for %%a in ("Cops'n Robbers") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("coronatn.zip") do set ROM=%%~a
for %%a in ("Coronation Street Quiz Game") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cosmica.zip") do set ROM=%%~a
for %%a in ("Cosmic Alien (version II)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cavenger.zip") do set ROM=%%~a
for %%a in ("Cosmic Avenger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cchasm.zip") do set ROM=%%~a
for %%a in ("Cosmic Chasm (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cosmccop.zip") do set ROM=%%~a
for %%a in ("Cosmic Cop (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cosmicg.zip") do set ROM=%%~a
for %%a in ("Cosmic Guerilla") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cosmo.zip") do set ROM=%%~a
for %%a in ("Cosmo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cgangpzl.zip") do set ROM=%%~a
for %%a in ("Cosmo Gang the Puzzle (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cosmogng.zip") do set ROM=%%~a
for %%a in ("Cosmo Gang the Video (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galivan.zip") do set ROM=%%~a
for %%a in ("Cosmo Police Galivan (12-26-1985)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cosmos.zip") do set ROM=%%~a
for %%a in ("Cosmos") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cotton.zip") do set ROM=%%~a
for %%a in ("Cotton (set 4, World) (FD1094 317-0181a)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cotton2.zip") do set ROM=%%~a
for %%a in ("Cotton 2 (JUET 970902 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cottonbm.zip") do set ROM=%%~a
for %%a in ("Cotton Boomerang (JUET 980709 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("countryc.zip") do set ROM=%%~a
for %%a in ("Country Club") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crkdown.zip") do set ROM=%%~a
for %%a in ("Crack Down (World, Floppy Based, FD1094 317-0058-04c)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cracksht.zip") do set ROM=%%~a
for %%a in ("Crackshot (version 2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crash.zip") do set ROM=%%~a
for %%a in ("Crash") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crater.zip") do set ROM=%%~a
for %%a in ("Crater Raider") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qcrayon2.zip") do set ROM=%%~a
for %%a in ("Crayon Shinchan Orato Asobo (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crbaloon.zip") do set ROM=%%~a
for %%a in ("Crazy Balloon (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cclimber.zip") do set ROM=%%~a
for %%a in ("Crazy Climber (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cclimbr2.zip") do set ROM=%%~a
for %%a in ("Crazy Climber 2 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crzcross.zip") do set ROM=%%~a
for %%a in ("Crazy Cross (ver EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crazyfgt.zip") do set ROM=%%~a
for %%a in ("Crazy Fight") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ckong.zip") do set ROM=%%~a
for %%a in ("Crazy Kong") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ckongpt2.zip") do set ROM=%%~a
for %%a in ("Crazy Kong Part II (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crzrally.zip") do set ROM=%%~a
for %%a in ("Crazy Rally (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crazywar.zip") do set ROM=%%~a
for %%a in ("Crazy War") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cclownz.zip") do set ROM=%%~a
for %%a in ("Crazzy Clownz (Version 1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crimec.zip") do set ROM=%%~a
for %%a in ("Crime City (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crimfght.zip") do set ROM=%%~a
for %%a in ("Crime Fighters (US 4 players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("critcrsh.zip") do set ROM=%%~a
for %%a in ("Critter Crusher (EA 951204 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crospang.zip") do set ROM=%%~a
for %%a in ("Cross Pang") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crossbow.zip") do set ROM=%%~a
for %%a in ("Crossbow (version 2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crsword.zip") do set ROM=%%~a
for %%a in ("Crossed Swords (ALM-002)(ALH-002)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crgolf.zip") do set ROM=%%~a
for %%a in ("Crowns Golf (834-5419-04)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crgolfhi.zip") do set ROM=%%~a
for %%a in ("Crowns Golf in Hawaii") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cbuster.zip") do set ROM=%%~a
for %%a in ("Crude Buster (World FX version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crusnusa.zip") do set ROM=%%~a
for %%a in ("Cruis'n USA (rev L4.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crusnwld.zip") do set ROM=%%~a
for %%a in ("Cruis'n World (rev L2.5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crush.zip") do set ROM=%%~a
for %%a in ("Crush Roller (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crusherm.zip") do set ROM=%%~a
for %%a in ("Crusher Makochan (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cryptklr.zip") do set ROM=%%~a
for %%a in ("Crypt Killer (GQ420 UAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ccastles.zip") do set ROM=%%~a
for %%a in ("Crystal Castles (version 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cubeqst.zip") do set ROM=%%~a
for %%a in ("Cube Quest (01-04-84)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cubybop.zip") do set ROM=%%~a
for %%a in ("Cuby Bop (location test)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cuebrick.zip") do set ROM=%%~a
for %%a in ("Cue Brick (World, version D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("curvebal.zip") do set ROM=%%~a
for %%a in ("Curve Ball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cutefght.zip") do set ROM=%%~a
for %%a in ("Cute Fighter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cutieq.zip") do set ROM=%%~a
for %%a in ("Cutie Q") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cybattlr.zip") do set ROM=%%~a
for %%a in ("Cybattler") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cybrcomm.zip") do set ROM=%%~a
for %%a in ("Cyber Commando (Rev. CY1, Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cybrcycc.zip") do set ROM=%%~a
for %%a in ("Cyber Cycles (Rev. CB2 Ver.C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cybsled.zip") do set ROM=%%~a
for %%a in ("Cyber Sled (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cybertnk.zip") do set ROM=%%~a
for %%a in ("Cyber Tank (v1.4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cyberlip.zip") do set ROM=%%~a
for %%a in ("Cyber-Lip (NGM-010)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cyberbal.zip") do set ROM=%%~a
for %%a in ("Cyberball (rev 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cybots.zip") do set ROM=%%~a
for %%a in ("Cyberbots- Fullmetal Madness (Euro 950424)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cyclemb.zip") do set ROM=%%~a
for %%a in ("Cycle Maabou (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cyclwarr.zip") do set ROM=%%~a
for %%a in ("Cycle Warriors (rev C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cyvern.zip") do set ROM=%%~a
for %%a in ("Cyvern (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("black.zip") do set ROM=%%~a
for %%a in ("Czernyj Korabl (Arcade bootleg of ZX Spectrum 'Blackbeard')") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dcon.zip") do set ROM=%%~a
for %%a in ("D-Con") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dday.zip") do set ROM=%%~a
for %%a in ("D-Day") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddayjlc.zip") do set ROM=%%~a
for %%a in ("D-Day (Jaleco set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddcrew.zip") do set ROM=%%~a
for %%a in ("D. D. Crew (World, 3 Players) (FD1094 317-0190)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("djboy.zip") do set ROM=%%~a
for %%a in ("DJ Boy (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dacholer.zip") do set ROM=%%~a
for %%a in ("Dacholer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dai3wksi.zip") do set ROM=%%~a
for %%a in ("Dai San Wakusei Meteor (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dai2kaku.zip") do set ROM=%%~a
for %%a in ("Dai-Dai-Kakumei (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("daikaiju.zip") do set ROM=%%~a
for %%a in ("Daikaiju no Gyakushu") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("daioh.zip") do set ROM=%%~a
for %%a in ("Daioh") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("daiskiss.zip") do set ROM=%%~a
for %%a in ("Daisu-Kiss (ver JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("daitorid.zip") do set ROM=%%~a
for %%a in ("Daitoride") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dambustr.zip") do set ROM=%%~a
for %%a in ("Dambusters (US, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddr2m.zip") do set ROM=%%~a
for %%a in ("Dance Dance Revolution 2nd Mix (GN895 VER. JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("danchiq.zip") do set ROM=%%~a
for %%a in ("Danchi de Quiz Okusan Yontaku Desuyo! (J 001128 V1.200)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dstage.zip") do set ROM=%%~a
for %%a in ("Dancing Stage - Internet Ranking Ver (GC845 VER. EBA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dsftkd.zip") do set ROM=%%~a
for %%a in ("Dancing Stage featuring TRUE KiSS DESTiNATiON (G-884 VER. JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dangerz.zip") do set ROM=%%~a
for %%a in ("Danger Zone") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddungeon.zip") do set ROM=%%~a
for %%a in ("Dangerous Dungeons (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dangseed.zip") do set ROM=%%~a
for %%a in ("Dangerous Seed (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("indyheat.zip") do set ROM=%%~a
for %%a in ("Danny Sullivan's Indy Heat") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("daraku.zip") do set ROM=%%~a
for %%a in ("Daraku Tenshi - The Fallen Angels") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darius.zip") do set ROM=%%~a
for %%a in ("Darius (World, rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dariusg.zip") do set ROM=%%~a
for %%a in ("Darius Gaiden - Silver Hawk (Ver 2.5O 1994-09-19)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darius2.zip") do set ROM=%%~a
for %%a in ("Darius II (triple screen) (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darkedge.zip") do set ROM=%%~a
for %%a in ("Dark Edge (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darkhleg.zip") do set ROM=%%~a
for %%a in ("Dark Horse Legend (GX706 VER. JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darkplnt.zip") do set ROM=%%~a
for %%a in ("Dark Planet") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darkseal.zip") do set ROM=%%~a
for %%a in ("Dark Seal (World revision 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darktowr.zip") do set ROM=%%~a
for %%a in ("Dark Tower") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darkwar.zip") do set ROM=%%~a
for %%a in ("Dark Warrior") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dstlk.zip") do set ROM=%%~a
for %%a in ("Darkstalkers- The Night Warriors (Euro 940705)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darwin.zip") do set ROM=%%~a
for %%a in ("Darwin 4078 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dquizgo.zip") do set ROM=%%~a
for %%a in ("Date Quiz Go Go (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dquizgo2.zip") do set ROM=%%~a
for %%a in ("Date Quiz Go Go Episode 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dazzler.zip") do set ROM=%%~a
for %%a in ("Dazzler") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("deadang.zip") do set ROM=%%~a
for %%a in ("Dead Angle") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("deadconx.zip") do set ROM=%%~a
for %%a in ("Dead Connection (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("deadeye.zip") do set ROM=%%~a
for %%a in ("Dead Eye") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("doapp.zip") do set ROM=%%~a
for %%a in ("Dead Or Alive ++ (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("deathsml.zip") do set ROM=%%~a
for %%a in ("Deathsmiles (2007-10-09 MASTER VER)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dsmbl.zip") do set ROM=%%~a
for %%a in ("Deathsmiles MegaBlack Label (2008-10-06 MEGABLACK LABEL VER)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("deerhunt.zip") do set ROM=%%~a
for %%a in ("Deer Hunting USA V4.3") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("redufo.zip") do set ROM=%%~a
for %%a in ("Defend the Terra Attack on the Red UFO") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("defender.zip") do set ROM=%%~a
for %%a in ("Defender (Red label)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_dlta.zip") do set ROM=%%~a
for %%a in ("Delta Command (Arcadia)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("deluxe5.zip") do set ROM=%%~a
for %%a in ("Deluxe 5 (ver. 0107, 07-01-2000, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("demoderb.zip") do set ROM=%%~a
for %%a in ("Demolition Derby") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("demon.zip") do set ROM=%%~a
for %%a in ("Demon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dmnfrnt.zip") do set ROM=%%~a
for %%a in ("Demon Front (68k label V105, ROM M105XX 08-05-02) (ARM label V105, ROM 08-05-02 S105XX)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("demonwld.zip") do set ROM=%%~a
for %%a in ("Demon's World - Horror Story (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("demndrgn.zip") do set ROM=%%~a
for %%a in ("Demons & Dragons (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("denjinmk.zip") do set ROM=%%~a
for %%a in ("Denjin Makai") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dendego.zip") do set ROM=%%~a
for %%a in ("Densha de GO! (Ver 2.2 J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dendego2.zip") do set ROM=%%~a
for %%a in ("Densha de GO! 2 Kousoku-hen (Ver 2.5 J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("depthch.zip") do set ROM=%%~a
for %%a in ("Depthcharge") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("deroon.zip") do set ROM=%%~a
for %%a in ("Deroon DeroDero") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("desertbr.zip") do set ROM=%%~a
for %%a in ("Desert Breaker (World) (FD1094 317-0196)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("desertdn.zip") do set ROM=%%~a
for %%a in ("Desert Dan") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("desertgu.zip") do set ROM=%%~a
for %%a in ("Desert Gun") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("desertwr.zip") do set ROM=%%~a
for %%a in ("Desert War - Wangan Sensou") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("destryer.zip") do set ROM=%%~a
for %%a in ("Destroyer (Cidelsa) (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("destroyr.zip") do set ROM=%%~a
for %%a in ("Destroyer (version O2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("devstors.zip") do set ROM=%%~a
for %%a in ("Devastators (ver. Z)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("devilfsh.zip") do set ROM=%%~a
for %%a in ("Devil Fish") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("devilw.zip") do set ROM=%%~a
for %%a in ("Devil World") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("devzone.zip") do set ROM=%%~a
for %%a in ("Devil Zone") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dharma.zip") do set ROM=%%~a
for %%a in ("Dharma Doujou") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("diamond.zip") do set ROM=%%~a
for %%a in ("Diamond Run") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("diehard.zip") do set ROM=%%~a
for %%a in ("Die Hard Arcade (UET 960515 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dtfamily.zip") do set ROM=%%~a
for %%a in ("Diet Family") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dietgo.zip") do set ROM=%%~a
for %%a in ("Diet Go Go (Euro v1.1 1992.09.26)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("digdug.zip") do set ROM=%%~a
for %%a in ("Dig Dug (rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("digdug2.zip") do set ROM=%%~a
for %%a in ("Dig Dug II (New Ver.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("digger.zip") do set ROM=%%~a
for %%a in ("Digger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("diggerc.zip") do set ROM=%%~a
for %%a in ("Digger (CVS)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("diggerma.zip") do set ROM=%%~a
for %%a in ("Digger Man (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dimahoo.zip") do set ROM=%%~a
for %%a in ("Dimahoo (Euro 000121)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dingo.zip") do set ROM=%%~a
for %%a in ("Dingo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dinorex.zip") do set ROM=%%~a
for %%a in ("Dino Rex (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dirtdash.zip") do set ROM=%%~a
for %%a in ("Dirt Dash (Rev. DT2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dirtfoxj.zip") do set ROM=%%~a
for %%a in ("Dirt Fox (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("disco.zip") do set ROM=%%~a
for %%a in ("Disco No.1") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cdiscon1.zip") do set ROM=%%~a
for %%a in ("Disco No.1 (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dotron.zip") do set ROM=%%~a
for %%a in ("Discs of Tron (Upright)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("diverboy.zip") do set ROM=%%~a
for %%a in ("Diver Boy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dorunrun.zip") do set ROM=%%~a
for %%a in ("Do! Run Run (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddonpach.zip") do set ROM=%%~a
for %%a in ("DoDonPachi (International, Master Ver. 97-02-05)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dfkbl.zip") do set ROM=%%~a
for %%a in ("DoDonPachi Dai-Fukkatsu Black Label (2010-1-18 BLACK LABEL)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddpdfk.zip") do set ROM=%%~a
for %%a in ("DoDonPachi Dai-Fukkatsu Ver 1.5 (2008-06-23 MASTER VER 1.5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddpdoj.zip") do set ROM=%%~a
for %%a in ("DoDonPachi Dai-Ou-Jou V101 (2002.04.05.Master Ver)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddp2.zip") do set ROM=%%~a
for %%a in ("DoDonPachi II - Bee Storm (World, ver. 102)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dockman.zip") do set ROM=%%~a
for %%a in ("Dock Man") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dodgem.zip") do set ROM=%%~a
for %%a in ("Dodgem") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dogfight.zip") do set ROM=%%~a
for %%a in ("Dog Fight (Thunderbolt)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dogpatch.zip") do set ROM=%%~a
for %%a in ("Dog Patch") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dogyuun.zip") do set ROM=%%~a
for %%a in ("Dogyuun") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dokaben.zip") do set ROM=%%~a
for %%a in ("Dokaben (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starseek.zip") do set ROM=%%~a
for %%a in ("Doki Doki Idol Star Seeker (GDL-0005)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dokidoki.zip") do set ROM=%%~a
for %%a in ("Doki Doki Penguin Land") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dolmen.zip") do set ROM=%%~a
for %%a in ("Dolmen") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dominob.zip") do set ROM=%%~a
for %%a in ("Domino Block") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("domino.zip") do set ROM=%%~a
for %%a in ("Domino Man") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dominos.zip") do set ROM=%%~a
for %%a in ("Dominos") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dommy.zip") do set ROM=%%~a
for %%a in ("Dommy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dondokod.zip") do set ROM=%%~a
for %%a in ("Don Doko Don (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("donpachi.zip") do set ROM=%%~a
for %%a in ("DonPachi (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("barata.zip") do set ROM=%%~a
for %%a in ("Dona Barata (early prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dkong.zip") do set ROM=%%~a
for %%a in ("Donkey Kong (US set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dkong3.zip") do set ROM=%%~a
for %%a in ("Donkey Kong 3 (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dkongjr.zip") do set ROM=%%~a
for %%a in ("Donkey Kong Junior (US set F-2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dorachan.zip") do set ROM=%%~a
for %%a in ("Dorachan") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dorodon.zip") do set ROM=%%~a
for %%a in ("Dorodon (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dotrikun.zip") do set ROM=%%~a
for %%a in ("Dottori Kun (new version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dblaxle.zip") do set ROM=%%~a
for %%a in ("Double Axle (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddragon.zip") do set ROM=%%~a
for %%a in ("Double Dragon (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("doubledr.zip") do set ROM=%%~a
for %%a in ("Double Dragon (Neo-Geo)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_ddrgn.zip") do set ROM=%%~a
for %%a in ("Double Dragon (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddragon3.zip") do set ROM=%%~a
for %%a in ("Double Dragon 3 - The Rosetta Stone (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddragon2.zip") do set ROM=%%~a
for %%a in ("Double Dragon II - The Revenge (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddribble.zip") do set ROM=%%~a
for %%a in ("Double Dribble") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_dbldr.zip") do set ROM=%%~a
for %%a in ("Double Dribble (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dplay.zip") do set ROM=%%~a
for %%a in ("Double Play") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dblewing.zip") do set ROM=%%~a
for %%a in ("Double Wings") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("downtown.zip") do set ROM=%%~a
for %%a in ("DownTown - Mokugeki (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_drmro.zip") do set ROM=%%~a
for %%a in ("Dr. Mario (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drmicro.zip") do set ROM=%%~a
for %%a in ("Dr. Micro") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drtoppel.zip") do set ROM=%%~a
for %%a in ("Dr. Toppel's Adventure (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("draco.zip") do set ROM=%%~a
for %%a in ("Draco") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dragrace.zip") do set ROM=%%~a
for %%a in ("Drag Race") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dbzvrvs.zip") do set ROM=%%~a
for %%a in ("Dragon Ball Z V.R.V.S. (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dragnblz.zip") do set ROM=%%~a
for %%a in ("Dragon Blaze") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drgnbowl.zip") do set ROM=%%~a
for %%a in ("Dragon Bowl (set 1, encrypted program)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dbreed.zip") do set ROM=%%~a
for %%a in ("Dragon Breed (M81 PCB version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drgnbstr.zip") do set ROM=%%~a
for %%a in ("Dragon Buster") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dragngun.zip") do set ROM=%%~a
for %%a in ("Dragon Gun (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drgnmst.zip") do set ROM=%%~a
for %%a in ("Dragon Master") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dsaber.zip") do set ROM=%%~a
for %%a in ("Dragon Saber") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dspirit.zip") do set ROM=%%~a
for %%a in ("Dragon Spirit (new version (DS3))") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drgnunit.zip") do set ROM=%%~a
for %%a in ("Dragon Unit - Castle of Dragon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drgw3.zip") do set ROM=%%~a
for %%a in ("Dragon World 3 - Chuugokuryuu 3 Special (ver. 106)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dwex.zip") do set ROM=%%~a
for %%a in ("Dragon World 3 EX (ver. 100)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drgw2.zip") do set ROM=%%~a
for %%a in ("Dragon World II (ver. 110X, Export)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dbz.zip") do set ROM=%%~a
for %%a in ("Dragonball Z (rev B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dbz2.zip") do set ROM=%%~a
for %%a in ("Dragonball Z 2 - Super Battle") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dragoona.zip") do set ROM=%%~a
for %%a in ("Dragoon Might (ver AAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drakton.zip") do set ROM=%%~a
for %%a in ("Drakton (DK conversion)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("keithlcy.zip") do set ROM=%%~a
for %%a in ("Dramatic Adventure Quiz Keith & Lucy (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dremshpr.zip") do set ROM=%%~a
for %%a in ("Dream Shopper") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dsoccr94.zip") do set ROM=%%~a
for %%a in ("Dream Soccer '94 (World, M107 hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dreamwld.zip") do set ROM=%%~a
for %%a in ("Dream World") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dribling.zip") do set ROM=%%~a
for %%a in ("Dribbling") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drifto94.zip") do set ROM=%%~a
for %%a in ("Drift Out '94 - The Hard Order (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("driftout.zip") do set ROM=%%~a
for %%a in ("Drift Out (Europe)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drivedge.zip") do set ROM=%%~a
for %%a in ("Driver's Edge") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drivfrcp.zip") do set ROM=%%~a
for %%a in ("Driving Force (Pac-Man conversion)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_duckh.zip") do set ROM=%%~a
for %%a in ("Duck Hunt (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddsom.zip") do set ROM=%%~a
for %%a in ("Dungeons & Dragons- Shadow over Mystara (Euro 960619)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddtod.zip") do set ROM=%%~a
for %%a in ("Dungeons & Dragons- Tower of Doom (Euro 940412)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dunkmnia.zip") do set ROM=%%~a
for %%a in ("Dunk Mania (Asia, DM2-VER.C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dunkshot.zip") do set ROM=%%~a
for %%a in ("Dunk Shot (Rev C, FD1089A 317-0022)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dyger.zip") do set ROM=%%~a
for %%a in ("Dyger (Korea set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dynagear.zip") do set ROM=%%~a
for %%a in ("Dyna Gear") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dynablst.zip") do set ROM=%%~a
for %%a in ("Dynablaster - Bomber Man") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dcclub.zip") do set ROM=%%~a
for %%a in ("Dynamic Country Club (World, ROM Based)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dynashot.zip") do set ROM=%%~a
for %%a in ("Dynamic Shoot Kyousou") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dynamski.zip") do set ROM=%%~a
for %%a in ("Dynamic Ski") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dynabomb.zip") do set ROM=%%~a
for %%a in ("Dynamite Bomber (Korea, Rev 1.5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dynduke.zip") do set ROM=%%~a
for %%a in ("Dynamite Duke (Europe set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ddux.zip") do set ROM=%%~a
for %%a in ("Dynamite Dux (set 3, World) (FD1094 317-0096)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dleague.zip") do set ROM=%%~a
for %%a in ("Dynamite League (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dynwar.zip") do set ROM=%%~a
for %%a in ("Dynasty Wars (USA, B-Board 89624B--)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eswat.zip") do set ROM=%%~a
for %%a in ("E-Swat - Cyber Police (set 4, World) (FD1094 317-0130)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("edf.zip") do set ROM=%%~a
for %%a in ("E.D.F. - Earth Defense Force (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("esprade.zip") do set ROM=%%~a
for %%a in ("ESP Ra.De. (International, Ver. 98-04-22)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eaglshot.zip") do set ROM=%%~a
for %%a in ("Eagle Shot Golf") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ecofghtr.zip") do set ROM=%%~a
for %%a in ("Eco Fighters (World 931203)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("egghunt.zip") do set ROM=%%~a
for %%a in ("Egg Hunt") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eggventr.zip") do set ROM=%%~a
for %%a in ("Egg Venture (Release 10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eggor.zip") do set ROM=%%~a
for %%a in ("Eggor") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eggsplc.zip") do set ROM=%%~a
for %%a in ("Eggs Playing Chicken") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ehrgeiz.zip") do set ROM=%%~a
for %%a in ("Ehrgeiz (US, EG3-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("8ballact.zip") do set ROM=%%~a
for %%a in ("Eight Ball Action (DK conversion)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eightfrc.zip") do set ROM=%%~a
for %%a in ("Eight Forces") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eightman.zip") do set ROM=%%~a
for %%a in ("Eight Man (NGM-025)(NGH-025)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ejihon.zip") do set ROM=%%~a
for %%a in ("Ejihon Tantei Jimusyo (J 950613 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("elevator.zip") do set ROM=%%~a
for %%a in ("Elevator Action") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("elvactr.zip") do set ROM=%%~a
for %%a in ("Elevator Action Returns (Ver 2.2O 1995-02-20)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("elim2.zip") do set ROM=%%~a
for %%a in ("Eliminator (2 Players, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("embargo.zip") do set ROM=%%~a
for %%a in ("Embargo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("emeralda.zip") do set ROM=%%~a
for %%a in ("Emeraldia (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("empcity.zip") do set ROM=%%~a
for %%a in ("Empire City- 1931 (bootleg-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("enduror.zip") do set ROM=%%~a
for %%a in ("Enduro Racer (YM2151) (FD1089B 317-0013A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("enforce.zip") do set ROM=%%~a
for %%a in ("Enforce (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("enigma2.zip") do set ROM=%%~a
for %%a in ("Enigma II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("equites.zip") do set ROM=%%~a
for %%a in ("Equites") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("esckids.zip") do set ROM=%%~a
for %%a in ("Escape Kids (Asia, 4 Players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eprom.zip") do set ROM=%%~a
for %%a in ("Escape from the Planet of the Robot Monsters (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("espgal.zip") do set ROM=%%~a
for %%a in ("Espgaluda (2003-10-15 Master Ver)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("espgal2.zip") do set ROM=%%~a
for %%a in ("Espgaluda II (2005-11-14 MASTER VER)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("espial.zip") do set ROM=%%~a
for %%a in ("Espial (Europe)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("escounts.zip") do set ROM=%%~a
for %%a in ("Every Second Counts (39-360-053)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("evilston.zip") do set ROM=%%~a
for %%a in ("Evil Stone") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("evosocc.zip") do set ROM=%%~a
for %%a in ("Evolution Soccer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_ebike.zip") do set ROM=%%~a
for %%a in ("Excite Bike (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("exctleag.zip") do set ROM=%%~a
for %%a in ("Excite League (FD1094 317-0079)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("animaljr.zip") do set ROM=%%~a
for %%a in ("Exciting Animal Land Jr. (USA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("exctsccr.zip") do set ROM=%%~a
for %%a in ("Exciting Soccer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("exctscc2.zip") do set ROM=%%~a
for %%a in ("Exciting Soccer II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("exedexes.zip") do set ROM=%%~a
for %%a in ("Exed Exes") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("exerion.zip") do set ROM=%%~a
for %%a in ("Exerion") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("explbrkr.zip") do set ROM=%%~a
for %%a in ("Explosive Breaker") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("exprraid.zip") do set ROM=%%~a
for %%a in ("Express Raider (World, Rev 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("extrmatn.zip") do set ROM=%%~a
for %%a in ("Extermination (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("exterm.zip") do set ROM=%%~a
for %%a in ("Exterminator") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ebases.zip") do set ROM=%%~a
for %%a in ("Extra Bases") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("einning.zip") do set ROM=%%~a
for %%a in ("Extra Inning - Ball Park II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("extdwnhl.zip") do set ROM=%%~a
for %%a in ("Extreme Downhill (v1.5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("exvania.zip") do set ROM=%%~a
for %%a in ("Exvania (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("exzisus.zip") do set ROM=%%~a
for %%a in ("Exzisus (Japan, dedicated)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eyes.zip") do set ROM=%%~a
for %%a in ("Eyes (US set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("f1gp.zip") do set ROM=%%~a
for %%a in ("F-1 Grand Prix") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("f1gp2.zip") do set ROM=%%~a
for %%a in ("F-1 Grand Prix Part II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("f1gpstr2.zip") do set ROM=%%~a
for %%a in ("F-1 Grand Prix Star II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("f15se.zip") do set ROM=%%~a
for %%a in ("F-15 Strike Eagle (rev. 2.2 02-25-91)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("f1en.zip") do set ROM=%%~a
for %%a in ("F1 Exhaust Note (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("f1lap.zip") do set ROM=%%~a
for %%a in ("F1 Super Lap (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fax.zip") do set ROM=%%~a
for %%a in ("FAX") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("faceoff.zip") do set ROM=%%~a
for %%a in ("Face Off (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("famibox.zip") do set ROM=%%~a
for %%a in ("FamicomBox") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fncywld.zip") do set ROM=%%~a
for %%a in ("Fancy World - Earth of Crisis") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fantastc.zip") do set ROM=%%~a
for %%a in ("Fantastic (Galaga conversion on Galaxian hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fantjour.zip") do set ROM=%%~a
for %%a in ("Fantastic Journey (ver EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fantasy.zip") do set ROM=%%~a
for %%a in ("Fantasy (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fantland.zip") do set ROM=%%~a
for %%a in ("Fantasy Land (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fantzone.zip") do set ROM=%%~a
for %%a in ("Fantasy Zone (Rev A, unprotected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fantzn2.zip") do set ROM=%%~a
for %%a in ("Fantasy Zone II - The Tears of Opa-Opa (MC-8123, 317-0057)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fantzn2x.zip") do set ROM=%%~a
for %%a in ("Fantasy Zone II - The Tears of Opa-Opa (System 16C version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kabukikl.zip") do set ROM=%%~a
for %%a in ("Far East of Eden - Kabuki Klash - Tengai Makyou - Shin Den") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fastlane.zip") do set ROM=%%~a
for %%a in ("Fast Lane") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sqbert.zip") do set ROM=%%~a
for %%a in ("Faster, Harder, More Challenging Q-bert (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fatfury1.zip") do set ROM=%%~a
for %%a in ("Fatal Fury - King of Fighters - Garou Densetsu - shukumei no tatakai (NGM-033)(NGH-033)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fatfury2.zip") do set ROM=%%~a
for %%a in ("Fatal Fury 2 - Garou Densetsu 2 - arata-naru tatakai (NGM-047)(NGH-047)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fatfury3.zip") do set ROM=%%~a
for %%a in ("Fatal Fury 3 - Road to the Final Victory - Garou Densetsu 3 - haruka-naru tatakai (NGM-069)(NGH-069)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fatfursp.zip") do set ROM=%%~a
for %%a in ("Fatal Fury Special - Garou Densetsu Special (set 1)(NGM-058)(NGH-058)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("feversos.zip") do set ROM=%%~a
for %%a in ("Fever SOS (International, Ver. 98-09-25)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fcombat.zip") do set ROM=%%~a
for %%a in ("Field Combat") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fieldday.zip") do set ROM=%%~a
for %%a in ("Field Day") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fgoal.zip") do set ROM=%%~a
for %%a in ("Field Goal (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fightfev.zip") do set ROM=%%~a
for %%a in ("Fight Fever (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fghtatck.zip") do set ROM=%%~a
for %%a in ("Fighter & Attacker (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fghthist.zip") do set ROM=%%~a
for %%a in ("Fighter's History (World ver 43-07, DE-0380-2 PCB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ftimpcta.zip") do set ROM=%%~a
for %%a in ("Fighters' Impact A (Ver 2.00J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fghtbskt.zip") do set ROM=%%~a
for %%a in ("Fighting Basketball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fitegolf.zip") do set ROM=%%~a
for %%a in ("Fighting Golf (World-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fhawk.zip") do set ROM=%%~a
for %%a in ("Fighting Hawk (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cfghtice.zip") do set ROM=%%~a
for %%a in ("Fighting Ice Hockey (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fightrol.zip") do set ROM=%%~a
for %%a in ("Fighting Roller") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fsoccer.zip") do set ROM=%%~a
for %%a in ("Fighting Soccer (version 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("filetto.zip") do set ROM=%%~a
for %%a in ("Filetto (v1.05 901009)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("finalb.zip") do set ROM=%%~a
for %%a in ("Final Blow (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ffight.zip") do set ROM=%%~a
for %%a in ("Final Fight (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ffight2b.zip") do set ROM=%%~a
for %%a in ("Final Fight 2 (SNES bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ffreveng.zip") do set ROM=%%~a
for %%a in ("Final Fight Revenge (JUET 990714 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("finalgdr.zip") do set ROM=%%~a
for %%a in ("Final Godori (Korea, version 2.20.5915)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("finallap.zip") do set ROM=%%~a
for %%a in ("Final Lap (Rev E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("finalap2.zip") do set ROM=%%~a
for %%a in ("Final Lap 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("finalap3.zip") do set ROM=%%~a
for %%a in ("Final Lap 3 (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("finalapr.zip") do set ROM=%%~a
for %%a in ("Final Lap R (Rev. B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fstarfrc.zip") do set ROM=%%~a
for %%a in ("Final Star Force (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("finalttr.zip") do set ROM=%%~a
for %%a in ("Final Tetris") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("finalizr.zip") do set ROM=%%~a
for %%a in ("Finalizer - Super Transformation") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("findout.zip") do set ROM=%%~a
for %%a in ("Find Out (Version 4.04)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("finehour.zip") do set ROM=%%~a
for %%a in ("Finest Hour (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("firebatl.zip") do set ROM=%%~a
for %%a in ("Fire Battle") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("firefox.zip") do set ROM=%%~a
for %%a in ("Fire Fox (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fireone.zip") do set ROM=%%~a
for %%a in ("Fire One") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fireshrk.zip") do set ROM=%%~a
for %%a in ("Fire Shark") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("firetrap.zip") do set ROM=%%~a
for %%a in ("Fire Trap (US, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("firetrk.zip") do set ROM=%%~a
for %%a in ("Fire Truck - Smokey Joe") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("firebeas.zip") do set ROM=%%~a
for %%a in ("Firebeast (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fbaitbc.zip") do set ROM=%%~a
for %%a in ("Fisherman's Bait - A Bass Challenge (GE765 VER. UAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fbaitmc.zip") do set ROM=%%~a
for %%a in ("Fisherman's Bait - Marlin Challenge (GX889 VER. EA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fbait2bc.zip") do set ROM=%%~a
for %%a in ("Fisherman's Bait 2 - A Bass Challenge (GE865 VER. UAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fishfren.zip") do set ROM=%%~a
for %%a in ("Fishin' Frenzy (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fmaniac3.zip") do set ROM=%%~a
for %%a in ("Fishing Maniac 3") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fitfight.zip") do set ROM=%%~a
for %%a in ("Fit of Fighting") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fiveside.zip") do set ROM=%%~a
for %%a in ("Five a Side Soccer (ver UAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fixeight.zip") do set ROM=%%~a
for %%a in ("FixEight (Europe)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flamegun.zip") do set ROM=%%~a
for %%a in ("Flame Gunner") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fpoint.zip") do set ROM=%%~a
for %%a in ("Flash Point (set 2, Japan) (FD1094 317-0127A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flashgal.zip") do set ROM=%%~a
for %%a in ("Flashgal (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flicky.zip") do set ROM=%%~a
for %%a in ("Flicky (128k Version, System 2, 315-5051)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mf_flip.zip") do set ROM=%%~a
for %%a in ("Flip & Flop (Max-A-Flex)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flipmaze.zip") do set ROM=%%~a
for %%a in ("Flip Maze (V2.04J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flipjack.zip") do set ROM=%%~a
for %%a in ("Flipper Jack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flower.zip") do set ROM=%%~a
for %%a in ("Flower (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flyboy.zip") do set ROM=%%~a
for %%a in ("Fly-Boy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flyball.zip") do set ROM=%%~a
for %%a in ("Flyball (rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cflyball.zip") do set ROM=%%~a
for %%a in ("Flying Ball (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fshark.zip") do set ROM=%%~a
for %%a in ("Flying Shark (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flytiger.zip") do set ROM=%%~a
for %%a in ("Flying Tiger (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("foodf.zip") do set ROM=%%~a
for %%a in ("Food Fight (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("footchmp.zip") do set ROM=%%~a
for %%a in ("Football Champ (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fbfrenzy.zip") do set ROM=%%~a
for %%a in ("Football Frenzy (NGM-034)(NGH-034)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("forgottn.zip") do set ROM=%%~a
for %%a in ("Forgotten Worlds (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("formatz.zip") do set ROM=%%~a
for %%a in ("Formation Z") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fort2b.zip") do set ROM=%%~a
for %%a in ("Fortress 2 Blue Arcade (ver 1.01 - pcb ver 3.05)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("40love.zip") do set ROM=%%~a
for %%a in ("Forty-Love") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fourtrax.zip") do set ROM=%%~a
for %%a in ("Four Trax") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fredmem.zip") do set ROM=%%~a
for %%a in ("Fred Flintstones' Memory Match (World-, Ticket version, 3-17-95)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("freekick.zip") do set ROM=%%~a
for %%a in ("Free Kick (NS6201-A 1987.10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("freeze.zip") do set ROM=%%~a
for %%a in ("Freeze") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("freezeat.zip") do set ROM=%%~a
for %%a in ("Freeze (Atari) (prototype, English voice, 96-10-25)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("frenzy.zip") do set ROM=%%~a
for %%a in ("Frenzy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("friskyt.zip") do set ROM=%%~a
for %%a in ("Frisky Tom (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fspiderb.zip") do set ROM=%%~a
for %%a in ("Frog & Spiders (bootleg-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("frogger.zip") do set ROM=%%~a
for %%a in ("Frogger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("frogs.zip") do set ROM=%%~a
for %%a in ("Frogs") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suprslam.zip") do set ROM=%%~a
for %%a in ("From TV Animation Slam Dunk - Super Slams") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("frontlin.zip") do set ROM=%%~a
for %%a in ("Front Line") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("funquiz.zip") do set ROM=%%~a
for %%a in ("Fun World Quiz (Austrian)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("funcube.zip") do set ROM=%%~a
for %%a in ("Funcube (v1.5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("funcube2.zip") do set ROM=%%~a
for %%a in ("Funcube 2 (v1.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("funcube3.zip") do set ROM=%%~a
for %%a in ("Funcube 3 (v1.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("funcube4.zip") do set ROM=%%~a
for %%a in ("Funcube 4 (v1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("funcube5.zip") do set ROM=%%~a
for %%a in ("Funcube 5 (v1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("funkybee.zip") do set ROM=%%~a
for %%a in ("Funky Bee") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fnkyfish.zip") do set ROM=%%~a
for %%a in ("Funky Fish") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fhboxers.zip") do set ROM=%%~a
for %%a in ("Funky Head Boxers (JUETBKAL 951218 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("funkyjet.zip") do set ROM=%%~a
for %%a in ("Funky Jet (World, rev 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("futspy.zip") do set ROM=%%~a
for %%a in ("Future Spy (315-5061)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gdarius2.zip") do set ROM=%%~a
for %%a in ("G-Darius Ver.2 (Ver 2.03J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gloc.zip") do set ROM=%%~a
for %%a in ("G-LOC Air Battle (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gstream.zip") do set ROM=%%~a
for %%a in ("G-Stream G2020") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gijoe.zip") do set ROM=%%~a
for %%a in ("G.I. Joe (World, EAB, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gprider.zip") do set ROM=%%~a
for %%a in ("GP Rider (World, FD1094 317-0163) (Twin setup)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gticlub.zip") do set ROM=%%~a
for %%a in ("GTI Club (ver EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gchgchmp.zip") do set ROM=%%~a
for %%a in ("Gachaga Champ (GE877 VER. JAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gaialast.zip") do set ROM=%%~a
for %%a in ("Gaia - The Last Choice of Earth") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gaia.zip") do set ROM=%%~a
for %%a in ("Gaia Crusaders") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gaiapols.zip") do set ROM=%%~a
for %%a in ("Gaiapolis (ver EAF)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gground.zip") do set ROM=%%~a
for %%a in ("Gain Ground (World, 3 Players, Floppy Based, FD1094 317-0058-03d Rev A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galastrm.zip") do set ROM=%%~a
for %%a in ("Galactic Storm (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gwarrior.zip") do set ROM=%%~a
for %%a in ("Galactic Warriors") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galactic.zip") do set ROM=%%~a
for %%a in ("Galactica - Batalha Espacial") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galaga88.zip") do set ROM=%%~a
for %%a in ("Galaga '88") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galaga.zip") do set ROM=%%~a
for %%a in ("Galaga (Namco rev. B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galaxia.zip") do set ROM=%%~a
for %%a in ("Galaxia (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galaxian.zip") do set ROM=%%~a
for %%a in ("Galaxian (Namco set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galaxyfg.zip") do set ROM=%%~a
for %%a in ("Galaxy Fight - Universal Warriors") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gforce2.zip") do set ROM=%%~a
for %%a in ("Galaxy Force 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galgame.zip") do set ROM=%%~a
for %%a in ("Galaxy Game") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galgame2.zip") do set ROM=%%~a
for %%a in ("Galaxy Games StarPak 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galaxygn.zip") do set ROM=%%~a
for %%a in ("Galaxy Gunners") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galxwars.zip") do set ROM=%%~a
for %%a in ("Galaxy Wars (Universal set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("glpracr.zip") do set ROM=%%~a
for %%a in ("Gallop Racer (English Ver 10.17.K)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("glpracr3.zip") do set ROM=%%~a
for %%a in ("Gallop Racer 3 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("galmedes.zip") do set ROM=%%~a
for %%a in ("Galmedes (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ginkun.zip") do set ROM=%%~a
for %%a in ("Ganbare Ginkun") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ganjaja.zip") do set ROM=%%~a
for %%a in ("Ganbare Jajamaru Saisho wa Goo - Ganbare Jajamaru Hop Step & Jump") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ganbare.zip") do set ROM=%%~a
for %%a in ("Ganbare! Marine Kun (Japan 2K0411)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gbusters.zip") do set ROM=%%~a
for %%a in ("Gang Busters (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gangwars.zip") do set ROM=%%~a
for %%a in ("Gang Wars") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ganryu.zip") do set ROM=%%~a
for %%a in ("Ganryu - Musashi Ganryuki") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gaplus.zip") do set ROM=%%~a
for %%a in ("Gaplus (GP2 rev. B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gardia.zip") do set ROM=%%~a
for %%a in ("Gardia (317-0006)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("garogun.zip") do set ROM=%%~a
for %%a in ("Garogun Seroyang (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("garou.zip") do set ROM=%%~a
for %%a in ("Garou - Mark of the Wolves (NGM-2530)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("garyoret.zip") do set ROM=%%~a
for %%a in ("Garyo Retsuden (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_gntlt.zip") do set ROM=%%~a
for %%a in ("Gauntlet (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gauntlet.zip") do set ROM=%%~a
for %%a in ("Gauntlet (rev 14)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gauntdl.zip") do set ROM=%%~a
for %%a in ("Gauntlet Dark Legacy (version DL 2.52)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gaunt2.zip") do set ROM=%%~a
for %%a in ("Gauntlet II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gauntleg.zip") do set ROM=%%~a
for %%a in ("Gauntlet Legends (version 1.6)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("geebee.zip") do set ROM=%%~a
for %%a in ("Gee Bee (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gekiridn.zip") do set ROM=%%~a
for %%a in ("Gekirindan (Ver 2.3O 1995-09-21)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gekisou.zip") do set ROM=%%~a
for %%a in ("Gekisou (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gemini.zip") do set ROM=%%~a
for %%a in ("Gemini Wing (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("genix.zip") do set ROM=%%~a
for %%a in ("Genix Family") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("genpeitd.zip") do set ROM=%%~a
for %%a in ("Genpei ToumaDen") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("denseib.zip") do set ROM=%%~a
for %%a in ("Ghost Chaser Densei (SNES bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ghoshunt.zip") do set ROM=%%~a
for %%a in ("Ghost Hunter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gpilots.zip") do set ROM=%%~a
for %%a in ("Ghost Pilots (NGM-020)(NGH-020)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ghostlop.zip") do set ROM=%%~a
for %%a in ("Ghostlop (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gmgalax.zip") do set ROM=%%~a
for %%a in ("Ghostmuncher Galaxian (bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gng.zip") do set ROM=%%~a
for %%a in ("Ghosts'n Goblins (World- set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ghlpanic.zip") do set ROM=%%~a
for %%a in ("Ghoul Panic (Asia, OB2-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ghouls.zip") do set ROM=%%~a
for %%a in ("Ghouls'n Ghosts (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ghox.zip") do set ROM=%%~a
for %%a in ("Ghox (spinner)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gigawing.zip") do set ROM=%%~a
for %%a in ("Giga Wing (USA 990222)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gigandes.zip") do set ROM=%%~a
for %%a in ("Gigandes") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gigasm2b.zip") do set ROM=%%~a
for %%a in ("Gigas Mark II (bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gimeabrk.zip") do set ROM=%%~a
for %%a in ("Gimme A Break (7-7-85)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ginganin.zip") do set ROM=%%~a
for %%a in ("Ginga NinkyouDen (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("guab.zip") do set ROM=%%~a
for %%a in ("Give us a Break") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gladiatr.zip") do set ROM=%%~a
for %%a in ("Gladiator (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sgladiat.zip") do set ROM=%%~a
for %%a in ("Gladiator 1984") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("go2000.zip") do set ROM=%%~a
for %%a in ("Go 2000") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("yamagchi.zip") do set ROM=%%~a
for %%a in ("Go Go Mr. Yamaguchi - Yuke Yuke Yamaguchi-kun") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("goalx3.zip") do set ROM=%%~a
for %%a in ("Goal! Goal! Goal!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gghost.zip") do set ROM=%%~a
for %%a in ("Goalie Ghost") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("plegends.zip") do set ROM=%%~a
for %%a in ("Gogetsuji Legends (US, Ver. 95-06-20)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("goindol.zip") do set ROM=%%~a
for %%a in ("Goindol (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("goldbug.zip") do set ROM=%%~a
for %%a in ("Gold Bug") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("goldmedl.zip") do set ROM=%%~a
for %%a in ("Gold Medalist (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("goldnaxe.zip") do set ROM=%%~a
for %%a in ("Golden Axe (set 6, US) (8751 317-123A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gaxeduel.zip") do set ROM=%%~a
for %%a in ("Golden Axe - The Duel (JUETL 950117 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_gaxe2.zip") do set ROM=%%~a
for %%a in ("Golden Axe II (Mega Play) (Rev B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ga2.zip") do set ROM=%%~a
for %%a in ("Golden Axe- The Revenge of Death Adder (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gpgolf.zip") do set ROM=%%~a
for %%a in ("Golden Par Golf (Joystick, V1.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gt97.zip") do set ROM=%%~a
for %%a in ("Golden Tee '97 (v1.30)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gt98.zip") do set ROM=%%~a
for %%a in ("Golden Tee '98 (v1.10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gt99.zip") do set ROM=%%~a
for %%a in ("Golden Tee '99 (v1.00)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gt2k.zip") do set ROM=%%~a
for %%a in ("Golden Tee 2K (v1.00)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gt3d.zip") do set ROM=%%~a
for %%a in ("Golden Tee 3D Golf (v1.93N)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtclassc.zip") do set ROM=%%~a
for %%a in ("Golden Tee Classic (v1.00)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtfore01.zip") do set ROM=%%~a
for %%a in ("Golden Tee Fore! (v1.00.25)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtfore02.zip") do set ROM=%%~a
for %%a in ("Golden Tee Fore! 2002 (v2.01.06)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtfore03.zip") do set ROM=%%~a
for %%a in ("Golden Tee Fore! 2003 (v3.00.10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtfore04.zip") do set ROM=%%~a
for %%a in ("Golden Tee Fore! 2004 Extra (v4.00.08)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtfore05.zip") do set ROM=%%~a
for %%a in ("Golden Tee Fore! 2005 Extra (v5.01.06)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtfore06.zip") do set ROM=%%~a
for %%a in ("Golden Tee Fore! 2006 Complete (v6.00.01)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtg.zip") do set ROM=%%~a
for %%a in ("Golden Tee Golf (Joystick, v3.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtg2.zip") do set ROM=%%~a
for %%a in ("Golden Tee Golf II (Trackball, V2.2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_golf.zip") do set ROM=%%~a
for %%a in ("Golf (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("glfgreat.zip") do set ROM=%%~a
for %%a in ("Golfing Greats") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("golgo13.zip") do set ROM=%%~a
for %%a in ("Golgo 13 (Japan, GLG1-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("g13knd.zip") do set ROM=%%~a
for %%a in ("Golgo 13 Kiseki no Dandou (Japan, GLS1-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gollygho.zip") do set ROM=%%~a
for %%a in ("Golly! Ghost!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gomoku.zip") do set ROM=%%~a
for %%a in ("Gomoku Narabe Renju") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gondo.zip") do set ROM=%%~a
for %%a in ("Gondomania (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gorf.zip") do set ROM=%%~a
for %%a in ("Gorf") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gotcha.zip") do set ROM=%%~a
for %%a in ("Got-cha Mini Game Festival") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ryorioh.zip") do set ROM=%%~a
for %%a in ("Gourmet Battle Quiz Ryohrioh CooKing (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_grdus.zip") do set ROM=%%~a
for %%a in ("Gradius (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gradius4.zip") do set ROM=%%~a
for %%a in ("Gradius 4- Fukkatsu") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gradius3.zip") do set ROM=%%~a
for %%a in ("Gradius III (World, program code R)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grchamp.zip") do set ROM=%%~a
for %%a in ("Grand Champion") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gcpinbal.zip") do set ROM=%%~a
for %%a in ("Grand Cross") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("f1gpstar.zip") do set ROM=%%~a
for %%a in ("Grand Prix Star") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_gslam.zip") do set ROM=%%~a
for %%a in ("Grand Slam (Mega Play)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gstrik2.zip") do set ROM=%%~a
for %%a in ("Grand Striker 2 (Europe and Oceania)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grasspin.zip") do set ROM=%%~a
for %%a in ("Grasspin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gratia.zip") do set ROM=%%~a
for %%a in ("Gratia - Second Earth (92047-01 version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gravitar.zip") do set ROM=%%~a
for %%a in ("Gravitar (version 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gslgr94u.zip") do set ROM=%%~a
for %%a in ("Great Sluggers '94") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gslugrsj.zip") do set ROM=%%~a
for %%a in ("Great Sluggers (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gsword.zip") do set ROM=%%~a
for %%a in ("Great Swordsman (World-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gberet.zip") do set ROM=%%~a
for %%a in ("Green Beret") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gseeker.zip") do set ROM=%%~a
for %%a in ("Grid Seeker- Project Storm Hammer (Ver 1.3O)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gridiron.zip") do set ROM=%%~a
for %%a in ("Gridiron Fight") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gridlee.zip") do set ROM=%%~a
for %%a in ("Gridlee") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grindstm.zip") do set ROM=%%~a
for %%a in ("Grind Stormer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grobda.zip") do set ROM=%%~a
for %%a in ("Grobda (New Ver.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("groovef.zip") do set ROM=%%~a
for %%a in ("Groove on Fight - Gouketsuji Ichizoku 3 (J 970416 V1.001)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("groundfx.zip") do set ROM=%%~a
for %%a in ("Ground Effects - Super Ground Effects (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("growl.zip") do set ROM=%%~a
for %%a in ("Growl (World, Rev 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grmatch.zip") do set ROM=%%~a
for %%a in ("Grudge Match (Yankee Game Technology)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grudge.zip") do set ROM=%%~a
for %%a in ("Grudge Match (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grdian.zip") do set ROM=%%~a
for %%a in ("Guardian (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grdforce.zip") do set ROM=%%~a
for %%a in ("Guardian Force (JUET 980318 V0.105)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grdnstrm.zip") do set ROM=%%~a
for %%a in ("Guardian Storm (horizontal, not encrypted)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("grdians.zip") do set ROM=%%~a
for %%a in ("Guardians - Denjin Makai II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("guardian.zip") do set ROM=%%~a
for %%a in ("Guardians of the 'Hood") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gwar.zip") do set ROM=%%~a
for %%a in ("Guerrilla War (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gmissile.zip") do set ROM=%%~a
for %%a in ("Guided Missile") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtrfrks.zip") do set ROM=%%~a
for %%a in ("Guitar Freaks (GQ886 VER. EAC)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtrfrk2m.zip") do set ROM=%%~a
for %%a in ("Guitar Freaks 2nd Mix Ver 1.01 (GQ883 VER. JAD)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gulfstrm.zip") do set ROM=%%~a
for %%a in ("Gulf Storm (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gulfwar2.zip") do set ROM=%%~a
for %%a in ("Gulf War II (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunfront.zip") do set ROM=%%~a
for %%a in ("Gun & Frontier (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunchamp.zip") do set ROM=%%~a
for %%a in ("Gun Champ") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunfight.zip") do set ROM=%%~a
for %%a in ("Gun Fight (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunforc2.zip") do set ROM=%%~a
for %%a in ("Gun Force II (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunmast.zip") do set ROM=%%~a
for %%a in ("Gun Master") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunsmoke.zip") do set ROM=%%~a
for %%a in ("Gun.Smoke (World, 851115)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunnail.zip") do set ROM=%%~a
for %%a in ("GunNail (28th May. 1992)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gnbarich.zip") do set ROM=%%~a
for %%a in ("Gunbarich") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunbird.zip") do set ROM=%%~a
for %%a in ("Gunbird (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunbird2.zip") do set ROM=%%~a
for %%a in ("Gunbird 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunbustr.zip") do set ROM=%%~a
for %%a in ("Gunbuster (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("endless.zip") do set ROM=%%~a
for %%a in ("Gundam Wing- Endless Duel (SNES bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gundhara.zip") do set ROM=%%~a
for %%a in ("Gundhara") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunforce.zip") do set ROM=%%~a
for %%a in ("Gunforce - Battle Fire Engulfed Terror Island (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gunlock.zip") do set ROM=%%~a
for %%a in ("Gunlock (Ver 2.3O 1994-01-20)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gururin.zip") do set ROM=%%~a
for %%a in ("Gururin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("guts.zip") do set ROM=%%~a
for %%a in ("Guts n' Glory (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gutsn.zip") do set ROM=%%~a
for %%a in ("Guts'n (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("guwange.zip") do set ROM=%%~a
for %%a in ("Guwange (Japan, Master Ver. 99-06-24)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("guzzler.zip") do set ROM=%%~a
for %%a in ("Guzzler") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbancho.zip") do set ROM=%%~a
for %%a in ("Gyakuten!! Puzzle Bancho (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gypsyjug.zip") do set ROM=%%~a
for %%a in ("Gypsy Juggler") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gyrodine.zip") do set ROM=%%~a
for %%a in ("Gyrodine") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gyruss.zip") do set ROM=%%~a
for %%a in ("Gyruss") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hal21.zip") do set ROM=%%~a
for %%a in ("HAL21") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hachamf.zip") do set ROM=%%~a
for %%a in ("Hacha Mecha Fighter (19th Sep. 1991, protected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hachoo.zip") do set ROM=%%~a
for %%a in ("Hachoo!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("halleys.zip") do set ROM=%%~a
for %%a in ("Halley's Comet (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hammer.zip") do set ROM=%%~a
for %%a in ("Hammer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hamaway.zip") do set ROM=%%~a
for %%a in ("Hammer Away (Japan, prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hharry.zip") do set ROM=%%~a
for %%a in ("Hammerin' Harry (World, M81)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hanaawas.zip") do set ROM=%%~a
for %%a in ("Hana Awase") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hjingi.zip") do set ROM=%%~a
for %%a in ("Hana Jingi (Japan, Bet)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hanayara.zip") do set ROM=%%~a
for %%a in ("Hana wo Yaraneba! (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hginga.zip") do set ROM=%%~a
for %%a in ("Hanafuda Hana Ginga") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("htengoku.zip") do set ROM=%%~a
for %%a in ("Hanafuda Hana Tengoku (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hanaroku.zip") do set ROM=%%~a
for %%a in ("Hanaroku") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hndlchmp.zip") do set ROM=%%~a
for %%a in ("Handle Champ (GQ710 VER. JAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hangplt.zip") do set ROM=%%~a
for %%a in ("Hang Pilot (ver JAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hangon.zip") do set ROM=%%~a
for %%a in ("Hang-On (Rev A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hangonjr.zip") do set ROM=%%~a
for %%a in ("Hang-On Jr.") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hangman.zip") do set ROM=%%~a
for %%a in ("Hangman") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hngmnjpm.zip") do set ROM=%%~a
for %%a in ("Hangman (JPM)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("happy6.zip") do set ROM=%%~a
for %%a in ("Happy 6-in-1 (ver. 102CN)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("harddriv.zip") do set ROM=%%~a
for %%a in ("Hard Drivin' (cockpit, rev 7)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hdrivair.zip") do set ROM=%%~a
for %%a in ("Hard Drivin's Airborne (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("harddunk.zip") do set ROM=%%~a
for %%a in ("Hard Dunk (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hardhat.zip") do set ROM=%%~a
for %%a in ("Hard Hat") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hardhead.zip") do set ROM=%%~a
for %%a in ("Hard Head") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hardhea2.zip") do set ROM=%%~a
for %%a in ("Hard Head 2 (v2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hrdtimes.zip") do set ROM=%%~a
for %%a in ("Hard Times (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hardyard.zip") do set ROM=%%~a
for %%a in ("Hard Yardage (v1.20)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("harem.zip") do set ROM=%%~a
for %%a in ("Harem") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hasamu.zip") do set ROM=%%~a
for %%a in ("Hasamu (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hattrick.zip") do set ROM=%%~a
for %%a in ("Hat Trick") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("htchctch.zip") do set ROM=%%~a
for %%a in ("Hatch Catch") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hatris.zip") do set ROM=%%~a
for %%a in ("Hatris (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hcastle.zip") do set ROM=%%~a
for %%a in ("Haunted Castle (version M)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hayaosi2.zip") do set ROM=%%~a
for %%a in ("Hayaoshi Quiz Grand Champion Taikai") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hayaosi3.zip") do set ROM=%%~a
for %%a in ("Hayaoshi Quiz Nettou Namahousou") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hayaosi1.zip") do set ROM=%%~a
for %%a in ("Hayaoshi Quiz Ouza Ketteisen - The King Of Quiz") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("headon.zip") do set ROM=%%~a
for %%a in ("Head On (2 players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("headoni.zip") do set ROM=%%~a
for %%a in ("Head On (Irem, M-15 Hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("headon2.zip") do set ROM=%%~a
for %%a in ("Head On 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hedpanic.zip") do set ROM=%%~a
for %%a in ("Head Panic (ver. 0117, 17-01-2000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("heartatk.zip") do set ROM=%%~a
for %%a in ("Heart Attack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hvnsgate.zip") do set ROM=%%~a
for %%a in ("Heaven's Gate") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hbarrel.zip") do set ROM=%%~a
for %%a in ("Heavy Barrel (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hvymetal.zip") do set ROM=%%~a
for %%a in ("Heavy Metal (315-5135)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hvysmsh.zip") do set ROM=%%~a
for %%a in ("Heavy Smash (Europe version -2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hvyunit.zip") do set ROM=%%~a
for %%a in ("Heavy Unit (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hwchamp.zip") do set ROM=%%~a
for %%a in ("Heavyweight Champ") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("heberpop.zip") do set ROM=%%~a
for %%a in ("Hebereke no Popoon (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("heiankyo.zip") do set ROM=%%~a
for %%a in ("Heiankyo Alien") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("helifire.zip") do set ROM=%%~a
for %%a in ("HeliFire (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hellfire.zip") do set ROM=%%~a
for %%a in ("Hellfire (2P set)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hero.zip") do set ROM=%%~a
for %%a in ("Hero") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("heuksun.zip") do set ROM=%%~a
for %%a in ("Heuk Sun Baek Sa (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hexion.zip") do set ROM=%%~a
for %%a in ("Hexion (Japan ver JAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hidnctch.zip") do set ROM=%%~a
for %%a in ("Hidden Catch (World) - Tul Lin Gu Lim Chat Ki '98 (Korea) (pcb ver 3.03)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hidctch2.zip") do set ROM=%%~a
for %%a in ("Hidden Catch 2 (pcb ver 3.03) (Kor-Eng) (AT89c52 protected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hidnc2k.zip") do set ROM=%%~a
for %%a in ("Hidden Catch 2000 (AT89c52 protected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hidctch3.zip") do set ROM=%%~a
for %%a in ("Hidden Catch 3 (ver 1.00 - pcb ver 3.05)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hiimpact.zip") do set ROM=%%~a
for %%a in ("High Impact Football (rev LA5 02-15-91)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hvoltage.zip") do set ROM=%%~a
for %%a in ("High Voltage") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hwrace.zip") do set ROM=%%~a
for %%a in ("High Way Race") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("chwy.zip") do set ROM=%%~a
for %%a in ("Highway Chase (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("himesiki.zip") do set ROM=%%~a
for %%a in ("Himeshikibu (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hippodrm.zip") do set ROM=%%~a
for %%a in ("Hippodrome (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hitnmiss.zip") do set ROM=%%~a
for %%a in ("Hit 'n Miss (version 3.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hitice.zip") do set ROM=%%~a
for %%a in ("Hit the Ice (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hoccer.zip") do set ROM=%%~a
for %%a in ("Hoccer (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_hgaly.zip") do set ROM=%%~a
for %%a in ("Hogan's Alley (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("holeland.zip") do set ROM=%%~a
for %%a in ("Hole Land") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("holo.zip") do set ROM=%%~a
for %%a in ("Holosseum (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hook.zip") do set ROM=%%~a
for %%a in ("Hook (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hoops96.zip") do set ROM=%%~a
for %%a in ("Hoops '96 (Europe-Asia 2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hopprobo.zip") do set ROM=%%~a
for %%a in ("Hopper Robo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hopmappy.zip") do set ROM=%%~a
for %%a in ("Hopping Mappy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("horizon.zip") do set ROM=%%~a
for %%a in ("Horizon (Irem)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hotchase.zip") do set ROM=%%~a
for %%a in ("Hot Chase (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hotmind.zip") do set ROM=%%~a
for %%a in ("Hot Mind (Hard Times hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hotrod.zip") do set ROM=%%~a
for %%a in ("Hot Rod (World, 3 Players, Turbo set 1, Floppy Based)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hotshock.zip") do set ROM=%%~a
for %%a in ("Hot Shocker") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hstennis.zip") do set ROM=%%~a
for %%a in ("Hot Shots Tennis (V1.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hotdogst.zip") do set ROM=%%~a
for %%a in ("Hotdog Storm (International)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hunchbak.zip") do set ROM=%%~a
for %%a in ("Hunchback (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("huncholy.zip") do set ROM=%%~a
for %%a in ("Hunchback Olympic") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hustle.zip") do set ROM=%%~a
for %%a in ("Hustle") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hydra.zip") do set ROM=%%~a
for %%a in ("Hydra") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hyperath.zip") do set ROM=%%~a
for %%a in ("Hyper Athlete (GV021 Japan 1.00)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hyperbbc.zip") do set ROM=%%~a
for %%a in ("Hyper Bishi Bashi Champ (GQ876 VER. EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hypbbc2p.zip") do set ROM=%%~a
for %%a in ("Hyper Bishi Bashi Champ - 2 Player (GX908 1999-08-24 VER. JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hcrash.zip") do set ROM=%%~a
for %%a in ("Hyper Crash (version D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hyprduel.zip") do set ROM=%%~a
for %%a in ("Hyper Duel (Japan set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hyperpac.zip") do set ROM=%%~a
for %%a in ("Hyper Pacman") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hyperspt.zip") do set ROM=%%~a
for %%a in ("Hyper Sports") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hsf2.zip") do set ROM=%%~a
for %%a in ("Hyper Street Fighter II- The Anniversary Edition (USA 040202)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hyprdriv.zip") do set ROM=%%~a
for %%a in ("Hyperdrive") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("imsorry.zip") do set ROM=%%~a
for %%a in ("I'm Sorry (315-5110, US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("irobot.zip") do set ROM=%%~a
for %%a in ("I, Robot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("igmo.zip") do set ROM=%%~a
for %%a in ("IGMO") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ipminvad.zip") do set ROM=%%~a
for %%a in ("IPM Invader") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("iqblock.zip") do set ROM=%%~a
for %%a in ("IQ-Block") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ibara.zip") do set ROM=%%~a
for %%a in ("Ibara (2005-03-22 MASTER VER..)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ibarablk.zip") do set ROM=%%~a
for %%a in ("Ibara Kuro Black Label (2006-02-06. MASTER VER.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ikari3.zip") do set ROM=%%~a
for %%a in ("Ikari III - The Rescue (World, 8-Way Joystick)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ikari.zip") do set ROM=%%~a
for %%a in ("Ikari Warriors (US JAMMA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ikki.zip") do set ROM=%%~a
for %%a in ("Ikki (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("imgfight.zip") do set ROM=%%~a
for %%a in ("Image Fight (World, revision A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("imago.zip") do set ROM=%%~a
for %%a in ("Imago (cocktail set)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("imolagp.zip") do set ROM=%%~a
for %%a in ("Imola Grand Prix (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("inthunt.zip") do set ROM=%%~a
for %%a in ("In The Hunt (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("indianbt.zip") do set ROM=%%~a
for %%a in ("Indian Battle") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("indytemp.zip") do set ROM=%%~a
for %%a in ("Indiana Jones and the Temple of Doom (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("idsoccer.zip") do set ROM=%%~a
for %%a in ("Indoor Soccer (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("minferno.zip") do set ROM=%%~a
for %%a in ("Inferno (Meadows)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("inferno.zip") do set ROM=%%~a
for %%a in ("Inferno (Williams)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("insector.zip") do set ROM=%%~a
for %%a in ("Insector (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("insectx.zip") do set ROM=%%~a
for %%a in ("Insector X (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("intcup94.zip") do set ROM=%%~a
for %%a in ("International Cup '94 (Ver 2.2O 1994-05-26)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("intrepid.zip") do set ROM=%%~a
for %%a in ("Intrepid (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invrvnge.zip") do set ROM=%%~a
for %%a in ("Invader's Revenge (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invasnab.zip") do set ROM=%%~a
for %%a in ("Invasion - The Abductors (version 5.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invinco.zip") do set ROM=%%~a
for %%a in ("Invinco") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invds.zip") do set ROM=%%~a
for %%a in ("Invinco - Deep Scan") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invho2.zip") do set ROM=%%~a
for %%a in ("Invinco - Head On 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("iron.zip") do set ROM=%%~a
for %%a in ("Iron (SNES bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ironfort.zip") do set ROM=%%~a
for %%a in ("Iron Fortress") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ironhors.zip") do set ROM=%%~a
for %%a in ("Iron Horse") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("offroad.zip") do set ROM=%%~a
for %%a in ("Ironman Ivan Stewart's Super Off-Road") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("offroadt.zip") do set ROM=%%~a
for %%a in ("Ironman Ivan Stewart's Super Off-Road Track-Pak") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("itazuram.zip") do set ROM=%%~a
for %%a in ("Itazura Monkey") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("itaten.zip") do set ROM=%%~a
for %%a in ("Itazura Tenshi (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ixion.zip") do set ROM=%%~a
for %%a in ("Ixion (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vshoot.zip") do set ROM=%%~a
for %%a in ("J-League Soccer V-Shoot (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jjsquawk.zip") do set ROM=%%~a
for %%a in ("J. J. Squawkers") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jackrabt.zip") do set ROM=%%~a
for %%a in ("Jack Rabbit (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jack.zip") do set ROM=%%~a
for %%a in ("Jack the Giantkiller (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jackal.zip") do set ROM=%%~a
for %%a in ("Jackal (World, 8-way Joystick)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jchan.zip") do set ROM=%%~a
for %%a in ("Jackie Chan - The Kung-Fu Master") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jchan2.zip") do set ROM=%%~a
for %%a in ("Jackie Chan in Fists of Fire") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jankenmn.zip") do set ROM=%%~a
for %%a in ("Janken Man Kattara Ageru") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("choko.zip") do set ROM=%%~a
for %%a in ("Janpai Puzzle Choukou (Japan 010820)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jetwave.zip") do set ROM=%%~a
for %%a in ("Jet Wave (EAB, Euro v1.04)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("powyak96.zip") do set ROM=%%~a
for %%a in ("Jikkyou Powerful Pro Yakyuu '96 (GV017 Japan 1.03)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("powyakex.zip") do set ROM=%%~a
for %%a in ("Jikkyou Powerful Pro Yakyuu EX (GX802 VER. JAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jin.zip") do set ROM=%%~a
for %%a in ("Jin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jitsupro.zip") do set ROM=%%~a
for %%a in ("Jitsuryoku!! Pro Yakyuu (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jojoba.zip") do set ROM=%%~a
for %%a in ("JoJo no Kimyou na Bouken- Mirai e no Isan (Japan 990927)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jojo.zip") do set ROM=%%~a
for %%a in ("JoJo's Venture (USA 990128)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("joemacr.zip") do set ROM=%%~a
for %%a in ("Joe & Mac Returns (World, Version 1.1, 1994.05.27)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("teamqb.zip") do set ROM=%%~a
for %%a in ("John Elway's Team Quarterback (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("joinem.zip") do set ROM=%%~a
for %%a in ("Joinem") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jollyjgr.zip") do set ROM=%%~a
for %%a in ("Jolly Jogger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jsk.zip") do set ROM=%%~a
for %%a in ("Joryuu Syougi Kyoushitsu (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("josvolly.zip") do set ROM=%%~a
for %%a in ("Joshi Volleyball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("journey.zip") do set ROM=%%~a
for %%a in ("Journey") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("joust.zip") do set ROM=%%~a
for %%a in ("Joust (White-Green label)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("joust2.zip") do set ROM=%%~a
for %%a in ("Joust 2 - Survival of the Fittest (revision 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("joyfulr.zip") do set ROM=%%~a
for %%a in ("Joyful Road (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jrpacman.zip") do set ROM=%%~a
for %%a in ("Jr. Pac-Man (11-9-83)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jdredd.zip") do set ROM=%%~a
for %%a in ("Judge Dredd (Rev C Dec. 17 1997)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jdreddp.zip") do set ROM=%%~a
for %%a in ("Judge Dredd (rev LA1, prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jzth.zip") do set ROM=%%~a
for %%a in ("Jue Zhan Tian Huang") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jumpbug.zip") do set ROM=%%~a
for %%a in ("Jump Bug") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jumpcoas.zip") do set ROM=%%~a
for %%a in ("Jump Coaster") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jumpkids.zip") do set ROM=%%~a
for %%a in ("Jump Kids") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jumpshot.zip") do set ROM=%%~a
for %%a in ("Jump Shot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jmpbreak.zip") do set ROM=%%~a
for %%a in ("Jumping Break") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jcross.zip") do set ROM=%%~a
for %%a in ("Jumping Cross") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jjack.zip") do set ROM=%%~a
for %%a in ("Jumping Jack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jpopnics.zip") do set ROM=%%~a
for %%a in ("Jumping Pop (Nics, Korean hack of Plump Pop)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jumppop.zip") do set ROM=%%~a
for %%a in ("Jumping Pop (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("junglek.zip") do set ROM=%%~a
for %%a in ("Jungle King (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jungler.zip") do set ROM=%%~a
for %%a in ("Jungler") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("junofrst.zip") do set ROM=%%~a
for %%a in ("Juno First") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jpark.zip") do set ROM=%%~a
for %%a in ("Jurassic Park (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kabukiz.zip") do set ROM=%%~a
for %%a in ("Kabuki-Z (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kageki.zip") do set ROM=%%~a
for %%a in ("Kageki (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kaiserkn.zip") do set ROM=%%~a
for %%a in ("Kaiser Knuckle (Ver 2.1O 1994-07-29)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kaitei.zip") do set ROM=%%~a
for %%a in ("Kaitei Takara Sagashi") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kamikaze.zip") do set ROM=%%~a
for %%a in ("Kamikaze") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kamikcab.zip") do set ROM=%%~a
for %%a in ("Kamikaze Cabbie") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kangaroo.zip") do set ROM=%%~a
for %%a in ("Kangaroo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kaos.zip") do set ROM=%%~a
for %%a in ("Kaos") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("introdon.zip") do set ROM=%%~a
for %%a in ("Karaoke Quiz Intro Don Don! (J 960213 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("karatblz.zip") do set ROM=%%~a
for %%a in ("Karate Blazers (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kchamp.zip") do set ROM=%%~a
for %%a in ("Karate Champ (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("karianx.zip") do set ROM=%%~a
for %%a in ("Karian Cross (Rev. 1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("karnov.zip") do set ROM=%%~a
for %%a in ("Karnov (US, rev 6)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("karnovr.zip") do set ROM=%%~a
for %%a in ("Karnov's Revenge - Fighter's History Dynamite") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("keith.zip") do set ROM=%%~a
for %%a in ("Keith Courage In Alpha Zones") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kenseim.zip") do set ROM=%%~a
for %%a in ("Ken Sei Mogura- Street Fighter II (Japan 940418, Ver 1.00)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("keroppi.zip") do set ROM=%%~a
for %%a in ("Kero Kero Keroppi's Let's Play Together (USA, Version 2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ket.zip") do set ROM=%%~a
for %%a in ("Ketsui- Kizuna Jigoku Tachi (2003-01-01. Master Ver.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kikikai.zip") do set ROM=%%~a
for %%a in ("KiKi KaiKai") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kick.zip") do set ROM=%%~a
for %%a in ("Kick (upright)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kickboy.zip") do set ROM=%%~a
for %%a in ("Kick Boy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kickgoal.zip") do set ROM=%%~a
for %%a in ("Kick Goal") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kickoff.zip") do set ROM=%%~a
for %%a in ("Kick Off (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kickridr.zip") do set ROM=%%~a
for %%a in ("Kick Rider") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kikstart.zip") do set ROM=%%~a
for %%a in ("Kick Start - Wheelie King") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kicknrun.zip") do set ROM=%%~a
for %%a in ("Kick and Run (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kicker.zip") do set ROM=%%~a
for %%a in ("Kicker") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kidniki.zip") do set ROM=%%~a
for %%a in ("Kid Niki - Radical Ninja (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("horekid.zip") do set ROM=%%~a
for %%a in ("Kid no Hore Hore Daisakusen") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("killcom.zip") do set ROM=%%~a
for %%a in ("Killer Comet") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kinstb.zip") do set ROM=%%~a
for %%a in ("Killer Instinct (SNES bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kinst.zip") do set ROM=%%~a
for %%a in ("Killer Instinct (v1.5d)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kinst2.zip") do set ROM=%%~a
for %%a in ("Killer Instinct 2 (v1.4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kingball.zip") do set ROM=%%~a
for %%a in ("King & Balloon (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kingofb.zip") do set ROM=%%~a
for %%a in ("King of Boxer (English)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kdynastg.zip") do set ROM=%%~a
for %%a in ("King of Dynast Gear (version 1.8)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kotm.zip") do set ROM=%%~a
for %%a in ("King of the Monsters (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kotm2.zip") do set ROM=%%~a
for %%a in ("King of the Monsters 2 - The Next Thing (NGM-039)(NGH-039)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kingdmgp.zip") do set ROM=%%~a
for %%a in ("Kingdom Grandprix") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kingpin.zip") do set ROM=%%~a
for %%a in ("Kingpin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kirameki.zip") do set ROM=%%~a
for %%a in ("Kirameki Star Road (Ver 2.10J 1997-08-29)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kittenk.zip") do set ROM=%%~a
for %%a in ("Kitten Kaboodle") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kizuna.zip") do set ROM=%%~a
for %%a in ("Kizuna Encounter - Super Tag Battle - Fu'un Super Tag Battle") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("phklad.zip") do set ROM=%%~a
for %%a in ("Klad - Labyrinth (Photon System)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("klax.zip") do set ROM=%%~a
for %%a in ("Klax (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("klondkp.zip") do set ROM=%%~a
for %%a in ("KlonDike+") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kngtmare.zip") do set ROM=%%~a
for %%a in ("Knightmare (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kov.zip") do set ROM=%%~a
for %%a in ("Knights of Valour - Sangoku Senki (ver. 117)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kov2.zip") do set ROM=%%~a
for %%a in ("Knights of Valour 2 - Sangoku Senki 2 (ver. 107, 102, 100HK)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kov2p.zip") do set ROM=%%~a
for %%a in ("Knights of Valour 2 Plus - Nine Dragons - Sangoku Senki 2 Plus - Nine Dragons (ver. M205XX, 200, 100CN)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kovplus.zip") do set ROM=%%~a
for %%a in ("Knights of Valour Plus - Sangoku Senki Plus (ver. 119, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kovsh.zip") do set ROM=%%~a
for %%a in ("Knights of Valour Super Heroes - Sangoku Senki Super Heroes (ver. 104, CN)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("knights.zip") do set ROM=%%~a
for %%a in ("Knights of the Round (World 911127)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kbash.zip") do set ROM=%%~a
for %%a in ("Knuckle Bash") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kbash2.zip") do set ROM=%%~a
for %%a in ("Knuckle Bash 2 (bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("knckhead.zip") do set ROM=%%~a
for %%a in ("Knuckle Heads (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kncljoe.zip") do set ROM=%%~a
for %%a in ("Knuckle Joe (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("koikois.zip") do set ROM=%%~a
for %%a in ("Koi Koi Shimasho") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("eto.zip") do set ROM=%%~a
for %%a in ("Kokontouzai Eto Monogatari (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kollon.zip") do set ROM=%%~a
for %%a in ("Kollon (V2.04J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("konam80s.zip") do set ROM=%%~a
for %%a in ("Konami 80's AC Special (GC826 VER. EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("konamigt.zip") do set ROM=%%~a
for %%a in ("Konami GT") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kontest.zip") do set ROM=%%~a
for %%a in ("Konami Test Board (GX800, Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pingpong.zip") do set ROM=%%~a
for %%a in ("Konami's Ping-Pong") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("konek.zip") do set ROM=%%~a
for %%a in ("Konek-Gorbunok") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kong.zip") do set ROM=%%~a
for %%a in ("Kong (Donkey Kong conversion on Galaxian hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bmcbowl.zip") do set ROM=%%~a
for %%a in ("Konkyuu no Hoshi") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("korokoro.zip") do set ROM=%%~a
for %%a in ("Koro Koro Quest (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("myangel.zip") do set ROM=%%~a
for %%a in ("Kosodate Quiz My Angel (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("myangel2.zip") do set ROM=%%~a
for %%a in ("Kosodate Quiz My Angel 2 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("myangel3.zip") do set ROM=%%~a
for %%a in ("Kosodate Quiz My Angel 3 (Japan, KQT1-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strahl.zip") do set ROM=%%~a
for %%a in ("Koutetsu Yousai Strahl (Japan set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kroozr.zip") do set ROM=%%~a
for %%a in ("Kozmik Kroozr") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kozure.zip") do set ROM=%%~a
for %%a in ("Kozure Ookami (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kram.zip") do set ROM=%%~a
for %%a in ("Kram (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("krzybowl.zip") do set ROM=%%~a
for %%a in ("Krazy Bowl") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("krull.zip") do set ROM=%%~a
for %%a in ("Krull") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_kngfu.zip") do set ROM=%%~a
for %%a in ("Kung Fu (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kungfum.zip") do set ROM=%%~a
for %%a in ("Kung-Fu Master (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kungfur.zip") do set ROM=%%~a
for %%a in ("Kung-Fu Roushi") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kungfut.zip") do set ROM=%%~a
for %%a in ("Kung-Fu Taikun (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kurikint.zip") do set ROM=%%~a
for %%a in ("Kuri Kinton (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ksayakyu.zip") do set ROM=%%~a
for %%a in ("Kusayakyuu") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kyros.zip") do set ROM=%%~a
for %%a in ("Kyros") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kyukaidk.zip") do set ROM=%%~a
for %%a in ("Kyuukai Douchuuki (Japan, new version (Rev B))") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kothello.zip") do set ROM=%%~a
for %%a in ("Kyuukyoku no Othello") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ladybug.zip") do set ROM=%%~a
for %%a in ("Lady Bug") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ladyfrog.zip") do set ROM=%%~a
for %%a in ("Lady Frog") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ladymstr.zip") do set ROM=%%~a
for %%a in ("Lady Master of Kung Fu") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lagunar.zip") do set ROM=%%~a
for %%a in ("Laguna Racer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("landmakr.zip") do set ROM=%%~a
for %%a in ("Land Maker (Ver 2.01J 1998-06-01)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lsasquad.zip") do set ROM=%%~a
for %%a in ("Land Sea Air Squad - Riku Kai Kuu Saizensen") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("landgear.zip") do set ROM=%%~a
for %%a in ("Landing Gear (Ver 4.2 O)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("laserbat.zip") do set ROM=%%~a
for %%a in ("Laser Battle") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lghost.zip") do set ROM=%%~a
for %%a in ("Laser Ghost (World) (FD1094 317-0166)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lsrquiz2.zip") do set ROM=%%~a
for %%a in ("Laser Quiz 2 Italy (v1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lsrquiz.zip") do set ROM=%%~a
for %%a in ("Laser Quiz Italy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lasso.zip") do set ROM=%%~a
for %%a in ("Lasso") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lastbank.zip") do set ROM=%%~a
for %%a in ("Last Bank (v1.16)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lastduel.zip") do set ROM=%%~a
for %%a in ("Last Duel (US New Ver.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lastfght.zip") do set ROM=%%~a
for %%a in ("Last Fighting") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lastfort.zip") do set ROM=%%~a
for %%a in ("Last Fortress - Toride") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lastmisn.zip") do set ROM=%%~a
for %%a in ("Last Mission (US revision 6)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lresort.zip") do set ROM=%%~a
for %%a in ("Last Resort") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kyustrkr.zip") do set ROM=%%~a
for %%a in ("Last Striker - Kyuukyoku no Striker") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lastsurv.zip") do set ROM=%%~a
for %%a in ("Last Survivor (Japan) (FD1094 317-0083)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lazercmd.zip") do set ROM=%%~a
for %%a in ("Lazer Command") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_ldrb.zip") do set ROM=%%~a
for %%a in ("Leader Board (Arcadia, set 1, V 2.5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lbowling.zip") do set ROM=%%~a
for %%a in ("League Bowling (NGM-019)(NGH-019)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("leds2011.zip") do set ROM=%%~a
for %%a in ("Led Storm Rally 2011 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("legend.zip") do set ROM=%%~a
for %%a in ("Legend") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("loht.zip") do set ROM=%%~a
for %%a in ("Legend of Hero Tonma") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("legendoh.zip") do set ROM=%%~a
for %%a in ("Legend of Heroes") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lomakai.zip") do set ROM=%%~a
for %%a in ("Legend of Makai (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("legendos.zip") do set ROM=%%~a
for %%a in ("Legend of Success Joe - Ashita no Joe Densetsu") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lwings.zip") do set ROM=%%~a
for %%a in ("Legendary Wings (US set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("legion.zip") do set ROM=%%~a
for %%a in ("Legion - Spinner-87 (World ver 2.03)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lemmings.zip") do set ROM=%%~a
for %%a in ("Lemmings (US prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("leprechn.zip") do set ROM=%%~a
for %%a in ("Leprechaun") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lacrazyc.zip") do set ROM=%%~a
for %%a in ("Let's Attack Crazy Cross (GV027 Asia 1.10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crshrace.zip") do set ROM=%%~a
for %%a in ("Lethal Crash Race (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lethalen.zip") do set ROM=%%~a
for %%a in ("Lethal Enforcers (ver UAE, 11-19-92 15-04)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("le2.zip") do set ROM=%%~a
for %%a in ("Lethal Enforcers II- Gun Fighters (ver EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lethalj.zip") do set ROM=%%~a
for %%a in ("Lethal Justice (Version 2.3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lethalth.zip") do set ROM=%%~a
for %%a in ("Lethal Thunder (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("levers.zip") do set ROM=%%~a
for %%a in ("Levers") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("liblrabl.zip") do set ROM=%%~a
for %%a in ("Libble Rabble") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("liberate.zip") do set ROM=%%~a
for %%a in ("Liberation") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("liberatr.zip") do set ROM=%%~a
for %%a in ("Liberator (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lbgrande.zip") do set ROM=%%~a
for %%a in ("Libero Grande (Asia, LG2-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lightbr.zip") do set ROM=%%~a
for %%a in ("Light Bringer (Ver 2.2O 1994-04-08)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lgtnfght.zip") do set ROM=%%~a
for %%a in ("Lightning Fighters (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ltswords.zip") do set ROM=%%~a
for %%a in ("Lightning Swords") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("loffire.zip") do set ROM=%%~a
for %%a in ("Line of Fire - Bakudan Yarou (World) (FD1094 317-0136)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("linkypip.zip") do set ROM=%%~a
for %%a in ("Linky Pipe") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("liquidk.zip") do set ROM=%%~a
for %%a in ("Liquid Kids (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("littlerb.zip") do set ROM=%%~a
for %%a in ("Little Robin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("livequiz.zip") do set ROM=%%~a
for %%a in ("Live Quiz Show") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lizwiz.zip") do set ROM=%%~a
for %%a in ("Lizard Wizard") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lnc.zip") do set ROM=%%~a
for %%a in ("Lock'n'Chase") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("clocknch.zip") do set ROM=%%~a
for %%a in ("Lock'n'Chase (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lockon.zip") do set ROM=%%~a
for %%a in ("Lock-On (rev. E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("locomotn.zip") do set ROM=%%~a
for %%a in ("Loco-Motion") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ldrun.zip") do set ROM=%%~a
for %%a in ("Lode Runner (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("loderndf.zip") do set ROM=%%~a
for %%a in ("Lode Runner - The Dig Fight (ver. B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ldrun2.zip") do set ROM=%%~a
for %%a in ("Lode Runner II - The Bungeling Strikes Back") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ldrun3.zip") do set ROM=%%~a
for %%a in ("Lode Runner III - The Golden Labyrinth") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ldrun4.zip") do set ROM=%%~a
for %%a in ("Lode Runner IV - Teikoku Karano Dasshutsu (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("logger.zip") do set ROM=%%~a
for %%a in ("Logger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("logicpro.zip") do set ROM=%%~a
for %%a in ("Logic Pro (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("logicpr2.zip") do set ROM=%%~a
for %%a in ("Logic Pro 2 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lpadv.zip") do set ROM=%%~a
for %%a in ("Logic Pro Adventure (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lbeach.zip") do set ROM=%%~a
for %%a in ("Long Beach") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("looping.zip") do set ROM=%%~a
for %%a in ("Looping") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lordgun.zip") do set ROM=%%~a
for %%a in ("Lord of Gun (USA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("losttomb.zip") do set ROM=%%~a
for %%a in ("Lost Tomb (easy)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lotlot.zip") do set ROM=%%~a
for %%a in ("Lot Lot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("luckywld.zip") do set ROM=%%~a
for %%a in ("Lucky & Wild") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("luckboom.zip") do set ROM=%%~a
for %%a in ("Lucky Boom") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("llander.zip") do set ROM=%%~a
for %%a in ("Lunar Lander (rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lrescue.zip") do set ROM=%%~a
for %%a in ("Lunar Rescue") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lupin3.zip") do set ROM=%%~a
for %%a in ("Lupin III (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("m4.zip") do set ROM=%%~a
for %%a in ("M-4") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("m79amb.zip") do set ROM=%%~a
for %%a in ("M-79 Ambush") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mach3.zip") do set ROM=%%~a
for %%a in ("M.A.C.H. 3") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mia.zip") do set ROM=%%~a
for %%a in ("M.I.A. - Missing in Action (version T)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rocktrv2.zip") do set ROM=%%~a
for %%a in ("MTV Rock-N-Roll Trivia (Part 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mvp.zip") do set ROM=%%~a
for %%a in ("MVP (set 2, US) (FD1094 317-0143)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mx5000.zip") do set ROM=%%~a
for %%a in ("MX5000") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mcheonru.zip") do set ROM=%%~a
for %%a in ("Ma Cheon Ru") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mace.zip") do set ROM=%%~a
for %%a in ("Mace- The Dark Age (boot ROM 1.0ce, HDD 1.0b)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("machbrkr.zip") do set ROM=%%~a
for %%a in ("Mach Breakers - Numan Athletics 2 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("machomou.zip") do set ROM=%%~a
for %%a in ("Macho Mouse") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("macrossp.zip") do set ROM=%%~a
for %%a in ("Macross Plus") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("madalien.zip") do set ROM=%%~a
for %%a in ("Mad Alien (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("madcrash.zip") do set ROM=%%~a
for %%a in ("Mad Crasher") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("madgear.zip") do set ROM=%%~a
for %%a in ("Mad Gear (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("madmotor.zip") do set ROM=%%~a
for %%a in ("Mad Motor") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mplanets.zip") do set ROM=%%~a
for %%a in ("Mad Planets") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("madshark.zip") do set ROM=%%~a
for %%a in ("Mad Shark") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("magmax.zip") do set ROM=%%~a
for %%a in ("Mag Max") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("magicbub.zip") do set ROM=%%~a
for %%a in ("Magic Bubble") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_fast.zip") do set ROM=%%~a
for %%a in ("Magic Johnson's Fast Break (Arcadia, V 2.8)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("msword.zip") do set ROM=%%~a
for %%a in ("Magic Sword- Heroic Fantasy (World 900725)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mcatadv.zip") do set ROM=%%~a
for %%a in ("Magical Cat Adventure") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mgcrystl.zip") do set ROM=%%~a
for %%a in ("Magical Crystals (World, 92-01-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mgcldtex.zip") do set ROM=%%~a
for %%a in ("Magical Date EX - Magical Date - sotsugyou kokuhaku daisakusen (Ver 2.01J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("magdrop2.zip") do set ROM=%%~a
for %%a in ("Magical Drop II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("magdrop3.zip") do set ROM=%%~a
for %%a in ("Magical Drop III") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("magerror.zip") do set ROM=%%~a
for %%a in ("Magical Error wo Sagase") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("magspeed.zip") do set ROM=%%~a
for %%a in ("Magical Speed") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("magspot.zip") do set ROM=%%~a
for %%a in ("Magical Spot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("magspot2.zip") do set ROM=%%~a
for %%a in ("Magical Spot II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("magicbal.zip") do set ROM=%%~a
for %%a in ("Magicball Fighting (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("maglord.zip") do set ROM=%%~a
for %%a in ("Magician Lord (NGM-005)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tjsb.zip") do set ROM=%%~a
for %%a in ("Mahjong Tian Jiang Shen Bing (V137C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mainsnk.zip") do set ROM=%%~a
for %%a in ("Main Event (1984)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mhavoc.zip") do set ROM=%%~a
for %%a in ("Major Havoc (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mjleague.zip") do set ROM=%%~a
for %%a in ("Major League") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("majtitle.zip") do set ROM=%%~a
for %%a in ("Major Title (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("majtitl2.zip") do set ROM=%%~a
for %%a in ("Major Title 2 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("maletmad.zip") do set ROM=%%~a
for %%a in ("Mallet Madness v2.1") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mangchi.zip") do set ROM=%%~a
for %%a in ("Mang-Chi") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cmanhat.zip") do set ROM=%%~a
for %%a in ("Manhattan (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("maniach.zip") do set ROM=%%~a
for %%a in ("Mania Challenge (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("maniacsq.zip") do set ROM=%%~a
for %%a in ("Maniac Square (unprotected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("manybloc.zip") do set ROM=%%~a
for %%a in ("Many Block") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mappy.zip") do set ROM=%%~a
for %%a in ("Mappy (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("marble.zip") do set ROM=%%~a
for %%a in ("Marble Madness (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mmaze.zip") do set ROM=%%~a
for %%a in ("Marchen Maze (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("marineb.zip") do set ROM=%%~a
for %%a in ("Marine Boy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("marinedt.zip") do set ROM=%%~a
for %%a in ("Marine Date") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mariner.zip") do set ROM=%%~a
for %%a in ("Mariner") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_mario.zip") do set ROM=%%~a
for %%a in ("Mario Bros. (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mario.zip") do set ROM=%%~a
for %%a in ("Mario Bros. (US, Revision F)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_moglf.zip") do set ROM=%%~a
for %%a in ("Mario's Open Golf (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("markham.zip") do set ROM=%%~a
for %%a in ("Markham") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mars.zip") do set ROM=%%~a
for %%a in ("Mars") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mmatrix.zip") do set ROM=%%~a
for %%a in ("Mars Matrix- Hyper Solid Shooting (USA 000412)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mtlchamp.zip") do set ROM=%%~a
for %%a in ("Martial Champion (ver EAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("martmast.zip") do set ROM=%%~a
for %%a in ("Martial Masters (ver. 104, 102, 102US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("maruchan.zip") do set ROM=%%~a
for %%a in ("Maru-Chan de Goo! (J 971216 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("marvland.zip") do set ROM=%%~a
for %%a in ("Marvel Land (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("msh.zip") do set ROM=%%~a
for %%a in ("Marvel Super Heroes (Euro 951024)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mshvsf.zip") do set ROM=%%~a
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Euro 970625)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mvsc.zip") do set ROM=%%~a
for %%a in ("Marvel Vs. Capcom- Clash of Super Heroes (Euro 980123)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("marvins.zip") do set ROM=%%~a
for %%a in ("Marvin's Maze") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kamenrid.zip") do set ROM=%%~a
for %%a in ("Masked Riders Club Battle Race") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mastboy.zip") do set ROM=%%~a
for %%a in ("Master Boy (Spanish, PCB Rev A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("masterw.zip") do set ROM=%%~a
for %%a in ("Master of Weapon (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("matmania.zip") do set ROM=%%~a
for %%a in ("Mat Mania") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("matchit2.zip") do set ROM=%%~a
for %%a in ("Match It II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("matrim.zip") do set ROM=%%~a
for %%a in ("Matrimelee - Shin Gouketsuji Ichizoku Toukon (NGM-2660) (NGH-2660)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mausuke.zip") do set ROM=%%~a
for %%a in ("Mausuke no Ojama the World (J 960314 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("maxrpm.zip") do set ROM=%%~a
for %%a in ("Max RPM (ver 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("maxforce.zip") do set ROM=%%~a
for %%a in ("Maximum Force v1.05") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mayday.zip") do set ROM=%%~a
for %%a in ("Mayday (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mayhem.zip") do set ROM=%%~a
for %%a in ("Mayhem 2002") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mayjisn2.zip") do set ROM=%%~a
for %%a in ("Mayjinsen 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mazeinv.zip") do set ROM=%%~a
for %%a in ("Maze Invaders (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mofflott.zip") do set ROM=%%~a
for %%a in ("Maze of Flott (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_mazin.zip") do set ROM=%%~a
for %%a in ("Mazin Wars - Mazin Saga (Mega Play)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mazinger.zip") do set ROM=%%~a
for %%a in ("Mazinger Z (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("medlanes.zip") do set ROM=%%~a
for %%a in ("Meadows Lanes") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mechatt.zip") do set ROM=%%~a
for %%a in ("Mechanized Attack (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megablst.zip") do set ROM=%%~a
for %%a in ("Mega Blast (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megaman2.zip") do set ROM=%%~a
for %%a in ("Mega Man 2- The Power Fighters (USA 960708)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_mman3.zip") do set ROM=%%~a
for %%a in ("Mega Man III (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megaman.zip") do set ROM=%%~a
for %%a in ("Mega Man- The Power Battle (CPS1, USA 951006)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megaphx.zip") do set ROM=%%~a
for %%a in ("Mega Phoenix") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mtwins.zip") do set ROM=%%~a
for %%a in ("Mega Twins (World 900619)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megazone.zip") do set ROM=%%~a
for %%a in ("Mega Zone (Konami set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megadon.zip") do set ROM=%%~a
for %%a in ("Megadon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megatack.zip") do set ROM=%%~a
for %%a in ("Megatack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megat6.zip") do set ROM=%%~a
for %%a in ("Megatouch 6 (9255-80-01 ROA, Standard version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megat3.zip") do set ROM=%%~a
for %%a in ("Megatouch III (9255-20-01 RON, Standard version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megat4.zip") do set ROM=%%~a
for %%a in ("Megatouch IV (9255-40-01 ROE, Standard version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("meijinsn.zip") do set ROM=%%~a
for %%a in ("Meijinsen") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kikcubic.zip") do set ROM=%%~a
for %%a in ("Meikyu Jima (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mercs.zip") do set ROM=%%~a
for %%a in ("Mercs (World 900302)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("merlinmm.zip") do set ROM=%%~a
for %%a in ("Merlins Money Maze") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mermaid.zip") do set ROM=%%~a
for %%a in ("Mermaid") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("metafox.zip") do set ROM=%%~a
for %%a in ("Meta Fox") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("metalb.zip") do set ROM=%%~a
for %%a in ("Metal Black (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("metlclsh.zip") do set ROM=%%~a
for %%a in ("Metal Clash (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("metlhawk.zip") do set ROM=%%~a
for %%a in ("Metal Hawk (Rev C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("metlsavr.zip") do set ROM=%%~a
for %%a in ("Metal Saver") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mslug.zip") do set ROM=%%~a
for %%a in ("Metal Slug - Super Vehicle-001") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mslug2.zip") do set ROM=%%~a
for %%a in ("Metal Slug 2 - Super Vehicle-001-II (NGM-2410)(NGH-2410)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mslug3.zip") do set ROM=%%~a
for %%a in ("Metal Slug 3 (NGM-2560)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mslug4.zip") do set ROM=%%~a
for %%a in ("Metal Slug 4 (NGM-2630)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ms5pcb.zip") do set ROM=%%~a
for %%a in ("Metal Slug 5 (JAMMA PCB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mslug5.zip") do set ROM=%%~a
for %%a in ("Metal Slug 5 (NGM-2680)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mslugx.zip") do set ROM=%%~a
for %%a in ("Metal Slug X - Super Vehicle-001 (NGM-2500)(NGH-2500)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("msisaac.zip") do set ROM=%%~a
for %%a in ("Metal Soldier Isaac II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("metmqstr.zip") do set ROM=%%~a
for %%a in ("Metamoqester (International)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("metamrph.zip") do set ROM=%%~a
for %%a in ("Metamorphic Force (ver EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("metrocrs.zip") do set ROM=%%~a
for %%a in ("Metro-Cross (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_mtoid.zip") do set ROM=%%~a
for %%a in ("Metroid (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mwalk.zip") do set ROM=%%~a
for %%a in ("Michael Jackson's Moonwalker (World) (FD1094-8751 317-0159)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mlanding.zip") do set ROM=%%~a
for %%a in ("Midnight Landing (Germany)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("midres.zip") do set ROM=%%~a
for %%a in ("Midnight Resistance (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("midnrun.zip") do set ROM=%%~a
for %%a in ("Midnight Run- Road Fighters 2 (EAA, Euro v1.11)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mightguy.zip") do set ROM=%%~a
for %%a in ("Mighty Guy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mimonkey.zip") do set ROM=%%~a
for %%a in ("Mighty Monkey") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mwarr.zip") do set ROM=%%~a
for %%a in ("Mighty Warriors") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mpang.zip") do set ROM=%%~a
for %%a in ("Mighty! Pang (Euro 001010)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_miket.zip") do set ROM=%%~a
for %%a in ("Mike Tyson's Punch-Out!! (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mikie.zip") do set ROM=%%~a
for %%a in ("Mikie") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtmr2.zip") do set ROM=%%~a
for %%a in ("Mille Miglia 2- Great 1000 Miles Rally (95-05-24)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("milliped.zip") do set ROM=%%~a
for %%a in ("Millipede") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("minefld.zip") do set ROM=%%~a
for %%a in ("Minefield") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mineswpr.zip") do set ROM=%%~a
for %%a in ("Minesweeper") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("minigolf.zip") do set ROM=%%~a
for %%a in ("Mini Golf (11-25-85)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("minivadr.zip") do set ROM=%%~a
for %%a in ("Mini Vaders") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mmonkey.zip") do set ROM=%%~a
for %%a in ("Minky Monkey") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dodghero.zip") do set ROM=%%~a
for %%a in ("Minna Atsumare! Dodge Hero") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mirninja.zip") do set ROM=%%~a
for %%a in ("Mirai Ninja (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mirax.zip") do set ROM=%%~a
for %%a in ("Mirax (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("missile.zip") do set ROM=%%~a
for %%a in ("Missile Command (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("m660.zip") do set ROM=%%~a
for %%a in ("Mission 660 (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("misncrft.zip") do set ROM=%%~a
for %%a in ("Mission Craft (version 2.7)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cmissnx.zip") do set ROM=%%~a
for %%a in ("Mission-X (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrviking.zip") do set ROM=%%~a
for %%a in ("Mister Viking (315-5041)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gdfs.zip") do set ROM=%%~a
for %%a in ("Mobil Suit Gundam Final Shooting (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("msgundam.zip") do set ROM=%%~a
for %%a in ("Mobile Suit Gundam") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gundamex.zip") do set ROM=%%~a
for %%a in ("Mobile Suit Gundam EX Revue") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("homerun.zip") do set ROM=%%~a
for %%a in ("Moero!! Pro Yakyuu Homerun Kyousou") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("moguchan.zip") do set ROM=%%~a
for %%a in ("Mogu Chan (bootleg-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mogura.zip") do set ROM=%%~a
for %%a in ("Mogura Desse (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mole.zip") do set ROM=%%~a
for %%a in ("Mole Attack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("momoko.zip") do set ROM=%%~a
for %%a in ("Momoko 120") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("monymony.zip") do set ROM=%%~a
for %%a in ("Money Money") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("miexchng.zip") do set ROM=%%~a
for %%a in ("Money Puzzle Exchanger - Money Idol Exchanger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mmagic.zip") do set ROM=%%~a
for %%a in ("Monkey Magic") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mmpanic.zip") do set ROM=%%~a
for %%a in ("Monkey Mole Panic (USA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("monopoly.zip") do set ROM=%%~a
for %%a in ("Monopoly (JPM) (SYSTEM5 VIDEO, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("monopldx.zip") do set ROM=%%~a
for %%a in ("Monopoly Deluxe (JPM) (SYSTEM5 VIDEO)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("macha.zip") do set ROM=%%~a
for %%a in ("Monoshiri Quiz Osyaberi Macha (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("monsterb.zip") do set ROM=%%~a
for %%a in ("Monster Bash") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mfjump.zip") do set ROM=%%~a
for %%a in ("Monster Farm Jump (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mmaulers.zip") do set ROM=%%~a
for %%a in ("Monster Maulers (ver EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mslider.zip") do set ROM=%%~a
for %%a in ("Monster Slider (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mstworld.zip") do set ROM=%%~a
for %%a in ("Monsters World (bootleg of Super Pang)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("montecar.zip") do set ROM=%%~a
for %%a in ("Monte Carlo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mooncrst.zip") do set ROM=%%~a
for %%a in ("Moon Cresta (Nichibutsu)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mpatrol.zip") do set ROM=%%~a
for %%a in ("Moon Patrol") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("moonqsr.zip") do set ROM=%%~a
for %%a in ("Moon Quasar") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mshuttle.zip") do set ROM=%%~a
for %%a in ("Moon Shuttle (US- set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("moonwarp.zip") do set ROM=%%~a
for %%a in ("Moon War (prototype on Frenzy hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("moonwar.zip") do set ROM=%%~a
for %%a in ("Moonwar") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("moremore.zip") do set ROM=%%~a
for %%a in ("More More") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("moremorp.zip") do set ROM=%%~a
for %%a in ("More More Plus") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizhuhu.zip") do set ROM=%%~a
for %%a in ("Moriguchi Hiroko no Quiz de Hyuu!Hyuu! (Ver 2.2J 1995-05-25)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mk.zip") do set ROM=%%~a
for %%a in ("Mortal Kombat (rev 5.0 T-Unit 03-19-93)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mk3mdb.zip") do set ROM=%%~a
for %%a in ("Mortal Kombat 3 (bootleg of Megadrive version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mk3.zip") do set ROM=%%~a
for %%a in ("Mortal Kombat 3 (rev 2.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mk4.zip") do set ROM=%%~a
for %%a in ("Mortal Kombat 4 (version 3.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mk2.zip") do set ROM=%%~a
for %%a in ("Mortal Kombat II (rev L3.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mosaic.zip") do set ROM=%%~a
for %%a in ("Mosaic") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mosaicf2.zip") do set ROM=%%~a
for %%a in ("Mosaic (F2 System)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("motos.zip") do set ROM=%%~a
for %%a in ("Motos") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mouja.zip") do set ROM=%%~a
for %%a in ("Mouja (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mouseatk.zip") do set ROM=%%~a
for %%a in ("Mouse Attack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("msgogo.zip") do set ROM=%%~a
for %%a in ("Mouse Shooter GoGo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mtrap.zip") do set ROM=%%~a
for %%a in ("Mouse Trap (version 5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mouser.zip") do set ROM=%%~a
for %%a in ("Mouser") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrdig.zip") do set ROM=%%~a
for %%a in ("Mr. Dig") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrdo.zip") do set ROM=%%~a
for %%a in ("Mr. Do!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("docastle.zip") do set ROM=%%~a
for %%a in ("Mr. Do's Castle (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dowild.zip") do set ROM=%%~a
for %%a in ("Mr. Do's Wild Ride") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrdrillr.zip") do set ROM=%%~a
for %%a in ("Mr. Driller (US, DRI3-VER.A2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrgoemon.zip") do set ROM=%%~a
for %%a in ("Mr. Goemon (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrjong.zip") do set ROM=%%~a
for %%a in ("Mr. Jong (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrkicker.zip") do set ROM=%%~a
for %%a in ("Mr. Kicker (F-E1-16-010 PCB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrkougar.zip") do set ROM=%%~a
for %%a in ("Mr. Kougar") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrtnt.zip") do set ROM=%%~a
for %%a in ("Mr. TNT") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mspacman.zip") do set ROM=%%~a
for %%a in ("Ms. Pac-Man") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("20pacgal.zip") do set ROM=%%~a
for %%a in ("Ms. Pac-Man-Galaga - 20th Anniversary Class of 1981 Reunion (V1.08)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("semibase.zip") do set ROM=%%~a
for %%a in ("MuHanSeungBu (SemiCom Baseball) (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mmpork.zip") do set ROM=%%~a
for %%a in ("Muchi Muchi Pork! (2007- 4-17 MASTER VER.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mugsmash.zip") do set ROM=%%~a
for %%a in ("Mug Smashers") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("multchmp.zip") do set ROM=%%~a
for %%a in ("Multi Champ (World, ver. 2.5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("multigmt.zip") do set ROM=%%~a
for %%a in ("Multi Game (Tung Sheng Electronics)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("multigam.zip") do set ROM=%%~a
for %%a in ("Multi Game (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("multigm2.zip") do set ROM=%%~a
for %%a in ("Multi Game 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("multigm3.zip") do set ROM=%%~a
for %%a in ("Multi Game III") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mbombrd.zip") do set ROM=%%~a
for %%a in ("Muscle Bomber Duo- Ultimate Team Battle (World 931206)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mushisam.zip") do set ROM=%%~a
for %%a in ("Mushihime-Sama (2004-10-12.MASTER VER.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("futaribl.zip") do set ROM=%%~a
for %%a in ("Mushihime-Sama Futari Black Label - Another Ver (2009-11-27 INTERNATIONAL BL)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("futari15.zip") do set ROM=%%~a
for %%a in ("Mushihime-Sama Futari Ver 1.5 (2006-12-8.MASTER VER. 1.54.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("musicbal.zip") do set ROM=%%~a
for %%a in ("Music Ball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mustache.zip") do set ROM=%%~a
for %%a in ("Mustache Boy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mutantf.zip") do set ROM=%%~a
for %%a in ("Mutant Fighter (World ver EM-5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mnight.zip") do set ROM=%%~a
for %%a in ("Mutant Night") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mutnat.zip") do set ROM=%%~a
for %%a in ("Mutation Nation (NGM-014)(NGH-014)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("myhero.zip") do set ROM=%%~a
for %%a in ("My Hero (US, not encrypted)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mystston.zip") do set ROM=%%~a
for %%a in ("Mysterious Stones - Dr. John's Adventure") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mysticm.zip") do set ROM=%%~a
for %%a in ("Mystic Marathon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mysticri.zip") do set ROM=%%~a
for %%a in ("Mystic Riders (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mystwarr.zip") do set ROM=%%~a
for %%a in ("Mystic Warriors (ver EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nsub.zip") do set ROM=%%~a
for %%a in ("N-Sub (upright)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nycaptor.zip") do set ROM=%%~a
for %%a in ("N.Y. Captor") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nam1975.zip") do set ROM=%%~a
for %%a in ("NAM-1975 (NGM-001)(NGH-001)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("natodef.zip") do set ROM=%%~a
for %%a in ("NATO Defense") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nbahangt.zip") do set ROM=%%~a
for %%a in ("NBA Hangtime (rev L1.1 04-16-96)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nbajam.zip") do set ROM=%%~a
for %%a in ("NBA Jam (rev 3.01 04-07-93)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nbajamex.zip") do set ROM=%%~a
for %%a in ("NBA Jam Extreme") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nbajamte.zip") do set ROM=%%~a
for %%a in ("NBA Jam TE (rev 4.0 03-23-94)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nbapbp.zip") do set ROM=%%~a
for %%a in ("NBA Play By Play") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blitz99.zip") do set ROM=%%~a
for %%a in ("NFL Blitz '99 (ver 1.30, Sep 22 1998)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blitz.zip") do set ROM=%%~a
for %%a in ("NFL Blitz (boot ROM 1.2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("blitz2k.zip") do set ROM=%%~a
for %%a in ("NFL Blitz 2000 Gold Edition (ver 1.2, Sep 22 1999)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nagano98.zip") do set ROM=%%~a
for %%a in ("Nagano Winter Olympics '98 (GX720 EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ncv1.zip") do set ROM=%%~a
for %%a in ("Namco Classic Collection Vol.1") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ncv2.zip") do set ROM=%%~a
for %%a in ("Namco Classic Collection Vol.2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nametune.zip") do set ROM=%%~a
for %%a in ("Name That Tune (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("naname.zip") do set ROM=%%~a
for %%a in ("Naname de Magic! (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("narc.zip") do set ROM=%%~a
for %%a in ("Narc (rev 7.00)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nastar.zip") do set ROM=%%~a
for %%a in ("Nastar (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("naughtyb.zip") do set ROM=%%~a
for %%a in ("Naughty Boy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nmouse.zip") do set ROM=%%~a
for %%a in ("Naughty Mouse (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("navarone.zip") do set ROM=%%~a
for %%a in ("Navarone") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nebulray.zip") do set ROM=%%~a
for %%a in ("Nebulas Ray (World, NR2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("neckneck.zip") do set ROM=%%~a
for %%a in ("Neck-n-Neck (v1.2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nemesis.zip") do set ROM=%%~a
for %%a in ("Nemesis (ROM version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nemo.zip") do set ROM=%%~a
for %%a in ("Nemo (World 901130)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("neobombe.zip") do set ROM=%%~a
for %%a in ("Neo Bomberman") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("neodrift.zip") do set ROM=%%~a
for %%a in ("Neo Drift Out - New Technology") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("neomrdo.zip") do set ROM=%%~a
for %%a in ("Neo Mr. Do!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("turfmast.zip") do set ROM=%%~a
for %%a in ("Neo Turf Masters - Big Tournament Golf") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("neocup98.zip") do set ROM=%%~a
for %%a in ("Neo-Geo Cup '98 - The Road to the Victory") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nratechu.zip") do set ROM=%%~a
for %%a in ("Neratte Chu") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("netwars.zip") do set ROM=%%~a
for %%a in ("Net Wars") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nettoqc.zip") do set ROM=%%~a
for %%a in ("Nettoh Quiz Champion (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quiztou.zip") do set ROM=%%~a
for %%a in ("Nettou! Gekitou! Quiztou!! (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nhidctch.zip") do set ROM=%%~a
for %%a in ("New Hidden Catch (World) - New Tul Lin Gu Lim Chat Ki '98 (Korea) (pcb ver 3.02)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("3in1semi.zip") do set ROM=%%~a
for %%a in ("New HyperMan (3-in-1 with Cookie & Bibi & HyperMan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nrallyx.zip") do set ROM=%%~a
for %%a in ("New Rally X") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("newsin7.zip") do set ROM=%%~a
for %%a in ("New Sinbad 7 (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nyny.zip") do set ROM=%%~a
for %%a in ("New York! New York!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nibbler.zip") do set ROM=%%~a
for %%a in ("Nibbler (rev 9)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nitedrvr.zip") do set ROM=%%~a
for %%a in ("Night Driver") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nightrai.zip") do set ROM=%%~a
for %%a in ("Night Raid (V2.03J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nslasher.zip") do set ROM=%%~a
for %%a in ("Night Slashers (Korea Rev 1.3, DE-0397-0 PCB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cnightst.zip") do set ROM=%%~a
for %%a in ("Night Star (DECO Cassette, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nstocker.zip") do set ROM=%%~a
for %%a in ("Night Stocker (10-6-86)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nightstr.zip") do set ROM=%%~a
for %%a in ("Night Striker (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nwarr.zip") do set ROM=%%~a
for %%a in ("Night Warriors- Darkstalkers' Revenge (Euro 950316)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nitd.zip") do set ROM=%%~a
for %%a in ("Nightmare in the Dark") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nbbatman.zip") do set ROM=%%~a
for %%a in ("Ninja Baseball Bat Man (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ninclown.zip") do set ROM=%%~a
for %%a in ("Ninja Clowns (08-27-91)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ncombat.zip") do set ROM=%%~a
for %%a in ("Ninja Combat (NGM-009)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ncommand.zip") do set ROM=%%~a
for %%a in ("Ninja Commando") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ninjemak.zip") do set ROM=%%~a
for %%a in ("Ninja Emaki (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_ngaid.zip") do set ROM=%%~a
for %%a in ("Ninja Gaiden (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_ngai2.zip") do set ROM=%%~a
for %%a in ("Ninja Gaiden Episode II- The Dark Sword of Chaos (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_ngai3.zip") do set ROM=%%~a
for %%a in ("Ninja Gaiden Episode III- The Ancient Ship of Doom (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kazan.zip") do set ROM=%%~a
for %%a in ("Ninja Kazan (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ninjamas.zip") do set ROM=%%~a
for %%a in ("Ninja Master's - haoh-ninpo-cho") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_ninj.zip") do set ROM=%%~a
for %%a in ("Ninja Mission (Arcadia, set 1, V 2.5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nspirit.zip") do set ROM=%%~a
for %%a in ("Ninja Spirit") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ninjakd2.zip") do set ROM=%%~a
for %%a in ("Ninja-Kid II - NinjaKun Ashura no Shou (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ninjakun.zip") do set ROM=%%~a
for %%a in ("Ninjakun Majou no Bouken") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_wcup.zip") do set ROM=%%~a
for %%a in ("Nintendo World Cup (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nitrobal.zip") do set ROM=%%~a
for %%a in ("Nitro Ball (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nomnlnd.zip") do set ROM=%%~a
for %%a in ("No Man's Land") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("noahsark.zip") do set ROM=%%~a
for %%a in ("Noah's Ark") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nob.zip") do set ROM=%%~a
for %%a in ("Noboranka (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nost.zip") do set ROM=%%~a
for %%a in ("Nostradamus") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nouryoku.zip") do set ROM=%%~a
for %%a in ("Nouryoku Koujou Iinkai") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("nova2001.zip") do set ROM=%%~a
for %%a in ("Nova 2001 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("numanath.zip") do set ROM=%%~a
for %%a in ("Numan Athletics (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("offroadc.zip") do set ROM=%%~a
for %%a in ("Off Road Challenge (v1.63)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("offtwall.zip") do set ROM=%%~a
for %%a in ("Off the Wall (2-3-player upright)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("otwalls.zip") do set ROM=%%~a
for %%a in ("Off the Wall (Sente)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ohmygod.zip") do set ROM=%%~a
for %%a in ("Oh My God! (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("oisipuzl.zip") do set ROM=%%~a
for %%a in ("Oishii Puzzle Ha Irimasenka") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("olibochu.zip") do set ROM=%%~a
for %%a in ("Oli-Boo-Chu") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("omegaf.zip") do set ROM=%%~a
for %%a in ("Omega Fighter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("omegrace.zip") do set ROM=%%~a
for %%a in ("Omega Race (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("oneshot.zip") do set ROM=%%~a
for %%a in ("One Shot One Kill") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("onna34ro.zip") do set ROM=%%~a
for %%a in ("Onna Sansirou - Typhoon Gal (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("coozumou.zip") do set ROM=%%~a
for %%a in ("Oozumou - The Grand Sumo (DECO Cassette, Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("opaopa.zip") do set ROM=%%~a
for %%a in ("Opa Opa (MC-8123, 317-0042)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("othunder.zip") do set ROM=%%~a
for %%a in ("Operation Thunderbolt (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("opwolf.zip") do set ROM=%%~a
for %%a in ("Operation Wolf (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("opwolf3.zip") do set ROM=%%~a
for %%a in ("Operation Wolf 3 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("orbit.zip") do set ROM=%%~a
for %%a in ("Orbit") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("orbitron.zip") do set ROM=%%~a
for %%a in ("Orbitron") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("orbs.zip") do set ROM=%%~a
for %%a in ("Orbs (10-7-94 prototype-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ordyne.zip") do set ROM=%%~a
for %%a in ("Ordyne (Japan, English Version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("orlegend.zip") do set ROM=%%~a
for %%a in ("Oriental Legend - Xi You Shi E Zhuan (ver. 126)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("olds.zip") do set ROM=%%~a
for %%a in ("Oriental Legend Special - Xi You Shi E Zhuan Super (ver. 101, Korean Board)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("osman.zip") do set ROM=%%~a
for %%a in ("Osman (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("otenamih.zip") do set ROM=%%~a
for %%a in ("Otenami Haiken (V2.04J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("otenamhf.zip") do set ROM=%%~a
for %%a in ("Otenami Haiken Final (V2.07JC)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("otenki.zip") do set ROM=%%~a
for %%a in ("Otenki Kororin (V2.01J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("othello.zip") do set ROM=%%~a
for %%a in ("Othello (version 3.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("othldrby.zip") do set ROM=%%~a
for %%a in ("Othello Derby (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("othellos.zip") do set ROM=%%~a
for %%a in ("Othello Shiyouyo (J 980423 V1.002)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("outrun.zip") do set ROM=%%~a
for %%a in ("Out Run (sitdown-upright, Rev B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("outzone.zip") do set ROM=%%~a
for %%a in ("Out Zone") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("orunners.zip") do set ROM=%%~a
for %%a in ("OutRunners (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("overtop.zip") do set ROM=%%~a
for %%a in ("Over Top") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ozmawars.zip") do set ROM=%%~a
for %%a in ("Ozma Wars (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ozon1.zip") do set ROM=%%~a
for %%a in ("Ozon I") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("p47.zip") do set ROM=%%~a
for %%a in ("P-47 - The Phantom Fighter (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("p47aces.zip") do set ROM=%%~a
for %%a in ("P-47 Aces") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pow.zip") do set ROM=%%~a
for %%a in ("P.O.W. - Prisoners of War (US version 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pkscram.zip") do set ROM=%%~a
for %%a in ("PK Scramble") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pacnpal.zip") do set ROM=%%~a
for %%a in ("Pac & Pal") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("paclandp.zip") do set ROM=%%~a
for %%a in ("Pac-Land (United Amusements PC Engine)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pacland.zip") do set ROM=%%~a
for %%a in ("Pac-Land (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pacplus.zip") do set ROM=%%~a
for %%a in ("Pac-Man Plus") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pacmania.zip") do set ROM=%%~a
for %%a in ("Pac-Mania") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pacapp.zip") do set ROM=%%~a
for %%a in ("Paca Paca Passion (Japan, PPP1-VER.A2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pacapp2.zip") do set ROM=%%~a
for %%a in ("Paca Paca Passion 2 (Japan, PKS1-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pacappsp.zip") do set ROM=%%~a
for %%a in ("Paca Paca Passion Special (Japan, PSP1-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pachifev.zip") do set ROM=%%~a
for %%a in ("Pachifever") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("packbang.zip") do set ROM=%%~a
for %%a in ("Pack'n Bang Bang (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("paddlema.zip") do set ROM=%%~a
for %%a in ("Paddle Mania") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pairsred.zip") do set ROM=%%~a
for %%a in ("Pairs Redemption (V1.0, 10-25-94)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("palamed.zip") do set ROM=%%~a
for %%a in ("Palamedes (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pandoras.zip") do set ROM=%%~a
for %%a in ("Pandora's Palace") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("akamaru.zip") do set ROM=%%~a
for %%a in ("Panel & Variety Akamaru Q Jousyou Dont-R") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pang.zip") do set ROM=%%~a
for %%a in ("Pang (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pangpang.zip") do set ROM=%%~a
for %%a in ("Pang Pang") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ppcar.zip") do set ROM=%%~a
for %%a in ("Pang Pang Car") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pangpoms.zip") do set ROM=%%~a
for %%a in ("Pang Pom's") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pang3.zip") do set ROM=%%~a
for %%a in ("Pang! 3 (Euro 950601)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("panicbom.zip") do set ROM=%%~a
for %%a in ("Panic Bomber") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("panicr.zip") do set ROM=%%~a
for %%a in ("Panic Road (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("panicstr.zip") do set ROM=%%~a
for %%a in ("Panic Street (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("panther.zip") do set ROM=%%~a
for %%a in ("Panther") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("paperboy.zip") do set ROM=%%~a
for %%a in ("Paperboy (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("para2dx.zip") do set ROM=%%~a
for %%a in ("Paradise 2 Deluxe") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pturn.zip") do set ROM=%%~a
for %%a in ("Parallel Turn") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("parodius.zip") do set ROM=%%~a
for %%a in ("Parodius DA! (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pasha2.zip") do set ROM=%%~a
for %%a in ("Pasha Pasha 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pass.zip") do set ROM=%%~a
for %%a in ("Pass") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("passsht.zip") do set ROM=%%~a
for %%a in ("Passing Shot (World, 2 Players) (FD1094 317-0080)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pblbeach.zip") do set ROM=%%~a
for %%a in ("Pebble Beach - The Great Shot (JUE 950913 V0.990)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("peggle.zip") do set ROM=%%~a
for %%a in ("Peggle (Joystick, v1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pengo.zip") do set ROM=%%~a
for %%a in ("Pengo (set 1 rev c)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pengadvb.zip") do set ROM=%%~a
for %%a in ("Penguin Adventure (bootleg of MSX version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("penbros.zip") do set ROM=%%~a
for %%a in ("Penguin Brothers (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pkunwar.zip") do set ROM=%%~a
for %%a in ("Penguin-Kun Wars (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("penky.zip") do set ROM=%%~a
for %%a in ("Penky") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pepper2.zip") do set ROM=%%~a
for %%a in ("Pepper II (version 8)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbillrd.zip") do set ROM=%%~a
for %%a in ("Perfect Billiard") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("perfrman.zip") do set ROM=%%~a
for %%a in ("Performan (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pesadelo.zip") do set ROM=%%~a
for %%a in ("Pesadelo (bootleg of Knightmare on MSX)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("peterpak.zip") do set ROM=%%~a
for %%a in ("Peter Pack-Rat") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cppicf.zip") do set ROM=%%~a
for %%a in ("Peter Pepper's Ice Cream Factory (DECO Cassette, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("phantom2.zip") do set ROM=%%~a
for %%a in ("Phantom II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_pm.zip") do set ROM=%%~a
for %%a in ("Pharaohs Match (Arcadia)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("phelios.zip") do set ROM=%%~a
for %%a in ("Phelios") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("phoenix.zip") do set ROM=%%~a
for %%a in ("Phoenix (Amstar)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("photoy2k.zip") do set ROM=%%~a
for %%a in ("Photo Y2K (ver. 105)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("phozon.zip") do set ROM=%%~a
for %%a in ("Phozon (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("phrcraze.zip") do set ROM=%%~a
for %%a in ("Phraze Craze (6221-40, U5-0A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pickin.zip") do set ROM=%%~a
for %%a in ("Pickin'") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pignewt.zip") do set ROM=%%~a
for %%a in ("Pig Newton (version C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pigout.zip") do set ROM=%%~a
for %%a in ("Pig Out- Dine Like a Swine! (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pigskin.zip") do set ROM=%%~a
for %%a in ("Pigskin 621AD (rev 1.1K 8-01-90)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_pinbt.zip") do set ROM=%%~a
for %%a in ("PinBot (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbaction.zip") do set ROM=%%~a
for %%a in ("Pinball Action (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pinbo.zip") do set ROM=%%~a
for %%a in ("Pinbo (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ppmast93.zip") do set ROM=%%~a
for %%a in ("Ping Pong Masters '93") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pinkswts.zip") do set ROM=%%~a
for %%a in ("Pink Sweets- Ibara Sorekara (2006-04-06 MASTER VER....)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pballoon.zip") do set ROM=%%~a
for %%a in ("Pioneer Balloon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pipedrm.zip") do set ROM=%%~a
for %%a in ("Pipe Dream (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pipeline.zip") do set ROM=%%~a
for %%a in ("Pipeline") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("higemaru.zip") do set ROM=%%~a
for %%a in ("Pirate Ship Higemaru") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("piratetr.zip") do set ROM=%%~a
for %%a in ("Pirate Treasure") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pirates.zip") do set ROM=%%~a
for %%a in ("Pirates") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pisces.zip") do set ROM=%%~a
for %%a in ("Pisces") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pistoldm.zip") do set ROM=%%~a
for %%a in ("Pistol Daimyo no Bouken (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pitnrun.zip") do set ROM=%%~a
for %%a in ("Pit & Run - F-1 Race (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pitboss2.zip") do set ROM=%%~a
for %%a in ("Pit Boss II (9221-01C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pitbossm.zip") do set ROM=%%~a
for %%a in ("Pit Boss Megastar (9244-00-01)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megat.zip") do set ROM=%%~a
for %%a in ("Pit Boss Megatouch (9234-20-01)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("megat2.zip") do set ROM=%%~a
for %%a in ("Pit Boss Megatouch II (9255-10-01 ROG, Standard version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pitbosss.zip") do set ROM=%%~a
for %%a in ("Pit Boss Superstar (9221-10-00B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbss330.zip") do set ROM=%%~a
for %%a in ("Pit Boss Superstar III 30 (9233-00-01)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbst30.zip") do set ROM=%%~a
for %%a in ("Pit Boss Supertouch 30 (9234-10-01)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pitfight.zip") do set ROM=%%~a
for %%a in ("Pit Fighter (rev 9)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pitfall2.zip") do set ROM=%%~a
for %%a in ("Pitfall II (315-5093)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pprobe.zip") do set ROM=%%~a
for %%a in ("Planet Probe (prototype-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("plsmaswd.zip") do set ROM=%%~a
for %%a in ("Plasma Sword- Nightmare of Bilstein (USA 980316)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("playball.zip") do set ROM=%%~a
for %%a in ("PlayBall! (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("peivc006.zip") do set ROM=%%~a
for %%a in ("Player's Edge Plus (IVC006) Clear EEPROM Chip") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("peset001.zip") do set ROM=%%~a
for %%a in ("Player's Edge Plus (SET001) Set Chip") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("peset004.zip") do set ROM=%%~a
for %%a in ("Player's Edge Plus (SET004) Set Chip") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("peset038.zip") do set ROM=%%~a
for %%a in ("Player's Edge Plus (SET038) Set Chip") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pgoal.zip") do set ROM=%%~a
for %%a in ("Pleasure Goal - Futsal - 5 on 5 Mini Soccer (NGM-219)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pleiads.zip") do set ROM=%%~a
for %%a in ("Pleiads (Tehkan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("plotting.zip") do set ROM=%%~a
for %%a in ("Plotting (World set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("plumppop.zip") do set ROM=%%~a
for %%a in ("Plump Pop (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("plusalph.zip") do set ROM=%%~a
for %%a in ("Plus Alpha") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pnickj.zip") do set ROM=%%~a
for %%a in ("Pnickies (Japan 940608)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popobear.zip") do set ROM=%%~a
for %%a in ("PoPo Bear") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pnyaa.zip") do set ROM=%%~a
for %%a in ("Pochi and Nyaa") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pocketrc.zip") do set ROM=%%~a
for %%a in ("Pocket Racer (Japan, PKR1-VER.B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ptblank.zip") do set ROM=%%~a
for %%a in ("Point Blank (World, GN2 Rev B, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ptblank2.zip") do set ROM=%%~a
for %%a in ("Point Blank 2 (GNB5-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("poitto.zip") do set ROM=%%~a
for %%a in ("Poitto!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("poizone.zip") do set ROM=%%~a
for %%a in ("Poizone") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ppsatan.zip") do set ROM=%%~a
for %%a in ("Poka Poka Satan (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pokechmp.zip") do set ROM=%%~a
for %%a in ("Poke Champ (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("polaris.zip") do set ROM=%%~a
for %%a in ("Polaris (Latest version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("polepos.zip") do set ROM=%%~a
for %%a in ("Pole Position (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("polepos2.zip") do set ROM=%%~a
for %%a in ("Pole Position II (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("policetr.zip") do set ROM=%%~a
for %%a in ("Police Trainer (Rev 1.3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pollux.zip") do set ROM=%%~a
for %%a in ("Pollux (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("polyplay.zip") do set ROM=%%~a
for %%a in ("Poly-Play") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pong.zip") do set ROM=%%~a
for %%a in ("Pong (Rev E) external [TTL]") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ponpoko.zip") do set ROM=%%~a
for %%a in ("Ponpoko") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("poolshrk.zip") do set ROM=%%~a
for %%a in ("Poolshark") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pooyan.zip") do set ROM=%%~a
for %%a in ("Pooyan") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popbounc.zip") do set ROM=%%~a
for %%a in ("Pop 'n Bounce - Gapporin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popflame.zip") do set ROM=%%~a
for %%a in ("Pop Flamer (protected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popn1.zip") do set ROM=%%~a
for %%a in ("Pop'n Music 1 (ver AA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popn2.zip") do set ROM=%%~a
for %%a in ("Pop'n Music 2 (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popn3.zip") do set ROM=%%~a
for %%a in ("Pop'n Music 3 (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popnpop.zip") do set ROM=%%~a
for %%a in ("Pop'n Pop (Ver 2.07O 1998-02-09)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popspops.zip") do set ROM=%%~a
for %%a in ("Pop's Pop's") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popeye.zip") do set ROM=%%~a
for %%a in ("Popeye (revision D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("popper.zip") do set ROM=%%~a
for %%a in ("Popper") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("porky.zip") do set ROM=%%~a
for %%a in ("Porky") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("portrait.zip") do set ROM=%%~a
for %%a in ("Portraits (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("potopoto.zip") do set ROM=%%~a
for %%a in ("Poto Poto (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("poundfor.zip") do set ROM=%%~a
for %%a in ("Pound for Pound (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kok.zip") do set ROM=%%~a
for %%a in ("Povar - Sobrat' Buran - Agroprom (Arcade multi-game bootleg of ZX Spectrum 'Cookie', 'Jetpac' & 'Pssst')") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("powerbal.zip") do set ROM=%%~a
for %%a in ("Power Balls") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_pwbld.zip") do set ROM=%%~a
for %%a in ("Power Blade (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pdrift.zip") do set ROM=%%~a
for %%a in ("Power Drift (World, Rev A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("powerdrv.zip") do set ROM=%%~a
for %%a in ("Power Drive") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("powerins.zip") do set ROM=%%~a
for %%a in ("Power Instinct (USA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pwrinst2.zip") do set ROM=%%~a
for %%a in ("Power Instinct 2 (US, Ver. 94-04-08)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pwrkick.zip") do set ROM=%%~a
for %%a in ("Power Kick (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("powrplay.zip") do set ROM=%%~a
for %%a in ("Power Play") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pspikes.zip") do set ROM=%%~a
for %%a in ("Power Spikes (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pspikes2.zip") do set ROM=%%~a
for %%a in ("Power Spikes II (NGM-068)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("psurge.zip") do set ROM=%%~a
for %%a in ("Power Surge") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbillian.zip") do set ROM=%%~a
for %%a in ("Prebillian") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("preisle2.zip") do set ROM=%%~a
for %%a in ("Prehistoric Isle 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("prehisle.zip") do set ROM=%%~a
for %%a in ("Prehistoric Isle in 1930 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("prmrsocr.zip") do set ROM=%%~a
for %%a in ("Premier Soccer (ver EAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sailormn.zip") do set ROM=%%~a
for %%a in ("Pretty Soldier Sailor Moon (Ver. 95-03-22B, Europe)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("primrage.zip") do set ROM=%%~a
for %%a in ("Primal Rage (version 2.3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("primglex.zip") do set ROM=%%~a
for %%a in ("Prime Goal EX (Japan, PG1-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("prikura.zip") do set ROM=%%~a
for %%a in ("Princess Clara Daisakusen (J 960910 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tryout.zip") do set ROM=%%~a
for %%a in ("Pro Baseball Skill Tryout (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cprobowl.zip") do set ROM=%%~a
for %%a in ("Pro Bowling (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("prosoccr.zip") do set ROM=%%~a
for %%a in ("Pro Soccer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cpsoccer.zip") do set ROM=%%~a
for %%a in ("Pro Soccer (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("prosport.zip") do set ROM=%%~a
for %%a in ("Pro Sports - Bowling, Tennis, and Golf") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cptennis.zip") do set ROM=%%~a
for %%a in ("Pro Tennis (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_pwrst.zip") do set ROM=%%~a
for %%a in ("Pro Wrestling (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("profpac.zip") do set ROM=%%~a
for %%a in ("Professor Pac-Man") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("progear.zip") do set ROM=%%~a
for %%a in ("Progear (USA 010117)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("progress.zip") do set ROM=%%~a
for %%a in ("Progress") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("promutrv.zip") do set ROM=%%~a
for %%a in ("Progressive Music Trivia (Question set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("propcycl.zip") do set ROM=%%~a
for %%a in ("Prop Cycle (Rev. PR2 Ver.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("psychic5.zip") do set ROM=%%~a
for %%a in ("Psychic 5 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("psyforce.zip") do set ROM=%%~a
for %%a in ("Psychic Force (Ver 2.4O)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("psychos.zip") do set ROM=%%~a
for %%a in ("Psycho Soldier (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("oscar.zip") do set ROM=%%~a
for %%a in ("Psycho-Nics Oscar (World revision 0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("psyvaria.zip") do set ROM=%%~a
for %%a in ("Psyvariar -Medium Unit- (V2.04J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("psyvarrv.zip") do set ROM=%%~a
for %%a in ("Psyvariar -Revision- (V2.04J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pulirula.zip") do set ROM=%%~a
for %%a in ("PuLiRuLa (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puchicar.zip") do set ROM=%%~a
for %%a in ("Puchi Carat (Ver 2.02O 1997-10-29)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puckman.zip") do set ROM=%%~a
for %%a in ("Puck Man (Japan set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puckpkmn.zip") do set ROM=%%~a
for %%a in ("Puckman Pockimon (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pulsar.zip") do set ROM=%%~a
for %%a in ("Pulsar") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pulstar.zip") do set ROM=%%~a
for %%a in ("Pulstar") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("punchout.zip") do set ROM=%%~a
for %%a in ("Punch-Out!! (Rev B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("punkshot.zip") do set ROM=%%~a
for %%a in ("Punk Shot (US 4 Players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pururun.zip") do set ROM=%%~a
for %%a in ("Pururun") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puyo.zip") do set ROM=%%~a
for %%a in ("Puyo Puyo (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puyopuy2.zip") do set ROM=%%~a
for %%a in ("Puyo Puyo 2 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puyosun.zip") do set ROM=%%~a
for %%a in ("Puyo Puyo Sun (J 961115 V0.001)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puzzloop.zip") do set ROM=%%~a
for %%a in ("Puzz Loop (Europe, v0.94)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pzloop2.zip") do set ROM=%%~a
for %%a in ("Puzz Loop 2 (Euro 010302)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puzzlove.zip") do set ROM=%%~a
for %%a in ("PuzzLove") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ichir.zip") do set ROM=%%~a
for %%a in ("Puzzle & Action- Ichidant-R (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sandor.zip") do set ROM=%%~a
for %%a in ("Puzzle & Action- Sando-R (J 951114 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tantr.zip") do set ROM=%%~a
for %%a in ("Puzzle & Action- Tant-R (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbobble.zip") do set ROM=%%~a
for %%a in ("Puzzle Bobble (Japan, B-System)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbobblen.zip") do set ROM=%%~a
for %%a in ("Puzzle Bobble - Bust-A-Move (Neo-Geo) (NGM-083)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbobble2.zip") do set ROM=%%~a
for %%a in ("Puzzle Bobble 2 (Ver 2.3O 1995-07-31)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbobbl2n.zip") do set ROM=%%~a
for %%a in ("Puzzle Bobble 2 - Bust-A-Move Again (Neo-Geo)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbobble3.zip") do set ROM=%%~a
for %%a in ("Puzzle Bobble 3 (Ver 2.1O 1996-09-27)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pbobble4.zip") do set ROM=%%~a
for %%a in ("Puzzle Bobble 4 (Ver 2.04O 1997-12-19)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pzlbreak.zip") do set ROM=%%~a
for %%a in ("Puzzle Break") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puzlclub.zip") do set ROM=%%~a
for %%a in ("Puzzle Club (Japan prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pzlbowl.zip") do set ROM=%%~a
for %%a in ("Puzzle De Bowling (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puzzledp.zip") do set ROM=%%~a
for %%a in ("Puzzle De Pon!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puzzlekg.zip") do set ROM=%%~a
for %%a in ("Puzzle King (Dance & Puzzle)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("4in1boot.zip") do set ROM=%%~a
for %%a in ("Puzzle King (PacMan 2, Tetris, HyperMan 2, Snow Bros.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("uopoko.zip") do set ROM=%%~a
for %%a in ("Puzzle Uo Poko (International)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mushitam.zip") do set ROM=%%~a
for %%a in ("Puzzle! Mushihime-Tama (2005-09-09.MASTER VER)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("joyjoy.zip") do set ROM=%%~a
for %%a in ("Puzzled - Joy Joy Kid (NGM-021)(NGH-021)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puzzli.zip") do set ROM=%%~a
for %%a in ("Puzzli") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("puzzli2.zip") do set ROM=%%~a
for %%a in ("Puzzli 2 (ver. 100)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pyenaget.zip") do set ROM=%%~a
for %%a in ("Pye-nage Taikai") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("phpython.zip") do set ROM=%%~a
for %%a in ("Python (Photon System)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qbert.zip") do set ROM=%%~a
for %%a in ("Q-bert (US set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qbertqub.zip") do set ROM=%%~a
for %%a in ("Q-bert's Qubes") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qb3.zip") do set ROM=%%~a
for %%a in ("QB-3 (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qix.zip") do set ROM=%%~a
for %%a in ("Qix (Rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quantum.zip") do set ROM=%%~a
for %%a in ("Quantum (rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quarterb.zip") do set ROM=%%~a
for %%a in ("Quarterback (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quartet.zip") do set ROM=%%~a
for %%a in ("Quartet (Rev A, 8751 315-5194)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quasar.zip") do set ROM=%%~a
for %%a in ("Quasar (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quester.zip") do set ROM=%%~a
for %%a in ("Quester (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qad.zip") do set ROM=%%~a
for %%a in ("Quiz & Dragons- Capcom Quiz Game (USA 920701)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("inufuku.zip") do set ROM=%%~a
for %%a in ("Quiz & Variety Sukusuku Inufuku (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quiz.zip") do set ROM=%%~a
for %%a in ("Quiz (Revision 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quiz211.zip") do set ROM=%%~a
for %%a in ("Quiz (Revision 2.11)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quiz365.zip") do set ROM=%%~a
for %%a in ("Quiz 365 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizmoon.zip") do set ROM=%%~a
for %%a in ("Quiz Bisyoujo Senshi Sailor Moon - Chiryoku Tairyoku Toki no Un") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qzchikyu.zip") do set ROM=%%~a
for %%a in ("Quiz Chikyu Bouei Gun (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qcrayon.zip") do set ROM=%%~a
for %%a in ("Quiz Crayon Shinchan (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizdna.zip") do set ROM=%%~a
for %%a in ("Quiz DNA no Hanran (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizdais.zip") do set ROM=%%~a
for %%a in ("Quiz Daisousa Sen - The Last Count Down (NGM-023)(NGH-023)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qdrmfgp.zip") do set ROM=%%~a
for %%a in ("Quiz Do Re Mi Fa Grand Prix (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qdrmfgp2.zip") do set ROM=%%~a
for %%a in ("Quiz Do Re Mi Fa Grand Prix 2 - Shin-Kyoku Nyuukadayo (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizf1.zip") do set ROM=%%~a
for %%a in ("Quiz F1 1-2 Finish (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gakupara.zip") do set ROM=%%~a
for %%a in ("Quiz Gakuen Paradise (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qgakumon.zip") do set ROM=%%~a
for %%a in ("Quiz Gakumon no Susume (Japan ver. JA2 Type L)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gekiretu.zip") do set ROM=%%~a
for %%a in ("Quiz Gekiretsu Scramble (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qgh.zip") do set ROM=%%~a
for %%a in ("Quiz Ghost Hunter (Japan, ROM Based)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizhq.zip") do set ROM=%%~a
for %%a in ("Quiz H.Q. (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qjinsei.zip") do set ROM=%%~a
for %%a in ("Quiz Jinsei Gekijoh (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizkof.zip") do set ROM=%%~a
for %%a in ("Quiz King of Fighters (SAM-080)(SAH-080)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qzkklogy.zip") do set ROM=%%~a
for %%a in ("Quiz Kokology") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qzkklgy2.zip") do set ROM=%%~a
for %%a in ("Quiz Kokology 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizdai2.zip") do set ROM=%%~a
for %%a in ("Quiz Meitantei Neo & Geo - Quiz Daisousa Sen part 2 (NGM-042)(NGH-042)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizmeku.zip") do set ROM=%%~a
for %%a in ("Quiz Mekurumeku Story (Japan, ROM Based)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qndream.zip") do set ROM=%%~a
for %%a in ("Quiz Nanairo Dreams- Nijiirochou no Kiseki (Japan 960826)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizo.zip") do set ROM=%%~a
for %%a in ("Quiz Olympic (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizpani.zip") do set ROM=%%~a
for %%a in ("Quiz Panicuru Fantasy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qzquest.zip") do set ROM=%%~a
for %%a in ("Quiz Quest - Hime to Yuusha no Monogatari (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qrouka.zip") do set ROM=%%~a
for %%a in ("Quiz Rouka Ni Tattenasai (Japan, ROM Based)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qsangoku.zip") do set ROM=%%~a
for %%a in ("Quiz Sangokushi (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qzshowby.zip") do set ROM=%%~a
for %%a in ("Quiz Sekai wa SHOW by shobai (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qsww.zip") do set ROM=%%~a
for %%a in ("Quiz Syukudai wo Wasuremashita (Japan, Floppy Based, FD1094 317-0058-08b)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quiztvqq.zip") do set ROM=%%~a
for %%a in ("Quiz TV Gassyuukoku Q&Q (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qtheater.zip") do set ROM=%%~a
for %%a in ("Quiz Theater - 3tsu no Monogatari (Ver 2.3J 1994-11-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qtono1.zip") do set ROM=%%~a
for %%a in ("Quiz Tonosama no Yabou (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qtono2j.zip") do set ROM=%%~a
for %%a in ("Quiz Tonosama no Yabou 2- Zenkoku-ban (Japan 950123)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qtorimon.zip") do set ROM=%%~a
for %%a in ("Quiz Torimonochou (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hotdebut.zip") do set ROM=%%~a
for %%a in ("Quiz de Idol! Hot Debut (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizard.zip") do set ROM=%%~a
for %%a in ("Quizard (v1.8)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizard2.zip") do set ROM=%%~a
for %%a in ("Quizard 2 (v2.3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizard3.zip") do set ROM=%%~a
for %%a in ("Quizard 3 (v3.4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizmstr.zip") do set ROM=%%~a
for %%a in ("Quizmaster (German)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizvadr.zip") do set ROM=%%~a
for %%a in ("Quizvaders (39-360-078)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("qwak.zip") do set ROM=%%~a
for %%a in ("Qwak (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rshark.zip") do set ROM=%%~a
for %%a in ("R-Shark") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rtype.zip") do set ROM=%%~a
for %%a in ("R-Type (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rtype2.zip") do set ROM=%%~a
for %%a in ("R-Type II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rtypeleo.zip") do set ROM=%%~a
for %%a in ("R-Type Leo (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_rcpam.zip") do set ROM=%%~a
for %%a in ("R.C. Pro-Am (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("r2dtank.zip") do set ROM=%%~a
for %%a in ("R2D Tank") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rabbit.zip") do set ROM=%%~a
for %%a in ("Rabbit (Asia 3-6)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rabiolep.zip") do set ROM=%%~a
for %%a in ("Rabio Lepus (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raccoon.zip") do set ROM=%%~a
for %%a in ("Raccoon World") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("racedriv.zip") do set ROM=%%~a
for %%a in ("Race Drivin' (cockpit, rev 5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("racingb.zip") do set ROM=%%~a
for %%a in ("Racing Beat (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rachero.zip") do set ROM=%%~a
for %%a in ("Racing Hero (FD1094 317-0144)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rackemup.zip") do set ROM=%%~a
for %%a in ("Rack 'em Up (program code L)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("racknrol.zip") do set ROM=%%~a
for %%a in ("Rack + Roll") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("radm.zip") do set ROM=%%~a
for %%a in ("Rad Mobile (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_radrc.zip") do set ROM=%%~a
for %%a in ("Rad Racer (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_radr2.zip") do set ROM=%%~a
for %%a in ("Rad Racer II (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("radr.zip") do set ROM=%%~a
for %%a in ("Rad Rally (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("radarscp.zip") do set ROM=%%~a
for %%a in ("Radar Scope") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("radarzon.zip") do set ROM=%%~a
for %%a in ("Radar Zone") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rsgun.zip") do set ROM=%%~a
for %%a in ("Radiant Silvergun (JUET 980523 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("radrad.zip") do set ROM=%%~a
for %%a in ("Radical Radial") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("radikalb.zip") do set ROM=%%~a
for %%a in ("Radikal Bikers (Version 2.02)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raflesia.zip") do set ROM=%%~a
for %%a in ("Rafflesia (315-5162)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rotd.zip") do set ROM=%%~a
for %%a in ("Rage of the Dragons (NGM-264-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ragnagrd.zip") do set ROM=%%~a
for %%a in ("Ragnagard - Shin-Oh-Ken") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raiden.zip") do set ROM=%%~a
for %%a in ("Raiden (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raidendx.zip") do set ROM=%%~a
for %%a in ("Raiden DX (UK)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rdft.zip") do set ROM=%%~a
for %%a in ("Raiden Fighters (Germany)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rdft2.zip") do set ROM=%%~a
for %%a in ("Raiden Fighters 2 - Operation Hell Dive (Germany)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rfjet.zip") do set ROM=%%~a
for %%a in ("Raiden Fighters Jet (Germany)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raiden2.zip") do set ROM=%%~a
for %%a in ("Raiden II (US, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("r2dx_v33.zip") do set ROM=%%~a
for %%a in ("Raiden II New - Raiden DX (newer V33 PCB) (Raiden DX EEPROM)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raiders.zip") do set ROM=%%~a
for %%a in ("Raiders") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raiders5.zip") do set ROM=%%~a
for %%a in ("Raiders5") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stratof.zip") do set ROM=%%~a
for %%a in ("Raiga - Strato Fighter (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rchase.zip") do set ROM=%%~a
for %%a in ("Rail Chase (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raimais.zip") do set ROM=%%~a
for %%a in ("Raimais (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rbisland.zip") do set ROM=%%~a
for %%a in ("Rainbow Islands (new version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rallybik.zip") do set ROM=%%~a
for %%a in ("Rally Bike - Dash Yarou") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rallyx.zip") do set ROM=%%~a
for %%a in ("Rally X (32k Ver.-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rambo3.zip") do set ROM=%%~a
for %%a in ("Rambo III (Europe)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rampage.zip") do set ROM=%%~a
for %%a in ("Rampage (Rev 3, 8-27-86)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rmpgwt.zip") do set ROM=%%~a
for %%a in ("Rampage- World Tour (rev 1.3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rampart.zip") do set ROM=%%~a
for %%a in ("Rampart (Trackball)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rapidfir.zip") do set ROM=%%~a
for %%a in ("Rapid Fire v1.1 (Build 239)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rastan.zip") do set ROM=%%~a
for %%a in ("Rastan (World Rev 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raveracw.zip") do set ROM=%%~a
for %%a in ("Rave Racer (Rev. RV2, World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raycris.zip") do set ROM=%%~a
for %%a in ("Ray Crisis (V2.03J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("raystorm.zip") do set ROM=%%~a
for %%a in ("Ray Storm (Ver 2.06A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("razmataz.zip") do set ROM=%%~a
for %%a in ("Razzmatazz") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("reactor.zip") do set ROM=%%~a
for %%a in ("Reactor") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("reaktor.zip") do set ROM=%%~a
for %%a in ("Reaktor (Track & Field conversion)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rbff1.zip") do set ROM=%%~a
for %%a in ("Real Bout Fatal Fury - Real Bout Garou Densetsu (NGM-095)(NGH-095)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rbff2.zip") do set ROM=%%~a
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers - Real Bout Garou Densetsu 2 - the newcomers (NGM-2400)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rbffspec.zip") do set ROM=%%~a
for %%a in ("Real Bout Fatal Fury Special - Real Bout Garou Densetsu Special") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rltennis.zip") do set ROM=%%~a
for %%a in ("Reality Tennis") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("recalh.zip") do set ROM=%%~a
for %%a in ("Recalhorn (Ver 1.42J 1994-5-11) (Prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("recordbr.zip") do set ROM=%%~a
for %%a in ("Recordbreaker (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("redalert.zip") do set ROM=%%~a
for %%a in ("Red Alert") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("redbaron.zip") do set ROM=%%~a
for %%a in ("Red Baron (Revised Hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("redclash.zip") do set ROM=%%~a
for %%a in ("Red Clash (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("redearth.zip") do set ROM=%%~a
for %%a in ("Red Earth (Euro 961121)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("redrobin.zip") do set ROM=%%~a
for %%a in ("Red Robin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("redlin2p.zip") do set ROM=%%~a
for %%a in ("Redline Racer (2 players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("reelfun.zip") do set ROM=%%~a
for %%a in ("Reel Fun (Version 7.03)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("regulus.zip") do set ROM=%%~a
for %%a in ("Regulus (315-5033, Rev A.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("reikaids.zip") do set ROM=%%~a
for %%a in ("Reikai Doushi (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("relief.zip") do set ROM=%%~a
for %%a in ("Relief Pitcher (set 1, 07 Jun 1992 - 28 May 1992)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("renegade.zip") do set ROM=%%~a
for %%a in ("Renegade (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("renju.zip") do set ROM=%%~a
for %%a in ("Renju Kizoku") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("repulse.zip") do set ROM=%%~a
for %%a in ("Repulse") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rescue.zip") do set ROM=%%~a
for %%a in ("Rescue") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rescraid.zip") do set ROM=%%~a
for %%a in ("Rescue Raider (5-11-87) (non-cartridge)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("retofinv.zip") do set ROM=%%~a
for %%a in ("Return of the Invaders") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jedi.zip") do set ROM=%%~a
for %%a in ("Return of the Jedi") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("revx.zip") do set ROM=%%~a
for %%a in ("Revolution X (rev 1.0 6-16-94)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rezon.zip") do set ROM=%%~a
for %%a in ("Rezon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ribbit.zip") do set ROM=%%~a
for %%a in ("Ribbit!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ridleofp.zip") do set ROM=%%~a
for %%a in ("Riddle of Pythagoras (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ridgerac.zip") do set ROM=%%~a
for %%a in ("Ridge Racer (Rev. RR3, World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ridgera2.zip") do set ROM=%%~a
for %%a in ("Ridge Racer 2 (Rev. RRS2, World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ridingf.zip") do set ROM=%%~a
for %%a in ("Riding Fight (Ver 1.0O)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ridhero.zip") do set ROM=%%~a
for %%a in ("Riding Hero (NGM-006)(NGH-006)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rimrockn.zip") do set ROM=%%~a
for %%a in ("Rim Rockin' Basketball (V2.2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ringrage.zip") do set ROM=%%~a
for %%a in ("Ring Rage (Ver 2.3O 1992-08-09)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ringdest.zip") do set ROM=%%~a
for %%a in ("Ring of Destruction- Slammasters II (Euro 940902)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("riot.zip") do set ROM=%%~a
for %%a in ("Riot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("riotcity.zip") do set ROM=%%~a
for %%a in ("Riot City (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ripcord.zip") do set ROM=%%~a
for %%a in ("Rip Cord") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ripoff.zip") do set ROM=%%~a
for %%a in ("Rip Off") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ripribit.zip") do set ROM=%%~a
for %%a in ("Ripper Ribbit (Version 2.8.4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rotr.zip") do set ROM=%%~a
for %%a in ("Rise of the Robots (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("riskchal.zip") do set ROM=%%~a
for %%a in ("Risky Challenge") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rvschool.zip") do set ROM=%%~a
for %%a in ("Rival Schools- United By Fate (Euro 971117)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rpatrol.zip") do set ROM=%%~a
for %%a in ("River Patrol (Orca)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("roadblst.zip") do set ROM=%%~a
for %%a in ("Road Blasters (upright, rev 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("roadf.zip") do set ROM=%%~a
for %%a in ("Road Fighter (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("roadriot.zip") do set ROM=%%~a
for %%a in ("Road Riot 4WD (set 1, 13 Nov 1991)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("roadrunn.zip") do set ROM=%%~a
for %%a in ("Road Runner (rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_rdwr.zip") do set ROM=%%~a
for %%a in ("RoadWars (Arcadia, V 2.3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("roboarmy.zip") do set ROM=%%~a
for %%a in ("Robo Army") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("robowres.zip") do set ROM=%%~a
for %%a in ("Robo Wres 2001") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("robocop.zip") do set ROM=%%~a
for %%a in ("Robocop (World revision 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("robocop2.zip") do set ROM=%%~a
for %%a in ("Robocop 2 (Euro-Asia v0.10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("robotbwl.zip") do set ROM=%%~a
for %%a in ("Robot Bowl") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("robotron.zip") do set ROM=%%~a
for %%a in ("Robotron- 2084 (Solid Blue label)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rocnrope.zip") do set ROM=%%~a
for %%a in ("Roc'n Rope") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rockclim.zip") do set ROM=%%~a
for %%a in ("Rock Climber") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rockduck.zip") do set ROM=%%~a
for %%a in ("Rock Duck (prototype-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rocktris.zip") do set ROM=%%~a
for %%a in ("Rock Tris") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rockn3.zip") do set ROM=%%~a
for %%a in ("Rock'n 3 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rockn4.zip") do set ROM=%%~a
for %%a in ("Rock'n 4 (Japan, prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rocknms.zip") do set ROM=%%~a
for %%a in ("Rock'n MegaSession (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rockrage.zip") do set ROM=%%~a
for %%a in ("Rock'n Rage (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rockn.zip") do set ROM=%%~a
for %%a in ("Rock'n Tread (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rockn2.zip") do set ROM=%%~a
for %%a in ("Rock'n Tread 2 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_rkats.zip") do set ROM=%%~a
for %%a in ("Rockin' Kats (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rodland.zip") do set ROM=%%~a
for %%a in ("Rod-Land (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rohga.zip") do set ROM=%%~a
for %%a in ("Rohga Armor Force (Asia-Europe v5.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rjammer.zip") do set ROM=%%~a
for %%a in ("Roller Jammer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rollerg.zip") do set ROM=%%~a
for %%a in ("Rollergames (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rollingc.zip") do set ROM=%%~a
for %%a in ("Rolling Crash - Moon Base") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rolcrush.zip") do set ROM=%%~a
for %%a in ("Rolling Crush (version 1.07.E - 1999-02-11)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rthunder.zip") do set ROM=%%~a
for %%a in ("Rolling Thunder (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rthun2.zip") do set ROM=%%~a
for %%a in ("Rolling Thunder 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rtriv.zip") do set ROM=%%~a
for %%a in ("Romar Triv") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rompers.zip") do set ROM=%%~a
for %%a in ("Rompers (Japan, new version (Rev B))") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("clapapa.zip") do set ROM=%%~a
for %%a in ("Rootin' Tootin' - La-Pa-Pa (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rotaryf.zip") do set ROM=%%~a
for %%a in ("Rotary Fighter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("roughrac.zip") do set ROM=%%~a
for %%a in ("Rough Racer (Japan, Floppy Based, FD1094 317-0058-06b)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rougien.zip") do set ROM=%%~a
for %%a in ("Rougien") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("roundup5.zip") do set ROM=%%~a
for %%a in ("Round Up 5 - Super Delta Force") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("roundup.zip") do set ROM=%%~a
for %%a in ("Round-Up") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("route16.zip") do set ROM=%%~a
for %%a in ("Route 16 (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rumba.zip") do set ROM=%%~a
for %%a in ("Rumba Lumber") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rungun.zip") do set ROM=%%~a
for %%a in ("Run and Gun (ver EAA 1993 10.8)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rungun2.zip") do set ROM=%%~a
for %%a in ("Run and Gun 2 (ver UAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("runaway.zip") do set ROM=%%~a
for %%a in ("Runaway (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_rnatk.zip") do set ROM=%%~a
for %%a in ("Rush'n Attack (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rushhero.zip") do set ROM=%%~a
for %%a in ("Rushing Heroes (ver UAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_rygar.zip") do set ROM=%%~a
for %%a in ("Rygar (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rygar.zip") do set ROM=%%~a
for %%a in ("Rygar (US set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ryujin.zip") do set ROM=%%~a
for %%a in ("Ryu Jin (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ryukyu.zip") do set ROM=%%~a
for %%a in ("RyuKyu (Japan) (FD1094 317-5023)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sosterm.zip") do set ROM=%%~a
for %%a in ("S.O.S.") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spy.zip") do set ROM=%%~a
for %%a in ("S.P.Y. - Special Project Y (World ver. N)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("srdmissn.zip") do set ROM=%%~a
for %%a in ("S.R.D. Mission") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssmissin.zip") do set ROM=%%~a
for %%a in ("S.S. Mission") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stunrun.zip") do set ROM=%%~a
for %%a in ("S.T.U.N. Runner (rev 6)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("svg.zip") do set ROM=%%~a
for %%a in ("S.V.G. - Spectral vs Generation (M68k label V200) (ARM label V200, ROM 10-11-05 S.V.G V201)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("searchar.zip") do set ROM=%%~a
for %%a in ("SAR - Search And Rescue (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sdfight.zip") do set ROM=%%~a
for %%a in ("SD Fighters (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("neobattl.zip") do set ROM=%%~a
for %%a in ("SD Gundam Neo Battling (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sdgndmps.zip") do set ROM=%%~a
for %%a in ("SD Gundam Psycho Salamander no Kyoui") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sdi.zip") do set ROM=%%~a
for %%a in ("SDI - Strategic Defense Initiative (Japan, newer, System 16A, FD1089B 317-0027)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfx.zip") do set ROM=%%~a
for %%a in ("SF-X") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("svcpcb.zip") do set ROM=%%~a
for %%a in ("SNK vs. Capcom - SVC Chaos (JAMMA PCB, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("svc.zip") do set ROM=%%~a
for %%a in ("SNK vs. Capcom - SVC Chaos (NGM-2690)(NGH-2690)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("swat.zip") do set ROM=%%~a
for %%a in ("SWAT (315-5048)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("swatpolc.zip") do set ROM=%%~a
for %%a in ("SWAT Police") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sabotenb.zip") do set ROM=%%~a
for %%a in ("Saboten Bombers (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("safari.zip") do set ROM=%%~a
for %%a in ("Safari (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("safarir.zip") do set ROM=%%~a
for %%a in ("Safari Rally (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stdragon.zip") do set ROM=%%~a
for %%a in ("Saint Dragon (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hanagumi.zip") do set ROM=%%~a
for %%a in ("Sakura Taisen - Hanagumi Taisen Columns (J 971007 V1.010)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("salamand.zip") do set ROM=%%~a
for %%a in ("Salamander (version D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("salmndr2.zip") do set ROM=%%~a
for %%a in ("Salamander 2 (ver JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("salarymc.zip") do set ROM=%%~a
for %%a in ("Salary Man Champ (GCA18 VER. JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("samurai.zip") do set ROM=%%~a
for %%a in ("Samurai") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("samuraia.zip") do set ROM=%%~a
for %%a in ("Samurai Aces (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tsamurai.zip") do set ROM=%%~a
for %%a in ("Samurai Nihon-Ichi (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("samsho.zip") do set ROM=%%~a
for %%a in ("Samurai Shodown - Samurai Spirits (NGM-045)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("samsho2.zip") do set ROM=%%~a
for %%a in ("Samurai Shodown II - Shin Samurai Spirits - Haohmaru jigokuhen (NGM-063)(NGH-063)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("samsho3.zip") do set ROM=%%~a
for %%a in ("Samurai Shodown III - Samurai Spirits - Zankurou Musouken (NGM-087)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("samsho4.zip") do set ROM=%%~a
for %%a in ("Samurai Shodown IV - Amakusa's Revenge - Samurai Spirits - Amakusa Kourin (NGM-222)(NGH-222)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("samsho5.zip") do set ROM=%%~a
for %%a in ("Samurai Shodown V - Samurai Spirits Zero (NGM-2700)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("samsh5sp.zip") do set ROM=%%~a
for %%a in ("Samurai Shodown V Special - Samurai Spirits Zero Special (NGM-2720)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfrush.zip") do set ROM=%%~a
for %%a in ("San Francisco Rush") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sandscrp.zip") do set ROM=%%~a
for %%a in ("Sand Scorpion") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sarge.zip") do set ROM=%%~a
for %%a in ("Sarge") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sasuke.zip") do set ROM=%%~a
for %%a in ("Sasuke vs. Commander") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("satansat.zip") do set ROM=%%~a
for %%a in ("Satan of Saturn (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shollow.zip") do set ROM=%%~a
for %%a in ("Satan's Hollow (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("slammast.zip") do set ROM=%%~a
for %%a in ("Saturday Night Slam Masters (World 930713)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("saturnzi.zip") do set ROM=%%~a
for %%a in ("Saturn") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sauro.zip") do set ROM=%%~a
for %%a in ("Sauro") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("savagere.zip") do set ROM=%%~a
for %%a in ("Savage Reign - Fu'un Mokushiroku - kakutou sousei") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("schmeisr.zip") do set ROM=%%~a
for %%a in ("Schmeiser Robo (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scion.zip") do set ROM=%%~a
for %%a in ("Scion") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scotrsht.zip") do set ROM=%%~a
for %%a in ("Scooter Shooter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scorpion.zip") do set ROM=%%~a
for %%a in ("Scorpion (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scrabble.zip") do set ROM=%%~a
for %%a in ("Scrabble (rev. F)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scramble.zip") do set ROM=%%~a
for %%a in ("Scramble") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sspirits.zip") do set ROM=%%~a
for %%a in ("Scramble Spirits (World, Floppy Based)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scregg.zip") do set ROM=%%~a
for %%a in ("Scrambled Egg") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("screwloo.zip") do set ROM=%%~a
for %%a in ("Screw Loose (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cscrtry.zip") do set ROM=%%~a
for %%a in ("Scrum Try (DECO Cassette, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scudhamm.zip") do set ROM=%%~a
for %%a in ("Scud Hammer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("seabass.zip") do set ROM=%%~a
for %%a in ("Sea Bass Fishing (JUET 971110 V0.001)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("seabattl.zip") do set ROM=%%~a
for %%a in ("Sea Battle (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfposeid.zip") do set ROM=%%~a
for %%a in ("Sea Fighter Poseidon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shpeng.zip") do set ROM=%%~a
for %%a in ("Sea Hunter Penguin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("seawolf.zip") do set ROM=%%~a
for %%a in ("Sea Wolf (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("seawolf2.zip") do set ROM=%%~a
for %%a in ("Sea Wolf II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("searchey.zip") do set ROM=%%~a
for %%a in ("Search Eye (English - Korean - Japanese - Italian)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("searchp2.zip") do set ROM=%%~a
for %%a in ("Search Eye Plus V2.0") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("secretag.zip") do set ROM=%%~a
for %%a in ("Secret Agent (World revision 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sectionz.zip") do set ROM=%%~a
for %%a in ("Section Z (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssfindo.zip") do set ROM=%%~a
for %%a in ("See See Find Out") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("seganinj.zip") do set ROM=%%~a
for %%a in ("Sega Ninja (315-5102)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sonic.zip") do set ROM=%%~a
for %%a in ("SegaSonic The Hedgehog (Japan, rev. C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("seicross.zip") do set ROM=%%~a
for %%a in ("Seicross") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("selfeena.zip") do set ROM=%%~a
for %%a in ("Sel Feena") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("senknow.zip") do set ROM=%%~a
for %%a in ("Sen-Know (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sengekis.zip") do set ROM=%%~a
for %%a in ("Sengeki Striker (Asia)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sengoku.zip") do set ROM=%%~a
for %%a in ("Sengoku - Sengoku Denshou (NGM-017)(NGH-017)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sengoku2.zip") do set ROM=%%~a
for %%a in ("Sengoku 2 - Sengoku Denshou 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sengoku3.zip") do set ROM=%%~a
for %%a in ("Sengoku 3 - Sengoku Densho 2001") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("senjyo.zip") do set ROM=%%~a
for %%a in ("Senjyo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("senkyu.zip") do set ROM=%%~a
for %%a in ("Senkyu (Japan set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sentetst.zip") do set ROM=%%~a
for %%a in ("Sente Diagnostic Cartridge") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shackled.zip") do set ROM=%%~a
for %%a in ("Shackled (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shdancer.zip") do set ROM=%%~a
for %%a in ("Shadow Dancer (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shadfrce.zip") do set ROM=%%~a
for %%a in ("Shadow Force (US Version 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shadoww.zip") do set ROM=%%~a
for %%a in ("Shadow Warriors (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shadowld.zip") do set ROM=%%~a
for %%a in ("Shadowland (YD3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shanghai.zip") do set ROM=%%~a
for %%a in ("Shanghai (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shanhigw.zip") do set ROM=%%~a
for %%a in ("Shanghai - The Great Wall - Shanghai Triple Threat (JUE 950623 V1.005)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shangha2.zip") do set ROM=%%~a
for %%a in ("Shanghai II (Japan, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shangha3.zip") do set ROM=%%~a
for %%a in ("Shanghai III (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shangkid.zip") do set ROM=%%~a
for %%a in ("Shanghai Kid") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shngmtkb.zip") do set ROM=%%~a
for %%a in ("Shanghai Matekibuyuu") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shangtou.zip") do set ROM=%%~a
for %%a in ("Shanghai Sangokuhai Tougi (Ver 2.01J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shanghss.zip") do set ROM=%%~a
for %%a in ("Shanghai Shoryu Sairin (V2.03J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sharkatt.zip") do set ROM=%%~a
for %%a in ("Shark Attack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sshooter.zip") do set ROM=%%~a
for %%a in ("Sharpshooter (Rev 1.9)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sheriff.zip") do set ROM=%%~a
for %%a in ("Sheriff") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shienryu.zip") do set ROM=%%~a
for %%a in ("Shienryu (JUET 961226 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shikigam.zip") do set ROM=%%~a
for %%a in ("Shikigami no Shiro (V2.03J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toukon3.zip") do set ROM=%%~a
for %%a in ("Shin Nihon Pro Wrestling Toukon Retsuden 3 Arcade Edition (Japan, TR1-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tshingen.zip") do set ROM=%%~a
for %%a in ("Shingen Samurai-Fighter (Japan, English)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shinobi.zip") do set ROM=%%~a
for %%a in ("Shinobi (set 6, System 16A) (unprotected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shinfz.zip") do set ROM=%%~a
for %%a in ("Shinobi - FZ-2006 (Korean System 16 bootleg) (ISG Selection Master Type 2006)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_shnb3.zip") do set ROM=%%~a
for %%a in ("Shinobi III (Mega Play)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shocktro.zip") do set ROM=%%~a
for %%a in ("Shock Troopers (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shocktr2.zip") do set ROM=%%~a
for %%a in ("Shock Troopers - 2nd Squad") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shocking.zip") do set ROM=%%~a
for %%a in ("Shocking") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shogwarr.zip") do set ROM=%%~a
for %%a in ("Shogun Warriors (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shootout.zip") do set ROM=%%~a
for %%a in ("Shoot Out (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shootbul.zip") do set ROM=%%~a
for %%a in ("Shoot the Bull") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shootgal.zip") do set ROM=%%~a
for %%a in ("Shooting Gallery") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shtrider.zip") do set ROM=%%~a
for %%a in ("Shot Rider") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shougi.zip") do set ROM=%%~a
for %%a in ("Shougi") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shougi2.zip") do set ROM=%%~a
for %%a in ("Shougi Part II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shrike.zip") do set ROM=%%~a
for %%a in ("Shrike Avenger (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shuffle.zip") do set ROM=%%~a
for %%a in ("Shuffleboard") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shufshot.zip") do set ROM=%%~a
for %%a in ("Shuffleshot (v1.40)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shuttlei.zip") do set ROM=%%~a
for %%a in ("Shuttle Invader") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shuuz.zip") do set ROM=%%~a
for %%a in ("Shuuz (version 8.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sidearms.zip") do set ROM=%%~a
for %%a in ("Side Arms - Hyper Dyne (World, 861129)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sidepckt.zip") do set ROM=%%~a
for %%a in ("Side Pocket (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sidetrac.zip") do set ROM=%%~a
for %%a in ("Side Trak") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sidebs.zip") do set ROM=%%~a
for %%a in ("Side by Side (Ver 2.7 J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sidebs2.zip") do set ROM=%%~a
for %%a in ("Side by Side 2 (Ver 2.6 A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_sdwr.zip") do set ROM=%%~a
for %%a in ("Sidewinder (Arcadia, set 1, V 2.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("silentd.zip") do set ROM=%%~a
for %%a in ("Silent Dragon (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("silkworm.zip") do set ROM=%%~a
for %%a in ("Silk Worm (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("silvmil.zip") do set ROM=%%~a
for %%a in ("Silver Millennium") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("simpbowl.zip") do set ROM=%%~a
for %%a in ("Simpsons Bowling (GQ829 UAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sindbadm.zip") do set ROM=%%~a
for %%a in ("Sindbad Mystery") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sinistar.zip") do set ROM=%%~a
for %%a in ("Sinistar (revision 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cskater.zip") do set ROM=%%~a
for %%a in ("Skater (DECO Cassette, Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skimaxx.zip") do set ROM=%%~a
for %%a in ("Skimaxx") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skullxbo.zip") do set ROM=%%~a
for %%a in ("Skull & Crossbones (rev 5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skullfng.zip") do set ROM=%%~a
for %%a in ("Skull Fang (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skyadvnt.zip") do set ROM=%%~a
for %%a in ("Sky Adventure (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skyalert.zip") do set ROM=%%~a
for %%a in ("Sky Alert") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skyarmy.zip") do set ROM=%%~a
for %%a in ("Sky Army") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skybase.zip") do set ROM=%%~a
for %%a in ("Sky Base") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skybump.zip") do set ROM=%%~a
for %%a in ("Sky Bumper") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skychut.zip") do set ROM=%%~a
for %%a in ("Sky Chuter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skydest.zip") do set ROM=%%~a
for %%a in ("Sky Destroyer (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skydiver.zip") do set ROM=%%~a
for %%a in ("Sky Diver") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skyfox.zip") do set ROM=%%~a
for %%a in ("Sky Fox") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skykid.zip") do set ROM=%%~a
for %%a in ("Sky Kid (new version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skykiddx.zip") do set ROM=%%~a
for %%a in ("Sky Kid Deluxe (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skylancr.zip") do set ROM=%%~a
for %%a in ("Sky Lancer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skylove.zip") do set ROM=%%~a
for %%a in ("Sky Love") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skyraid.zip") do set ROM=%%~a
for %%a in ("Sky Raider") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skyskipr.zip") do set ROM=%%~a
for %%a in ("Sky Skipper") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skysmash.zip") do set ROM=%%~a
for %%a in ("Sky Smasher") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("skysoldr.zip") do set ROM=%%~a
for %%a in ("Sky Soldiers (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("slapshot.zip") do set ROM=%%~a
for %%a in ("Slap Shot (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("slipstrm.zip") do set ROM=%%~a
for %%a in ("Slip Stream (Brazil 950515)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("slither.zip") do set ROM=%%~a
for %%a in ("Slither (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("smashtv.zip") do set ROM=%%~a
for %%a in ("Smash T.V. (rev 8.00)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("snakjack.zip") do set ROM=%%~a
for %%a in ("Snacks'n Jaxson") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("snakepit.zip") do set ROM=%%~a
for %%a in ("Snake Pit") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("snapjack.zip") do set ROM=%%~a
for %%a in ("Snap Jack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("snapper.zip") do set ROM=%%~a
for %%a in ("Snapper (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("koroleva.zip") do set ROM=%%~a
for %%a in ("Snezhnaja Koroleva") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("snowbros.zip") do set ROM=%%~a
for %%a in ("Snow Bros. - Nick & Tom (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("snowbro2.zip") do set ROM=%%~a
for %%a in ("Snow Bros. 2 - With New Elves - Otenki Paradise") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("snowbro3.zip") do set ROM=%%~a
for %%a in ("Snow Brothers 3 - Magical Adventure") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("socbrawl.zip") do set ROM=%%~a
for %%a in ("Soccer Brawl (NGM-031)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("soccerss.zip") do set ROM=%%~a
for %%a in ("Soccer Superstars (ver EAC)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sokonuke.zip") do set ROM=%%~a
for %%a in ("Sokonuke Taisen Game (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("soldivid.zip") do set ROM=%%~a
for %%a in ("Sol Divide - The Sword Of Darkness") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("slrasslt.zip") do set ROM=%%~a
for %%a in ("Solar Assault (ver UAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("solarfox.zip") do set ROM=%%~a
for %%a in ("Solar Fox (upright)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_sjetm.zip") do set ROM=%%~a
for %%a in ("Solar Jetman (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("solarq.zip") do set ROM=%%~a
for %%a in ("Solar Quest") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("solarwar.zip") do set ROM=%%~a
for %%a in ("Solar War") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("soldam.zip") do set ROM=%%~a
for %%a in ("Soldam") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("amazon.zip") do set ROM=%%~a
for %%a in ("Soldier Girl Amazon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("solfigtr.zip") do set ROM=%%~a
for %%a in ("Solitary Fighter (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("solomon.zip") do set ROM=%%~a
for %%a in ("Solomon's Key (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("solvalou.zip") do set ROM=%%~a
for %%a in ("Solvalou (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sonson.zip") do set ROM=%%~a
for %%a in ("Son Son") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sblast2b.zip") do set ROM=%%~a
for %%a in ("Sonic Blast Man 2 Special Turbo (SNES bootleg)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sonicbom.zip") do set ROM=%%~a
for %%a in ("Sonic Boom (FD1094 317-0053)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_sonic.zip") do set ROM=%%~a
for %%a in ("Sonic The Hedgehog (Mega Play)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_soni2.zip") do set ROM=%%~a
for %%a in ("Sonic The Hedgehog 2 (Mega Play)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sstriker.zip") do set ROM=%%~a
for %%a in ("Sorcer Striker (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sotsugyo.zip") do set ROM=%%~a
for %%a in ("Sotsugyo Shousho") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sokyugrt.zip") do set ROM=%%~a
for %%a in ("Soukyugurentai - Terra Diver (JUET 960821 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("soulclbr.zip") do set ROM=%%~a
for %%a in ("Soul Calibur (World, SOC14-VER.C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("souledge.zip") do set ROM=%%~a
for %%a in ("Soul Edge Ver. II (World, SO4-VER.C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("soutenry.zip") do set ROM=%%~a
for %%a in ("Soutenryu (V2.07J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sspaceat.zip") do set ROM=%%~a
for %%a in ("Space Attack (upright set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sspacaho.zip") do set ROM=%%~a
for %%a in ("Space Attack - Head On") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacbeam.zip") do set ROM=%%~a
for %%a in ("Space Beam") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sbomber.zip") do set ROM=%%~a
for %%a in ("Space Bomber (ver. B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("schaser.zip") do set ROM=%%~a
for %%a in ("Space Chaser (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacecr.zip") do set ROM=%%~a
for %%a in ("Space Cruiser") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacduel.zip") do set ROM=%%~a
for %%a in ("Space Duel (version 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sdungeon.zip") do set ROM=%%~a
for %%a in ("Space Dungeon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spcenctr.zip") do set ROM=%%~a
for %%a in ("Space Encounters") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacefev.zip") do set ROM=%%~a
for %%a in ("Space Fever (New Ver.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("highsplt.zip") do set ROM=%%~a
for %%a in ("Space Fever High Splitter (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spfghmk2.zip") do set ROM=%%~a
for %%a in ("Space Fighter Mark II (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacefb.zip") do set ROM=%%~a
for %%a in ("Space Firebird (rev. 04-u)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spcforce.zip") do set ROM=%%~a
for %%a in ("Space Force (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacefrt.zip") do set ROM=%%~a
for %%a in ("Space Fortress (CVS)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacfury.zip") do set ROM=%%~a
for %%a in ("Space Fury (revision C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spaceg.zip") do set ROM=%%~a
for %%a in ("Space Guerrilla") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacegun.zip") do set ROM=%%~a
for %%a in ("Space Gun (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sharrier.zip") do set ROM=%%~a
for %%a in ("Space Harrier (Rev A, 8751 315-5163A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spaceint.zip") do set ROM=%%~a
for %%a in ("Space Intruder") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spcinv95.zip") do set ROM=%%~a
for %%a in ("Space Invaders '95- The Attack Of Lunar Loonies (Ver 2.5O 1995-06-14)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invqix.zip") do set ROM=%%~a
for %%a in ("Space Invaders - Qix Silver Anniversary Edition (Ver. 2.03)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invaders.zip") do set ROM=%%~a
for %%a in ("Space Invaders - Space Invaders M") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacedx.zip") do set ROM=%%~a
for %%a in ("Space Invaders DX (US, v2.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invad2ct.zip") do set ROM=%%~a
for %%a in ("Space Invaders II (Midway, cocktail)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invmulti.zip") do set ROM=%%~a
for %%a in ("Space Invaders Multigame (M8.03D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("invadpt2.zip") do set ROM=%%~a
for %%a in ("Space Invaders Part II (Taito)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spcking2.zip") do set ROM=%%~a
for %%a in ("Space King 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spclaser.zip") do set ROM=%%~a
for %%a in ("Space Laser") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacelnc.zip") do set ROM=%%~a
for %%a in ("Space Launcher") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spaceod.zip") do set ROM=%%~a
for %%a in ("Space Odyssey (version 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("panic.zip") do set ROM=%%~a
for %%a in ("Space Panic (version E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spcpostn.zip") do set ROM=%%~a
for %%a in ("Space Position (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sraider.zip") do set ROM=%%~a
for %%a in ("Space Raider") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_sprg.zip") do set ROM=%%~a
for %%a in ("Space Ranger (Arcadia, V 2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spaceskr.zip") do set ROM=%%~a
for %%a in ("Space Seeker") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sstrangr.zip") do set ROM=%%~a
for %%a in ("Space Stranger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stactics.zip") do set ROM=%%~a
for %%a in ("Space Tactics") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacetrk.zip") do set ROM=%%~a
for %%a in ("Space Trek (upright)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacwalk.zip") do set ROM=%%~a
for %%a in ("Space Walk") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacewar.zip") do set ROM=%%~a
for %%a in ("Space Wars") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spacezap.zip") do set ROM=%%~a
for %%a in ("Space Zap") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sparkman.zip") do set ROM=%%~a
for %%a in ("Spark Man (v2.0, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sparkz.zip") do set ROM=%%~a
for %%a in ("Sparkz (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spatter.zip") do set ROM=%%~a
for %%a in ("Spatter (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("speakres.zip") do set ROM=%%~a
for %%a in ("Speak & Rescue") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sci.zip") do set ROM=%%~a
for %%a in ("Special Criminal Investigation (World set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spclforc.zip") do set ROM=%%~a
for %%a in ("Special Forces") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spcfrcii.zip") do set ROM=%%~a
for %%a in ("Special Forces II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spectar.zip") do set ROM=%%~a
for %%a in ("Spectar (revision 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spec2k.zip") do set ROM=%%~a
for %%a in ("Spectrum 2000 (vertical)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("speedbal.zip") do set ROM=%%~a
for %%a in ("Speed Ball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spdball.zip") do set ROM=%%~a
for %%a in ("Speed Ball - Contest at Neonworld (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spdcoin.zip") do set ROM=%%~a
for %%a in ("Speed Coin (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("speedfrk.zip") do set ROM=%%~a
for %%a in ("Speed Freak") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("speedrcr.zip") do set ROM=%%~a
for %%a in ("Speed Racer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("speedspn.zip") do set ROM=%%~a
for %%a in ("Speed Spin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("speedup.zip") do set ROM=%%~a
for %%a in ("Speed Up (Version 1.20)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spelunkr.zip") do set ROM=%%~a
for %%a in ("Spelunker") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spelunk2.zip") do set ROM=%%~a
for %%a in ("Spelunker II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spider.zip") do set ROM=%%~a
for %%a in ("Spider") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spidman.zip") do set ROM=%%~a
for %%a in ("Spider-Man- The Videogame (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spiders.zip") do set ROM=%%~a
for %%a in ("Spiders (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spiker.zip") do set ROM=%%~a
for %%a in ("Spiker") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spinmast.zip") do set ROM=%%~a
for %%a in ("Spin Master - Miracle Adventure") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spinlbrk.zip") do set ROM=%%~a
for %%a in ("Spinal Breakers (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("splat.zip") do set ROM=%%~a
for %%a in ("Splat!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("splatter.zip") do set ROM=%%~a
for %%a in ("Splatter House (World, new version (SH3))") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("splndrbt.zip") do set ROM=%%~a
for %%a in ("Splendor Blast") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_bowl.zip") do set ROM=%%~a
for %%a in ("SportTime Bowling (Arcadia, V 2.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_airh.zip") do set ROM=%%~a
for %%a in ("SportTime Table Hockey (Arcadia, set 1, V 2.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sprtauth.zip") do set ROM=%%~a
for %%a in ("Sports Authority") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_spot.zip") do set ROM=%%~a
for %%a in ("Spot (Arcadia, V 2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("springer.zip") do set ROM=%%~a
for %%a in ("Springer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sprint1.zip") do set ROM=%%~a
for %%a in ("Sprint 1") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sprint4.zip") do set ROM=%%~a
for %%a in ("Sprint 4 (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sprint8.zip") do set ROM=%%~a
for %%a in ("Sprint 8") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spyhunt.zip") do set ROM=%%~a
for %%a in ("Spy Hunter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spyhunt2.zip") do set ROM=%%~a
for %%a in ("Spy Hunter II (rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("squaitsa.zip") do set ROM=%%~a
for %%a in ("Squash (Itisa)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("squash.zip") do set ROM=%%~a
for %%a in ("Squash (Ver. 1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stkclmns.zip") do set ROM=%%~a
for %%a in ("Stack Columns (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scross.zip") do set ROM=%%~a
for %%a in ("Stadium Cross (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stadhr96.zip") do set ROM=%%~a
for %%a in ("Stadium Hero '96 (World, EAJ)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stadhero.zip") do set ROM=%%~a
for %%a in ("Stadium Hero (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stagger1.zip") do set ROM=%%~a
for %%a in ("Stagger I (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stakwin.zip") do set ROM=%%~a
for %%a in ("Stakes Winner - Stakes Winner - GI kinzen seiha e no michi") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stakwin2.zip") do set ROM=%%~a
for %%a in ("Stakes Winner 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starcas.zip") do set ROM=%%~a
for %%a in ("Star Castle (version 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starcrus.zip") do set ROM=%%~a
for %%a in ("Star Cruiser") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starfigh.zip") do set ROM=%%~a
for %%a in ("Star Fighter (v1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starfire.zip") do set ROM=%%~a
for %%a in ("Star Fire (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starfir2.zip") do set ROM=%%~a
for %%a in ("Star Fire 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starforc.zip") do set ROM=%%~a
for %%a in ("Star Force") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starglad.zip") do set ROM=%%~a
for %%a in ("Star Gladiator Episode I- Final Crusade (USA 960627)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stargrds.zip") do set ROM=%%~a
for %%a in ("Star Guards") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starhawk.zip") do set ROM=%%~a
for %%a in ("Star Hawk") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starjack.zip") do set ROM=%%~a
for %%a in ("Star Jacker (Sega)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starsldr.zip") do set ROM=%%~a
for %%a in ("Star Soldier- Vanishing Earth") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starswep.zip") do set ROM=%%~a
for %%a in ("Star Sweep (Japan, STP1-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("startrek.zip") do set ROM=%%~a
for %%a in ("Star Trek") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("startrks.zip") do set ROM=%%~a
for %%a in ("Star Trek (Head On hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starwars.zip") do set ROM=%%~a
for %%a in ("Star Wars (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starblad.zip") do set ROM=%%~a
for %%a in ("Starblade (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stargate.zip") do set ROM=%%~a
for %%a in ("Stargate") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starshp1.zip") do set ROM=%%~a
for %%a in ("Starship 1") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stlforce.zip") do set ROM=%%~a
for %%a in ("Steel Force") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sgunner.zip") do set ROM=%%~a
for %%a in ("Steel Gunner (Rev B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sgunner2.zip") do set ROM=%%~a
for %%a in ("Steel Gunner 2 (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("steeltal.zip") do set ROM=%%~a
for %%a in ("Steel Talons (rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("steelwkr.zip") do set ROM=%%~a
for %%a in ("Steel Worker") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sss.zip") do set ROM=%%~a
for %%a in ("Steep Slope Sliders (JUET 981110 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stepchmp.zip") do set ROM=%%~a
for %%a in ("Step Champ (GQ930 VER. JA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stinger.zip") do set ROM=%%~a
for %%a in ("Stinger") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stocker.zip") do set ROM=%%~a
for %%a in ("Stocker (3-19-85)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stompin.zip") do set ROM=%%~a
for %%a in ("Stompin' (4-4-86)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stonebal.zip") do set ROM=%%~a
for %%a in ("Stone Ball (4 Players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stmblade.zip") do set ROM=%%~a
for %%a in ("Storm Blade (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sflush.zip") do set ROM=%%~a
for %%a in ("Straight Flush") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stratab.zip") do set ROM=%%~a
for %%a in ("Strata Bowling (V3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stratgyx.zip") do set ROM=%%~a
for %%a in ("Strategy X") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("streakng.zip") do set ROM=%%~a
for %%a in ("Streaking (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strtdriv.zip") do set ROM=%%~a
for %%a in ("Street Drivin' (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sf.zip") do set ROM=%%~a
for %%a in ("Street Fighter (US, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfa2.zip") do set ROM=%%~a
for %%a in ("Street Fighter Alpha 2 (Euro 960229)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfa3.zip") do set ROM=%%~a
for %%a in ("Street Fighter Alpha 3 (Euro 980904)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfa.zip") do set ROM=%%~a
for %%a in ("Street Fighter Alpha- Warriors' Dreams (Euro 950727)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfex.zip") do set ROM=%%~a
for %%a in ("Street Fighter EX (Euro 961219)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfexp.zip") do set ROM=%%~a
for %%a in ("Street Fighter EX Plus (USA 970407)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfex2.zip") do set ROM=%%~a
for %%a in ("Street Fighter EX2 (USA 980526)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfex2p.zip") do set ROM=%%~a
for %%a in ("Street Fighter EX2 Plus (USA 990611)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sf2ce.zip") do set ROM=%%~a
for %%a in ("Street Fighter II'- Champion Edition (World 920513)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sf2hf.zip") do set ROM=%%~a
for %%a in ("Street Fighter II'- Hyper Fighting (World 921209)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sf2.zip") do set ROM=%%~a
for %%a in ("Street Fighter II- The World Warrior (World 910522)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfiii2.zip") do set ROM=%%~a
for %%a in ("Street Fighter III 2nd Impact- Giant Attack (USA 970930)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfiii3.zip") do set ROM=%%~a
for %%a in ("Street Fighter III 3rd Strike- Fight for the Future (Euro 990608)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfiii.zip") do set ROM=%%~a
for %%a in ("Street Fighter III- New Generation (Euro 970204)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfz2al.zip") do set ROM=%%~a
for %%a in ("Street Fighter Zero 2 Alpha (Asia 960826)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sftm.zip") do set ROM=%%~a
for %%a in ("Street Fighter- The Movie (v1.12)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfootbal.zip") do set ROM=%%~a
for %%a in ("Street Football (11-12-86)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("streetg2.zip") do set ROM=%%~a
for %%a in ("Street Games II (Revision 7C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strtheat.zip") do set ROM=%%~a
for %%a in ("Street Heat") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strhoop.zip") do set ROM=%%~a
for %%a in ("Street Hoop - Street Slam - Dunk Dream (DEM-004)(DEH-004)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("streetsm.zip") do set ROM=%%~a
for %%a in ("Street Smart (US version 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_sor2.zip") do set ROM=%%~a
for %%a in ("Streets of Rage II (Mega Play)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strnskil.zip") do set ROM=%%~a
for %%a in ("Strength & Skill") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strider.zip") do set ROM=%%~a
for %%a in ("Strider (USA, B-Board 89624B-2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sbowling.zip") do set ROM=%%~a
for %%a in ("Strike Bowling") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strkfgtr.zip") do set ROM=%%~a
for %%a in ("Strike Fighter (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strkforc.zip") do set ROM=%%~a
for %%a in ("Strike Force (rev 1 02-25-91)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stg.zip") do set ROM=%%~a
for %%a in ("Strike Gunner S.T.G") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strkzone.zip") do set ROM=%%~a
for %%a in ("Strike Zone Baseball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("s1945.zip") do set ROM=%%~a
for %%a in ("Strikers 1945 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("s1945ii.zip") do set ROM=%%~a
for %%a in ("Strikers 1945 II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("s1945iii.zip") do set ROM=%%~a
for %%a in ("Strikers 1945 III (World) - Strikers 1999 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("s1945p.zip") do set ROM=%%~a
for %%a in ("Strikers 1945 Plus") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("stuntair.zip") do set ROM=%%~a
for %%a in ("Stunt Air") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suhosong.zip") do set ROM=%%~a
for %%a in ("Su Ho Seong") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sub.zip") do set ROM=%%~a
for %%a in ("Submarine (Sigma)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("subroc3d.zip") do set ROM=%%~a
for %%a in ("Subroc-3D") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("subs.zip") do set ROM=%%~a
for %%a in ("Subs") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scessjoe.zip") do set ROM=%%~a
for %%a in ("Success Joe (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suikoenb.zip") do set ROM=%%~a
for %%a in ("Suiko Enbu - Outlaws of the Lost Dynasty (JUETL 950314 V2.001)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sunaq.zip") do set ROM=%%~a
for %%a in ("SunA Quiz 6000 Academy (940620-6)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sundance.zip") do set ROM=%%~a
for %%a in ("Sundance") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssriders.zip") do set ROM=%%~a
for %%a in ("Sunset Riders (4 Players ver EAC)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("srmdb.zip") do set ROM=%%~a
for %%a in ("Sunset Riders (bootleg of Megadrive version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superabc.zip") do set ROM=%%~a
for %%a in ("Super ABC (Pac-Man multigame kit, Sep. 03 1999)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("csuperas.zip") do set ROM=%%~a
for %%a in ("Super Astro Fighter (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sbagman.zip") do set ROM=%%~a
for %%a in ("Super Bagman") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dblplay.zip") do set ROM=%%~a
for %%a in ("Super Baseball Double Play Home Run Derby") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sbasketb.zip") do set ROM=%%~a
for %%a in ("Super Basketball (version I, encrypted)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sbishi.zip") do set ROM=%%~a
for %%a in ("Super Bishi Bashi Championship (ver JAA, 2 Players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sbrkout.zip") do set ROM=%%~a
for %%a in ("Super Breakout (rev 04)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sb2003.zip") do set ROM=%%~a
for %%a in ("Super Bubble 2003 (World, Ver 1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superbug.zip") do set ROM=%%~a
for %%a in ("Super Bug") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("supbtime.zip") do set ROM=%%~a
for %%a in ("Super Burger Time (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_suprc.zip") do set ROM=%%~a
for %%a in ("Super C (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sbasebal.zip") do set ROM=%%~a
for %%a in ("Super Champion Baseball (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superchs.zip") do set ROM=%%~a
for %%a in ("Super Chase - Criminal Termination (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scobra.zip") do set ROM=%%~a
for %%a in ("Super Cobra") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scontra.zip") do set ROM=%%~a
for %%a in ("Super Contra") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sprcros2.zip") do set ROM=%%~a
for %%a in ("Super Cross II (Japan, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suprgolf.zip") do set ROM=%%~a
for %%a in ("Super Crowns Golf (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("scfinals.zip") do set ROM=%%~a
for %%a in ("Super Cup Finals (Ver 2.2O 1994-01-13)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spdodgeb.zip") do set ROM=%%~a
for %%a in ("Super Dodge Ball (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sdodgeb.zip") do set ROM=%%~a
for %%a in ("Super Dodge Ball - Kunio no Nekketsu Toukyuu Densetsu") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sdtennis.zip") do set ROM=%%~a
for %%a in ("Super Doubles Tennis") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("csdtenis.zip") do set ROM=%%~a
for %%a in ("Super Doubles Tennis (DECO Cassette, Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("supduck.zip") do set ROM=%%~a
for %%a in ("Super Duck") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("speglsht.zip") do set ROM=%%~a
for %%a in ("Super Eagle Shot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfchamp.zip") do set ROM=%%~a
for %%a in ("Super Football Champ (Ver 2.5O)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sfkick.zip") do set ROM=%%~a
for %%a in ("Super Free Kick (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("supergm3.zip") do set ROM=%%~a
for %%a in ("Super Game III") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sgmt1.zip") do set ROM=%%~a
for %%a in ("Super Game Mega Type 1") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sgemf.zip") do set ROM=%%~a
for %%a in ("Super Gem Fighter Mini Mix (USA 970904)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suprglob.zip") do set ROM=%%~a
for %%a in ("Super Glob") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shangon.zip") do set ROM=%%~a
for %%a in ("Super Hang-On (sitdown-upright) (unprotected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("shimpact.zip") do set ROM=%%~a
for %%a in ("Super High Impact (rev LA1 09-30-91)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suprleag.zip") do set ROM=%%~a
for %%a in ("Super League (FD1094 317-0045)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suprloco.zip") do set ROM=%%~a
for %%a in ("Super Locomotive (Rev.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_smb.zip") do set ROM=%%~a
for %%a in ("Super Mario Bros. (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_smb2.zip") do set ROM=%%~a
for %%a in ("Super Mario Bros. 2 (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_smb3.zip") do set ROM=%%~a
for %%a in ("Super Mario Bros. 3 (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sgmast.zip") do set ROM=%%~a
for %%a in ("Super Masters Golf (World-, Floppy Based, FD1094 317-0058-05d-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("smgp.zip") do set ROM=%%~a
for %%a in ("Super Monaco GP (World, Rev B) (FD1094 317-0126a)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suprmous.zip") do set ROM=%%~a
for %%a in ("Super Mouse") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sothello.zip") do set ROM=%%~a
for %%a in ("Super Othello") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superpac.zip") do set ROM=%%~a
for %%a in ("Super Pac-Man") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spang.zip") do set ROM=%%~a
for %%a in ("Super Pang (World 900914)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spitboss.zip") do set ROM=%%~a
for %%a in ("Super Pit Boss (9221-02A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spnchout.zip") do set ROM=%%~a
for %%a in ("Super Punch-Out!! (Rev B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spuzbobl.zip") do set ROM=%%~a
for %%a in ("Super Puzzle Bobble (V2.05O)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("spf2t.zip") do set ROM=%%~a
for %%a in ("Super Puzzle Fighter II Turbo (Euro 960529)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sqix.zip") do set ROM=%%~a
for %%a in ("Super Qix (World, Rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sranger.zip") do set ROM=%%~a
for %%a in ("Super Ranger (v2.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("srdarwin.zip") do set ROM=%%~a
for %%a in ("Super Real Darwin (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suprridr.zip") do set ROM=%%~a
for %%a in ("Super Rider") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sshot.zip") do set ROM=%%~a
for %%a in ("Super Shot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssideki.zip") do set ROM=%%~a
for %%a in ("Super Sidekicks - Tokuten Ou") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssideki2.zip") do set ROM=%%~a
for %%a in ("Super Sidekicks 2 - The World Championship - Tokuten Ou 2 - real fight football (NGM-061)(NGH-061)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssideki3.zip") do set ROM=%%~a
for %%a in ("Super Sidekicks 3 - The Next Glory - Tokuten Ou 3 - eikou e no michi") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sslam.zip") do set ROM=%%~a
for %%a in ("Super Slam (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssi.zip") do set ROM=%%~a
for %%a in ("Super Space Invaders '91 (World, Rev 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("macross.zip") do set ROM=%%~a
for %%a in ("Super Spacefortress Macross - Chou-Jikuu Yousai Macross") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("macross2.zip") do set ROM=%%~a
for %%a in ("Super Spacefortress Macross II - Chou-Jikuu Yousai Macross II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sspeedr.zip") do set ROM=%%~a
for %%a in ("Super Speed Race") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssrj.zip") do set ROM=%%~a
for %%a in ("Super Speed Race Junior (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssprint.zip") do set ROM=%%~a
for %%a in ("Super Sprint (rev 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sstingry.zip") do set ROM=%%~a
for %%a in ("Super Stingray (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssf2mdb.zip") do set ROM=%%~a
for %%a in ("Super Street Fighter II - The New Challengers (bootleg of Japanese MegaDrive version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssf2t.zip") do set ROM=%%~a
for %%a in ("Super Street Fighter II Turbo (World 940223)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssf2.zip") do set ROM=%%~a
for %%a in ("Super Street Fighter II- The New Challengers (World 931005)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("supertnk.zip") do set ROM=%%~a
for %%a in ("Super Tank") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superten.zip") do set ROM=%%~a
for %%a in ("Super Ten V8.3") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suprtrio.zip") do set ROM=%%~a
for %%a in ("Super Trio") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("striv.zip") do set ROM=%%~a
for %%a in ("Super Triv") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("strvmstr.zip") do set ROM=%%~a
for %%a in ("Super Trivia Master") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("svf.zip") do set ROM=%%~a
for %%a in ("Super Visual Football- European Sega Cup") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("svolley.zip") do set ROM=%%~a
for %%a in ("Super Volleyball (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("swcourt.zip") do set ROM=%%~a
for %%a in ("Super World Court (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sws92.zip") do set ROM=%%~a
for %%a in ("Super World Stadium '92 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sws93.zip") do set ROM=%%~a
for %%a in ("Super World Stadium '93 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sws95.zip") do set ROM=%%~a
for %%a in ("Super World Stadium '95 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sws96.zip") do set ROM=%%~a
for %%a in ("Super World Stadium '96 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sws97.zip") do set ROM=%%~a
for %%a in ("Super World Stadium '97 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sws98.zip") do set ROM=%%~a
for %%a in ("Super World Stadium '98 (Japan, SS81-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sws99.zip") do set ROM=%%~a
for %%a in ("Super World Stadium '99 (Japan, SS91-VER.A3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sws.zip") do set ROM=%%~a
for %%a in ("Super World Stadium (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("szaxxon.zip") do set ROM=%%~a
for %%a in ("Super Zaxxon (315-5013)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superx.zip") do set ROM=%%~a
for %%a in ("Super-X (NTC)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superbik.zip") do set ROM=%%~a
for %%a in ("Superbike") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssoldier.zip") do set ROM=%%~a
for %%a in ("Superior Soldiers (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superman.zip") do set ROM=%%~a
for %%a in ("Superman (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("surfplnt.zip") do set ROM=%%~a
for %%a in ("Surf Planet (Version 4.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suratk.zip") do set ROM=%%~a
for %%a in ("Surprise Attack (World ver. K)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("survival.zip") do set ROM=%%~a
for %%a in ("Survival") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("survarts.zip") do set ROM=%%~a
for %%a in ("Survival Arts (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gogomile.zip") do set ROM=%%~a
for %%a in ("Susume! Mile Smile - Go Go! Mile Smile (newer)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suzuka8h.zip") do set ROM=%%~a
for %%a in ("Suzuka 8 Hours (World, Rev C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suzuk8h2.zip") do set ROM=%%~a
for %%a in ("Suzuka 8 Hours 2 (World, Rev B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("swimmer.zip") do set ROM=%%~a
for %%a in ("Swimmer (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssingles.zip") do set ROM=%%~a
for %%a in ("Swinging Singles (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mosyougi.zip") do set ROM=%%~a
for %%a in ("Syougi No Tatsujin - Master of Syougi") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssozumo.zip") do set ROM=%%~a
for %%a in ("Syusse Oozumou (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("syvalion.zip") do set ROM=%%~a
for %%a in ("Syvalion (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tmek.zip") do set ROM=%%~a
for %%a in ("T-MEK (v5.1, The Warlords)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tnk3.zip") do set ROM=%%~a
for %%a in ("T.N.K III (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tx1.zip") do set ROM=%%~a
for %%a in ("TX-1 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ttchamp.zip") do set ROM=%%~a
for %%a in ("Table Tennis Champions") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tacscan.zip") do set ROM=%%~a
for %%a in ("Tac-Scan") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tactcian.zip") do set ROM=%%~a
for %%a in ("Tactician (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tdoboon.zip") do set ROM=%%~a
for %%a in ("Taihou de Doboon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tail2nos.zip") do set ROM=%%~a
for %%a in ("Tail to Nose - Great Championship") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tailg.zip") do set ROM=%%~a
for %%a in ("Tailgunner") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("sasissu.zip") do set ROM=%%~a
for %%a in ("Taisen Tanto-R Sashissu!! (J 980216 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tokkae.zip") do set ROM=%%~a
for %%a in ("Taisen Tokkae-dama (ver JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cupfinal.zip") do set ROM=%%~a
for %%a in ("Taito Cup Finals (Ver 1.0O 1993-02-28)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pwrgoal.zip") do set ROM=%%~a
for %%a in ("Taito Power Goal (Ver 2.5O 1994-11-03)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("talbot.zip") do set ROM=%%~a
for %%a in ("Talbot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tangtang.zip") do set ROM=%%~a
for %%a in ("Tang Tang (ver. 0526, 26-05-2000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tank8.zip") do set ROM=%%~a
for %%a in ("Tank 8 (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tankbatt.zip") do set ROM=%%~a
for %%a in ("Tank Battalion") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tankbatl.zip") do set ROM=%%~a
for %%a in ("Tank Battle (prototype rev. 4-21-92)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tankbust.zip") do set ROM=%%~a
for %%a in ("Tank Busters") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tankfrce.zip") do set ROM=%%~a
for %%a in ("Tank Force (US, 2 Player)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("taotaido.zip") do set ROM=%%~a
for %%a in ("Tao Taido (2 button version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tapatune.zip") do set ROM=%%~a
for %%a in ("Tap a Tune") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tapper.zip") do set ROM=%%~a
for %%a in ("Tapper (Budweiser, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("targ.zip") do set ROM=%%~a
for %%a in ("Targ") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("targeth.zip") do set ROM=%%~a
for %%a in ("Target Hits (ver 1.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tgtpanic.zip") do set ROM=%%~a
for %%a in ("Target Panic") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tharrier.zip") do set ROM=%%~a
for %%a in ("Task Force Harrier") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tattass.zip") do set ROM=%%~a
for %%a in ("Tattoo Assassins (US prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("taxidriv.zip") do set ROM=%%~a
for %%a in ("Taxi Driver") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tazmania.zip") do set ROM=%%~a
for %%a in ("Tazz-Mania (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("techromn.zip") do set ROM=%%~a
for %%a in ("Tech Romancer (Euro 980914)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_tbowl.zip") do set ROM=%%~a
for %%a in ("Tecmo Bowl (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tbowl.zip") do set ROM=%%~a
for %%a in ("Tecmo Bowl (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wc90.zip") do set ROM=%%~a
for %%a in ("Tecmo World Cup '90 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twcup98.zip") do set ROM=%%~a
for %%a in ("Tecmo World Cup '98 (JUET 980410 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mp_twc.zip") do set ROM=%%~a
for %%a in ("Tecmo World Cup (Mega Play)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tecmowcm.zip") do set ROM=%%~a
for %%a in ("Tecmo World Cup Millennium (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tws96.zip") do set ROM=%%~a
for %%a in ("Tecmo World Soccer '96") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("teddybb.zip") do set ROM=%%~a
for %%a in ("TeddyBoy Blues (315-5115, New Ver.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("teedoff.zip") do set ROM=%%~a
for %%a in ("Tee'd Off (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_tmnt.zip") do set ROM=%%~a
for %%a in ("Teenage Mutant Ninja Turtles (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tmnt.zip") do set ROM=%%~a
for %%a in ("Teenage Mutant Ninja Turtles (World 4 Players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tmnt2.zip") do set ROM=%%~a
for %%a in ("Teenage Mutant Ninja Turtles - Turtles in Time (4 Players ver UAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_tmnt2.zip") do set ROM=%%~a
for %%a in ("Teenage Mutant Ninja Turtles II- The Arcade Game (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("teetert.zip") do set ROM=%%~a
for %%a in ("Teeter Torture (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tehkanwc.zip") do set ROM=%%~a
for %%a in ("Tehkan World Cup (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tekipaki.zip") do set ROM=%%~a
for %%a in ("Teki Paki") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tekken.zip") do set ROM=%%~a
for %%a in ("Tekken (World, TE4-VER.C)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tekken2.zip") do set ROM=%%~a
for %%a in ("Tekken 2 Ver.B (US, TES3-VER.D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tekken3.zip") do set ROM=%%~a
for %%a in ("Tekken 3 (Japan, TET1-VER.E1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tektagt.zip") do set ROM=%%~a
for %%a in ("Tekken Tag Tournament (US, TEG3-VER.C1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tempest.zip") do set ROM=%%~a
for %%a in ("Tempest (rev 3, Revised Hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tenup.zip") do set ROM=%%~a
for %%a in ("Ten Up") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tengai.zip") do set ROM=%%~a
for %%a in ("Tengai (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tenkomor.zip") do set ROM=%%~a
for %%a in ("Tenkomori Shooting (Asia, TKM2-VER.A1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_tenis.zip") do set ROM=%%~a
for %%a in ("Tennis (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("protennb.zip") do set ROM=%%~a
for %%a in ("Tennis (bootleg of Pro Tennis)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tenthdeg.zip") do set ROM=%%~a
for %%a in ("Tenth Degree (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("term2.zip") do set ROM=%%~a
for %%a in ("Terminator 2 - Judgment Day (rev LA4 08-03-92)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("terracre.zip") do set ROM=%%~a
for %%a in ("Terra Cresta (YM3526 set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("terraf.zip") do set ROM=%%~a
for %%a in ("Terra Force") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cterrani.zip") do set ROM=%%~a
for %%a in ("Terranean (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ctsttape.zip") do set ROM=%%~a
for %%a in ("Test Tape (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tetrsark.zip") do set ROM=%%~a
for %%a in ("Tetris (D.R. Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tetrisse.zip") do set ROM=%%~a
for %%a in ("Tetris (Japan, System E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("phtetris.zip") do set ROM=%%~a
for %%a in ("Tetris (Photon System)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("atetris.zip") do set ROM=%%~a
for %%a in ("Tetris (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tetris.zip") do set ROM=%%~a
for %%a in ("Tetris (set 4, Japan, System 16A) (FD1094 317-0093)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tetrbx.zip") do set ROM=%%~a
for %%a in ("Tetris - Bloxeed (Korean System 16 bootleg) (ISG Selection Master Type 2006)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tetrisp.zip") do set ROM=%%~a
for %%a in ("Tetris Plus") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tetrisp2.zip") do set ROM=%%~a
for %%a in ("Tetris Plus 2 (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tgmj.zip") do set ROM=%%~a
for %%a in ("Tetris The Grand Master (Japan 980710)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tgm2.zip") do set ROM=%%~a
for %%a in ("Tetris the Absolute The Grand Master 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("robby.zip") do set ROM=%%~a
for %%a in ("The Adventures of Robby Roto!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mrflea.zip") do set ROM=%%~a
for %%a in ("The Amazing Adventures of Mr. F. Lea") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("astyanax.zip") do set ROM=%%~a
for %%a in ("The Astyanax") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("battroad.zip") do set ROM=%%~a
for %%a in ("The Battle-Road") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("berenstn.zip") do set ROM=%%~a
for %%a in ("The Berenstain Bears in Big Paw's Cave") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("berlwall.zip") do set ROM=%%~a
for %%a in ("The Berlin Wall") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bigprowr.zip") do set ROM=%%~a
for %%a in ("The Big Pro Wrestling!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tblkkuzu.zip") do set ROM=%%~a
for %%a in ("The Block Kuzushi (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bounty.zip") do set ROM=%%~a
for %%a in ("The Bounty") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("edrandy.zip") do set ROM=%%~a
for %%a in ("The Cliffhanger - Edward Randy (World ver 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ctribe.zip") do set ROM=%%~a
for %%a in ("The Combatribes (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("crysking.zip") do set ROM=%%~a
for %%a in ("The Crystal of Kings") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thedeep.zip") do set ROM=%%~a
for %%a in ("The Deep (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("elecyoyo.zip") do set ROM=%%~a
for %%a in ("The Electric Yo-Yo (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("esb.zip") do set ROM=%%~a
for %%a in ("The Empire Strikes Back") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("theend.zip") do set ROM=%%~a
for %%a in ("The End") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("flstory.zip") do set ROM=%%~a
for %%a in ("The FairyLand Story") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("fround.zip") do set ROM=%%~a
for %%a in ("The Final Round (version M)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("funkyfig.zip") do set ROM=%%~a
for %%a in ("The First Funky Fighter (North America, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gametngk.zip") do set ROM=%%~a
for %%a in ("The Game Paradise - Master of Shooting! - Game Tengoku - The Game Paradise") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("theglad.zip") do set ROM=%%~a
for %%a in ("The Gladiator - Road of the Sword - Shen Jian (M68k label V101) (ARM label V107, ROM 06-06-03 SHEN JIAN V107)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_goons.zip") do set ROM=%%~a
for %%a in ("The Goonies (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thehand.zip") do set ROM=%%~a
for %%a in ("The Hand") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("histryma.zip") do set ROM=%%~a
for %%a in ("The History of Martial Arts") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tinv2650.zip") do set ROM=%%~a
for %%a in ("The Invaders") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("irrmaze.zip") do set ROM=%%~a
for %%a in ("The Irritating Maze - Ultra Denryu Iraira Bou") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("karatour.zip") do set ROM=%%~a
for %%a in ("The Karate Tournament") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("killbld.zip") do set ROM=%%~a
for %%a in ("The Killing Blade (ver. 109, Chinese Board)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("killbldp.zip") do set ROM=%%~a
for %%a in ("The Killing Blade Plus (China, ver. 300)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kod.zip") do set ROM=%%~a
for %%a in ("The King of Dragons (World 910805)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof94.zip") do set ROM=%%~a
for %%a in ("The King of Fighters '94 (NGM-055)(NGH-055)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof95.zip") do set ROM=%%~a
for %%a in ("The King of Fighters '95 (NGM-084)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof96.zip") do set ROM=%%~a
for %%a in ("The King of Fighters '96 (NGM-214)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof97.zip") do set ROM=%%~a
for %%a in ("The King of Fighters '97 (NGM-2320)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof98.zip") do set ROM=%%~a
for %%a in ("The King of Fighters '98 - The Slugfest - King of Fighters '98 - dream match never ends (NGM-2420)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof99.zip") do set ROM=%%~a
for %%a in ("The King of Fighters '99 - Millennium Battle (NGM-2510)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof2000.zip") do set ROM=%%~a
for %%a in ("The King of Fighters 2000 (NGM-2570) (NGH-2570)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof2001.zip") do set ROM=%%~a
for %%a in ("The King of Fighters 2001 (NGM-262-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof2002.zip") do set ROM=%%~a
for %%a in ("The King of Fighters 2002 (NGM-2650)(NGH-2650)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kf2k3pcb.zip") do set ROM=%%~a
for %%a in ("The King of Fighters 2003 (Japan, JAMMA PCB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kof2003.zip") do set ROM=%%~a
for %%a in ("The King of Fighters 2003 (NGM-2710)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("kouyakyu.zip") do set ROM=%%~a
for %%a in ("The Koukouyakyuh") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lastblad.zip") do set ROM=%%~a
for %%a in ("The Last Blade - Bakumatsu Roman - Gekka no Kenshi (NGM-2340)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lastbld2.zip") do set ROM=%%~a
for %%a in ("The Last Blade 2 - Bakumatsu Roman - Dai Ni Maku Gekka no Kenshi (NGM-2430)(NGH-2430)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lastday.zip") do set ROM=%%~a
for %%a in ("The Last Day (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("laststar.zip") do set ROM=%%~a
for %%a in ("The Last Starfighter (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("lkage.zip") do set ROM=%%~a
for %%a in ("The Legend of Kage") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("silkroad.zip") do set ROM=%%~a
for %%a in ("The Legend of Silkroad") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("darkmist.zip") do set ROM=%%~a
for %%a in ("The Lost Castle In Darkmist") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mainevt.zip") do set ROM=%%~a
for %%a in ("The Main Event (4 Players ver. Y)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mastkin.zip") do set ROM=%%~a
for %%a in ("The Masters of Kin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tnzs.zip") do set ROM=%%~a
for %%a in ("The NewZealand Story (World, new version) (newer PCB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tnextspc.zip") do set ROM=%%~a
for %%a in ("The Next Space (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ninjak.zip") do set ROM=%%~a
for %%a in ("The Ninja Kids (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ninjaw.zip") do set ROM=%%~a
for %%a in ("The Ninja Warriors (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("outfxies.zip") do set ROM=%%~a
for %%a in ("The Outfoxies (World, OU2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("percuss.zip") do set ROM=%%~a
for %%a in ("The Percussor") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thepit.zip") do set ROM=%%~a
for %%a in ("The Pit") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("punisher.zip") do set ROM=%%~a
for %%a in ("The Punisher (World 930422)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ghostb.zip") do set ROM=%%~a
for %%a in ("The Real Ghostbusters (US 2 Players, revision 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("roishtar.zip") do set ROM=%%~a
for %%a in ("The Return of Ishtar") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("simpsons.zip") do set ROM=%%~a
for %%a in ("The Simpsons (4 Players World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("srumbler.zip") do set ROM=%%~a
for %%a in ("The Speed Rumbler (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("superspy.zip") do set ROM=%%~a
for %%a in ("The Super Spy (NGM-011)(NGH-011)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("3stooges.zip") do set ROM=%%~a
for %%a in ("The Three Stooges In Brides Is Brides (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tinstar.zip") do set ROM=%%~a
for %%a in ("The Tin Star (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("todruaga.zip") do set ROM=%%~a
for %%a in ("The Tower of Druaga (New Ver.)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ssideki4.zip") do set ROM=%%~a
for %%a in ("The Ultimate 11 - The SNK Football Championship - Tokuten Ou - Honoo no Libero") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thief.zip") do set ROM=%%~a
for %%a in ("Thief") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trally.zip") do set ROM=%%~a
for %%a in ("Thrash Rally (ALM-003)(ALH-003)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("3wonders.zip") do set ROM=%%~a
for %%a in ("Three Wonders (World 910520)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thrilld.zip") do set ROM=%%~a
for %%a in ("Thrill Drive (JAE)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thunderl.zip") do set ROM=%%~a
for %%a in ("Thunder & Lightning") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thndrbld.zip") do set ROM=%%~a
for %%a in ("Thunder Blade (upright) (FD1094 317-0056)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tceptor.zip") do set ROM=%%~a
for %%a in ("Thunder Ceptor") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thunderx.zip") do set ROM=%%~a
for %%a in ("Thunder Cross (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thndrx2.zip") do set ROM=%%~a
for %%a in ("Thunder Cross II (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tdragon.zip") do set ROM=%%~a
for %%a in ("Thunder Dragon (8th Jan. 1992, unprotected)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tdragon2.zip") do set ROM=%%~a
for %%a in ("Thunder Dragon 2 (9th Nov. 1993)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tfrceac.zip") do set ROM=%%~a
for %%a in ("Thunder Force AC") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thundfox.zip") do set ROM=%%~a
for %%a in ("Thunder Fox (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("theroes.zip") do set ROM=%%~a
for %%a in ("Thunder Heroes") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thoop.zip") do set ROM=%%~a
for %%a in ("Thunder Hoop (Ver. 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tstrike.zip") do set ROM=%%~a
for %%a in ("Thunder Strike (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thndzone.zip") do set ROM=%%~a
for %%a in ("Thunder Zone (World, Rev 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("thunderj.zip") do set ROM=%%~a
for %%a in ("ThunderJaws (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tndrcade.zip") do set ROM=%%~a
for %%a in ("Thundercade - Twin Formation") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tictac.zip") do set ROM=%%~a
for %%a in ("Tic Tac Trivia (6221-23, U5-0C Horizontal)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tickee.zip") do set ROM=%%~a
for %%a in ("Tickee Tickats") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tigerh.zip") do set ROM=%%~a
for %%a in ("Tiger Heli (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tigeroad.zip") do set ROM=%%~a
for %%a in ("Tiger Road (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("timber.zip") do set ROM=%%~a
for %%a in ("Timber") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("timecris.zip") do set ROM=%%~a
for %%a in ("Time Crisis (Rev. TS2 Ver.B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("timefgtr.zip") do set ROM=%%~a
for %%a in ("Time Fighter (Time Pilot conversion on Galaxian hardware)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("timekill.zip") do set ROM=%%~a
for %%a in ("Time Killers (v1.32)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("timelimt.zip") do set ROM=%%~a
for %%a in ("Time Limit") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("timeplt.zip") do set ROM=%%~a
for %%a in ("Time Pilot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tp84.zip") do set ROM=%%~a
for %%a in ("Time Pilot '84 (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("timescan.zip") do set ROM=%%~a
for %%a in ("Time Scanner (set 2, System 16B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("timesold.zip") do set ROM=%%~a
for %%a in ("Time Soldiers (US Rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("timetunl.zip") do set ROM=%%~a
for %%a in ("Time Tunnel") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tinklpit.zip") do set ROM=%%~a
for %%a in ("Tinkle Pit (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("titlef.zip") do set ROM=%%~a
for %%a in ("Title Fight (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toffy.zip") do set ROM=%%~a
for %%a in ("Toffy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toggle.zip") do set ROM=%%~a
for %%a in ("Toggle (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toki.zip") do set ROM=%%~a
for %%a in ("Toki (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tokisens.zip") do set ROM=%%~a
for %%a in ("Toki no Senshi - Chrono Soldier") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tkmmpzdm.zip") do set ROM=%%~a
for %%a in ("Tokimeki Memorial Taisen Puzzle-dama (ver JAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tomcat.zip") do set ROM=%%~a
for %%a in ("TomCat (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tomahawk.zip") do set ROM=%%~a
for %%a in ("Tomahawk 777 (rev 5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tondemo.zip") do set ROM=%%~a
for %%a in ("Tondemo Crisis (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toobin.zip") do set ROM=%%~a
for %%a in ("Toobin' (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("topbladv.zip") do set ROM=%%~a
for %%a in ("Top Blade V") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("topgunnr.zip") do set ROM=%%~a
for %%a in ("Top Gunner (Exidy)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tophuntr.zip") do set ROM=%%~a
for %%a in ("Top Hunter - Roddy & Cathy (NGM-046)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("topland.zip") do set ROM=%%~a
for %%a in ("Top Landing (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tpgolf.zip") do set ROM=%%~a
for %%a in ("Top Player's Golf (NGM-003)(NGH-003)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trstar.zip") do set ROM=%%~a
for %%a in ("Top Ranking Stars (Ver 2.1O 1993-05-21) (New Version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toprollr.zip") do set ROM=%%~a
for %%a in ("Top Roller") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("topsecex.zip") do set ROM=%%~a
for %%a in ("Top Secret (Exidy) (version 1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("topshoot.zip") do set ROM=%%~a
for %%a in ("Top Shooter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("topspeed.zip") do set ROM=%%~a
for %%a in ("Top Speed (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toppyrap.zip") do set ROM=%%~a
for %%a in ("Toppy & Rappy") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toride2g.zip") do set ROM=%%~a
for %%a in ("Toride II Adauchi Gaiden") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ctornado.zip") do set ROM=%%~a
for %%a in ("Tornado (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tornbase.zip") do set ROM=%%~a
for %%a in ("Tornado Baseball - Ball Park") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toryumon.zip") do set ROM=%%~a
for %%a in ("Toryumon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("totcarn.zip") do set ROM=%%~a
for %%a in ("Total Carnage (rev LA1 03-10-92)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tdfever.zip") do set ROM=%%~a
for %%a in ("TouchDown Fever (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toucheme.zip") do set ROM=%%~a
for %%a in ("Touche Me") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tm.zip") do set ROM=%%~a
for %%a in ("Touchmaster (v3.00 Euro)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tm2k.zip") do set ROM=%%~a
for %%a in ("Touchmaster 2000 Plus (v4.63 Standard)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tm3k.zip") do set ROM=%%~a
for %%a in ("Touchmaster 3000 (v5.02 Standard)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tm4k.zip") do set ROM=%%~a
for %%a in ("Touchmaster 4000 (v6.03 Standard)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tm5k.zip") do set ROM=%%~a
for %%a in ("Touchmaster 5000 (v7.10 Standard)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tm7k.zip") do set ROM=%%~a
for %%a in ("Touchmaster 7000 (v8.04 Standard)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tm8k.zip") do set ROM=%%~a
for %%a in ("Touchmaster 8000 (v9.04 Standard)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bonanza.zip") do set ROM=%%~a
for %%a in ("Touchstar Bonanza (Revision 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tturf.zip") do set ROM=%%~a
for %%a in ("Tough Turf (set 2, Japan) (8751 317-0104)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tkdensho.zip") do set ROM=%%~a
for %%a in ("Toukidenshou - Angel Eyes (VER. 960614)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("arkatour.zip") do set ROM=%%~a
for %%a in ("Tournament Arkanoid (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cprogolf.zip") do set ROM=%%~a
for %%a in ("Tournament Pro Golf (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tourtabl.zip") do set ROM=%%~a
for %%a in ("Tournament Table (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("elandore.zip") do set ROM=%%~a
for %%a in ("Touryuu Densetsu Elan-Doree - Elan Doree - Legend of Dragoon (JUET 980922 V1.006)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toyland.zip") do set ROM=%%~a
for %%a in ("Toy Land Adventure") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toypop.zip") do set ROM=%%~a
for %%a in ("Toypop") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trackfld.zip") do set ROM=%%~a
for %%a in ("Track & Field") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_tkfld.zip") do set ROM=%%~a
for %%a in ("Track & Field (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tranqgun.zip") do set ROM=%%~a
for %%a in ("Tranquilizer Gun") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("transfrm.zip") do set ROM=%%~a
for %%a in ("Transformer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tbeastw2.zip") do set ROM=%%~a
for %%a in ("Transformers Beast Wars II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("travrusa.zip") do set ROM=%%~a
for %%a in ("Traverse USA - Zippy Race") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ctisland.zip") do set ROM=%%~a
for %%a in ("Treasure Island (DECO Cassette, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trebltop.zip") do set ROM=%%~a
for %%a in ("Treble Top (39-360-070)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tripool.zip") do set ROM=%%~a
for %%a in ("Tri-Pool (Casino Tech)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trisport.zip") do set ROM=%%~a
for %%a in ("Tri-Sports") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tricktrp.zip") do set ROM=%%~a
for %%a in ("Trick Trap (World-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trckydoc.zip") do set ROM=%%~a
for %%a in ("Tricky Doc (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("triothep.zip") do set ROM=%%~a
for %%a in ("Trio The Punch - Never Forget Me... (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("triplhnt.zip") do set ROM=%%~a
for %%a in ("Triple Hunt") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("triplep.zip") do set ROM=%%~a
for %%a in ("Triple Punch (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("statriv4.zip") do set ROM=%%~a
for %%a in ("Triv Four") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trivquiz.zip") do set ROM=%%~a
for %%a in ("Triv Quiz") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("statriv2.zip") do set ROM=%%~a
for %%a in ("Triv Two") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtsers1.zip") do set ROM=%%~a
for %%a in ("Trivia (Questions Series 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gtsers8.zip") do set ROM=%%~a
for %%a in ("Trivia (Questions Series 8)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gt507uk.zip") do set ROM=%%~a
for %%a in ("Trivia (UK Version 5.07)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trvwzh.zip") do set ROM=%%~a
for %%a in ("Trivia - Whiz (6221-00)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trvwz2.zip") do set ROM=%%~a
for %%a in ("Trivia - Whiz (6221-05, Edition 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trvwz3h.zip") do set ROM=%%~a
for %%a in ("Trivia - Whiz (6221-05, Edition 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trvwz4.zip") do set ROM=%%~a
for %%a in ("Trivia - Whiz (6221-13, U5-0B Edition 4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trvhang.zip") do set ROM=%%~a
for %%a in ("Trivia Hangup (question set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trvquest.zip") do set ROM=%%~a
for %%a in ("Trivia Quest") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("triviasp.zip") do set ROM=%%~a
for %%a in ("Trivial Pursuit (All Star Sports Edition)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("triviabb.zip") do set ROM=%%~a
for %%a in ("Trivial Pursuit (Baby Boomer Edition) (3-20-85)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("triviag2.zip") do set ROM=%%~a
for %%a in ("Trivial Pursuit (Genus II Edition)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trivialp.zip") do set ROM=%%~a
for %%a in ("Trivial Pursuit (New Edition) (prod. 1D)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("triviaes.zip") do set ROM=%%~a
for %%a in ("Trivial Pursuit (Spanish)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("triviag1.zip") do set ROM=%%~a
for %%a in ("Trivial Pursuit (Think Tank - Genus Edition) (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("triviayp.zip") do set ROM=%%~a
for %%a in ("Trivial Pursuit (Young Players Edition)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trog.zip") do set ROM=%%~a
for %%a in ("Trog (rev LA5 03-29-91)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_trjan.zip") do set ROM=%%~a
for %%a in ("Trojan (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trojan.zip") do set ROM=%%~a
for %%a in ("Trojan (US set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tron.zip") do set ROM=%%~a
for %%a in ("Tron (8-9)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("trophyh.zip") do set ROM=%%~a
for %%a in ("Trophy Hunting - Bear & Moose V1.0") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("troangel.zip") do set ROM=%%~a
for %%a in ("Tropical Angel") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("truco.zip") do set ROM=%%~a
for %%a in ("Truco-Tron") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("truxton.zip") do set ROM=%%~a
for %%a in ("Truxton - Tatsujin") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("truxton2.zip") do set ROM=%%~a
for %%a in ("Truxton II - Tatsujin Oh") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tubep.zip") do set ROM=%%~a
for %%a in ("Tube Panic") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tugboat.zip") do set ROM=%%~a
for %%a in ("Tugboat") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tumblep.zip") do set ROM=%%~a
for %%a in ("Tumble Pop (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tunhunt.zip") do set ROM=%%~a
for %%a in ("Tunnel Hunt") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("turbo.zip") do set ROM=%%~a
for %%a in ("Turbo (program 1513-1515)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("turbofrc.zip") do set ROM=%%~a
for %%a in ("Turbo Force (old revision)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("toutrun.zip") do set ROM=%%~a
for %%a in ("Turbo Out Run (Out Run upgrade) (FD1094 317-0118)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("turbosub.zip") do set ROM=%%~a
for %%a in ("Turbo Sub (prototype rev. TSCA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("turbotag.zip") do set ROM=%%~a
for %%a in ("Turbo Tag (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("turkhunt.zip") do set ROM=%%~a
for %%a in ("Turkey Hunting USA V1.0") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tshoot.zip") do set ROM=%%~a
for %%a in ("Turkey Shoot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("turrett.zip") do set ROM=%%~a
for %%a in ("Turret Tower") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("turtship.zip") do set ROM=%%~a
for %%a in ("Turtle Ship (North America)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("turtles.zip") do set ROM=%%~a
for %%a in ("Turtles") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tutstomb.zip") do set ROM=%%~a
for %%a in ("Tut's Tomb") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tutankhm.zip") do set ROM=%%~a
for %%a in ("Tutankham") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twinactn.zip") do set ROM=%%~a
for %%a in ("Twin Action") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twinadv.zip") do set ROM=%%~a
for %%a in ("Twin Adventure (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tbyahhoo.zip") do set ROM=%%~a
for %%a in ("Twin Bee Yahhoo! (ver JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twincobr.zip") do set ROM=%%~a
for %%a in ("Twin Cobra (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tcobra2.zip") do set ROM=%%~a
for %%a in ("Twin Cobra II (Ver 2.1O 1995-11-30)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twineagl.zip") do set ROM=%%~a
for %%a in ("Twin Eagle - Revenge Joe's Brother") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twineag2.zip") do set ROM=%%~a
for %%a in ("Twin Eagle II - The Rescue Mission") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twinfalc.zip") do set ROM=%%~a
for %%a in ("Twin Falcons") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twinhawk.zip") do set ROM=%%~a
for %%a in ("Twin Hawk (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twinqix.zip") do set ROM=%%~a
for %%a in ("Twin Qix (Ver 1.0A 1995-01-17) (Prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twinsqua.zip") do set ROM=%%~a
for %%a in ("Twin Squash") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twinbee.zip") do set ROM=%%~a
for %%a in ("TwinBee (ROM version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twinkle.zip") do set ROM=%%~a
for %%a in ("Twinkle") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twinspri.zip") do set ROM=%%~a
for %%a in ("Twinkle Star Sprites") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("twotiger.zip") do set ROM=%%~a
for %%a in ("Two Tigers (dedicated)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tylz.zip") do set ROM=%%~a
for %%a in ("Tylz (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("earthjkr.zip") do set ROM=%%~a
for %%a in ("U.N. Defense Force- Earth Joker (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("unsquad.zip") do set ROM=%%~a
for %%a in ("U.N. Squadron (USA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vball.zip") do set ROM=%%~a
for %%a in ("U.S. Championship V'ball (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("usclssic.zip") do set ROM=%%~a
for %%a in ("U.S. Classic") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mustang.zip") do set ROM=%%~a
for %%a in ("US AAF Mustang (25th May. 1990)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ucytokyu.zip") do set ROM=%%~a
for %%a in ("Uchuu Tokkyuu Medalian") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("dangar.zip") do set ROM=%%~a
for %%a in ("Ufo Robo Dangar (12-1-1986)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ufosensi.zip") do set ROM=%%~a
for %%a in ("Ufo Senshi Yohko Chan (MC-8123, 317-0064)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("umk3.zip") do set ROM=%%~a
for %%a in ("Ultimate Mortal Kombat 3 (rev 1.2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ultennis.zip") do set ROM=%%~a
for %%a in ("Ultimate Tennis") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("uballoon.zip") do set ROM=%%~a
for %%a in ("Ultra Balloon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ultratnk.zip") do set ROM=%%~a
for %%a in ("Ultra Tank") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("utoukond.zip") do set ROM=%%~a
for %%a in ("Ultra Toukon Densetsu (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ultrax.zip") do set ROM=%%~a
for %%a in ("Ultra X Weapons - Ultra Keibitai") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ultraman.zip") do set ROM=%%~a
for %%a in ("Ultraman (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("umanclub.zip") do set ROM=%%~a
for %%a in ("Ultraman Club - Tatakae! Ultraman Kyoudai!!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_ftqst.zip") do set ROM=%%~a
for %%a in ("Uncle Fester's Quest- The Addams Family (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("unclepoo.zip") do set ROM=%%~a
for %%a in ("Uncle Poo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("undrfire.zip") do set ROM=%%~a
for %%a in ("Under Fire (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("uccops.zip") do set ROM=%%~a
for %%a in ("Undercover Cops (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("uniwars.zip") do set ROM=%%~a
for %%a in ("UniWar S") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("upscope.zip") do set ROM=%%~a
for %%a in ("Up Scope") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("upyoural.zip") do set ROM=%%~a
for %%a in ("Up Your Alley") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("upndown.zip") do set ROM=%%~a
for %%a in ("Up'n Down (315-5030)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("usvsthem.zip") do set ROM=%%~a
for %%a in ("Us vs. Them") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vblokbrk.zip") do set ROM=%%~a
for %%a in ("VS Block Breaker (Asia)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsgongf.zip") do set ROM=%%~a
for %%a in ("VS Gong Fight") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("valkyrie.zip") do set ROM=%%~a
for %%a in ("Valkyrie No Densetsu (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("valtric.zip") do set ROM=%%~a
for %%a in ("Valtric") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vamphalf.zip") do set ROM=%%~a
for %%a in ("Vamf x1-2 (Europe)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vhunt2.zip") do set ROM=%%~a
for %%a in ("Vampire Hunter 2- Darkstalkers Revenge (Japan 970929)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsav2.zip") do set ROM=%%~a
for %%a in ("Vampire Savior 2- The Lord of Vampire (Japan 970913)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsav.zip") do set ROM=%%~a
for %%a in ("Vampire Savior- The Lord of Vampire (Euro 970519)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vanvan.zip") do set ROM=%%~a
for %%a in ("Van-Van Car") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vandyke.zip") do set ROM=%%~a
for %%a in ("Vandyke (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vanguard.zip") do set ROM=%%~a
for %%a in ("Vanguard (SNK)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vangrd2.zip") do set ROM=%%~a
for %%a in ("Vanguard II") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vaportrx.zip") do set ROM=%%~a
for %%a in ("Vapor TRX") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vaportra.zip") do set ROM=%%~a
for %%a in ("Vapor Trail - Hyper Offence Formation (World revision 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vmetal.zip") do set ROM=%%~a
for %%a in ("Varia Metal") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("varth.zip") do set ROM=%%~a
for %%a in ("Varth- Operation Thunderstorm (World 920714)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vasara.zip") do set ROM=%%~a
for %%a in ("Vasara") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vasara2.zip") do set ROM=%%~a
for %%a in ("Vasara 2 (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vastar.zip") do set ROM=%%~a
for %%a in ("Vastar (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vendetta.zip") do set ROM=%%~a
for %%a in ("Vendetta (World, 4 Players, ver. T)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("venture.zip") do set ROM=%%~a
for %%a in ("Venture (version 5 set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsnetscr.zip") do set ROM=%%~a
for %%a in ("Versus Net Soccer (ver EAD)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vcircle.zip") do set ROM=%%~a
for %%a in ("Vicious Circle (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("victnine.zip") do set ROM=%%~a
for %%a in ("Victorious Nine") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("victory.zip") do set ROM=%%~a
for %%a in ("Victory") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("victroad.zip") do set ROM=%%~a
for %%a in ("Victory Road") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("8ball.zip") do set ROM=%%~a
for %%a in ("Video Eight Ball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hustler.zip") do set ROM=%%~a
for %%a in ("Video Hustler") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("videopin.zip") do set ROM=%%~a
for %%a in ("Video Pinball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("quizvid.zip") do set ROM=%%~a
for %%a in ("Video Quiz") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vidvince.zip") do set ROM=%%~a
for %%a in ("Video Vince and the Game Factory (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("viewpoin.zip") do set ROM=%%~a
for %%a in ("Viewpoint") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vigilant.zip") do set ROM=%%~a
for %%a in ("Vigilante (World, Rev E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vimana.zip") do set ROM=%%~a
for %%a in ("Vimana (World, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vindictr.zip") do set ROM=%%~a
for %%a in ("Vindicators (rev 5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vindctr2.zip") do set ROM=%%~a
for %%a in ("Vindicators Part II (rev 3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("viofight.zip") do set ROM=%%~a
for %%a in ("Violence Fight (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("viostorm.zip") do set ROM=%%~a
for %%a in ("Violent Storm (ver EAC)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("viper.zip") do set ROM=%%~a
for %%a in ("Viper") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("viprp1.zip") do set ROM=%%~a
for %%a in ("Viper Phase 1 (New Version, World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vbowl.zip") do set ROM=%%~a
for %%a in ("Virtua Bowling (World, V101XCM)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vf.zip") do set ROM=%%~a
for %%a in ("Virtua Fighter") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vfkids.zip") do set ROM=%%~a
for %%a in ("Virtua Fighter Kids (JUET 960319 V0.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vr.zip") do set ROM=%%~a
for %%a in ("Virtua Racing") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("virtpool.zip") do set ROM=%%~a
for %%a in ("Virtual Pool") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("volfied.zip") do set ROM=%%~a
for %%a in ("Volfied (World, revision 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_vball.zip") do set ROM=%%~a
for %%a in ("Volley Ball (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("gowcaizr.zip") do set ROM=%%~a
for %%a in ("Voltage Fighter - Gowcaizer - Choujin Gakuen Gowcaizer") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vortex.zip") do set ROM=%%~a
for %%a in ("Vortex") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("rbibb.zip") do set ROM=%%~a
for %%a in ("Vs. Atari R.B.I. Baseball (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("balonfgt.zip") do set ROM=%%~a
for %%a in ("Vs. Balloon Fight (set BF4 A-3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsbball.zip") do set ROM=%%~a
for %%a in ("Vs. BaseBall (US, set BA E-1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("btlecity.zip") do set ROM=%%~a
for %%a in ("Vs. Battle City") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cstlevna.zip") do set ROM=%%~a
for %%a in ("Vs. Castlevania") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("cluclu.zip") do set ROM=%%~a
for %%a in ("Vs. Clu Clu Land") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("drmario.zip") do set ROM=%%~a
for %%a in ("Vs. Dr. Mario") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("duckhunt.zip") do set ROM=%%~a
for %%a in ("Vs. Duck Hunt (set DH3 E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("excitebk.zip") do set ROM=%%~a
for %%a in ("Vs. Excitebike (set EB4-4 A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsfdf.zip") do set ROM=%%~a
for %%a in ("Vs. Freedom Force") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsgradus.zip") do set ROM=%%~a
for %%a in ("Vs. Gradius (US, set GR E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsgshoe.zip") do set ROM=%%~a
for %%a in ("Vs. Gumshoe (set GM5)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hogalley.zip") do set ROM=%%~a
for %%a in ("Vs. Hogan's Alley (set HA4-1 E-1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("hotsmash.zip") do set ROM=%%~a
for %%a in ("Vs. Hot Smash") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("iceclimb.zip") do set ROM=%%~a
for %%a in ("Vs. Ice Climber (set IC4-4 B-1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("iceclmrd.zip") do set ROM=%%~a
for %%a in ("Vs. Ice Climber Dual (set IC4-4 A-1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("machridr.zip") do set ROM=%%~a
for %%a in ("Vs. Mach Rider (Endurance Course Version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("mightybj.zip") do set ROM=%%~a
for %%a in ("Vs. Mighty Bomb Jack (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("jajamaru.zip") do set ROM=%%~a
for %%a in ("Vs. Ninja Jajamaru Kun (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vspinbal.zip") do set ROM=%%~a
for %%a in ("Vs. Pinball (US, set PN4 E-1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("platoon.zip") do set ROM=%%~a
for %%a in ("Vs. Platoon") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bnglngby.zip") do set ROM=%%~a
for %%a in ("Vs. Raid on Bungeling Bay (RD4-2 B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsslalom.zip") do set ROM=%%~a
for %%a in ("Vs. Slalom") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vssoccer.zip") do set ROM=%%~a
for %%a in ("Vs. Soccer (set SC4-2 A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("starlstr.zip") do set ROM=%%~a
for %%a in ("Vs. Star Luster") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("smgolf.zip") do set ROM=%%~a
for %%a in ("Vs. Stroke & Match Golf (Men Version, set GF4-2 F)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("suprmrio.zip") do set ROM=%%~a
for %%a in ("Vs. Super Mario Bros. (set SM4-4 E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vsskykid.zip") do set ROM=%%~a
for %%a in ("Vs. Super SkyKid") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("supxevs.zip") do set ROM=%%~a
for %%a in ("Vs. Super Xevious") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("tkoboxng.zip") do set ROM=%%~a
for %%a in ("Vs. T.K.O. Boxing") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vstennis.zip") do set ROM=%%~a
for %%a in ("Vs. Tennis (Japan-USA, set TE A-3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vstetris.zip") do set ROM=%%~a
for %%a in ("Vs. Tetris") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("goonies.zip") do set ROM=%%~a
for %%a in ("Vs. The Goonies (set E)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("topgun.zip") do set ROM=%%~a
for %%a in ("Vs. Top Gun") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wrecking.zip") do set ROM=%%~a
for %%a in ("Vs. Wrecking Crew") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vulcan.zip") do set ROM=%%~a
for %%a in ("Vulcan Venture (New)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("vulgus.zip") do set ROM=%%~a
for %%a in ("Vulgus (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wecleman.zip") do set ROM=%%~a
for %%a in ("WEC Le Mans 24 (v2.00, set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wwfsstar.zip") do set ROM=%%~a
for %%a in ("WWF Superstars (Europe)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wwfwfest.zip") do set ROM=%%~a
for %%a in ("WWF WrestleFest (US set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wwfmania.zip") do set ROM=%%~a
for %%a in ("WWF- Wrestlemania (rev 1.30 08-10-95)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wacko.zip") do set ROM=%%~a
for %%a in ("Wacko") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wwjgtin.zip") do set ROM=%%~a
for %%a in ("Wai Wai Jockey Gate-In!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wakuwak7.zip") do set ROM=%%~a
for %%a in ("Waku Waku 7") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("soniccar.zip") do set ROM=%%~a
for %%a in ("Waku Waku Sonic Patrol Car") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wallc.zip") do set ROM=%%~a
for %%a in ("Wall Crash (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wallst.zip") do set ROM=%%~a
for %%a in ("Wall Street") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wwallyj.zip") do set ROM=%%~a
for %%a in ("Wally wo Sagase! (rev B, Japan) (FD1094 317-0197B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wanted.zip") do set ROM=%%~a
for %%a in ("Wanted") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wargods.zip") do set ROM=%%~a
for %%a in ("War Gods (HD 10-09-1996 - Dual Resolution)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wrofaero.zip") do set ROM=%%~a
for %%a in ("War of Aero - Project MEIOU") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("warofbug.zip") do set ROM=%%~a
for %%a in ("War of the Bugs or Monsterous Manouvers in a Mushroom Maze") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wotw.zip") do set ROM=%%~a
for %%a in ("War of the Worlds") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wardner.zip") do set ROM=%%~a
for %%a in ("Wardner (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("warlords.zip") do set ROM=%%~a
for %%a in ("Warlords") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("warpwarp.zip") do set ROM=%%~a
for %%a in ("Warp & Warp") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("warpsped.zip") do set ROM=%%~a
for %%a in ("Warp Speed (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("warrior.zip") do set ROM=%%~a
for %%a in ("Warrior") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("warriorb.zip") do set ROM=%%~a
for %%a in ("Warrior Blade - Rastan Saga Episode III (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wof.zip") do set ROM=%%~a
for %%a in ("Warriors of Fate (World 921031)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("watrball.zip") do set ROM=%%~a
for %%a in ("Water Balls") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wmatch.zip") do set ROM=%%~a
for %%a in ("Water Match (315-5064)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("waterski.zip") do set ROM=%%~a
for %%a in ("Water Ski") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wtrnymph.zip") do set ROM=%%~a
for %%a in ("Water-Nymph (Ver. 1.4)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wg3dh.zip") do set ROM=%%~a
for %%a in ("Wayne Gretzky's 3D Hockey") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("weddingr.zip") do set ROM=%%~a
for %%a in ("Wedding Rhapsody (GX624 JAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("welltris.zip") do set ROM=%%~a
for %%a in ("Welltris (World-, 2 players)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wfortune.zip") do set ROM=%%~a
for %%a in ("Wheel Of Fortune (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wheelrun.zip") do set ROM=%%~a
for %%a in ("Wheels Runner") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("whodunit.zip") do set ROM=%%~a
for %%a in ("Who Dunit (version 9.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wildfang.zip") do set ROM=%%~a
for %%a in ("Wild Fang - Tecmo Knight") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_wgnmn.zip") do set ROM=%%~a
for %%a in ("Wild Gunman (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wildplt.zip") do set ROM=%%~a
for %%a in ("Wild Pilot") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("moomesa.zip") do set ROM=%%~a
for %%a in ("Wild West C.O.W.-Boys of Moo Mesa (ver EAB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wwestern.zip") do set ROM=%%~a
for %%a in ("Wild Western (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wmg.zip") do set ROM=%%~a
for %%a in ("Williams Multigame") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("willow.zip") do set ROM=%%~a
for %%a in ("Willow (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wilytowr.zip") do set ROM=%%~a
for %%a in ("Wily Tower") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("windheat.zip") do set ROM=%%~a
for %%a in ("Winding Heat (EAA, Euro v2.11)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wjammers.zip") do set ROM=%%~a
for %%a in ("Windjammers - Flying Power Disc") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wschamp.zip") do set ROM=%%~a
for %%a in ("Wing Shooting Championship V2.00") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wink.zip") do set ROM=%%~a
for %%a in ("Wink (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("winrun.zip") do set ROM=%%~a
for %%a in ("Winning Run") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("winrun91.zip") do set ROM=%%~a
for %%a in ("Winning Run '91 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("winrungp.zip") do set ROM=%%~a
for %%a in ("Winning Run Suzuka Grand Prix (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("winspike.zip") do set ROM=%%~a
for %%a in ("Winning Spike (ver EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("winterht.zip") do set ROM=%%~a
for %%a in ("Winter Heat (JUET 971012 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wiping.zip") do set ROM=%%~a
for %%a in ("Wiping") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wits.zip") do set ROM=%%~a
for %%a in ("Wit's (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("witch.zip") do set ROM=%%~a
for %%a in ("Witch") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wivernwg.zip") do set ROM=%%~a
for %%a in ("Wivern Wings") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wiz.zip") do set ROM=%%~a
for %%a in ("Wiz") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wizwarz.zip") do set ROM=%%~a
for %%a in ("Wiz Warz (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wizdfire.zip") do set ROM=%%~a
for %%a in ("Wizard Fire (Over Sea v2.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wow.zip") do set ROM=%%~a
for %%a in ("Wizard of Wor") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wizzquiz.zip") do set ROM=%%~a
for %%a in ("Wizz Quiz (Konami version)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wolfpack.zip") do set ROM=%%~a
for %%a in ("Wolf Pack (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wboy.zip") do set ROM=%%~a
for %%a in ("Wonder Boy (set 1, 315-5177)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wb3.zip") do set ROM=%%~a
for %%a in ("Wonder Boy III - Monster Lair (set 6, World, System 16B) (8751 317-0098)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wbml.zip") do set ROM=%%~a
for %%a in ("Wonder Boy in Monster Land (Japan New Ver., MC-8123, 317-0043)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wondl96.zip") do set ROM=%%~a
for %%a in ("Wonder League '96 (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wlstar.zip") do set ROM=%%~a
for %%a in ("Wonder League Star - Sok-Magicball Fighting (Korea)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wndrmomo.zip") do set ROM=%%~a
for %%a in ("Wonder Momo") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wndrplnt.zip") do set ROM=%%~a
for %%a in ("Wonder Planet (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("woodpeck.zip") do set ROM=%%~a
for %%a in ("Woodpecker (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wbeachvl.zip") do set ROM=%%~a
for %%a in ("World Beach Volley (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wcbowl.zip") do set ROM=%%~a
for %%a in ("World Class Bowling (v1.66)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wcbowldx.zip") do set ROM=%%~a
for %%a in ("World Class Bowling Deluxe (v2.00)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wldcourt.zip") do set ROM=%%~a
for %%a in ("World Court (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wcvol95.zip") do set ROM=%%~a
for %%a in ("World Cup Volley '95 (Japan v1.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_dart.zip") do set ROM=%%~a
for %%a in ("World Darts (Arcadia, set 1, V 2.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wh1.zip") do set ROM=%%~a
for %%a in ("World Heroes (ALM-005)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wh2.zip") do set ROM=%%~a
for %%a in ("World Heroes 2 (ALM-006)(ALH-006)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wh2j.zip") do set ROM=%%~a
for %%a in ("World Heroes 2 Jet (ADM-007)(ADH-007)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("whp.zip") do set ROM=%%~a
for %%a in ("World Heroes Perfect") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wpksocv2.zip") do set ROM=%%~a
for %%a in ("World PK Soccer V2 (ver 1.1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wrally.zip") do set ROM=%%~a
for %%a in ("World Rally (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wseries.zip") do set ROM=%%~a
for %%a in ("World Series- The Season") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wsf.zip") do set ROM=%%~a
for %%a in ("World Soccer Finals") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ws.zip") do set ROM=%%~a
for %%a in ("World Stadium (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wtennis.zip") do set ROM=%%~a
for %%a in ("World Tennis") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_socc.zip") do set ROM=%%~a
for %%a in ("World Trophy Soccer (Arcadia, V 3.0)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("worldwar.zip") do set ROM=%%~a
for %%a in ("World Wars (World-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wrestwar.zip") do set ROM=%%~a
for %%a in ("Wrestle War (set 3, World) (8751 317-0103)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("wyvernf0.zip") do set ROM=%%~a
for %%a in ("Wyvern F-0") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xmultipl.zip") do set ROM=%%~a
for %%a in ("X Multiply (World, M81)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xtheball.zip") do set ROM=%%~a
for %%a in ("X the Ball") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xday2.zip") do set ROM=%%~a
for %%a in ("X-Day 2 (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xmen.zip") do set ROM=%%~a
for %%a in ("X-Men (4 Players ver UBB)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xmvsf.zip") do set ROM=%%~a
for %%a in ("X-Men Vs. Street Fighter (Euro 961004)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xmcota.zip") do set ROM=%%~a
for %%a in ("X-Men- Children of the Atom (Euro 950331)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xplan.zip") do set ROM=%%~a
for %%a in ("X-Plan (Ver. 1.01)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("x2222.zip") do set ROM=%%~a
for %%a in ("X2222 (final debug-)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xiistag.zip") do set ROM=%%~a
for %%a in ("XII Stag (V2.01J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xxmissio.zip") do set ROM=%%~a
for %%a in ("XX Mission") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xsleena.zip") do set ROM=%%~a
for %%a in ("Xain'd Sleena (World)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("ar_xeon.zip") do set ROM=%%~a
for %%a in ("Xenon (Arcadia, V 2.3)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xenophob.zip") do set ROM=%%~a
for %%a in ("Xenophobe") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xevious.zip") do set ROM=%%~a
for %%a in ("Xevious (Namco)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xevi3dg.zip") do set ROM=%%~a
for %%a in ("Xevious 3D-G (Japan, XV31-VER.A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xexex.zip") do set ROM=%%~a
for %%a in ("Xexex (ver EAA)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xorworld.zip") do set ROM=%%~a
for %%a in ("Xor World (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xybots.zip") do set ROM=%%~a
for %%a in ("Xybots (rev 2)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("xyonix.zip") do set ROM=%%~a
for %%a in ("Xyonix") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("yamyam.zip") do set ROM=%%~a
for %%a in ("Yam! Yam!-") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("yamato.zip") do set ROM=%%~a
for %%a in ("Yamato (US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("yesnoj.zip") do set ROM=%%~a
for %%a in ("Yes-No Sinri Tokimeki Chart") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("yiear.zip") do set ROM=%%~a
for %%a in ("Yie Ar Kung-Fu (program code I)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("pc_ynoid.zip") do set ROM=%%~a
for %%a in ("Yo! Noid (PlayChoice-10)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("yosakdon.zip") do set ROM=%%~a
for %%a in ("Yosaku To Donbei (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("youjyudn.zip") do set ROM=%%~a
for %%a in ("Youjyuden (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("yuka.zip") do set ROM=%%~a
for %%a in ("Yu-Ka") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("yumefuda.zip") do set ROM=%%~a
for %%a in ("Yumefuda [BET]") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("yuyugogo.zip") do set ROM=%%~a
for %%a in ("Yuuyu no Quiz de GO!GO! (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zaviga.zip") do set ROM=%%~a
for %%a in ("Zaviga") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zaxxon.zip") do set ROM=%%~a
for %%a in ("Zaxxon (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zedblade.zip") do set ROM=%%~a
for %%a in ("Zed Blade - Operation Ragnarok") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zektor.zip") do set ROM=%%~a
for %%a in ("Zektor (revision B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("znpwfv.zip") do set ROM=%%~a
for %%a in ("Zen Nippon Pro-Wrestling Featuring Virtua (J 971123 V1.000)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zerohour.zip") do set ROM=%%~a
for %%a in ("Zero Hour (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zeropnt.zip") do set ROM=%%~a
for %%a in ("Zero Point (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zeropnt2.zip") do set ROM=%%~a
for %%a in ("Zero Point 2") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zerowing.zip") do set ROM=%%~a
for %%a in ("Zero Wing (2P set)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("czeroize.zip") do set ROM=%%~a
for %%a in ("Zeroize (DECO Cassette)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zigzagb.zip") do set ROM=%%~a
for %%a in ("Zig Zag (Dig Dug conversion on Galaxian hardware, bootleg set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zingzip.zip") do set ROM=%%~a
for %%a in ("Zing Zing Zip") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zintrckb.zip") do set ROM=%%~a
for %%a in ("Zintrick - Oshidashi Zentrix (hack)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zoar.zip") do set ROM=%%~a
for %%a in ("Zoar") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zodiack.zip") do set ROM=%%~a
for %%a in ("Zodiack") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zokuoten.zip") do set ROM=%%~a
for %%a in ("Zoku Otenamihaiken (V2.03J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zombraid.zip") do set ROM=%%~a
for %%a in ("Zombie Raid (9-28-95, US)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zookeep.zip") do set ROM=%%~a
for %%a in ("Zoo Keeper (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zooo.zip") do set ROM=%%~a
for %%a in ("Zooo (V2.01J)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zunkyou.zip") do set ROM=%%~a
for %%a in ("Zunzunkyou No Yabou (Japan)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zupapa.zip") do set ROM=%%~a
for %%a in ("Zupapa!") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zwackery.zip") do set ROM=%%~a
for %%a in ("Zwackery") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("zzyzzyxx.zip") do set ROM=%%~a
for %%a in ("Zzyzzyxx (set 1)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bm1stmix.zip") do set ROM=%%~a
for %%a in ("beatmania (ver JA-B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bm2ndmix.zip") do set ROM=%%~a
for %%a in ("beatmania 2nd MIX (ver JA-B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bm3rdmix.zip") do set ROM=%%~a
for %%a in ("beatmania 3rd MIX (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bm4thmix.zip") do set ROM=%%~a
for %%a in ("beatmania 4th MIX (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bm5thmix.zip") do set ROM=%%~a
for %%a in ("beatmania 5th MIX (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bm6thmix.zip") do set ROM=%%~a
for %%a in ("beatmania 6th MIX (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bm7thmix.zip") do set ROM=%%~a
for %%a in ("beatmania 7th MIX (ver JA-B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bmcorerm.zip") do set ROM=%%~a
for %%a in ("beatmania CORE REMIX (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bmclubmx.zip") do set ROM=%%~a
for %%a in ("beatmania Club MIX (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bmfinal.zip") do set ROM=%%~a
for %%a in ("beatmania THE FINAL (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bmcompmx.zip") do set ROM=%%~a
for %%a in ("beatmania complete MIX (ver JA-B)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bmcompm2.zip") do set ROM=%%~a
for %%a in ("beatmania complete MIX 2 (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bmdct.zip") do set ROM=%%~a
for %%a in ("beatmania featuring Dreams Come True (ver JA-A)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%
for %%a in ("bbprot.zip") do set ROM=%%~a
for %%a in ("unknown fighting game 'BB' (prototype)") do set NWDIR=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%"&call :%LINKR%

popd
:ALIASCOMPLETE