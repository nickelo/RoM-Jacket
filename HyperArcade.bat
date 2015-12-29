if "%DEFINEDIR%" NEQ "1" goto :DEFPUSH
if "%HYPTYPE%"=="BA" pushd "%BARTLOC%" && set MAMENAME=Folder.png
if "%HYPTYPE%"=="VD" pushd "%VIDLOC%" && set MAMENAME=.trailer\%NWDIR%
if "%HYPTYPE%"=="BN" pushd "%BANLOC%" && set MAMENAME=Banner.png
goto :CPYBEGIN

:DEFPUSH
if "%HYPTYPE%"=="BA" pushd "%HSMETA%\%MAME%\Images\%ARTNUM%" && set MAMENAME=Folder.png
if "%HYPTYPE%"=="VD" pushd "%HSMETA%\%MAME%\Video" && set MAMENAME=.trailer\%NWDIR%
if "%HYPTYPE%"=="BN" pushd "%HSMETA%\%MAME%\Images\Wheel" && set MAMENAME=Banner.png
goto :CPYBEGIN

:CPYBEGIN
for %%a in ("1 on 1 Government (Japan)") do set NWDIR=%%~a
for %%a in ("1on1gov.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("1000 Miglia- Great 1000 Miles Rally (94-07-18)") do set NWDIR=%%~a
for %%a in ("gtmr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("10-Yard Fight (World, set 1)") do set NWDIR=%%~a
for %%a in ("10yard.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("18 Holes Pro Golf (set 1)") do set NWDIR=%%~a
for %%a in ("progolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("1941- Counter Attack (World 900227)") do set NWDIR=%%~a
for %%a in ("1941.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("1942 (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_1942.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("1942 (Revision B)") do set NWDIR=%%~a
for %%a in ("1942.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("1943 Kai- Midway Kaisen (Japan)") do set NWDIR=%%~a
for %%a in ("1943kai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("1943- The Battle of Midway (Euro)") do set NWDIR=%%~a
for %%a in ("1943.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("1944- The Loop Master (USA 000620)") do set NWDIR=%%~a
for %%a in ("1944.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("1945k III") do set NWDIR=%%~a
for %%a in ("1945kiii.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("19XX- The War Against Destiny (USA 951207)") do set NWDIR=%%~a
for %%a in ("19xx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("2 On 2 Open Ice Challenge (rev 1.21)") do set NWDIR=%%~a
for %%a in ("openice.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("2020 Super Baseball (set 1)") do set NWDIR=%%~a
for %%a in ("2020bb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("280-ZZZAP") do set NWDIR=%%~a
for %%a in ("280zzzap.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("3 Count Bout - Fire Suplex (NGM-043)(NGH-043)") do set NWDIR=%%~a
for %%a in ("3countb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("3 On 3 Dunk Madness (US, prototype- 1997-02-04)") do set NWDIR=%%~a
for %%a in ("3on3dunk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("30 Test (Remake)") do set NWDIR=%%~a
for %%a in ("30test.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("39 in 1 MAME bootleg") do set NWDIR=%%~a
for %%a in ("39in1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("3X3 Puzzle (Enterprise)") do set NWDIR=%%~a
for %%a in ("3x3puzzl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("4 Fun in 1") do set NWDIR=%%~a
for %%a in ("4in1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("4-D Warriors (315-5162)") do set NWDIR=%%~a
for %%a in ("4dwarrio.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("4nin-uchi Mahjong Jantotsu") do set NWDIR=%%~a
for %%a in ("jantotsu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("64th. Street - A Detective Story (World)") do set NWDIR=%%~a
for %%a in ("64street.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("7 e Mezzo") do set NWDIR=%%~a
for %%a in ("7mezzo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("7 Ordi (Korea)") do set NWDIR=%%~a
for %%a in ("7ordi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("720 Degrees (rev 4)") do set NWDIR=%%~a
for %%a in ("720.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("'88 Games") do set NWDIR=%%~a
for %%a in ("88games.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("9-Ball Shootout (set 1)") do set NWDIR=%%~a
for %%a in ("9ballsht.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("A Question of Sport (set 1, 39-960-107)") do set NWDIR=%%~a
for %%a in ("qos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("A. D. 2083") do set NWDIR=%%~a
for %%a in ("ad2083.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("A.B. Cop (World, FD1094 317-0169b)") do set NWDIR=%%~a
for %%a in ("abcop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ace") do set NWDIR=%%~a
for %%a in ("ace.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ace Driver- Racing Evolution (Rev. AD2)") do set NWDIR=%%~a
for %%a in ("acedrvrw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ace Driver- Victory Lap (Rev. ADV2)") do set NWDIR=%%~a
for %%a in ("victlapw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Acrobat Mission") do set NWDIR=%%~a
for %%a in ("acrobatm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Acrobatic Dog-Fight") do set NWDIR=%%~a
for %%a in ("dogfgt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Act-Fancer Cybernetick Hyper Weapon (World revision 2)") do set NWDIR=%%~a
for %%a in ("actfancr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Action Fighter (FD1089A 317-0018)") do set NWDIR=%%~a
for %%a in ("afighter.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Action Hollywood") do set NWDIR=%%~a
for %%a in ("actionhw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aero Fighters (World - USA + Canada - Korea - Hong Kong - Taiwan) (newer hardware)") do set NWDIR=%%~a
for %%a in ("aerofgt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aero Fighters 2 - Sonic Wings 2") do set NWDIR=%%~a
for %%a in ("sonicwi2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aero Fighters 3 - Sonic Wings 3") do set NWDIR=%%~a
for %%a in ("sonicwi3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aero Fighters Special (Taiwan)") do set NWDIR=%%~a
for %%a in ("aerofgts.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("After Burner II") do set NWDIR=%%~a
for %%a in ("aburner2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Age Of Heroes - Silkroad 2 (v0.63 - 2001-02-07)") do set NWDIR=%%~a
for %%a in ("aoh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Agent Super Bond (Super Cobra conversion)") do set NWDIR=%%~a
for %%a in ("superbon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aggressors of Dark Kombat - Tsuukai GANGAN Koushinkyoku (ADM-008)(ADH-008)") do set NWDIR=%%~a
for %%a in ("aodk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Agress - Missile Daisenryaku (Japan)") do set NWDIR=%%~a
for %%a in ("agress.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ah Eikou no Koshien (Japan)") do set NWDIR=%%~a
for %%a in ("koshien.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Air Attack (set 1)") do set NWDIR=%%~a
for %%a in ("airattck.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Air Buster- Trouble Specialty Raid Unit (World)") do set NWDIR=%%~a
for %%a in ("airbustr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Air Duel (Japan)") do set NWDIR=%%~a
for %%a in ("airduel.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Air Gallet (Europe)") do set NWDIR=%%~a
for %%a in ("agallet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Air Race (prototype)") do set NWDIR=%%~a
for %%a in ("airrace.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Air Rescue") do set NWDIR=%%~a
for %%a in ("arescue.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Airwolf") do set NWDIR=%%~a
for %%a in ("airwolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ajax") do set NWDIR=%%~a
for %%a in ("ajax.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aladdin (bootleg of Japanese Megadrive version)") do set NWDIR=%%~a
for %%a in ("aladmdb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alcon (US)") do set NWDIR=%%~a
for %%a in ("alcon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alex Kidd- The Lost Stars (set 2, unprotected)") do set NWDIR=%%~a
for %%a in ("alexkidd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ali Baba and 40 Thieves") do set NWDIR=%%~a
for %%a in ("alibaba.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alien Arena") do set NWDIR=%%~a
for %%a in ("alienar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alien Challenge (World)") do set NWDIR=%%~a
for %%a in ("aliencha.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alien Crush") do set NWDIR=%%~a
for %%a in ("aliencr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alien Sector") do set NWDIR=%%~a
for %%a in ("aliensec.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alien Storm (World, 2 Players, FD1094 317-0154)") do set NWDIR=%%~a
for %%a in ("astorm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alien Syndrome (set 4, System 16B, unprotected)") do set NWDIR=%%~a
for %%a in ("aliensyn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alien vs. Predator (Euro 940520)") do set NWDIR=%%~a
for %%a in ("avsp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alien3- The Gun (World)") do set NWDIR=%%~a
for %%a in ("alien3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aliens (World set 1)") do set NWDIR=%%~a
for %%a in ("aliens.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("All American Football (rev E)") do set NWDIR=%%~a
for %%a in ("aafb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alley Master") do set NWDIR=%%~a
for %%a in ("alleymas.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Almond Pinky [BET] (Japan)") do set NWDIR=%%~a
for %%a in ("mjapinky.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alpha Fighter - Head On") do set NWDIR=%%~a
for %%a in ("alphaho.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alpha Mission II - ASO II - Last Guardian (NGM-007)(NGH-007)") do set NWDIR=%%~a
for %%a in ("alpham2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alpine Racer (Rev. AR2 Ver.D)") do set NWDIR=%%~a
for %%a in ("alpinerd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alpine Racer 2 (Rev. ARS2 Ver.B)") do set NWDIR=%%~a
for %%a in ("alpinr2b.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Alpine Ski (set 1)") do set NWDIR=%%~a
for %%a in ("alpine.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Altair") do set NWDIR=%%~a
for %%a in ("altair.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Altered Beast (set 8, 8751 317-0078)") do set NWDIR=%%~a
for %%a in ("altbeast.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Amazing Maze") do set NWDIR=%%~a
for %%a in ("maze.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ambush") do set NWDIR=%%~a
for %%a in ("ambush.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("American Horseshoes (US)") do set NWDIR=%%~a
for %%a in ("horshoes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("American Speedway (set 1)") do set NWDIR=%%~a
for %%a in ("amspdwy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("AmeriDarts (set 1)") do set NWDIR=%%~a
for %%a in ("amerdart.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Amidar") do set NWDIR=%%~a
for %%a in ("amidar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Andro Dunos (NGM-049)(NGH-049)") do set NWDIR=%%~a
for %%a in ("androdun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Angel Kids (Japan)") do set NWDIR=%%~a
for %%a in ("angelkds.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Angler Dangler (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cadanglr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Animal Catch") do set NWDIR=%%~a
for %%a in ("animalc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Anteater") do set NWDIR=%%~a
for %%a in ("anteater.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Apache 3") do set NWDIR=%%~a
for %%a in ("apache3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("APB - All Points Bulletin (rev 7)") do set NWDIR=%%~a
for %%a in ("apb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Appoooh") do set NWDIR=%%~a
for %%a in ("appoooh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aqua Jack (World)") do set NWDIR=%%~a
for %%a in ("aquajack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aqua Jet (Rev. AJ2 Ver.B)") do set NWDIR=%%~a
for %%a in ("aquajet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aqua Rush (Japan, AQ1-VER.A1)") do set NWDIR=%%~a
for %%a in ("aquarush.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aquarium (Japan)") do set NWDIR=%%~a
for %%a in ("aquarium.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arabian") do set NWDIR=%%~a
for %%a in ("arabian.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arabian Fight (World)") do set NWDIR=%%~a
for %%a in ("arabfgt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arabian Magic (Ver 1.0O 1992-07-06)") do set NWDIR=%%~a
for %%a in ("arabianm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arbalester") do set NWDIR=%%~a
for %%a in ("arbalest.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arcade Classics (prototype)") do set NWDIR=%%~a
for %%a in ("arcadecl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arcadia (NMK)") do set NWDIR=%%~a
for %%a in ("arcadian.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arch Rivals (rev 4.0 6-29-89)") do set NWDIR=%%~a
for %%a in ("archrivl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Area 51 (R3000)") do set NWDIR=%%~a
for %%a in ("area51.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Area 51 - Maximum Force Duo v2.0") do set NWDIR=%%~a
for %%a in ("area51mx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Argus") do set NWDIR=%%~a
for %%a in ("argus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Argus (Gottlieb, prototype)") do set NWDIR=%%~a
for %%a in ("argusg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ark Area") do set NWDIR=%%~a
for %%a in ("arkarea.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arkanoid - Revenge of DOH (World)") do set NWDIR=%%~a
for %%a in ("arknoid2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arkanoid (World)") do set NWDIR=%%~a
for %%a in ("arkanoid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arkanoid Returns (Ver 2.02O 1997-02-10)") do set NWDIR=%%~a
for %%a in ("arkretrn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arlington Horse Racing (v1.21-D)") do set NWDIR=%%~a
for %%a in ("arlingtn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arm Champs II v2.6") do set NWDIR=%%~a
for %%a in ("armchmp2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Arm Wrestling") do set NWDIR=%%~a
for %%a in ("armwrest.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Armadillo Racing (Rev. AM1 Ver.A)") do set NWDIR=%%~a
for %%a in ("adillor.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Armed Formation") do set NWDIR=%%~a
for %%a in ("armedf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Armed Police Batrider (Europe) (Fri Feb 13 1998)") do set NWDIR=%%~a
for %%a in ("batrider.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Armored Car (set 1)") do set NWDIR=%%~a
for %%a in ("armorcar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Armored Warriors (Euro 941024)") do set NWDIR=%%~a
for %%a in ("armwar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Art of Fighting - Ryuuko no Ken (NGM-044)(NGH-044)") do set NWDIR=%%~a
for %%a in ("aof.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Art of Fighting 2 - Ryuuko no Ken 2 (NGM-056)") do set NWDIR=%%~a
for %%a in ("aof2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Art of Fighting 3 - The Path of the Warrior - Art of Fighting - Ryuuko no Ken Gaiden") do set NWDIR=%%~a
for %%a in ("aof3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ashura Blaster (World)") do set NWDIR=%%~a
for %%a in ("ashura.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("ASO - Armored Scrum Object") do set NWDIR=%%~a
for %%a in ("aso.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Assault") do set NWDIR=%%~a
for %%a in ("assault.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Asterix (ver EAD)") do set NWDIR=%%~a
for %%a in ("asterix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Asteroids (rev 4)") do set NWDIR=%%~a
for %%a in ("asteroid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Asteroids Deluxe (rev 3)") do set NWDIR=%%~a
for %%a in ("astdelux.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Astra SuperStars (J 980514 V1.002)") do set NWDIR=%%~a
for %%a in ("astrass.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Astro Chase (Max-A-Flex)") do set NWDIR=%%~a
for %%a in ("mf_achas.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Astro Fantasia (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("castfant.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Astro Wars") do set NWDIR=%%~a
for %%a in ("astrowar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Astropal") do set NWDIR=%%~a
for %%a in ("astropal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Asuka & Asuka (World)") do set NWDIR=%%~a
for %%a in ("asuka.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Asura Blade - Sword of Dynasty (Japan)") do set NWDIR=%%~a
for %%a in ("asurabld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Asura Buster - Eternal Warriors (Japan)") do set NWDIR=%%~a
for %%a in ("asurabus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Asylum (prototype)") do set NWDIR=%%~a
for %%a in ("asylum.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Atari Baseball (set 1)") do set NWDIR=%%~a
for %%a in ("abaseb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Atari Football (revision 2)") do set NWDIR=%%~a
for %%a in ("atarifb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Atari Mini Golf (prototype)") do set NWDIR=%%~a
for %%a in ("mgolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Atari Soccer") do set NWDIR=%%~a
for %%a in ("soccer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Athena") do set NWDIR=%%~a
for %%a in ("athena.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Atomic Point (Korea)") do set NWDIR=%%~a
for %%a in ("atomicp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Atomic Robo-kid") do set NWDIR=%%~a
for %%a in ("robokid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Attack Force") do set NWDIR=%%~a
for %%a in ("attackfc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Attack Ufo") do set NWDIR=%%~a
for %%a in ("attckufo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aurail (set 3, US, unprotected)") do set NWDIR=%%~a
for %%a in ("aurail.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Avalanche") do set NWDIR=%%~a
for %%a in ("avalnche.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Avengers (US set 1)") do set NWDIR=%%~a
for %%a in ("avengers.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Avengers In Galactic Storm (US)") do set NWDIR=%%~a
for %%a in ("avengrgs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Avenging Spirit") do set NWDIR=%%~a
for %%a in ("avspirit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Aztarac") do set NWDIR=%%~a
for %%a in ("aztarac.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Azurian Attack") do set NWDIR=%%~a
for %%a in ("azurian.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("B.C. Kid - Bonk's Adventure - Kyukyoku!! PC Genjin") do set NWDIR=%%~a
for %%a in ("bonkadv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("B.C. Story (set 1)") do set NWDIR=%%~a
for %%a in ("bcstry.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("B.Rap Boys (World)") do set NWDIR=%%~a
for %%a in ("brapboys.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Back Fire (Tecmo, bootleg)") do set NWDIR=%%~a
for %%a in ("backfirt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Back Street Soccer (KRB-0031 PCB)") do set NWDIR=%%~a
for %%a in ("bssoccer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Backfire! (set 1)") do set NWDIR=%%~a
for %%a in ("backfire.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bad Dudes vs. Dragonninja (US)") do set NWDIR=%%~a
for %%a in ("baddudes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bad Lands") do set NWDIR=%%~a
for %%a in ("badlands.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bagman") do set NWDIR=%%~a
for %%a in ("bagman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Baku Baku Animal (J 950407 V1.000)") do set NWDIR=%%~a
for %%a in ("bakubaku.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bakutotsu Kijuutei") do set NWDIR=%%~a
for %%a in ("bakutotu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bal Cube") do set NWDIR=%%~a
for %%a in ("balcube.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Balloon Brothers") do set NWDIR=%%~a
for %%a in ("ballbros.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Balloon Fight (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_bfght.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Baluba-louk no Densetsu (Japan)") do set NWDIR=%%~a
for %%a in ("baluba.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("BanBam") do set NWDIR=%%~a
for %%a in ("banbam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bang Bang Ball (v1.05)") do set NWDIR=%%~a
for %%a in ("bangball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bang Bang Busters (prototype) (NGM-071)(NGH-071)") do set NWDIR=%%~a
for %%a in ("bbuster.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bang Bead") do set NWDIR=%%~a
for %%a in ("bangbead.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bang!") do set NWDIR=%%~a
for %%a in ("bang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bank Panic") do set NWDIR=%%~a
for %%a in ("bankp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Barricade") do set NWDIR=%%~a
for %%a in ("barricad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Baryon - Future Assault") do set NWDIR=%%~a
for %%a in ("baryon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Baseball (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_bball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Baseball Stars 2") do set NWDIR=%%~a
for %%a in ("bstars2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Baseball Stars Professional (NGM-002)") do set NWDIR=%%~a
for %%a in ("bstars.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Baseball Stars- Be a Champ! (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_bstar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Baseball- The Season II") do set NWDIR=%%~a
for %%a in ("basebal2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bases Loaded (Prototype, PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_bload.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Basketball") do set NWDIR=%%~a
for %%a in ("bsktball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Batman") do set NWDIR=%%~a
for %%a in ("batman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Batman Forever (JUE 960507 V1.000)") do set NWDIR=%%~a
for %%a in ("batmanfr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Batsugun") do set NWDIR=%%~a
for %%a in ("batsugun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battlantis (program code G)") do set NWDIR=%%~a
for %%a in ("battlnts.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Arena Toshinden 2 (USA 951124)") do set NWDIR=%%~a
for %%a in ("ts2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Bakraid - Unlimited Version (USA) (Tue Jun 8 1999)") do set NWDIR=%%~a
for %%a in ("bbakraid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Chopper") do set NWDIR=%%~a
for %%a in ("bchopper.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Circuit (Euro 970319)") do set NWDIR=%%~a
for %%a in ("batcir.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Cross") do set NWDIR=%%~a
for %%a in ("battlex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Cruiser M-12") do set NWDIR=%%~a
for %%a in ("bcruzm12.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Flip Shot") do set NWDIR=%%~a
for %%a in ("flipshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Garegga (Europe - USA - Japan - Asia) (Sat Feb 3 1996)") do set NWDIR=%%~a
for %%a in ("bgaregga.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle K-Road") do set NWDIR=%%~a
for %%a in ("btlkroad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Lane! Vol. 5 (set 1)") do set NWDIR=%%~a
for %%a in ("battlane.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle of Atlantis (set 1)") do set NWDIR=%%~a
for %%a in ("atlantis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle of the Solar System (rev. 1.1a 7-23-92)") do set NWDIR=%%~a
for %%a in ("botss.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Rangers (World)") do set NWDIR=%%~a
for %%a in ("battlera.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Shark (World)") do set NWDIR=%%~a
for %%a in ("bshark.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battle Zone (rev 2)") do set NWDIR=%%~a
for %%a in ("bzone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battlecry") do set NWDIR=%%~a
for %%a in ("battlcry.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Battletoads") do set NWDIR=%%~a
for %%a in ("btoads.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bay Route (set 3, World, FD1094 317-0116)") do set NWDIR=%%~a
for %%a in ("bayroute.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Beach Festival World Championship 1997") do set NWDIR=%%~a
for %%a in ("wbbc97.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Beam Invader") do set NWDIR=%%~a
for %%a in ("beaminv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Beast Busters (World)") do set NWDIR=%%~a
for %%a in ("bbusters.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Beastorizer (USA)") do set NWDIR=%%~a
for %%a in ("beastrzr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("BeatHead (prototype)") do set NWDIR=%%~a
for %%a in ("beathead.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania (ver JA-B)") do set NWDIR=%%~a
for %%a in ("bm1stmix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania 2nd MIX (ver JA-B)") do set NWDIR=%%~a
for %%a in ("bm2ndmix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania 3rd MIX (ver JA-A)") do set NWDIR=%%~a
for %%a in ("bm3rdmix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania 4th MIX (ver JA-A)") do set NWDIR=%%~a
for %%a in ("bm4thmix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania 5th MIX (ver JA-A)") do set NWDIR=%%~a
for %%a in ("bm5thmix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania 6th MIX (ver JA-A)") do set NWDIR=%%~a
for %%a in ("bm6thmix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania 7th MIX (ver JA-B)") do set NWDIR=%%~a
for %%a in ("bm7thmix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania Club MIX (ver JA-A)") do set NWDIR=%%~a
for %%a in ("bmclubmx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania complete MIX (ver JA-B)") do set NWDIR=%%~a
for %%a in ("bmcompmx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania complete MIX 2 (ver JA-A)") do set NWDIR=%%~a
for %%a in ("bmcompm2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania CORE REMIX (ver JA-A)") do set NWDIR=%%~a
for %%a in ("bmcorerm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania featuring Dreams Come True (ver JA-A)") do set NWDIR=%%~a
for %%a in ("bmdct.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("beatmania THE FINAL (ver JA-A)") do set NWDIR=%%~a
for %%a in ("bmfinal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Beezer (set 1)") do set NWDIR=%%~a
for %%a in ("beezer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bells & Whistles (Version L)") do set NWDIR=%%~a
for %%a in ("blswhstl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ben Bero Beh (Japan)") do set NWDIR=%%~a
for %%a in ("benberob.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Beraboh Man (Japan version C)") do set NWDIR=%%~a
for %%a in ("berabohm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bermuda Triangle (World-)") do set NWDIR=%%~a
for %%a in ("bermudat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Berzerk (set 1)") do set NWDIR=%%~a
for %%a in ("berzerk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Best Bout Boxing") do set NWDIR=%%~a
for %%a in ("bbbxing.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Best Of Best") do set NWDIR=%%~a
for %%a in ("bestbest.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bestri (Korea)") do set NWDIR=%%~a
for %%a in ("bestri.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Big 10") do set NWDIR=%%~a
for %%a in ("big10.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Big Event Golf (US)") do set NWDIR=%%~a
for %%a in ("bigevglf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Big Fight - Big Trouble In The Atlantic Ocean") do set NWDIR=%%~a
for %%a in ("bigfight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Big Karnak") do set NWDIR=%%~a
for %%a in ("bigkarnk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Big Run (11th Rallye version)") do set NWDIR=%%~a
for %%a in ("bigrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Big Striker") do set NWDIR=%%~a
for %%a in ("bigstrik.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Big Twin") do set NWDIR=%%~a
for %%a in ("bigtwin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bigfoot Bonkers") do set NWDIR=%%~a
for %%a in ("bbonk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Billiard") do set NWDIR=%%~a
for %%a in ("bilyard.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Billiard Academy Real Break (Europe)") do set NWDIR=%%~a
for %%a in ("realbrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bio Attack") do set NWDIR=%%~a
for %%a in ("bioatack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("BioFreaks (prototype)") do set NWDIR=%%~a
for %%a in ("biofreak.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bio-hazard Battle (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_bio.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Biomechanical Toy (Ver. 1.0.1885)") do set NWDIR=%%~a
for %%a in ("biomtoy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bionic Commando (Euro)") do set NWDIR=%%~a
for %%a in ("bionicc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bio-ship Paladin") do set NWDIR=%%~a
for %%a in ("bioship.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Birdie King") do set NWDIR=%%~a
for %%a in ("bking.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Birdie King 2") do set NWDIR=%%~a
for %%a in ("bking2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Birdie King 3") do set NWDIR=%%~a
for %%a in ("bking3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Birdie Try (Japan)") do set NWDIR=%%~a
for %%a in ("birdtry.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Birdiy") do set NWDIR=%%~a
for %%a in ("birdiy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bishi Bashi Championship Mini Game Senshuken (ver JAA, 3 Players)") do set NWDIR=%%~a
for %%a in ("bishi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bishou Jan (Japan, Ver. 2.03)") do set NWDIR=%%~a
for %%a in ("bishjan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Black Heart") do set NWDIR=%%~a
for %%a in ("blkheart.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Black Hole") do set NWDIR=%%~a
for %%a in ("blkhole.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Black Panther") do set NWDIR=%%~a
for %%a in ("blkpnthr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Black Tiger") do set NWDIR=%%~a
for %%a in ("blktiger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Black Touch (Korea)") do set NWDIR=%%~a
for %%a in ("blktouch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Black Widow") do set NWDIR=%%~a
for %%a in ("bwidow.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blade Master (World)") do set NWDIR=%%~a
for %%a in ("bmaster.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blades of Steel (version T)") do set NWDIR=%%~a
for %%a in ("bladestl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blandia") do set NWDIR=%%~a
for %%a in ("blandia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blast Off (Japan)") do set NWDIR=%%~a
for %%a in ("blastoff.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blastaball (Arcadia, V 2.1)") do set NWDIR=%%~a
for %%a in ("ar_blast.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blasted") do set NWDIR=%%~a
for %%a in ("blasted.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blaster") do set NWDIR=%%~a
for %%a in ("blaster.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blasteroids (rev 4)") do set NWDIR=%%~a
for %%a in ("blstroid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blaze On (Japan)") do set NWDIR=%%~a
for %%a in ("blazeon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blazer (Japan)") do set NWDIR=%%~a
for %%a in ("blazer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blazing Lazers") do set NWDIR=%%~a
for %%a in ("blazlaz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blazing Star") do set NWDIR=%%~a
for %%a in ("blazstar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blazing Tornado") do set NWDIR=%%~a
for %%a in ("blzntrnd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Block Block (World 910910)") do set NWDIR=%%~a
for %%a in ("block.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Block Carnival - Thunder & Lightning 2") do set NWDIR=%%~a
for %%a in ("blockcar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Block Gal (MC-8123B, 317-0029)") do set NWDIR=%%~a
for %%a in ("blockgal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Block Hole") do set NWDIR=%%~a
for %%a in ("blockhl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Block Out (set 1)") do set NWDIR=%%~a
for %%a in ("blockout.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blocken (Japan)") do set NWDIR=%%~a
for %%a in ("blocken.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blomby Car") do set NWDIR=%%~a
for %%a in ("blmbycar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blood Bros. (set 1)") do set NWDIR=%%~a
for %%a in ("bloodbro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blood Storm (v2.22)") do set NWDIR=%%~a
for %%a in ("bloodstm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blood Warrior") do set NWDIR=%%~a
for %%a in ("bloodwar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bloody Roar 2 (World)") do set NWDIR=%%~a
for %%a in ("bldyror2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bloxeed (Japan, FD1094 317-0139)") do set NWDIR=%%~a
for %%a in ("bloxeed.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blue Hawk") do set NWDIR=%%~a
for %%a in ("bluehawk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blue Print (Midway)") do set NWDIR=%%~a
for %%a in ("blueprnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blue Shark") do set NWDIR=%%~a
for %%a in ("blueshrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Blue's Journey - Raguy (ALM-001)(ALH-001)") do set NWDIR=%%~a
for %%a in ("bjourney.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("BnB Arcade") do set NWDIR=%%~a
for %%a in ("bballoon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Body Slam (8751 317-0015)") do set NWDIR=%%~a
for %%a in ("bodyslam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bogey Manor") do set NWDIR=%%~a
for %%a in ("bogeyman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boggy '84") do set NWDIR=%%~a
for %%a in ("boggy84.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bomb Bee") do set NWDIR=%%~a
for %%a in ("bombbee.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bomb Jack (set 1)") do set NWDIR=%%~a
for %%a in ("bombjack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bomb Kick (set 1)") do set NWDIR=%%~a
for %%a in ("bombkick.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bomber Man World - New Dyna Blaster - Global Quest") do set NWDIR=%%~a
for %%a in ("bbmanw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bombjack Twin (set 1)") do set NWDIR=%%~a
for %%a in ("bjtwin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bonanza Bros (US, Floppy DS3-5000-07d- Based)") do set NWDIR=%%~a
for %%a in ("bnzabros.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bongo") do set NWDIR=%%~a
for %%a in ("bongo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bonze Adventure (World, Newer)") do set NWDIR=%%~a
for %%a in ("bonzeadv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boogie Wings (Euro v1.5, 92.12.07)") do set NWDIR=%%~a
for %%a in ("boogwing.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boomer Rang'r - Genesis (set 1)") do set NWDIR=%%~a
for %%a in ("boomrang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boong-Ga Boong-Ga (Spank'em!)") do set NWDIR=%%~a
for %%a in ("boonggab.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boot Hill") do set NWDIR=%%~a
for %%a in ("boothill.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Borderline") do set NWDIR=%%~a
for %%a in ("brdrline.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Borench") do set NWDIR=%%~a
for %%a in ("borench.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Born To Fight") do set NWDIR=%%~a
for %%a in ("borntofi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bosconian (new version)") do set NWDIR=%%~a
for %%a in ("bosco.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Botanic (French)") do set NWDIR=%%~a
for %%a in ("botanic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bottom of the Ninth (version T)") do set NWDIR=%%~a
for %%a in ("bottom9.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boulder Dash (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cbdash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boulder Dash (Max-A-Flex)") do set NWDIR=%%~a
for %%a in ("mf_bdash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boulder Dash - Boulder Dash Part 2 (World)") do set NWDIR=%%~a
for %%a in ("bouldash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bouncing Balls") do set NWDIR=%%~a
for %%a in ("bballs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bowling Alley") do set NWDIR=%%~a
for %%a in ("bowler.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bowl-O-Rama") do set NWDIR=%%~a
for %%a in ("bowlrama.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boxer (prototype)") do set NWDIR=%%~a
for %%a in ("boxer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Boxy Boy (US)") do set NWDIR=%%~a
for %%a in ("boxyboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bradley Trainer") do set NWDIR=%%~a
for %%a in ("bradley.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Brain") do set NWDIR=%%~a
for %%a in ("brain.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Brave Blade (World)") do set NWDIR=%%~a
for %%a in ("brvblade.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Break Thru (US)") do set NWDIR=%%~a
for %%a in ("brkthru.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Breakers") do set NWDIR=%%~a
for %%a in ("breakers.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Breakers Revenge") do set NWDIR=%%~a
for %%a in ("breakrev.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Brick Zone (v5.0, Joystick)") do set NWDIR=%%~a
for %%a in ("brickzn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bristles (Max-A-Flex)") do set NWDIR=%%~a
for %%a in ("mf_brist.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Brixian") do set NWDIR=%%~a
for %%a in ("brixian.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Brodjaga (Arcade bootleg of ZX Spectrum 'Inspector Gadget and the Circus of Fear')") do set NWDIR=%%~a
for %%a in ("brod.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Brute Force") do set NWDIR=%%~a
for %%a in ("brutforc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bubble 2000") do set NWDIR=%%~a
for %%a in ("bubl2000.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bubble Bobble (Japan, Ver 0.1)") do set NWDIR=%%~a
for %%a in ("bublbobl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bubble Bobble II (Ver 2.5O 1994-10-05)") do set NWDIR=%%~a
for %%a in ("bublbob2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bubble Memories- The Story Of Bubble Bobble III (Ver 2.4O 1996-02-15)") do set NWDIR=%%~a
for %%a in ("bubblem.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bubble Trouble (Japan)") do set NWDIR=%%~a
for %%a in ("bubbletr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bubbles") do set NWDIR=%%~a
for %%a in ("bubbles.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Buccaneers (set 1)") do set NWDIR=%%~a
for %%a in ("buccanrs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bucky O'Hare (ver EAB)") do set NWDIR=%%~a
for %%a in ("bucky.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Buggy Boy-Speed Buggy (cockpit)") do set NWDIR=%%~a
for %%a in ("buggyboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Buggy Challenge") do set NWDIR=%%~a
for %%a in ("buggychl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bullet (FD1094 317-0041)") do set NWDIR=%%~a
for %%a in ("bullet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bullfight (315-5065)") do set NWDIR=%%~a
for %%a in ("bullfgt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bulls Eye Darts") do set NWDIR=%%~a
for %%a in ("bullsdrt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Burger Time (Data East set 1)") do set NWDIR=%%~a
for %%a in ("btime.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Burger Time (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cbtime.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Burglar X") do set NWDIR=%%~a
for %%a in ("burglarx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Burnin' Rubber") do set NWDIR=%%~a
for %%a in ("brubber.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Burnin' Rubber (DECO Cassette, set 1)") do set NWDIR=%%~a
for %%a in ("cburnrub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Burning Fight (NGM-018)(NGH-018)") do set NWDIR=%%~a
for %%a in ("burningf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Burning Force (Japan new version)") do set NWDIR=%%~a
for %%a in ("burnforc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Burning Rival (World)") do set NWDIR=%%~a
for %%a in ("brival.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Butasan - Pig's & Bomber's (Japan, English)") do set NWDIR=%%~a
for %%a in ("butasan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("B-Wings (Japan new Ver.)") do set NWDIR=%%~a
for %%a in ("bwings.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Bygone") do set NWDIR=%%~a
for %%a in ("bygone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cabal (World, Joystick version)") do set NWDIR=%%~a
for %%a in ("cabal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cachat (Japan)") do set NWDIR=%%~a
for %%a in ("cachat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cadash (World)") do set NWDIR=%%~a
for %%a in ("cadash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cadillacs and Dinosaurs (World 930201)") do set NWDIR=%%~a
for %%a in ("dino.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cal Omega - Game 8.0 (Arcade Black Jack)") do set NWDIR=%%~a
for %%a in ("comg080.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Caliber 50") do set NWDIR=%%~a
for %%a in ("calibr50.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("California Speed (Version 2.1a, 4-17-98)") do set NWDIR=%%~a
for %%a in ("calspeed.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Calipso") do set NWDIR=%%~a
for %%a in ("calipso.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Calorie Kun vs Moguranian") do set NWDIR=%%~a
for %%a in ("calorie.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cameltry (US, YM2610)") do set NWDIR=%%~a
for %%a in ("cameltry.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Candy Candy") do set NWDIR=%%~a
for %%a in ("candy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Candy Puzzle (v1.0)") do set NWDIR=%%~a
for %%a in ("cndypuzl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cannon Ball (Pac-Man Hardware)") do set NWDIR=%%~a
for %%a in ("cannonbp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cannon Ball (Yun Sung, horizontal)") do set NWDIR=%%~a
for %%a in ("cannball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cannonball (Atari, prototype)") do set NWDIR=%%~a
for %%a in ("cball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Canvas Croquis") do set NWDIR=%%~a
for %%a in ("canvas.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Canyon Bomber") do set NWDIR=%%~a
for %%a in ("canyon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Capcom Baseball (Japan)") do set NWDIR=%%~a
for %%a in ("cbasebal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Capcom Bowling (set 1)") do set NWDIR=%%~a
for %%a in ("capbowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Capcom Sports Club (Euro 971017)") do set NWDIR=%%~a
for %%a in ("csclub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Captain America and The Avengers (Asia Rev 1.4)") do set NWDIR=%%~a
for %%a in ("captaven.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Captain Commando (World 911202)") do set NWDIR=%%~a
for %%a in ("captcomm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Captain Silver (World)") do set NWDIR=%%~a
for %%a in ("csilver.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Captain Sky Hawk (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_cshwk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Captain Tomaday") do set NWDIR=%%~a
for %%a in ("ctomaday.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Car Jamboree") do set NWDIR=%%~a
for %%a in ("carjmbre.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Car Polo") do set NWDIR=%%~a
for %%a in ("carpolo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Card Line") do set NWDIR=%%~a
for %%a in ("cardline.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("CarnEvil (v1.0.3)") do set NWDIR=%%~a
for %%a in ("carnevil.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Carrera (Version 6.7)") do set NWDIR=%%~a
for %%a in ("carrera.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Carrier Air Wing (World 901012)") do set NWDIR=%%~a
for %%a in ("cawing.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Casanova") do set NWDIR=%%~a
for %%a in ("casanova.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Castlevania (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_cvnia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cat and Mouse (set 1)") do set NWDIR=%%~a
for %%a in ("catnmous.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Catacomb") do set NWDIR=%%~a
for %%a in ("catacomb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Catch (prototype)") do set NWDIR=%%~a
for %%a in ("catchp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cavelon") do set NWDIR=%%~a
for %%a in ("cavelon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Caveman Ninja (World ver 4)") do set NWDIR=%%~a
for %%a in ("cninja.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("CD-ROM Drive Updater (700A04)") do set NWDIR=%%~a
for %%a in ("cr589fwa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("CD-ROM Drive Updater 2.0 (700B04)") do set NWDIR=%%~a
for %%a in ("cr589fw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Centipede (revision 3)") do set NWDIR=%%~a
for %%a in ("centiped.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cerberus") do set NWDIR=%%~a
for %%a in ("cerberus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chack'n Pop") do set NWDIR=%%~a
for %%a in ("chaknpop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chain Reaction (World, Version 2.2, 1995.09.25)") do set NWDIR=%%~a
for %%a in ("chainrec.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Challenger") do set NWDIR=%%~a
for %%a in ("challeng.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chameleon") do set NWDIR=%%~a
for %%a in ("chameleo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Champion Base Ball") do set NWDIR=%%~a
for %%a in ("champbas.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Champion Base Ball Part-2- Pair Play (set 1)") do set NWDIR=%%~a
for %%a in ("champbb2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Champion Boxing") do set NWDIR=%%~a
for %%a in ("chboxing.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Champion Pro Wrestling") do set NWDIR=%%~a
for %%a in ("chwrestl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Champion Wrestler (World)") do set NWDIR=%%~a
for %%a in ("champwr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Championship Bowling") do set NWDIR=%%~a
for %%a in ("champbwl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Championship Sprint (rev 3)") do set NWDIR=%%~a
for %%a in ("csprint.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chanbara") do set NWDIR=%%~a
for %%a in ("chanbara.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Change Air Blade (Japan)") do set NWDIR=%%~a
for %%a in ("cairblad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Change Lanes") do set NWDIR=%%~a
for %%a in ("changela.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Changes") do set NWDIR=%%~a
for %%a in ("changes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chaos Heat (V2.09O)") do set NWDIR=%%~a
for %%a in ("chaoshea.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Charlie Ninja") do set NWDIR=%%~a
for %%a in ("charlien.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chase Bombers (World)") do set NWDIR=%%~a
for %%a in ("cbombers.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chase H.Q. (World)") do set NWDIR=%%~a
for %%a in ("chasehq.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Check Man") do set NWDIR=%%~a
for %%a in ("checkman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Checkmate") do set NWDIR=%%~a
for %%a in ("checkmat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cheeky Mouse") do set NWDIR=%%~a
for %%a in ("cheekyms.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cheese Chase") do set NWDIR=%%~a
for %%a in ("cheesech.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chelnov - Atomic Runner (World)") do set NWDIR=%%~a
for %%a in ("chelnov.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chequered Flag") do set NWDIR=%%~a
for %%a in ("chqflag.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cheyenne (version 1.0)") do set NWDIR=%%~a
for %%a in ("cheyenne.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chicken Farm (Version 2.0)") do set NWDIR=%%~a
for %%a in ("cfarm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chicken Shift") do set NWDIR=%%~a
for %%a in ("cshift.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chiller (version 3.0)") do set NWDIR=%%~a
for %%a in ("chiller.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chimera Beast (prototype)") do set NWDIR=%%~a
for %%a in ("chimerab.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("China Gate (US)") do set NWDIR=%%~a
for %%a in ("chinagat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("China Town (Japan)") do set NWDIR=%%~a
for %%a in ("chinatwn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chinese Hero") do set NWDIR=%%~a
for %%a in ("chinhero.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chip'n Dale- Rescue Rangers (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_rrngr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Choky! Choky!") do set NWDIR=%%~a
for %%a in ("chokchok.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Choplifter (8751 315-5151)") do set NWDIR=%%~a
for %%a in ("choplift.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chopper I (US set 1)") do set NWDIR=%%~a
for %%a in ("chopper.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Choutetsu Brikin'ger - Iron clad (Prototype)") do set NWDIR=%%~a
for %%a in ("ironclad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("ChuckECheese's Match Game") do set NWDIR=%%~a
for %%a in ("cecmatch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Chuka Taisen (World)") do set NWDIR=%%~a
for %%a in ("chukatai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Circus Charlie (level select, set 1)") do set NWDIR=%%~a
for %%a in ("circusc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cisco Heat") do set NWDIR=%%~a
for %%a in ("cischeat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("City Bomber (World)") do set NWDIR=%%~a
for %%a in ("citybomb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("City Connection (set 1)") do set NWDIR=%%~a
for %%a in ("citycon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Clash-Road") do set NWDIR=%%~a
for %%a in ("clshroad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Clay Pigeon (version 2.0)") do set NWDIR=%%~a
for %%a in ("claypign.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Clay Shoot") do set NWDIR=%%~a
for %%a in ("clayshoo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Claybuster") do set NWDIR=%%~a
for %%a in ("claybust.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cleopatra Fortune (Ver 2.1J 1996-09-05)") do set NWDIR=%%~a
for %%a in ("cleopatr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cliff Hanger (set 1)") do set NWDIR=%%~a
for %%a in ("cliffhgr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cloak & Dagger (rev 5)") do set NWDIR=%%~a
for %%a in ("cloak.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cloud 9 (prototype)") do set NWDIR=%%~a
for %%a in ("cloud9.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cluedo (prod. 2D)") do set NWDIR=%%~a
for %%a in ("cluedo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cluster Buster (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cgraplop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Clutch Hitter (US, FD1094 317-0176)") do set NWDIR=%%~a
for %%a in ("cltchitr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cobra-Command (World revision 5)") do set NWDIR=%%~a
for %%a in ("cobracom.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Colony 7 (set 1)") do set NWDIR=%%~a
for %%a in ("colony7.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Columns (World)") do set NWDIR=%%~a
for %%a in ("columns.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Columns '97 (JET 961209 V1.000)") do set NWDIR=%%~a
for %%a in ("colmns97.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Columns II- The Voyage Through Time (World)") do set NWDIR=%%~a
for %%a in ("columns2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Columns III (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_col3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Combat (version 3.0)") do set NWDIR=%%~a
for %%a in ("combat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Combat Hawk") do set NWDIR=%%~a
for %%a in ("combh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Combat School (joystick)") do set NWDIR=%%~a
for %%a in ("combatsc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Command War - Super Special Battle & War Game (Ver 0.0J) (Prototype)") do set NWDIR=%%~a
for %%a in ("commandw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Commando (Sega)") do set NWDIR=%%~a
for %%a in ("commsega.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Commando (World)") do set NWDIR=%%~a
for %%a in ("commando.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Competition Golf Final Round (revision 3)") do set NWDIR=%%~a
for %%a in ("compgolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Complex X") do set NWDIR=%%~a
for %%a in ("complexx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Connect 4") do set NWDIR=%%~a
for %%a in ("m4conn4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Continental Circus (World)") do set NWDIR=%%~a
for %%a in ("contcirc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Contra (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_cntra.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Contra (US, set 1)") do set NWDIR=%%~a
for %%a in ("contra.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cookie & Bibi") do set NWDIR=%%~a
for %%a in ("cookbib.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cookie & Bibi 2") do set NWDIR=%%~a
for %%a in ("cookbib2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cookie & Bibi 3") do set NWDIR=%%~a
for %%a in ("cookbib3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cool Boarders Arcade Jam") do set NWDIR=%%~a
for %%a in ("cbaj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cool Minigame Collection") do set NWDIR=%%~a
for %%a in ("coolmini.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cool Pool") do set NWDIR=%%~a
for %%a in ("coolpool.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cool Riders") do set NWDIR=%%~a
for %%a in ("coolridr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cop 01 (set 1)") do set NWDIR=%%~a
for %%a in ("cop01.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cops'n Robbers") do set NWDIR=%%~a
for %%a in ("copsnrob.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cosmic Avenger") do set NWDIR=%%~a
for %%a in ("cavenger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cosmic Chasm (set 1)") do set NWDIR=%%~a
for %%a in ("cchasm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cosmic Cop (World)") do set NWDIR=%%~a
for %%a in ("cosmccop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cosmo Gang the Puzzle (US)") do set NWDIR=%%~a
for %%a in ("cgangpzl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cosmo Gang the Video (US)") do set NWDIR=%%~a
for %%a in ("cosmogng.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cosmo Police Galivan (12-26-1985)") do set NWDIR=%%~a
for %%a in ("galivan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cosmos") do set NWDIR=%%~a
for %%a in ("cosmos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cotton (set 4, World, FD1094 317-0181a)") do set NWDIR=%%~a
for %%a in ("cotton.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cotton 2 (JUET 970902 V1.000)") do set NWDIR=%%~a
for %%a in ("cotton2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cotton Boomerang (JUET 980709 V1.000)") do set NWDIR=%%~a
for %%a in ("cottonbm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Country Club") do set NWDIR=%%~a
for %%a in ("countryc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Country Girl (Japan set 1)") do set NWDIR=%%~a
for %%a in ("cntrygrl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("CPS3 Multi-game bootleg for HD6417095 type SH2 (New Generation, 3rd Strike, JoJo's Venture, JoJo's Bizarre Adventure, Red Earth)") do set NWDIR=%%~a
for %%a in ("cps3boot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crack Down (World, Floppy Based, FD1094 317-0058-04c)") do set NWDIR=%%~a
for %%a in ("crkdown.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crackshot (version 2.0)") do set NWDIR=%%~a
for %%a in ("cracksht.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crater Raider") do set NWDIR=%%~a
for %%a in ("crater.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crayon Shinchan Orato Asobo (Japan)") do set NWDIR=%%~a
for %%a in ("qcrayon2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crazy Balloon (set 1)") do set NWDIR=%%~a
for %%a in ("crbaloon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crazy Climber (US)") do set NWDIR=%%~a
for %%a in ("cclimber.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crazy Climber 2 (Japan)") do set NWDIR=%%~a
for %%a in ("cclimbr2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crazy Fight") do set NWDIR=%%~a
for %%a in ("crazyfgt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crazy Kong") do set NWDIR=%%~a
for %%a in ("ckong.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crazy Kong Part II (set 1)") do set NWDIR=%%~a
for %%a in ("ckongpt2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crazy Rally (set 1)") do set NWDIR=%%~a
for %%a in ("crzrally.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crazy War") do set NWDIR=%%~a
for %%a in ("crazywar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crazzy Clownz (Version 1.0)") do set NWDIR=%%~a
for %%a in ("cclownz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crime City (World)") do set NWDIR=%%~a
for %%a in ("crimec.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crime Fighters (US 4 players)") do set NWDIR=%%~a
for %%a in ("crimfght.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Critter Crusher (EA 951204 V1.000)") do set NWDIR=%%~a
for %%a in ("critcrsh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cross Pang") do set NWDIR=%%~a
for %%a in ("crospang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crossbow (version 2.0)") do set NWDIR=%%~a
for %%a in ("crossbow.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crossed Swords (ALM-002)(ALH-002)") do set NWDIR=%%~a
for %%a in ("crsword.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crowns Golf (834-5419-04)") do set NWDIR=%%~a
for %%a in ("crgolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crowns Golf in Hawaii") do set NWDIR=%%~a
for %%a in ("crgolfhi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crude Buster (World FX version)") do set NWDIR=%%~a
for %%a in ("cbuster.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cruis'n USA (rev L4.1)") do set NWDIR=%%~a
for %%a in ("crusnusa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cruis'n World (rev L2.5)") do set NWDIR=%%~a
for %%a in ("crusnwld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crush Roller (set 1)") do set NWDIR=%%~a
for %%a in ("crush.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crusher Makochan (Japan)") do set NWDIR=%%~a
for %%a in ("crusherm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crypt Killer (GQ420 UAA)") do set NWDIR=%%~a
for %%a in ("cryptklr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Crystal Castles (version 4)") do set NWDIR=%%~a
for %%a in ("ccastles.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cube Quest (01-04-84)") do set NWDIR=%%~a
for %%a in ("cubeqst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cuby Bop (location test)") do set NWDIR=%%~a
for %%a in ("cubybop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cue Brick (World version D)") do set NWDIR=%%~a
for %%a in ("cuebrick.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Curve Ball") do set NWDIR=%%~a
for %%a in ("curvebal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cutie Q") do set NWDIR=%%~a
for %%a in ("cutieq.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cybattler") do set NWDIR=%%~a
for %%a in ("cybattlr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cyber Commando (Rev. CY1, Japan)") do set NWDIR=%%~a
for %%a in ("cybrcomm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cyber Cycles (Rev. CB2 Ver.C)") do set NWDIR=%%~a
for %%a in ("cybrcycc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cyber Sled (World)") do set NWDIR=%%~a
for %%a in ("cybsled.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cyber Tank (v1.4)") do set NWDIR=%%~a
for %%a in ("cybertnk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cyberball (rev 4)") do set NWDIR=%%~a
for %%a in ("cyberbal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cyberbots- Fullmetal Madness (Euro 950424)") do set NWDIR=%%~a
for %%a in ("cybots.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cyber-Lip (NGM-010)") do set NWDIR=%%~a
for %%a in ("cyberlip.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cycle Maabou (Japan)") do set NWDIR=%%~a
for %%a in ("cyclemb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Cyvern (US)") do set NWDIR=%%~a
for %%a in ("cyvern.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Czernyj Korabl (Arcade bootleg of ZX Spectrum 'Blackbeard')") do set NWDIR=%%~a
for %%a in ("black.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("D. D. Crew (World, 3 Players, FD1094 317-0190)") do set NWDIR=%%~a
for %%a in ("ddcrew.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dacholer") do set NWDIR=%%~a
for %%a in ("dacholer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dai-Dai-Kakumei (Japan)") do set NWDIR=%%~a
for %%a in ("dai2kaku.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Daikaiju no Gyakushu") do set NWDIR=%%~a
for %%a in ("daikaiju.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Daioh (set 1)") do set NWDIR=%%~a
for %%a in ("daioh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Daisu-Kiss (ver JAA)") do set NWDIR=%%~a
for %%a in ("daiskiss.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Daisyarin [BET] (Japan)") do set NWDIR=%%~a
for %%a in ("daisyari.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Daitoride") do set NWDIR=%%~a
for %%a in ("daitorid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("DakkoChan House (MC-8123B, 317-5014)") do set NWDIR=%%~a
for %%a in ("dakkochn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dambusters (US, set 1)") do set NWDIR=%%~a
for %%a in ("dambustr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dance Dance Revolution 2nd Mix (GN895 VER. JAA)") do set NWDIR=%%~a
for %%a in ("ddr2m.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dancing Eyes (Japan, DC1-VER.A)") do set NWDIR=%%~a
for %%a in ("danceyes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dancing Stage - Internet Ranking Ver (GC845 VER. EBA)") do set NWDIR=%%~a
for %%a in ("dstage.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dancing Stage featuring TRUE KiSS DESTiNATiON (G-884 VER. JAA)") do set NWDIR=%%~a
for %%a in ("dsftkd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Danger Zone") do set NWDIR=%%~a
for %%a in ("dangerz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dangerous Dungeons (set 1)") do set NWDIR=%%~a
for %%a in ("ddungeon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dangerous Seed (Japan)") do set NWDIR=%%~a
for %%a in ("dangseed.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Danny Sullivan's Indy Heat") do set NWDIR=%%~a
for %%a in ("indyheat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Daraku Tenshi - The Fallen Angels") do set NWDIR=%%~a
for %%a in ("daraku.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Darius (World)") do set NWDIR=%%~a
for %%a in ("darius.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Darius Gaiden - Silver Hawk (Ver 2.5O 1994-09-19)") do set NWDIR=%%~a
for %%a in ("dariusg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Darius II (triple screen) (Japan)") do set NWDIR=%%~a
for %%a in ("darius2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dark Edge (World)") do set NWDIR=%%~a
for %%a in ("darkedge.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dark Horse Legend (GX706 VER. JAA)") do set NWDIR=%%~a
for %%a in ("darkhleg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dark Planet") do set NWDIR=%%~a
for %%a in ("darkplnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dark Seal (World revision 3)") do set NWDIR=%%~a
for %%a in ("darkseal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dark Tower") do set NWDIR=%%~a
for %%a in ("darktowr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dark Warrior") do set NWDIR=%%~a
for %%a in ("darkwar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Darkstalkers- The Night Warriors (Euro 940705)") do set NWDIR=%%~a
for %%a in ("dstlk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Darwin 4078 (Japan)") do set NWDIR=%%~a
for %%a in ("darwin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dazzler") do set NWDIR=%%~a
for %%a in ("dazzler.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("D-Con") do set NWDIR=%%~a
for %%a in ("dcon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("D-Day") do set NWDIR=%%~a
for %%a in ("dday.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("D-Day (Jaleco set 1)") do set NWDIR=%%~a
for %%a in ("ddayjlc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dead Angle") do set NWDIR=%%~a
for %%a in ("deadang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dead Connection (World)") do set NWDIR=%%~a
for %%a in ("deadconx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dead Eye") do set NWDIR=%%~a
for %%a in ("deadeye.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dead Or Alive ++ (Japan)") do set NWDIR=%%~a
for %%a in ("doapp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Deal 'Em (MPU4 Conversion Kit, v7.0)") do set NWDIR=%%~a
for %%a in ("v4dealem.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Deathsmiles (2007-10-09 MASTER VER)") do set NWDIR=%%~a
for %%a in ("deathsml.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Deathsmiles Mega Black Label (2008-10-06 MEGABLACK LABEL VER)") do set NWDIR=%%~a
for %%a in ("dsmbl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Deer Hunting USA V4.3") do set NWDIR=%%~a
for %%a in ("deerhunt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Defend the Terra Attack on the Red UFO") do set NWDIR=%%~a
for %%a in ("redufo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Defender (Red label)") do set NWDIR=%%~a
for %%a in ("defender.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Delta Command (Arcadia)") do set NWDIR=%%~a
for %%a in ("ar_dlta.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Deluxe 5 (ver. 0107, 07-01-2000)") do set NWDIR=%%~a
for %%a in ("deluxe5.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Demolition Derby") do set NWDIR=%%~a
for %%a in ("demoderb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Demon") do set NWDIR=%%~a
for %%a in ("demon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Demon Front (68k label V105, ROM M105XX 08-05-02) (ARM label V105, ROM 08-05-02 S105XX)") do set NWDIR=%%~a
for %%a in ("dmnfrnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Demons & Dragons (prototype)") do set NWDIR=%%~a
for %%a in ("demndrgn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Demon's World - Horror Story (set 1)") do set NWDIR=%%~a
for %%a in ("demonwld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Denjin Makai") do set NWDIR=%%~a
for %%a in ("denjinmk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Densha de GO! (Ver 2.2 J)") do set NWDIR=%%~a
for %%a in ("dendego.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Densha de GO! 2 Kousoku-hen (Ver 2.5 J)") do set NWDIR=%%~a
for %%a in ("dendego2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Deroon DeroDero") do set NWDIR=%%~a
for %%a in ("deroon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Desert Breaker (World, FD1094 317-0196)") do set NWDIR=%%~a
for %%a in ("desertbr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Desert Dan") do set NWDIR=%%~a
for %%a in ("desertdn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Desert Gun") do set NWDIR=%%~a
for %%a in ("desertgu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Desert War - Wangan Sensou") do set NWDIR=%%~a
for %%a in ("desertwr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Destroyer (Cidelsa) (set 1)") do set NWDIR=%%~a
for %%a in ("destryer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Destroyer (version O2)") do set NWDIR=%%~a
for %%a in ("destroyr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Devastators (ver. Z)") do set NWDIR=%%~a
for %%a in ("devstors.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Devil Fish") do set NWDIR=%%~a
for %%a in ("devilfsh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Devil World") do set NWDIR=%%~a
for %%a in ("devilw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Devil Zone") do set NWDIR=%%~a
for %%a in ("devzone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dharma Doujou") do set NWDIR=%%~a
for %%a in ("dharma.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Diamond Run") do set NWDIR=%%~a
for %%a in ("diamond.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Die Hard Arcade (UET 960515 V1.000)") do set NWDIR=%%~a
for %%a in ("diehard.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Diet Family") do set NWDIR=%%~a
for %%a in ("dtfamily.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Diet Go Go (Euro v1.1 1992.09.26)") do set NWDIR=%%~a
for %%a in ("dietgo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dig Dug (rev 2)") do set NWDIR=%%~a
for %%a in ("digdug.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dig Dug II (New Ver.)") do set NWDIR=%%~a
for %%a in ("digdug2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Digger") do set NWDIR=%%~a
for %%a in ("digger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Digger (CVS)") do set NWDIR=%%~a
for %%a in ("diggerc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Digger Man (prototype)") do set NWDIR=%%~a
for %%a in ("diggerma.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dimahoo (Euro 000121)") do set NWDIR=%%~a
for %%a in ("dimahoo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dingo") do set NWDIR=%%~a
for %%a in ("dingo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dino Rex (World)") do set NWDIR=%%~a
for %%a in ("dinorex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dirt Dash (Rev. DT2)") do set NWDIR=%%~a
for %%a in ("dirtdash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dirt Fox (Japan)") do set NWDIR=%%~a
for %%a in ("dirtfoxj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Disco Boy") do set NWDIR=%%~a
for %%a in ("discoboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Disco No.1") do set NWDIR=%%~a
for %%a in ("disco.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Disco No.1 (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cdiscon1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Discs of Tron (Upright)") do set NWDIR=%%~a
for %%a in ("dotron.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Diver Boy") do set NWDIR=%%~a
for %%a in ("diverboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("DJ Boy (set 1)") do set NWDIR=%%~a
for %%a in ("djboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Do! Run Run (set 1)") do set NWDIR=%%~a
for %%a in ("dorunrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dock Man") do set NWDIR=%%~a
for %%a in ("dockman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dodgem") do set NWDIR=%%~a
for %%a in ("dodgem.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("DoDonPachi (International, Master Ver. 97-02-05)") do set NWDIR=%%~a
for %%a in ("ddonpach.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Do-Don-Pachi Dai-Fukkatsu (2008-06-23 MASTER VER 1.5)") do set NWDIR=%%~a
for %%a in ("ddpdfk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("DoDonPachi Dai-Ou-Jou V101 (2002.04.05.Master Ver)") do set NWDIR=%%~a
for %%a in ("ddpdoj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("DoDonPachi II - Bee Storm (World, ver. 102)") do set NWDIR=%%~a
for %%a in ("ddp2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dog Fight (Thunderbolt)") do set NWDIR=%%~a
for %%a in ("dogfight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dog Patch") do set NWDIR=%%~a
for %%a in ("dogpatch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dogyuun") do set NWDIR=%%~a
for %%a in ("dogyuun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dokaben (Japan)") do set NWDIR=%%~a
for %%a in ("dokaben.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Doki Doki Idol Star Seeker (GDL-0005)") do set NWDIR=%%~a
for %%a in ("starseek.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Doki Doki Penguin Land") do set NWDIR=%%~a
for %%a in ("dokidoki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dolmen") do set NWDIR=%%~a
for %%a in ("dolmen.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Domino Block") do set NWDIR=%%~a
for %%a in ("dominob.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Domino Man") do set NWDIR=%%~a
for %%a in ("domino.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dominos") do set NWDIR=%%~a
for %%a in ("dominos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dommy") do set NWDIR=%%~a
for %%a in ("dommy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Don Den Lover Vol. 1 - Shiro Kuro Tsukeyo! (Japan)") do set NWDIR=%%~a
for %%a in ("ddenlovj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Don Doko Don (World)") do set NWDIR=%%~a
for %%a in ("dondokod.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Donkey Kong (US set 1)") do set NWDIR=%%~a
for %%a in ("dkong.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Donkey Kong 3 (US)") do set NWDIR=%%~a
for %%a in ("dkong3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Donkey Kong Junior (US)") do set NWDIR=%%~a
for %%a in ("dkongjr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("DonPachi (US)") do set NWDIR=%%~a
for %%a in ("donpachi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dorachan") do set NWDIR=%%~a
for %%a in ("dorachan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Doraemon no Eawase Montage (prototype)") do set NWDIR=%%~a
for %%a in ("doraemon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dorodon (set 1)") do set NWDIR=%%~a
for %%a in ("dorodon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dottori Kun (new version)") do set NWDIR=%%~a
for %%a in ("dotrikun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Axle (US)") do set NWDIR=%%~a
for %%a in ("dblaxle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Cheese") do set NWDIR=%%~a
for %%a in ("dcheese.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Dealer") do set NWDIR=%%~a
for %%a in ("ddealer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Dragon (Japan)") do set NWDIR=%%~a
for %%a in ("ddragon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Dragon (Neo-Geo)") do set NWDIR=%%~a
for %%a in ("doubledr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Dragon (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_ddrgn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Dragon 3 - The Rosetta Stone (US)") do set NWDIR=%%~a
for %%a in ("ddragon3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Dragon II - The Revenge (World)") do set NWDIR=%%~a
for %%a in ("ddragon2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Dribble") do set NWDIR=%%~a
for %%a in ("ddribble.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Dribble (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_dbldr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Play") do set NWDIR=%%~a
for %%a in ("dplay.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Point") do set NWDIR=%%~a
for %%a in ("dblpoint.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Double Wings") do set NWDIR=%%~a
for %%a in ("dblewing.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("DownTown - Mokugeki (set 1)") do set NWDIR=%%~a
for %%a in ("downtown.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dr. Mario (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_drmro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dr. Micro") do set NWDIR=%%~a
for %%a in ("drmicro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dr. Tomy") do set NWDIR=%%~a
for %%a in ("drtomy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dr. Toppel's Adventure (World)") do set NWDIR=%%~a
for %%a in ("drtoppel.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dr.Who The Timelord (set 1, UK, Single Site) (Scorpion 2-3)") do set NWDIR=%%~a
for %%a in ("sc2drwho.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Draco") do set NWDIR=%%~a
for %%a in ("draco.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Drag Race") do set NWDIR=%%~a
for %%a in ("dragrace.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Ball Z V.R.V.S. (Japan)") do set NWDIR=%%~a
for %%a in ("dbzvrvs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Blaze") do set NWDIR=%%~a
for %%a in ("dragnblz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Bowl") do set NWDIR=%%~a
for %%a in ("drgnbowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Breed (M81 PCB version)") do set NWDIR=%%~a
for %%a in ("dbreed.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Buster") do set NWDIR=%%~a
for %%a in ("drgnbstr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Gun (US)") do set NWDIR=%%~a
for %%a in ("dragngun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Master") do set NWDIR=%%~a
for %%a in ("drgnmst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Punch (Japan)") do set NWDIR=%%~a
for %%a in ("drgpunch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Saber") do set NWDIR=%%~a
for %%a in ("dsaber.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Spirit (new version)") do set NWDIR=%%~a
for %%a in ("dspirit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon Unit - Castle of Dragon") do set NWDIR=%%~a
for %%a in ("drgnunit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon World (World, V040O)") do set NWDIR=%%~a
for %%a in ("drgnwrld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon World 2001 (V100-, Japan)") do set NWDIR=%%~a
for %%a in ("dw2001.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon World 3 (ver. 106)") do set NWDIR=%%~a
for %%a in ("drgw3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon World 3 EX (ver. 100)") do set NWDIR=%%~a
for %%a in ("dwex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon World II (ver. 110X, Export)") do set NWDIR=%%~a
for %%a in ("drgw2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragon World Pretty Chance (V101, Japan)") do set NWDIR=%%~a
for %%a in ("dwpc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragonball Z (rev B)") do set NWDIR=%%~a
for %%a in ("dbz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragonball Z 2 - Super Battle") do set NWDIR=%%~a
for %%a in ("dbz2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dragoon Might (ver AAB)") do set NWDIR=%%~a
for %%a in ("dragoona.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Drakton (DK conversion)") do set NWDIR=%%~a
for %%a in ("drakton.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dream Shopper") do set NWDIR=%%~a
for %%a in ("dremshpr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dream Soccer '94 (World, M107 hardware)") do set NWDIR=%%~a
for %%a in ("dsoccr94.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dream World") do set NWDIR=%%~a
for %%a in ("dreamwld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dribbling") do set NWDIR=%%~a
for %%a in ("dribling.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Drift Out (Europe)") do set NWDIR=%%~a
for %%a in ("driftout.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Drift Out '94 - The Hard Order (Japan)") do set NWDIR=%%~a
for %%a in ("drifto94.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Driver's Edge") do set NWDIR=%%~a
for %%a in ("drivedge.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Driving Force (Pac-Man conversion)") do set NWDIR=%%~a
for %%a in ("drivfrcp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("DS Telejan (DECO Cassette, Japan)") do set NWDIR=%%~a
for %%a in ("cdsteljn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Duck Hunt (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_duckh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dungeons & Dragons- Shadow over Mystara (Euro 960619)") do set NWDIR=%%~a
for %%a in ("ddsom.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dungeons & Dragons- Tower of Doom (Euro 940412)") do set NWDIR=%%~a
for %%a in ("ddtod.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dunk Mania (Asia, DM2-VER.C)") do set NWDIR=%%~a
for %%a in ("dunkmnia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dunk Shot (FD1089A 317-0022)") do set NWDIR=%%~a
for %%a in ("dunkshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dyger (Korea set 1)") do set NWDIR=%%~a
for %%a in ("dyger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dyna Gear") do set NWDIR=%%~a
for %%a in ("dynagear.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dynablaster - Bomber Man") do set NWDIR=%%~a
for %%a in ("dynablst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dynamic Country Club (World, ROM Based)") do set NWDIR=%%~a
for %%a in ("dcclub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dynamic Shoot Kyousou") do set NWDIR=%%~a
for %%a in ("dynashot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dynamic Ski") do set NWDIR=%%~a
for %%a in ("dynamski.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dynamite Bomber (Korea, Rev 1.5)") do set NWDIR=%%~a
for %%a in ("dynabomb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dynamite Duke (Europe set 1)") do set NWDIR=%%~a
for %%a in ("dynduke.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dynamite Dux (set 3, World, FD1094 317-0096)") do set NWDIR=%%~a
for %%a in ("ddux.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dynamite League (US)") do set NWDIR=%%~a
for %%a in ("dleague.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dynasty Wars (USA, B-Board 89624B--)") do set NWDIR=%%~a
for %%a in ("dynwar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Dyno Bop") do set NWDIR=%%~a
for %%a in ("dynobop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("E.D.F. - Earth Defense Force") do set NWDIR=%%~a
for %%a in ("edf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Eagle Shot Golf") do set NWDIR=%%~a
for %%a in ("eaglshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Eco Fighters (World 931203)") do set NWDIR=%%~a
for %%a in ("ecofghtr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Egg Hunt") do set NWDIR=%%~a
for %%a in ("egghunt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Egg Venture (Release 10)") do set NWDIR=%%~a
for %%a in ("eggventr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Eggor") do set NWDIR=%%~a
for %%a in ("eggor.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ehrgeiz (US, EG3-VER.A)") do set NWDIR=%%~a
for %%a in ("ehrgeiz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Eight Ball Action (DK conversion)") do set NWDIR=%%~a
for %%a in ("8ballact.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Eight Forces") do set NWDIR=%%~a
for %%a in ("eightfrc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Eight Man (NGM-025)(NGH-025)") do set NWDIR=%%~a
for %%a in ("eightman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("E-Jan Sakurasou (Japan, SYS386F V2.0)") do set NWDIR=%%~a
for %%a in ("ejsakura.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ejihon Tantei Jimusyo (J 950613 V1.000)") do set NWDIR=%%~a
for %%a in ("ejihon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Elevator Action") do set NWDIR=%%~a
for %%a in ("elevator.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Elevator Action Returns (Ver 2.2O 1995-02-20)") do set NWDIR=%%~a
for %%a in ("elvactr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Embargo") do set NWDIR=%%~a
for %%a in ("embargo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Emeraldia (World)") do set NWDIR=%%~a
for %%a in ("emeralda.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Empire City- 1931 (bootleg-)") do set NWDIR=%%~a
for %%a in ("empcity.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Enduro Racer (YM2151, FD1089B 317-0013A)") do set NWDIR=%%~a
for %%a in ("enduror.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Enforce (World)") do set NWDIR=%%~a
for %%a in ("enforce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Enigma II") do set NWDIR=%%~a
for %%a in ("enigma2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Erotictac-Tactic") do set NWDIR=%%~a
for %%a in ("ertictac.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Escape from the Planet of the Robot Monsters (set 1)") do set NWDIR=%%~a
for %%a in ("eprom.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Escape Kids (Asia, 4 Players)") do set NWDIR=%%~a
for %%a in ("esckids.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("ESP Ra.De. (International, Ver. 98-04-22)") do set NWDIR=%%~a
for %%a in ("esprade.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Espgaluda (2003-10-15 Master Ver)") do set NWDIR=%%~a
for %%a in ("espgal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Espgaluda II (2005-11-14 MASTER VER)") do set NWDIR=%%~a
for %%a in ("espgal2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Espial (Europe)") do set NWDIR=%%~a
for %%a in ("espial.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("E-Swat - Cyber Police (set 4, World, FD1094 317-0130)") do set NWDIR=%%~a
for %%a in ("eswat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Every Second Counts (39-360-053)") do set NWDIR=%%~a
for %%a in ("escounts.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Evil Stone") do set NWDIR=%%~a
for %%a in ("evilston.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Evolution Soccer") do set NWDIR=%%~a
for %%a in ("evosocc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Excelsior (set 1)") do set NWDIR=%%~a
for %%a in ("excelsr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Excite Bike (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_ebike.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Excite League (FD1094 317-0079)") do set NWDIR=%%~a
for %%a in ("exctleag.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Exciting Animal Land Jr. (USA)") do set NWDIR=%%~a
for %%a in ("animaljr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Exciting Soccer") do set NWDIR=%%~a
for %%a in ("exctsccr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Exciting Soccer II") do set NWDIR=%%~a
for %%a in ("exctscc2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Exed Exes") do set NWDIR=%%~a
for %%a in ("exedexes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Exerion") do set NWDIR=%%~a
for %%a in ("exerion.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Explosive Breaker") do set NWDIR=%%~a
for %%a in ("explbrkr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Express Raider (World, Rev 4)") do set NWDIR=%%~a
for %%a in ("exprraid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Extermination (World)") do set NWDIR=%%~a
for %%a in ("extrmatn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Exterminator") do set NWDIR=%%~a
for %%a in ("exterm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Extra Bases") do set NWDIR=%%~a
for %%a in ("ebases.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Extra Inning - Ball Park II") do set NWDIR=%%~a
for %%a in ("einning.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Extreme Downhill (v1.5)") do set NWDIR=%%~a
for %%a in ("extdwnhl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Exvania (World)") do set NWDIR=%%~a
for %%a in ("exvania.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Exzisus (Japan, dedicated)") do set NWDIR=%%~a
for %%a in ("exzisus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Eyes (US set 1)") do set NWDIR=%%~a
for %%a in ("eyes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("F-1 Dream") do set NWDIR=%%~a
for %%a in ("f1dream.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("F1 Exhaust Note") do set NWDIR=%%~a
for %%a in ("f1en.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("F-1 Grand Prix") do set NWDIR=%%~a
for %%a in ("f1gp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("F-1 Grand Prix Part II") do set NWDIR=%%~a
for %%a in ("f1gp2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("F-1 Grand Prix Star II") do set NWDIR=%%~a
for %%a in ("f1gpstr2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("F1 Super Lap (World)") do set NWDIR=%%~a
for %%a in ("f1lap.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("F-15 Strike Eagle (rev. 2.2 02-25-91)") do set NWDIR=%%~a
for %%a in ("f15se.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Face Off (Japan)") do set NWDIR=%%~a
for %%a in ("faceoff.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("FamicomBox") do set NWDIR=%%~a
for %%a in ("famibox.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fancy World - Earth of Crisis") do set NWDIR=%%~a
for %%a in ("fncywld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fantasia (940429 PCB)") do set NWDIR=%%~a
for %%a in ("fantasia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fantasia II (Explicit)") do set NWDIR=%%~a
for %%a in ("fantsia2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fantastic (Galaga conversion on Galaxian hardware)") do set NWDIR=%%~a
for %%a in ("fantastc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fantastic Journey (ver EAA)") do set NWDIR=%%~a
for %%a in ("fantjour.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fantasy Land (set 1)") do set NWDIR=%%~a
for %%a in ("fantland.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fantasy Zone (Rev A, unprotected)") do set NWDIR=%%~a
for %%a in ("fantzone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fantasy Zone II - The Tears of Opa-Opa (MC-8123, 317-0057)") do set NWDIR=%%~a
for %%a in ("fantzn2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fantasy Zone II - The Tears of Opa-Opa (System 16C version)") do set NWDIR=%%~a
for %%a in ("fantzn2x.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Far East of Eden - Kabuki Klash - Tengai Makyou - Shin Den") do set NWDIR=%%~a
for %%a in ("kabukikl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fast Lane") do set NWDIR=%%~a
for %%a in ("fastlane.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fatal Fury - King of Fighters - Garou Densetsu - shukumei no tatakai (NGM-033)(NGH-033)") do set NWDIR=%%~a
for %%a in ("fatfury1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fatal Fury 2 - Garou Densetsu 2 - arata-naru tatakai (NGM-047)(NGH-047)") do set NWDIR=%%~a
for %%a in ("fatfury2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fatal Fury 3 - Road to the Final Victory - Garou Densetsu 3 - haruka-naru tatakai (NGM-069)(NGH-069)") do set NWDIR=%%~a
for %%a in ("fatfury3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fatal Fury Special - Garou Densetsu Special (set 1)(NGM-058)(NGH-058)") do set NWDIR=%%~a
for %%a in ("fatfursp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fever SOS (International, Ver. 98-09-25)") do set NWDIR=%%~a
for %%a in ("feversos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Field Combat") do set NWDIR=%%~a
for %%a in ("fcombat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("eld Day") do set NWDIR=%%~a
for %%a in ("Fifielddaay.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Field Goal (set 1)fgoa") do set NWDIR=%%~a
for %%a in ("l.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fight Fever (set 1)") do set NWDIR=%%~a
for %%a in ("fightfev.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighter & Attacker (US)") do set NWDIR=%%~a
for %%a in ("fghtatck.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighter's History (World ver 43-07, DE-0380-2 PCB)") do set NWDIR=%%~a
for %%a in ("fghthist.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighters' Impact A (Ver 2.00J)") do set NWDIR=%%~a
for %%a in ("ftimpcta.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighting Basketball") do set NWDIR=%%~a
for %%a in ("fghtbskt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighting Golf (World-)") do set NWDIR=%%~a
for %%a in ("fitegolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighting Hawk (World)") do set NWDIR=%%~a
for %%a in ("fhawk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighting Ice Hockey (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cfghtice.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighting Layer (Japan, FTL1-VER.A)") do set NWDIR=%%~a
for %%a in ("fgtlayer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighting Roller") do set NWDIR=%%~a
for %%a in ("fightrol.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fighting Soccer (version 4)") do set NWDIR=%%~a
for %%a in ("fsoccer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Filetto (v1.05 901009)") do set NWDIR=%%~a
for %%a in ("filetto.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Blow (World)") do set NWDIR=%%~a
for %%a in ("finalb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Fight (World, set 1)") do set NWDIR=%%~a
for %%a in ("ffight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Fight 2 (SNES bootleg)") do set NWDIR=%%~a
for %%a in ("ffight2b.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Godori (Korea, version 2.20.5915)") do set NWDIR=%%~a
for %%a in ("finalgdr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Lap (Rev E)") do set NWDIR=%%~a
for %%a in ("finallap.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Lap 2") do set NWDIR=%%~a
for %%a in ("finalap2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Lap 3 (World, set 1)") do set NWDIR=%%~a
for %%a in ("finalap3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Lap R (Rev. B)") do set NWDIR=%%~a
for %%a in ("finalapr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Star Force (US)") do set NWDIR=%%~a
for %%a in ("fstarfrc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Final Tetris") do set NWDIR=%%~a
for %%a in ("finalttr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Finalizer - Super Transformation") do set NWDIR=%%~a
for %%a in ("finalizr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Finest Hour (Japan)") do set NWDIR=%%~a
for %%a in ("finehour.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fire Barrel (Japan)") do set NWDIR=%%~a
for %%a in ("firebarr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fire Battle") do set NWDIR=%%~a
for %%a in ("firebatl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fire Fox (set 1)") do set NWDIR=%%~a
for %%a in ("firefox.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fire Hawk") do set NWDIR=%%~a
for %%a in ("firehawk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fire One") do set NWDIR=%%~a
for %%a in ("fireone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fire Shark") do set NWDIR=%%~a
for %%a in ("fireshrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fire Trap (US)") do set NWDIR=%%~a
for %%a in ("firetrap.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fire Truck - Smokey Joe") do set NWDIR=%%~a
for %%a in ("firetrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Firebeast (prototype)") do set NWDIR=%%~a
for %%a in ("firebeas.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fisherman's Bait - A Bass Challenge (GE765 VER. UAB)") do set NWDIR=%%~a
for %%a in ("fbaitbc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fisherman's Bait - Marlin Challenge (GX889 VER. EA)") do set NWDIR=%%~a
for %%a in ("fbaitmc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fisherman's Bait 2 - A Bass Challenge (GE865 VER. UAB)") do set NWDIR=%%~a
for %%a in ("fbait2bc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fishin' Frenzy (prototype)") do set NWDIR=%%~a
for %%a in ("fishfren.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fishing Maniac 3") do set NWDIR=%%~a
for %%a in ("fmaniac3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fit of Fighting") do set NWDIR=%%~a
for %%a in ("fitfight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Five a Side Soccer (ver UAA)") do set NWDIR=%%~a
for %%a in ("fiveside.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("FixEight (Europe)") do set NWDIR=%%~a
for %%a in ("fixeight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flame Gunner") do set NWDIR=%%~a
for %%a in ("flamegun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flash Point (set 2, Japan, FD1094 317-0127A)") do set NWDIR=%%~a
for %%a in ("fpoint.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flashgal (set 1)") do set NWDIR=%%~a
for %%a in ("flashgal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flicky (128k Version, System 2, 315-5051)") do set NWDIR=%%~a
for %%a in ("flicky.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flip & Flop (Max-A-Flex)") do set NWDIR=%%~a
for %%a in ("mf_flip.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flip Maze (V2.04J)") do set NWDIR=%%~a
for %%a in ("flipmaze.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flipper Jack") do set NWDIR=%%~a
for %%a in ("flipjack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flower (US)") do set NWDIR=%%~a
for %%a in ("flower.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flyball (rev 2)") do set NWDIR=%%~a
for %%a in ("flyball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fly-Boy") do set NWDIR=%%~a
for %%a in ("flyboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flying Ball (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cflyball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flying Shark (World)") do set NWDIR=%%~a
for %%a in ("fshark.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Flying Tiger") do set NWDIR=%%~a
for %%a in ("flytiger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Food Fight (rev 3)") do set NWDIR=%%~a
for %%a in ("foodf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Football Champ (World)") do set NWDIR=%%~a
for %%a in ("footchmp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Football Frenzy (NGM-034)(NGH-034)") do set NWDIR=%%~a
for %%a in ("fbfrenzy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Forgotten Worlds (World)") do set NWDIR=%%~a
for %%a in ("forgottn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Formation Z") do set NWDIR=%%~a
for %%a in ("formatz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fortress 2 Blue Arcade (ver 1.01 - pcb ver 3.05)") do set NWDIR=%%~a
for %%a in ("fort2b.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Forty-Love") do set NWDIR=%%~a
for %%a in ("40love.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Four Trax") do set NWDIR=%%~a
for %%a in ("fourtrax.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fred Flintstones' Memory Match (World-, Ticket version, 3-17-95)") do set NWDIR=%%~a
for %%a in ("fredmem.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Free Kick (NS6201-A 1987.10)") do set NWDIR=%%~a
for %%a in ("freekick.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Freeze") do set NWDIR=%%~a
for %%a in ("freeze.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Freeze (Atari) (prototype, English voice, 96-10-25)") do set NWDIR=%%~a
for %%a in ("freezeat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Frenzy") do set NWDIR=%%~a
for %%a in ("frenzy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Frisky Tom (set 1)") do set NWDIR=%%~a
for %%a in ("friskyt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Frog & Spiders (bootleg-)") do set NWDIR=%%~a
for %%a in ("fspiderb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Frogger") do set NWDIR=%%~a
for %%a in ("frogger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("From TV Animation Slam Dunk - Super Slams") do set NWDIR=%%~a
for %%a in ("suprslam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Front Line") do set NWDIR=%%~a
for %%a in ("frontlin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Fruit Land") do set NWDIR=%%~a
for %%a in ("fruitpc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Funky Bee") do set NWDIR=%%~a
for %%a in ("funkybee.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Funky Fish") do set NWDIR=%%~a
for %%a in ("fnkyfish.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Funky Head Boxers (JUETBKAL 951218 V1.000)") do set NWDIR=%%~a
for %%a in ("fhboxers.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Funky Jet (World)") do set NWDIR=%%~a
for %%a in ("funkyjet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Funny Bubble") do set NWDIR=%%~a
for %%a in ("funybubl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("G.I. Joe (World, EAB, set 1)") do set NWDIR=%%~a
for %%a in ("gijoe.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gachaga Champ (GE877 VER. JAB)") do set NWDIR=%%~a
for %%a in ("gchgchmp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gaia Crusaders") do set NWDIR=%%~a
for %%a in ("gaia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gaiapolis (ver EAF)") do set NWDIR=%%~a
for %%a in ("gaiapols.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gain Ground (World, 3 Players, Floppy Based, FD1094 317-0058-03d Rev A)") do set NWDIR=%%~a
for %%a in ("gground.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galactic Storm (Japan)") do set NWDIR=%%~a
for %%a in ("galastrm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galactic Warriors") do set NWDIR=%%~a
for %%a in ("gwarrior.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galactica - Batalha Espacial") do set NWDIR=%%~a
for %%a in ("galactic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galaga (Namco rev. B)") do set NWDIR=%%~a
for %%a in ("galaga.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galaga '88") do set NWDIR=%%~a
for %%a in ("galaga88.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galaxia") do set NWDIR=%%~a
for %%a in ("galaxia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galaxian (Namco set 1)") do set NWDIR=%%~a
for %%a in ("galaxian.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galaxy Fight - Universal Warriors") do set NWDIR=%%~a
for %%a in ("galaxyfg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galaxy Force 2") do set NWDIR=%%~a
for %%a in ("gforce2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galaxy Game") do set NWDIR=%%~a
for %%a in ("galgame.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galaxy Games StarPak 2") do set NWDIR=%%~a
for %%a in ("galgame2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galaxy Gunners") do set NWDIR=%%~a
for %%a in ("galaxygn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gallop Racer (English Ver 10.17.K)") do set NWDIR=%%~a
for %%a in ("glpracr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gallop Racer 3 (Japan)") do set NWDIR=%%~a
for %%a in ("glpracr3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Galmedes (Japan)") do set NWDIR=%%~a
for %%a in ("galmedes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gals Hustler") do set NWDIR=%%~a
for %%a in ("galhustl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gals Panic (Unprotected)") do set NWDIR=%%~a
for %%a in ("galpanic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gals Panic (US, EXPRO-02 PCB)") do set NWDIR=%%~a
for %%a in ("galsnew.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gals Panic 3 (Euro)") do set NWDIR=%%~a
for %%a in ("galpani3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gals Panic 4 (Japan)") do set NWDIR=%%~a
for %%a in ("galpani4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gals Panic S - Extra Edition (Europe)") do set NWDIR=%%~a
for %%a in ("galpanis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gals Panic S2 (Japan)") do set NWDIR=%%~a
for %%a in ("galpans2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gals Panic S3 (Japan)") do set NWDIR=%%~a
for %%a in ("galpans3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gals Pinball") do set NWDIR=%%~a
for %%a in ("galspnbl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gambal (Barcrest) (MPU4) (set 1)") do set NWDIR=%%~a
for %%a in ("m4gambal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Games V25.4X") do set NWDIR=%%~a
for %%a in ("usgames.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ganbare Chinsan Ooshoubu (MC-8123A, 317-5012)") do set NWDIR=%%~a
for %%a in ("chinsan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ganbare Ginkun") do set NWDIR=%%~a
for %%a in ("ginkun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ganbare Jajamaru Saisho wa Goo - Ganbare Jajamaru Hop Step & Jump") do set NWDIR=%%~a
for %%a in ("ganjaja.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ganbare! Marine Kun (Japan 2K0411)") do set NWDIR=%%~a
for %%a in ("ganbare.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gang Busters (set 1)") do set NWDIR=%%~a
for %%a in ("gbusters.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gang Wars") do set NWDIR=%%~a
for %%a in ("gangwars.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ganryu - Musashi Ganryuki") do set NWDIR=%%~a
for %%a in ("ganryu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gardia (317-0006)") do set NWDIR=%%~a
for %%a in ("gardia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Garogun Seroyang (Korea)") do set NWDIR=%%~a
for %%a in ("garogun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Garou - Mark of the Wolves (NGM-2530)") do set NWDIR=%%~a
for %%a in ("garou.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Garyo Retsuden (Japan)") do set NWDIR=%%~a
for %%a in ("garyoret.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gauntlet (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_gntlt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gauntlet (rev 14)") do set NWDIR=%%~a
for %%a in ("gauntlet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gauntlet Dark Legacy (version DL 2.52)") do set NWDIR=%%~a
for %%a in ("gauntdl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gauntlet II") do set NWDIR=%%~a
for %%a in ("gaunt2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gauntlet Legends (version 1.6)") do set NWDIR=%%~a
for %%a in ("gauntleg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("G-Darius Ver.2 (Ver 2.03J)") do set NWDIR=%%~a
for %%a in ("gdarius2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gee Bee (Japan)") do set NWDIR=%%~a
for %%a in ("geebee.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("GeGeGe no Kitarou Youkai Slot") do set NWDIR=%%~a
for %%a in ("gegege.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("GEI Multi Game") do set NWDIR=%%~a
for %%a in ("geimulti.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gekirindan (Ver 2.3O 1995-09-21)") do set NWDIR=%%~a
for %%a in ("gekiridn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gemini Wing (Japan)") do set NWDIR=%%~a
for %%a in ("gemini.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Genix Family") do set NWDIR=%%~a
for %%a in ("genix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Genpei ToumaDen") do set NWDIR=%%~a
for %%a in ("genpeitd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ghost Chaser Densei (SNES bootleg)") do set NWDIR=%%~a
for %%a in ("denseib.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ghost Hunter") do set NWDIR=%%~a
for %%a in ("ghoshunt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ghost Pilots (NGM-020)(NGH-020)") do set NWDIR=%%~a
for %%a in ("gpilots.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ghostlop (prototype)") do set NWDIR=%%~a
for %%a in ("ghostlop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ghostmuncher Galaxian (bootleg)") do set NWDIR=%%~a
for %%a in ("gmgalax.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ghosts'n Goblins (World- set 1)") do set NWDIR=%%~a
for %%a in ("gng.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ghoul Panic (Asia, OB2-VER.A)") do set NWDIR=%%~a
for %%a in ("ghlpanic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ghouls'n Ghosts (World)") do set NWDIR=%%~a
for %%a in ("ghouls.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ghox (spinner)") do set NWDIR=%%~a
for %%a in ("ghox.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Giga Wing (USA 990222)") do set NWDIR=%%~a
for %%a in ("gigawing.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gigandes") do set NWDIR=%%~a
for %%a in ("gigandes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gigas Mark II (bootleg)") do set NWDIR=%%~a
for %%a in ("gigasm2b.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gimme A Break (7-7-85)") do set NWDIR=%%~a
for %%a in ("gimeabrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ginga NinkyouDen (set 1)") do set NWDIR=%%~a
for %%a in ("ginganin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Give us a Break (3rd edition)") do set NWDIR=%%~a
for %%a in ("guab.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gladiator (US)") do set NWDIR=%%~a
for %%a in ("gladiatr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gladiator 1984") do set NWDIR=%%~a
for %%a in ("sgladiat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("G-LOC Air Battle (US)") do set NWDIR=%%~a
for %%a in ("gloc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Go 2000") do set NWDIR=%%~a
for %%a in ("go2000.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Go Go Mr. Yamaguchi - Yuke Yuke Yamaguchi-kun") do set NWDIR=%%~a
for %%a in ("yamagchi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Go Go! Mile Smile") do set NWDIR=%%~a
for %%a in ("gogomile.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Goal! Goal! Goal!") do set NWDIR=%%~a
for %%a in ("goalx3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Goalie Ghost") do set NWDIR=%%~a
for %%a in ("gghost.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gogetsuji Legends (US, Ver. 95-06-20)") do set NWDIR=%%~a
for %%a in ("plegends.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Goindol (World)") do set NWDIR=%%~a
for %%a in ("goindol.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gold Bug") do set NWDIR=%%~a
for %%a in ("goldbug.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gold Medalist (set 1)") do set NWDIR=%%~a
for %%a in ("goldmedl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Axe - The Duel (JUETL 950117 V1.000)") do set NWDIR=%%~a
for %%a in ("gaxeduel.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Axe (set 6, US, 8751 317-123A)") do set NWDIR=%%~a
for %%a in ("goldnaxe.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Axe II (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_gaxe2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Axe- The Revenge of Death Adder (World)") do set NWDIR=%%~a
for %%a in ("ga2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Crown (Dutch, Game Card 95-752-011)") do set NWDIR=%%~a
for %%a in ("gldncrwn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Par Golf (Joystick, V1.1)") do set NWDIR=%%~a
for %%a in ("gpgolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Tee 2K (v1.00)") do set NWDIR=%%~a
for %%a in ("gt2k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Tee 3D Golf (v1.93N)") do set NWDIR=%%~a
for %%a in ("gt3d.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Tee '97 (v1.30)") do set NWDIR=%%~a
for %%a in ("gt97.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Tee '98 (v1.10)") do set NWDIR=%%~a
for %%a in ("gt98.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Tee '99 (v1.00)") do set NWDIR=%%~a
for %%a in ("gt99.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Tee Classic (v1.00)") do set NWDIR=%%~a
for %%a in ("gtclassc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Tee Golf (Joystick, v3.1)") do set NWDIR=%%~a
for %%a in ("gtg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golden Tee Golf II (Trackball, V2.2)") do set NWDIR=%%~a
for %%a in ("gtg2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golf (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_golf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golfing Greats") do set NWDIR=%%~a
for %%a in ("glfgreat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golgo 13 (Japan, GLG1-VER.A)") do set NWDIR=%%~a
for %%a in ("golgo13.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golgo 13 Kiseki no Dandou (Japan, GLS1-VER.A)") do set NWDIR=%%~a
for %%a in ("g13knd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Golly! Ghost!") do set NWDIR=%%~a
for %%a in ("gollygho.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gondomania (US)") do set NWDIR=%%~a
for %%a in ("gondo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Good (Korea)") do set NWDIR=%%~a
for %%a in ("good.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Good E Jong -Kachinuki Mahjong Syoukin Oh!!- (set 1)") do set NWDIR=%%~a
for %%a in ("goodejan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Got-cha Mini Game Festival") do set NWDIR=%%~a
for %%a in ("gotcha.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("GP Rider (World, FD1094 317-0163)") do set NWDIR=%%~a
for %%a in ("gprider.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gradius (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_grdus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gradius 4- Fukkatsu") do set NWDIR=%%~a
for %%a in ("gradius4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gradius III (World, program code R)") do set NWDIR=%%~a
for %%a in ("gradius3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grand Champion") do set NWDIR=%%~a
for %%a in ("grchamp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grand Cross") do set NWDIR=%%~a
for %%a in ("gcpinbal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grand Prix Star") do set NWDIR=%%~a
for %%a in ("f1gpstar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grand Slam (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_gslam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grand Striker 2 (Europe and Oceania)") do set NWDIR=%%~a
for %%a in ("gstrik2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grand Tour") do set NWDIR=%%~a
for %%a in ("grndtour.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grasspin") do set NWDIR=%%~a
for %%a in ("grasspin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gratia - Second Earth (92047-01 version)") do set NWDIR=%%~a
for %%a in ("gratia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gravitar (version 3)") do set NWDIR=%%~a
for %%a in ("gravitar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Great Sluggers (Japan)") do set NWDIR=%%~a
for %%a in ("gslugrsj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Great Sluggers '94") do set NWDIR=%%~a
for %%a in ("gslgr94u.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Great Swordsman (World-)") do set NWDIR=%%~a
for %%a in ("gsword.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Green Beret") do set NWDIR=%%~a
for %%a in ("gberet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grid Seeker- Project Storm Hammer (Ver 1.3O)") do set NWDIR=%%~a
for %%a in ("gseeker.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gridiron Fight") do set NWDIR=%%~a
for %%a in ("gridiron.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grind Stormer") do set NWDIR=%%~a
for %%a in ("grindstm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grobda (New Ver.)") do set NWDIR=%%~a
for %%a in ("grobda.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Groove on Fight - Gouketsuji Ichizoku 3 (J 970416 V1.001)") do set NWDIR=%%~a
for %%a in ("groovef.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ground Effects - Super Ground Effects (Japan)") do set NWDIR=%%~a
for %%a in ("groundfx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Growl (World)") do set NWDIR=%%~a
for %%a in ("growl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grudge Match (prototype)") do set NWDIR=%%~a
for %%a in ("grudge.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Grudge Match (Yankee Game Technology)") do set NWDIR=%%~a
for %%a in ("grmatch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("G-Stream G2020") do set NWDIR=%%~a
for %%a in ("gstream.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("GTI Club (ver EAA)") do set NWDIR=%%~a
for %%a in ("gticlub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guardian (US)") do set NWDIR=%%~a
for %%a in ("getstar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guardian Force (JUET 980318 V0.105)") do set NWDIR=%%~a
for %%a in ("grdforce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guardian Storm (horizontal, not encrypted)") do set NWDIR=%%~a
for %%a in ("grdnstrm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guardians - Denjin Makai II") do set NWDIR=%%~a
for %%a in ("grdians.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guardians of the 'Hood") do set NWDIR=%%~a
for %%a in ("guardian.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guerrilla War (US)") do set NWDIR=%%~a
for %%a in ("gwar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guitar Freaks (GQ886 VER. EAC)") do set NWDIR=%%~a
for %%a in ("gtrfrks.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guitar Freaks 2nd Mix Ver 1.01 (GQ883 VER. JAD)") do set NWDIR=%%~a
for %%a in ("gtrfrk2m.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gulf Storm (set 1)") do set NWDIR=%%~a
for %%a in ("gulfstrm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gulf War II") do set NWDIR=%%~a
for %%a in ("gulfwar2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gumbo") do set NWDIR=%%~a
for %%a in ("gumbo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gun & Frontier (World)") do set NWDIR=%%~a
for %%a in ("gunfront.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gun Champ") do set NWDIR=%%~a
for %%a in ("gunchamp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gun Dealer") do set NWDIR=%%~a
for %%a in ("gundealr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gun Dealer '94") do set NWDIR=%%~a
for %%a in ("gundl94.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gun Force II (US)") do set NWDIR=%%~a
for %%a in ("gunforc2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gun Master") do set NWDIR=%%~a
for %%a in ("gunmast.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gun.Smoke (World)") do set NWDIR=%%~a
for %%a in ("gunsmoke.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gunbarich") do set NWDIR=%%~a
for %%a in ("gnbarich.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gunbird (World)") do set NWDIR=%%~a
for %%a in ("gunbird.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gunbird 2") do set NWDIR=%%~a
for %%a in ("gunbird2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gunbuster (World)") do set NWDIR=%%~a
for %%a in ("gunbustr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gundhara") do set NWDIR=%%~a
for %%a in ("gundhara.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gunforce - Battle Fire Engulfed Terror Island (World)") do set NWDIR=%%~a
for %%a in ("gunforce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gunlock (Ver 2.3O 1994-01-20)") do set NWDIR=%%~a
for %%a in ("gunlock.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("GunNail (28th May. 1992)") do set NWDIR=%%~a
for %%a in ("gunnail.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gururin") do set NWDIR=%%~a
for %%a in ("gururin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guts n' Glory (prototype)") do set NWDIR=%%~a
for %%a in ("guts.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guts'n (Japan)") do set NWDIR=%%~a
for %%a in ("gutsn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guwange (Japan, Master Ver. 99-06-24)") do set NWDIR=%%~a
for %%a in ("guwange.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Guzzler") do set NWDIR=%%~a
for %%a in ("guzzler.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gyakuten!! Puzzle Bancho (Japan)") do set NWDIR=%%~a
for %%a in ("pbancho.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gypsy Juggler") do set NWDIR=%%~a
for %%a in ("gypsyjug.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gyrodine") do set NWDIR=%%~a
for %%a in ("gyrodine.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Gyruss") do set NWDIR=%%~a
for %%a in ("gyruss.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hacha Mecha Fighter (19th Sep. 1991)") do set NWDIR=%%~a
for %%a in ("hachamf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hachoo!") do set NWDIR=%%~a
for %%a in ("hachoo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hae Hae Ka Ka Ka") do set NWDIR=%%~a
for %%a in ("haekaka.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("HAL21") do set NWDIR=%%~a
for %%a in ("hal21.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Halley's Comet (US)") do set NWDIR=%%~a
for %%a in ("halleys.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hammer") do set NWDIR=%%~a
for %%a in ("hammer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hammerin' Harry (World)") do set NWDIR=%%~a
for %%a in ("hharry.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hana wo Yaraneba! (Japan)") do set NWDIR=%%~a
for %%a in ("hanayara.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hanafuda Hana Ginga") do set NWDIR=%%~a
for %%a in ("hginga.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hanafuda Hana Gokou (Japan)") do set NWDIR=%%~a
for %%a in ("hgokou.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hanafuda Hana Tengoku (Japan)") do set NWDIR=%%~a
for %%a in ("htengoku.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Handle Champ (GQ710 VER. JAB)") do set NWDIR=%%~a
for %%a in ("hndlchmp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hang Pilot (ver JAB)") do set NWDIR=%%~a
for %%a in ("hangplt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hangman (JPM)") do set NWDIR=%%~a
for %%a in ("hngmnjpm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hang-On (Rev A)") do set NWDIR=%%~a
for %%a in ("hangon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hang-On Jr.") do set NWDIR=%%~a
for %%a in ("hangonjr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Happy Tour") do set NWDIR=%%~a
for %%a in ("hapytour.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hard Drivin' (cockpit, rev 7)") do set NWDIR=%%~a
for %%a in ("harddriv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hard Drivin's Airborne (prototype)") do set NWDIR=%%~a
for %%a in ("hdrivair.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hard Dunk (World)") do set NWDIR=%%~a
for %%a in ("harddunk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hard Hat") do set NWDIR=%%~a
for %%a in ("hardhat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hard Head") do set NWDIR=%%~a
for %%a in ("hardhead.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hard Head 2 (v2.0)") do set NWDIR=%%~a
for %%a in ("hardhea2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hard Times (set 1)") do set NWDIR=%%~a
for %%a in ("hrdtimes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hard Yardage (v1.20)") do set NWDIR=%%~a
for %%a in ("hardyard.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Harem") do set NWDIR=%%~a
for %%a in ("harem.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Harem Challenge") do set NWDIR=%%~a
for %%a in ("haremchl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hasamu (Japan)") do set NWDIR=%%~a
for %%a in ("hasamu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hat Trick") do set NWDIR=%%~a
for %%a in ("hattrick.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hatch Catch") do set NWDIR=%%~a
for %%a in ("htchctch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hatris (US)") do set NWDIR=%%~a
for %%a in ("hatris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Haunted Castle (version M)") do set NWDIR=%%~a
for %%a in ("hcastle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Head On (2 players)") do set NWDIR=%%~a
for %%a in ("headon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Head On 2") do set NWDIR=%%~a
for %%a in ("headon2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Head Panic (ver. 0117, 17-01-2000)") do set NWDIR=%%~a
for %%a in ("hedpanic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Heart Attack") do set NWDIR=%%~a
for %%a in ("heartatk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Heaven's Gate") do set NWDIR=%%~a
for %%a in ("hvnsgate.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Heavy Barrel (US)") do set NWDIR=%%~a
for %%a in ("hbarrel.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Heavy Metal (315-5135)") do set NWDIR=%%~a
for %%a in ("hvymetal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Heavy Smash (Europe version -2)") do set NWDIR=%%~a
for %%a in ("hvysmsh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Heavy Unit (World)") do set NWDIR=%%~a
for %%a in ("hvyunit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Heavyweight Champ") do set NWDIR=%%~a
for %%a in ("hwchamp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hebereke no Popoon (Japan)") do set NWDIR=%%~a
for %%a in ("heberpop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Heiankyo Alien") do set NWDIR=%%~a
for %%a in ("heiankyo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("HeliFire (set 1)") do set NWDIR=%%~a
for %%a in ("helifire.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hellfire (2P set)") do set NWDIR=%%~a
for %%a in ("hellfire.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hero") do set NWDIR=%%~a
for %%a in ("hero.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Heuk Sun Baek Sa (Korea)") do set NWDIR=%%~a
for %%a in ("heuksun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hexa") do set NWDIR=%%~a
for %%a in ("hexa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hexion (Japan ver JAB)") do set NWDIR=%%~a
for %%a in ("hexion.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hidden Catch (World) - Tul Lin Gu Lim Chat Ki '98 (Korea) (pcb ver 3.03)") do set NWDIR=%%~a
for %%a in ("hidnctch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hidden Catch 2 (pcb ver 3.03) (Kor-Eng) (AT89c52 protected)") do set NWDIR=%%~a
for %%a in ("hidctch2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hidden Catch 2000 (AT89c52 protected)") do set NWDIR=%%~a
for %%a in ("hidnc2k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hidden Catch 3 (ver 1.00 - pcb ver 3.05)") do set NWDIR=%%~a
for %%a in ("hidctch3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("High Impact Football (rev LA5 02-15-91)") do set NWDIR=%%~a
for %%a in ("hiimpact.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("High Way Race") do set NWDIR=%%~a
for %%a in ("hwrace.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Highway Chase (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("chwy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Himeshikibu (Japan)") do set NWDIR=%%~a
for %%a in ("himesiki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hippodrome (US)") do set NWDIR=%%~a
for %%a in ("hippodrm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hit 'n Miss (version 3.0)") do set NWDIR=%%~a
for %%a in ("hitnmiss.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hit the Ice (US)") do set NWDIR=%%~a
for %%a in ("hitice.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hoccer (set 1)") do set NWDIR=%%~a
for %%a in ("hoccer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hogan's Alley (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_hgaly.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hole Land") do set NWDIR=%%~a
for %%a in ("holeland.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Holosseum (US)") do set NWDIR=%%~a
for %%a in ("holo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Honey Dolls") do set NWDIR=%%~a
for %%a in ("honeydol.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hook (World)") do set NWDIR=%%~a
for %%a in ("hook.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hoops '96 (Europe-Asia 2.0)") do set NWDIR=%%~a
for %%a in ("hoops96.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hopper Robo") do set NWDIR=%%~a
for %%a in ("hopprobo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hopping Mappy") do set NWDIR=%%~a
for %%a in ("hopmappy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Horizon (Irem)") do set NWDIR=%%~a
for %%a in ("horizon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hot Blocks - Tetrix II") do set NWDIR=%%~a
for %%a in ("hotblock.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hot Chase") do set NWDIR=%%~a
for %%a in ("hotchase.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hot Mind (Hard Times hardware)") do set NWDIR=%%~a
for %%a in ("hotmind.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hot Pinball") do set NWDIR=%%~a
for %%a in ("hotpinbl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hot Rod (World, 3 Players, Turbo set 1, Floppy Based)") do set NWDIR=%%~a
for %%a in ("hotrod.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hot Shocker") do set NWDIR=%%~a
for %%a in ("hotshock.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hot Shots Tennis (V1.1)") do set NWDIR=%%~a
for %%a in ("hstennis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hotdog Storm (International)") do set NWDIR=%%~a
for %%a in ("hotdogst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hunchback (set 1)") do set NWDIR=%%~a
for %%a in ("hunchbak.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hunchback Olympic") do set NWDIR=%%~a
for %%a in ("huncholy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hydra") do set NWDIR=%%~a
for %%a in ("hydra.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hyper Athlete (GV021 Japan 1.00)") do set NWDIR=%%~a
for %%a in ("hyperath.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hyper Bishi Bashi Champ - 2 Player (GX908 1999-08-24 VER. JAA)") do set NWDIR=%%~a
for %%a in ("hypbbc2p.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hyper Bishi Bashi Champ (GQ876 VER. EAA)") do set NWDIR=%%~a
for %%a in ("hyperbbc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hyper Crash (version D)") do set NWDIR=%%~a
for %%a in ("hcrash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hyper Duel (Japan set 1)") do set NWDIR=%%~a
for %%a in ("hyprduel.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hyper Pacman") do set NWDIR=%%~a
for %%a in ("hyperpac.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hyper Sports") do set NWDIR=%%~a
for %%a in ("hyperspt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hyper Street Fighter 2- The Anniversary Edition (USA 040202)") do set NWDIR=%%~a
for %%a in ("hsf2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Hyperdrive") do set NWDIR=%%~a
for %%a in ("hyprdriv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("I, Robot") do set NWDIR=%%~a
for %%a in ("irobot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ibara (2005-03-22 MASTER VER..)") do set NWDIR=%%~a
for %%a in ("ibara.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ibara Kuro Black Label (2006-02-06. MASTER VER.)") do set NWDIR=%%~a
for %%a in ("ibarablk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("IGMO") do set NWDIR=%%~a
for %%a in ("igmo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ikari III - The Rescue (World, 8-Way Joystick)") do set NWDIR=%%~a
for %%a in ("ikari3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ikari Warriors (US JAMMA)") do set NWDIR=%%~a
for %%a in ("ikari.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ikki (Japan)") do set NWDIR=%%~a
for %%a in ("ikki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("I'm Sorry (315-5110, US)") do set NWDIR=%%~a
for %%a in ("imsorry.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Image Fight (World, revision A)") do set NWDIR=%%~a
for %%a in ("imgfight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Imago (cocktail set)") do set NWDIR=%%~a
for %%a in ("imago.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Imola Grand Prix (set 1)") do set NWDIR=%%~a
for %%a in ("imolagp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("In The Hunt (World)") do set NWDIR=%%~a
for %%a in ("inthunt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Inca") do set NWDIR=%%~a
for %%a in ("inca.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Indiana Jones and the Temple of Doom (set 1)") do set NWDIR=%%~a
for %%a in ("indytemp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Indoor Soccer (set 1)") do set NWDIR=%%~a
for %%a in ("idsoccer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Inferno (Meadows)") do set NWDIR=%%~a
for %%a in ("minferno.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Inferno (Williams)") do set NWDIR=%%~a
for %%a in ("inferno.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Insector (prototype)") do set NWDIR=%%~a
for %%a in ("insector.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Insector X (World)") do set NWDIR=%%~a
for %%a in ("insectx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("International Cup '94 (Ver 2.2O 1994-05-26)") do set NWDIR=%%~a
for %%a in ("intcup94.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Intrepid (set 1)") do set NWDIR=%%~a
for %%a in ("intrepid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Invader's Revenge (set 1)") do set NWDIR=%%~a
for %%a in ("invrvnge.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Invasion - The Abductors (version 5.0)") do set NWDIR=%%~a
for %%a in ("invasnab.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ippatsu Gyakuten [BET] (Japan)") do set NWDIR=%%~a
for %%a in ("ippatsu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("IQ-Block") do set NWDIR=%%~a
for %%a in ("iqblock.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Iron (SNES bootleg)") do set NWDIR=%%~a
for %%a in ("iron.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Iron Fortress") do set NWDIR=%%~a
for %%a in ("ironfort.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Iron Horse") do set NWDIR=%%~a
for %%a in ("ironhors.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ironman Ivan Stewart's Super Off-Road") do set NWDIR=%%~a
for %%a in ("offroad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ironman Ivan Stewart's Super Off-Road Track-Pak") do set NWDIR=%%~a
for %%a in ("offroadt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Itazura Monkey") do set NWDIR=%%~a
for %%a in ("itazuram.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Itazura Tenshi (Japan)") do set NWDIR=%%~a
for %%a in ("itaten.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ixion (prototype)") do set NWDIR=%%~a
for %%a in ("ixion.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("J. J. Squawkers") do set NWDIR=%%~a
for %%a in ("jjsquawk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jack Rabbit (set 1)") do set NWDIR=%%~a
for %%a in ("jackrabt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jack the Giantkiller (set 1)") do set NWDIR=%%~a
for %%a in ("jack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jackal (World, 8-way Joystick)") do set NWDIR=%%~a
for %%a in ("jackal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jackie Chan - The Kung-Fu Master") do set NWDIR=%%~a
for %%a in ("jchan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jackie Chan in Fists of Fire") do set NWDIR=%%~a
for %%a in ("jchan2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jail Break") do set NWDIR=%%~a
for %%a in ("jailbrek.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jangou [BET] (Japan)") do set NWDIR=%%~a
for %%a in ("jangou.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jangou Lady (Japan)") do set NWDIR=%%~a
for %%a in ("jngolady.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Janken Man Kattara Ageru") do set NWDIR=%%~a
for %%a in ("jankenmn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Janpai Puzzle Choukou (Japan 010820)") do set NWDIR=%%~a
for %%a in ("choko.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Janputer '96 (Japan)") do set NWDIR=%%~a
for %%a in ("janptr96.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Janputer Special (Japan)") do set NWDIR=%%~a
for %%a in ("janptrsp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jibun wo Migaku Culture School Mahjong Hen") do set NWDIR=%%~a
for %%a in ("cultures.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jikkyou Powerful Pro Yakyuu '96 (GV017 Japan 1.03)") do set NWDIR=%%~a
for %%a in ("powyak96.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jikkyou Powerful Pro Yakyuu EX (GX802 VER. JAB)") do set NWDIR=%%~a
for %%a in ("powyakex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jin") do set NWDIR=%%~a
for %%a in ("jin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jitsuryoku!! Pro Yakyuu (Japan)") do set NWDIR=%%~a
for %%a in ("jitsupro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("J-League Soccer V-Shoot (Japan)") do set NWDIR=%%~a
for %%a in ("vshoot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jockey Club") do set NWDIR=%%~a
for %%a in ("jockeyc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jockey Grand Prix (set 1)") do set NWDIR=%%~a
for %%a in ("jockeygp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Joe & Mac Returns (World, Version 1.1, 1994.05.27)") do set NWDIR=%%~a
for %%a in ("joemacr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("John Elway's Team Quarterback (set 1)") do set NWDIR=%%~a
for %%a in ("teamqb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Joinem") do set NWDIR=%%~a
for %%a in ("joinem.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("JoJo no Kimyou na Bouken- Mirai e no Isan (Japan 990927)") do set NWDIR=%%~a
for %%a in ("jojoba.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("JoJo's Venture (USA 990128)") do set NWDIR=%%~a
for %%a in ("jojo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Joker Poker (Version 16.03B)") do set NWDIR=%%~a
for %%a in ("jokpoker.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jolly Jogger") do set NWDIR=%%~a
for %%a in ("jollyjgr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jong Yu Ki (Japan)") do set NWDIR=%%~a
for %%a in ("janyuki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jongkyo") do set NWDIR=%%~a
for %%a in ("jongkyo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Joshi Volleyball") do set NWDIR=%%~a
for %%a in ("josvolly.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Joust (White-Green label)") do set NWDIR=%%~a
for %%a in ("joust.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Joust 2 - Survival of the Fittest") do set NWDIR=%%~a
for %%a in ("joust2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Joyful Road (Japan)") do set NWDIR=%%~a
for %%a in ("joyfulr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jr. Pac-Man (11-9-83)") do set NWDIR=%%~a
for %%a in ("jrpacman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Judge Dredd (Rev C Dec. 17 1997)") do set NWDIR=%%~a
for %%a in ("jdredd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Judge Dredd (rev LA1, prototype)") do set NWDIR=%%~a
for %%a in ("jdreddp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jue Zhan Tian Huang") do set NWDIR=%%~a
for %%a in ("jzth.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jump Bug") do set NWDIR=%%~a
for %%a in ("jumpbug.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jump Coaster") do set NWDIR=%%~a
for %%a in ("jumpcoas.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jump Kids") do set NWDIR=%%~a
for %%a in ("jumpkids.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jump Shot") do set NWDIR=%%~a
for %%a in ("jumpshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jumping Break") do set NWDIR=%%~a
for %%a in ("jmpbreak.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jumping Cross") do set NWDIR=%%~a
for %%a in ("jcross.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jumping Jack") do set NWDIR=%%~a
for %%a in ("jjack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jumping Pop (Nics, Korean bootleg of Plump Pop)") do set NWDIR=%%~a
for %%a in ("jpopnics.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jumping Pop (set 1)") do set NWDIR=%%~a
for %%a in ("jumppop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jungle King (Japan)") do set NWDIR=%%~a
for %%a in ("junglek.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jungler") do set NWDIR=%%~a
for %%a in ("jungler.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Juno First") do set NWDIR=%%~a
for %%a in ("junofrst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jurassic Park (World)") do set NWDIR=%%~a
for %%a in ("jpark.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Jyangokushi- Haoh no Saihai (Japan 990527)") do set NWDIR=%%~a
for %%a in ("jyangoku.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kabuki-Z (World)") do set NWDIR=%%~a
for %%a in ("kabukiz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kageki (US)") do set NWDIR=%%~a
for %%a in ("kageki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kaiser Knuckle (Ver 2.1O 1994-07-29)") do set NWDIR=%%~a
for %%a in ("kaiserkn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kaitei Takara Sagashi") do set NWDIR=%%~a
for %%a in ("kaitei.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kamikaze Cabbie") do set NWDIR=%%~a
for %%a in ("kamikcab.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kangaroo") do set NWDIR=%%~a
for %%a in ("kangaroo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kaos") do set NWDIR=%%~a
for %%a in ("kaos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Karate Blazers (World)") do set NWDIR=%%~a
for %%a in ("karatblz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Karate Champ (US)") do set NWDIR=%%~a
for %%a in ("kchamp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Karian Cross (Rev. 1.0)") do set NWDIR=%%~a
for %%a in ("karianx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Karnov (US, rev 6)") do set NWDIR=%%~a
for %%a in ("karnov.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Karnov's Revenge - Fighter's History Dynamite") do set NWDIR=%%~a
for %%a in ("karnovr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kasino '89") do set NWDIR=%%~a
for %%a in ("kas89.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Keith Courage In Alpha Zones") do set NWDIR=%%~a
for %%a in ("keith.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ken-Go") do set NWDIR=%%~a
for %%a in ("kengo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kero Kero Keroppi no Issyoni Asobou (Japan)") do set NWDIR=%%~a
for %%a in ("keroppi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ketsui- Kizuna Jigoku Tachi (2003-01-01. Master Ver.)") do set NWDIR=%%~a
for %%a in ("ket.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kick (upright)") do set NWDIR=%%~a
for %%a in ("kick.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kick and Run (World)") do set NWDIR=%%~a
for %%a in ("kicknrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kick Boy") do set NWDIR=%%~a
for %%a in ("kickboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kick Goal") do set NWDIR=%%~a
for %%a in ("kickgoal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kick Off (Japan)") do set NWDIR=%%~a
for %%a in ("kickoff.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kick Rider") do set NWDIR=%%~a
for %%a in ("kickridr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kick Start - Wheelie King") do set NWDIR=%%~a
for %%a in ("kikstart.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kicker") do set NWDIR=%%~a
for %%a in ("kicker.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kid Niki - Radical Ninja (World)") do set NWDIR=%%~a
for %%a in ("kidniki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kid no Hore Hore Daisakusen") do set NWDIR=%%~a
for %%a in ("horekid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("KiKi KaiKai") do set NWDIR=%%~a
for %%a in ("kikikai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Killer Comet") do set NWDIR=%%~a
for %%a in ("killcom.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Killer Instinct (SNES bootleg)") do set NWDIR=%%~a
for %%a in ("kinstb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Killer Instinct (v1.5d)") do set NWDIR=%%~a
for %%a in ("kinst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Killer Instinct 2 (v1.4)") do set NWDIR=%%~a
for %%a in ("kinst2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("King & Balloon (US)") do set NWDIR=%%~a
for %%a in ("kingball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("King Derby (1981)") do set NWDIR=%%~a
for %%a in ("kingdrby.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("King of Boxer (English)") do set NWDIR=%%~a
for %%a in ("kingofb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("King of Dynast Gear (version 1.8)") do set NWDIR=%%~a
for %%a in ("kdynastg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("King of the Monsters (set 1)") do set NWDIR=%%~a
for %%a in ("kotm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("King of the Monsters 2 - The Next Thing (NGM-039)(NGH-039)") do set NWDIR=%%~a
for %%a in ("kotm2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kingdom Grandprix") do set NWDIR=%%~a
for %%a in ("kingdmgp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kitten Kaboodle") do set NWDIR=%%~a
for %%a in ("kittenk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kizuna Encounter - Super Tag Battle - Fu'un Super Tag Battle") do set NWDIR=%%~a
for %%a in ("kizuna.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kkot Bi Nyo Special (Korea)") do set NWDIR=%%~a
for %%a in ("kotbinsp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Klad - Labyrinth (Photon System)") do set NWDIR=%%~a
for %%a in ("phklad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Klax (set 1)") do set NWDIR=%%~a
for %%a in ("klax.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("KlonDike+") do set NWDIR=%%~a
for %%a in ("klondkp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knightmare (prototype)") do set NWDIR=%%~a
for %%a in ("kngtmare.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knights of the Round (World 911127)") do set NWDIR=%%~a
for %%a in ("knights.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knights of Valour - Sangoku Senki (ver. 117)") do set NWDIR=%%~a
for %%a in ("kov.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knights of Valour 2 - Sangoku Senki 2 (ver. 107, 102, 100HK)") do set NWDIR=%%~a
for %%a in ("kov2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knights of Valour 2 Plus - Nine Dragons - Sangoku Senki 2 Plus - Nine Dragons (ver. M205XX, 200, 100CN)") do set NWDIR=%%~a
for %%a in ("kov2p.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knights of Valour Plus - Sangoku Senki Plus (ver. 119, set 1)") do set NWDIR=%%~a
for %%a in ("kovplus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knights of Valour Super Heroes - Sangoku Senki Super Heroes (ver. 104, CN)") do set NWDIR=%%~a
for %%a in ("kovsh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knuckle Bash") do set NWDIR=%%~a
for %%a in ("kbash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knuckle Bash 2 (bootleg)") do set NWDIR=%%~a
for %%a in ("kbash2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knuckle Heads (World)") do set NWDIR=%%~a
for %%a in ("knckhead.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Knuckle Joe (set 1)") do set NWDIR=%%~a
for %%a in ("kncljoe.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Koi Koi Part 2") do set NWDIR=%%~a
for %%a in ("koikoi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Koi Koi Shimasho") do set NWDIR=%%~a
for %%a in ("koikois.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kokontouzai Eto Monogatari (Japan)") do set NWDIR=%%~a
for %%a in ("eto.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kollon (V2.04J)") do set NWDIR=%%~a
for %%a in ("kollon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Konami 80's AC Special (GC826 VER. EAA)") do set NWDIR=%%~a
for %%a in ("konam80s.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Konami GT") do set NWDIR=%%~a
for %%a in ("konamigt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Konami Test Board (GX800, Japan)") do set NWDIR=%%~a
for %%a in ("kontest.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Konami's Ping-Pong") do set NWDIR=%%~a
for %%a in ("pingpong.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Konek-Gorbunok") do set NWDIR=%%~a
for %%a in ("konek.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kong (Donkey Kong conversion on Galaxian hardware)") do set NWDIR=%%~a
for %%a in ("kong.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Konkyuu no Hoshi") do set NWDIR=%%~a
for %%a in ("bmcbowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Koro Koro Quest (Japan)") do set NWDIR=%%~a
for %%a in ("korokoro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Koutetsu Yousai Strahl (Japan set 1)") do set NWDIR=%%~a
for %%a in ("strahl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kozmik Kroozr") do set NWDIR=%%~a
for %%a in ("kroozr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kram (set 1)") do set NWDIR=%%~a
for %%a in ("kram.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Krazy Bowl") do set NWDIR=%%~a
for %%a in ("krzybowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Krull") do set NWDIR=%%~a
for %%a in ("krull.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kung Fu (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_kngfu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kung-Fu Master (World)") do set NWDIR=%%~a
for %%a in ("kungfum.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kung-Fu Roushi") do set NWDIR=%%~a
for %%a in ("kungfur.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kung-Fu Taikun (set 1)") do set NWDIR=%%~a
for %%a in ("kungfut.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kuri Kinton (World)") do set NWDIR=%%~a
for %%a in ("kurikint.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kusayakyuu") do set NWDIR=%%~a
for %%a in ("ksayakyu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kyros") do set NWDIR=%%~a
for %%a in ("kyros.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Kyuukai Douchuuki (Japan new version)") do set NWDIR=%%~a
for %%a in ("kyukaidk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lady Bug") do set NWDIR=%%~a
for %%a in ("ladybug.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lady Frog") do set NWDIR=%%~a
for %%a in ("ladyfrog.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lady Killer") do set NWDIR=%%~a
for %%a in ("ladykill.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lady Master of Kung Fu") do set NWDIR=%%~a
for %%a in ("ladymstr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Laguna Racer") do set NWDIR=%%~a
for %%a in ("lagunar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Land Breaker (World) - Miss Tang Ja Ru Gi (Korea) (pcb ver 3.02)") do set NWDIR=%%~a
for %%a in ("landbrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Land Maker (Ver 2.01J 1998-06-01)") do set NWDIR=%%~a
for %%a in ("landmakr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Land Sea Air Squad - Riku Kai Kuu Saizensen") do set NWDIR=%%~a
for %%a in ("lsasquad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Landing Gear (Ver 4.2 O)") do set NWDIR=%%~a
for %%a in ("landgear.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Las Vegas Girl (Girl '94)") do set NWDIR=%%~a
for %%a in ("lvgirl94.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Laser Battle") do set NWDIR=%%~a
for %%a in ("laserbat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Laser Ghost (World, FD1094 317-0166)") do set NWDIR=%%~a
for %%a in ("lghost.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Laser Strixx 2") do set NWDIR=%%~a
for %%a in ("lasstixx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lasso") do set NWDIR=%%~a
for %%a in ("lasso.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Last Duel (US New Ver.)") do set NWDIR=%%~a
for %%a in ("lastduel.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Last Fighting") do set NWDIR=%%~a
for %%a in ("lastfght.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Last Fortress - Toride") do set NWDIR=%%~a
for %%a in ("lastfort.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Last Hope (AES Beta Conversion)") do set NWDIR=%%~a
for %%a in ("lhcdb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Last Mission (US revision 6)") do set NWDIR=%%~a
for %%a in ("lastmisn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Last Resort") do set NWDIR=%%~a
for %%a in ("lresort.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Last Striker - Kyuukyoku no Striker") do set NWDIR=%%~a
for %%a in ("kyustrkr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Last Survivor (Japan, FD1094 317-0083)") do set NWDIR=%%~a
for %%a in ("lastsurv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lazer Command") do set NWDIR=%%~a
for %%a in ("lazercmd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Leader Board (Arcadia, set 1, V 2.5)") do set NWDIR=%%~a
for %%a in ("ar_ldrb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("League Bowling (NGM-019)(NGH-019)") do set NWDIR=%%~a
for %%a in ("lbowling.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Legend") do set NWDIR=%%~a
for %%a in ("legend.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Legend of Hero Tonma") do set NWDIR=%%~a
for %%a in ("loht.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Legend of Heroes") do set NWDIR=%%~a
for %%a in ("legendoh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Legend of Makai (World)") do set NWDIR=%%~a
for %%a in ("lomakai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Legend of Success Joe - Ashita no Joe Densetsu") do set NWDIR=%%~a
for %%a in ("legendos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Legendary Wings (US set 1)") do set NWDIR=%%~a
for %%a in ("lwings.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Legion - Spinner-87 (World ver 2.03)") do set NWDIR=%%~a
for %%a in ("legion.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lemmings (US prototype)") do set NWDIR=%%~a
for %%a in ("lemmings.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Leprechaun") do set NWDIR=%%~a
for %%a in ("leprechn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lethal Crash Race (set 1)") do set NWDIR=%%~a
for %%a in ("crshrace.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lethal Enforcers (ver UAE, 11-19-92 15-04)") do set NWDIR=%%~a
for %%a in ("lethalen.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lethal Enforcers II- Gun Fighters (ver EAA)") do set NWDIR=%%~a
for %%a in ("le2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lethal Justice") do set NWDIR=%%~a
for %%a in ("lethalj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lethal Thunder (World)") do set NWDIR=%%~a
for %%a in ("lethalth.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Let's Attack Crazy Cross (GV027 Asia 1.10)") do set NWDIR=%%~a
for %%a in ("lacrazyc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Levers") do set NWDIR=%%~a
for %%a in ("levers.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Libble Rabble") do set NWDIR=%%~a
for %%a in ("liblrabl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Liberation") do set NWDIR=%%~a
for %%a in ("liberate.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Liberator (set 1)") do set NWDIR=%%~a
for %%a in ("liberatr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Libero Grande (Asia, LG2-VER.A)") do set NWDIR=%%~a
for %%a in ("lbgrande.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Light Bringer (Ver 2.2O 1994-04-08)") do set NWDIR=%%~a
for %%a in ("lightbr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lightning Fighters (World)") do set NWDIR=%%~a
for %%a in ("lgtnfght.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Line of Fire - Bakudan Yarou (World, FD1094 317-0136)") do set NWDIR=%%~a
for %%a in ("loffire.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Linky Pipe") do set NWDIR=%%~a
for %%a in ("linkypip.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Liquid Kids (World)") do set NWDIR=%%~a
for %%a in ("liquidk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Little Robin") do set NWDIR=%%~a
for %%a in ("littlerb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lizard Wizard") do set NWDIR=%%~a
for %%a in ("lizwiz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lock'n'Chase") do set NWDIR=%%~a
for %%a in ("lnc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lock'n'Chase (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("clocknch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lock-On (rev. E)") do set NWDIR=%%~a
for %%a in ("lockon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Loco-Motion") do set NWDIR=%%~a
for %%a in ("locomotn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lode Runner - The Dig Fight (ver. B)") do set NWDIR=%%~a
for %%a in ("loderndf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lode Runner (set 1)") do set NWDIR=%%~a
for %%a in ("ldrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lode Runner II - The Bungeling Strikes Back") do set NWDIR=%%~a
for %%a in ("ldrun2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lode Runner III - The Golden Labyrinth") do set NWDIR=%%~a
for %%a in ("ldrun3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lode Runner IV - Teikoku Karano Dasshutsu") do set NWDIR=%%~a
for %%a in ("ldrun4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Logger") do set NWDIR=%%~a
for %%a in ("logger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Logic Pro (Japan)") do set NWDIR=%%~a
for %%a in ("logicpro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Logic Pro 2 (Japan)") do set NWDIR=%%~a
for %%a in ("logicpr2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Logic Pro Adventure (Japan)") do set NWDIR=%%~a
for %%a in ("lpadv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Long Beach") do set NWDIR=%%~a
for %%a in ("lbeach.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Long Hu Bang (China, V035C)") do set NWDIR=%%~a
for %%a in ("lhb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Long Hu Bang II (Hong Kong, V185H)") do set NWDIR=%%~a
for %%a in ("lhb2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Looping") do set NWDIR=%%~a
for %%a in ("looping.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lord of Gun (USA)") do set NWDIR=%%~a
for %%a in ("lordgun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lost Tomb (easy)") do set NWDIR=%%~a
for %%a in ("losttomb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lot Lot") do set NWDIR=%%~a
for %%a in ("lotlot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lotto Fun") do set NWDIR=%%~a
for %%a in ("lottofun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lotto Fun 2") do set NWDIR=%%~a
for %%a in ("lottof2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lovely Pop Mahjong JangJang Shimasho 2 (Japan)") do set NWDIR=%%~a
for %%a in ("janjans2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lover Boy") do set NWDIR=%%~a
for %%a in ("loverboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lucky & Wild") do set NWDIR=%%~a
for %%a in ("luckywld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lucky Boom") do set NWDIR=%%~a
for %%a in ("luckboom.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lucky Roulette Plus (6-players, Spanish)") do set NWDIR=%%~a
for %%a in ("luckyrlt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lucky Today") do set NWDIR=%%~a
for %%a in ("luctoday.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Lunar Lander (rev 2)") do set NWDIR=%%~a
for %%a in ("llander.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("M.A.C.H. 3") do set NWDIR=%%~a
for %%a in ("mach3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("M.I.A. - Missing in Action (version T)") do set NWDIR=%%~a
for %%a in ("mia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("M-79 Ambush") do set NWDIR=%%~a
for %%a in ("m79amb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mace- The Dark Age (boot ROM 1.0ce, HDD 1.0b)") do set NWDIR=%%~a
for %%a in ("mace.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mach Breakers - Numan Athletics 2 (Japan)") do set NWDIR=%%~a
for %%a in ("machbrkr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Macho Mouse") do set NWDIR=%%~a
for %%a in ("machomou.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Macross Plus") do set NWDIR=%%~a
for %%a in ("macrossp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mad Alien") do set NWDIR=%%~a
for %%a in ("madalien.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mad Ball V2.0") do set NWDIR=%%~a
for %%a in ("madball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mad Crasher") do set NWDIR=%%~a
for %%a in ("madcrash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mad Donna (set 1)") do set NWDIR=%%~a
for %%a in ("maddonna.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mad Gear (US)") do set NWDIR=%%~a
for %%a in ("madgear.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mad Motor") do set NWDIR=%%~a
for %%a in ("madmotor.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mad Planets") do set NWDIR=%%~a
for %%a in ("mplanets.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mad Shark") do set NWDIR=%%~a
for %%a in ("madshark.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mag Max") do set NWDIR=%%~a
for %%a in ("magmax.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magic Bubble") do set NWDIR=%%~a
for %%a in ("magicbub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magic Fly") do set NWDIR=%%~a
for %%a in ("magicfly.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magic Johnson's Fast Break (Arcadia, V 2.8)") do set NWDIR=%%~a
for %%a in ("ar_fast.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magic Number") do set NWDIR=%%~a
for %%a in ("mgnumber.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magic Premium (v1.1)") do set NWDIR=%%~a
for %%a in ("mgprem11.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magic Sticks") do set NWDIR=%%~a
for %%a in ("magicstk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magic Sword- Heroic Fantasy (World 900725)") do set NWDIR=%%~a
for %%a in ("msword.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magical Cat Adventure") do set NWDIR=%%~a
for %%a in ("mcatadv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magical Crystals (World, 92-01-10)") do set NWDIR=%%~a
for %%a in ("mgcrystl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magical Date EX - Magical Date - sotsugyou kokuhaku daisakusen (Ver 2.01J)") do set NWDIR=%%~a
for %%a in ("mgcldtex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magical Drop II") do set NWDIR=%%~a
for %%a in ("magdrop2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magical Drop III") do set NWDIR=%%~a
for %%a in ("magdrop3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magical Error wo Sagase") do set NWDIR=%%~a
for %%a in ("magerror.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magical Speed") do set NWDIR=%%~a
for %%a in ("magspeed.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magical Spot") do set NWDIR=%%~a
for %%a in ("magspot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magical Spot II") do set NWDIR=%%~a
for %%a in ("magspot2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magicball Fighting (Korea)") do set NWDIR=%%~a
for %%a in ("magicbal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magician Lord (NGM-005)") do set NWDIR=%%~a
for %%a in ("maglord.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Magix - Rock") do set NWDIR=%%~a
for %%a in ("magix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Block Jongbou (Japan)") do set NWDIR=%%~a
for %%a in ("jongbou.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Cafe Time") do set NWDIR=%%~a
for %%a in ("cafetime.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Club [BET] (Japan)") do set NWDIR=%%~a
for %%a in ("mjclub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Comic Gekijou Vol.1 (Japan)") do set NWDIR=%%~a
for %%a in ("mjcomv1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Dai Touyouken (Japan)") do set NWDIR=%%~a
for %%a in ("dtoyoken.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Daimyojin (Japan, T017-PB-00)") do set NWDIR=%%~a
for %%a in ("daimyojn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Daireikai (Japan)") do set NWDIR=%%~a
for %%a in ("daireika.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Dunhuang") do set NWDIR=%%~a
for %%a in ("dunhuang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Fantasic Love (Japan)") do set NWDIR=%%~a
for %%a in ("mjflove.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Gaiden [BET] (Japan 870803)") do set NWDIR=%%~a
for %%a in ("mjgaiden.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong G-Taste") do set NWDIR=%%~a
for %%a in ("mjgtaste.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Hot Gimmick Integral (Japan)") do set NWDIR=%%~a
for %%a in ("hotgmcki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong If...- [BET]") do set NWDIR=%%~a
for %%a in ("mjifb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Janshin Plus (Japan)") do set NWDIR=%%~a
for %%a in ("janshinp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Jong-Tei (Japan, ver. NM532-01)") do set NWDIR=%%~a
for %%a in ("jongtei.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Man Guan Da Heng (Taiwan, V125T1)") do set NWDIR=%%~a
for %%a in ("mgdh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Oh (V2.06J)") do set NWDIR=%%~a
for %%a in ("mahjngoh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Private (Japan)") do set NWDIR=%%~a
for %%a in ("mjprivat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Seiryu Densetsu (Japan, NM502)") do set NWDIR=%%~a
for %%a in ("sryudens.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Shinkirou Deja Vu (Japan)") do set NWDIR=%%~a
for %%a in ("mjdejavu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Super Da Man Guan II (China, V754C)") do set NWDIR=%%~a
for %%a in ("sdmg2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong The Dai Chuuka Ken (China, v. D111)") do set NWDIR=%%~a
for %%a in ("mjdchuka.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong The Mysterious Orient") do set NWDIR=%%~a
for %%a in ("mjmyornt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong The Mysterious Universe") do set NWDIR=%%~a
for %%a in ("mjmyuniv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong The Mysterious World (set 1)") do set NWDIR=%%~a
for %%a in ("mjmyster.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Tian Jiang Shen Bing (V137C)") do set NWDIR=%%~a
for %%a in ("tjsb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mahjong Vegas (Japan, unprotected)") do set NWDIR=%%~a
for %%a in ("mjvegasa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Main Event (1984)") do set NWDIR=%%~a
for %%a in ("mainsnk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Major Havoc (rev 3)") do set NWDIR=%%~a
for %%a in ("mhavoc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Major League") do set NWDIR=%%~a
for %%a in ("mjleague.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Major Title (World)") do set NWDIR=%%~a
for %%a in ("majtitle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Major Title 2 (World)") do set NWDIR=%%~a
for %%a in ("majtitl2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Makaijan [BET] (Japan)") do set NWDIR=%%~a
for %%a in ("makaijan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mallet Madness v2.1") do set NWDIR=%%~a
for %%a in ("maletmad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mang-Chi") do set NWDIR=%%~a
for %%a in ("mangchi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Manhattan (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cmanhat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mania Challenge (set 1)") do set NWDIR=%%~a
for %%a in ("maniach.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Maniac Square (unprotected)") do set NWDIR=%%~a
for %%a in ("maniacsq.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Many Block") do set NWDIR=%%~a
for %%a in ("manybloc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mappy (US)") do set NWDIR=%%~a
for %%a in ("mappy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Marble Madness (set 1)") do set NWDIR=%%~a
for %%a in ("marble.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Marchen Maze (Japan)") do set NWDIR=%%~a
for %%a in ("mmaze.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Marine Boy") do set NWDIR=%%~a
for %%a in ("marineb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Marine Date") do set NWDIR=%%~a
for %%a in ("marinedt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mariner") do set NWDIR=%%~a
for %%a in ("mariner.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mario Bros. (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_mario.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mario Bros. (US, Revision F)") do set NWDIR=%%~a
for %%a in ("mario.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mario's Open Golf (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_moglf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Markham") do set NWDIR=%%~a
for %%a in ("markham.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mars") do set NWDIR=%%~a
for %%a in ("mars.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mars Matrix- Hyper Solid Shooting (USA 000412)") do set NWDIR=%%~a
for %%a in ("mmatrix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Martial Champion (ver EAB)") do set NWDIR=%%~a
for %%a in ("mtlchamp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Martial Masters (ver. 104, 102, 102US)") do set NWDIR=%%~a
for %%a in ("martmast.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Maru-Chan de Goo! (J 971216 V1.000)") do set NWDIR=%%~a
for %%a in ("maruchan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Marvel Land (US)") do set NWDIR=%%~a
for %%a in ("marvland.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Marvel Super Heroes (Euro 951024)") do set NWDIR=%%~a
for %%a in ("msh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Euro 970625)") do set NWDIR=%%~a
for %%a in ("mshvsf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Marvel Vs. Capcom- Clash of Super Heroes (Euro 980123)") do set NWDIR=%%~a
for %%a in ("mvsc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Marvin's Maze") do set NWDIR=%%~a
for %%a in ("marvins.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Masked Riders Club Battle Race") do set NWDIR=%%~a
for %%a in ("kamenrid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Master Boy (Spanish, PCB Rev A)") do set NWDIR=%%~a
for %%a in ("mastboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Master of Weapon (World)") do set NWDIR=%%~a
for %%a in ("masterw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mat Mania") do set NWDIR=%%~a
for %%a in ("matmania.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Match It") do set NWDIR=%%~a
for %%a in ("matchit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Match It II") do set NWDIR=%%~a
for %%a in ("matchit2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Matrimelee - Shin Gouketsuji Ichizoku Toukon (NGM-2660) (NGH-2660)") do set NWDIR=%%~a
for %%a in ("matrim.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mausuke no Ojama the World (J 960314 V1.000)") do set NWDIR=%%~a
for %%a in ("mausuke.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Max RPM (ver 2)") do set NWDIR=%%~a
for %%a in ("maxrpm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Maximum Force v1.05") do set NWDIR=%%~a
for %%a in ("maxforce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Maya (set 1)") do set NWDIR=%%~a
for %%a in ("maya.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mayday (set 1)") do set NWDIR=%%~a
for %%a in ("mayday.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mayhem 2002") do set NWDIR=%%~a
for %%a in ("mayhem.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Maze Invaders (prototype)") do set NWDIR=%%~a
for %%a in ("mazeinv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Maze of Flott (Japan)") do set NWDIR=%%~a
for %%a in ("mofflott.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mazin Wars - Mazin Saga (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_mazin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mazinger Z (World)") do set NWDIR=%%~a
for %%a in ("mazinger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Meadows Lanes") do set NWDIR=%%~a
for %%a in ("medlanes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mechanized Attack (World)") do set NWDIR=%%~a
for %%a in ("mechatt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mega Blast (World)") do set NWDIR=%%~a
for %%a in ("megablst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mega Man 2- The Power Fighters (USA 960708)") do set NWDIR=%%~a
for %%a in ("megaman2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mega Man III (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_mman3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mega Man- The Power Battle (CPS1, USA 951006)") do set NWDIR=%%~a
for %%a in ("megaman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mega Twins (World 900619)") do set NWDIR=%%~a
for %%a in ("mtwins.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mega Zone (Konami set 1)") do set NWDIR=%%~a
for %%a in ("megazone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Megadon") do set NWDIR=%%~a
for %%a in ("megadon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Megatack") do set NWDIR=%%~a
for %%a in ("megatack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Megatouch 5 (9255-60-01 ROI, Standard version)") do set NWDIR=%%~a
for %%a in ("megat5.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Megatouch 6 (9255-80-01 ROA, Standard version)") do set NWDIR=%%~a
for %%a in ("megat6.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Megatouch III (9255-20-01 RON, Standard version)") do set NWDIR=%%~a
for %%a in ("megat3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Megatouch IV (9255-40-01 ROE, Standard version)") do set NWDIR=%%~a
for %%a in ("megat4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Meijinsen") do set NWDIR=%%~a
for %%a in ("meijinsn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Meikyu Jima (Japan)") do set NWDIR=%%~a
for %%a in ("kikcubic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Meosis Magic (Japan)") do set NWDIR=%%~a
for %%a in ("meosism.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mercs (World 900302)") do set NWDIR=%%~a
for %%a in ("mercs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Merlins Money Maze") do set NWDIR=%%~a
for %%a in ("merlinmm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mermaid") do set NWDIR=%%~a
for %%a in ("mermaid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Meta Fox") do set NWDIR=%%~a
for %%a in ("metafox.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Black (World)") do set NWDIR=%%~a
for %%a in ("metalb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Clash (Japan)") do set NWDIR=%%~a
for %%a in ("metlclsh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Hawk") do set NWDIR=%%~a
for %%a in ("metlhawk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Saver") do set NWDIR=%%~a
for %%a in ("metlsavr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Slug - Super Vehicle-001") do set NWDIR=%%~a
for %%a in ("mslug.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Slug 2 - Super Vehicle-001-II (NGM-2410)(NGH-2410)") do set NWDIR=%%~a
for %%a in ("mslug2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Slug 3 (NGM-2560)") do set NWDIR=%%~a
for %%a in ("mslug3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Slug 4 (NGM-2630)") do set NWDIR=%%~a
for %%a in ("mslug4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Slug 5 (JAMMA PCB)") do set NWDIR=%%~a
for %%a in ("ms5pcb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Slug 5 (NGM-2680)") do set NWDIR=%%~a
for %%a in ("mslug5.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Slug X - Super Vehicle-001 (NGM-2500)(NGH-2500)") do set NWDIR=%%~a
for %%a in ("mslugx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metal Soldier Isaac II") do set NWDIR=%%~a
for %%a in ("msisaac.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metamoqester (International)") do set NWDIR=%%~a
for %%a in ("metmqstr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metamorphic Force (ver EAA)") do set NWDIR=%%~a
for %%a in ("metamrph.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metro-Cross (set 1)") do set NWDIR=%%~a
for %%a in ("metrocrs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Metroid (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_mtoid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Michael Jackson's Moonwalker (World, FD1094-8751 317-0159)") do set NWDIR=%%~a
for %%a in ("mwalk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Midnight Landing (Germany)") do set NWDIR=%%~a
for %%a in ("mlanding.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Midnight Resistance (World)") do set NWDIR=%%~a
for %%a in ("midres.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Midnight Run (Euro v1.11)") do set NWDIR=%%~a
for %%a in ("midnrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mighty Guy") do set NWDIR=%%~a
for %%a in ("mightguy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mighty Monkey") do set NWDIR=%%~a
for %%a in ("mimonkey.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mighty Warriors") do set NWDIR=%%~a
for %%a in ("mwarr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mighty! Pang (Euro 001010)") do set NWDIR=%%~a
for %%a in ("mpang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mike Tyson's Punch-Out!! (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_miket.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mikie") do set NWDIR=%%~a
for %%a in ("mikie.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mille Miglia 2- Great 1000 Miles Rally (95-05-24)") do set NWDIR=%%~a
for %%a in ("gtmr2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Millipede") do set NWDIR=%%~a
for %%a in ("milliped.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Minefield") do set NWDIR=%%~a
for %%a in ("minefld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mini Golf (11-25-85)") do set NWDIR=%%~a
for %%a in ("minigolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mini Vaders") do set NWDIR=%%~a
for %%a in ("minivadr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Minky Monkey") do set NWDIR=%%~a
for %%a in ("mmonkey.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mirage Youjuu Mahjongden (Japan)") do set NWDIR=%%~a
for %%a in ("mirage.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mirai Ninja (Japan)") do set NWDIR=%%~a
for %%a in ("mirninja.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mirax (set 1)") do set NWDIR=%%~a
for %%a in ("mirax.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Miss Bingo") do set NWDIR=%%~a
for %%a in ("msbingo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Miss Bubble II") do set NWDIR=%%~a
for %%a in ("missb2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Miss Puzzle") do set NWDIR=%%~a
for %%a in ("mspuzzle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Miss World '96 (Nude)") do set NWDIR=%%~a
for %%a in ("missw96.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Missile Command (rev 3)") do set NWDIR=%%~a
for %%a in ("missile.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mission 660 (US)") do set NWDIR=%%~a
for %%a in ("m660.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mission Craft (version 2.7)") do set NWDIR=%%~a
for %%a in ("misncrft.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mission-X (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cmissnx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mister Viking (315-5041)") do set NWDIR=%%~a
for %%a in ("mrviking.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mobil Suit Gundam Final Shooting (Japan)") do set NWDIR=%%~a
for %%a in ("gdfs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mobile Suit Gundam") do set NWDIR=%%~a
for %%a in ("msgundam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mobile Suit Gundam EX Revue") do set NWDIR=%%~a
for %%a in ("gundamex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mogu Chan (bootleg-)") do set NWDIR=%%~a
for %%a in ("moguchan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mogura Desse (Japan)") do set NWDIR=%%~a
for %%a in ("mogura.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mole Attack") do set NWDIR=%%~a
for %%a in ("mole.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Momoko 120-") do set NWDIR=%%~a
for %%a in ("momoko.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Money Money") do set NWDIR=%%~a
for %%a in ("monymony.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Money Puzzle Exchanger - Money Idol Exchanger") do set NWDIR=%%~a
for %%a in ("miexchng.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Monkey Mole Panic (USA)") do set NWDIR=%%~a
for %%a in ("mmpanic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Monopoly (JPM) (SYSTEM5 VIDEO, set 1)") do set NWDIR=%%~a
for %%a in ("monopoly.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Monopoly Deluxe (JPM) (SYSTEM5 VIDEO)") do set NWDIR=%%~a
for %%a in ("monopldx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Monster Farm Jump (Japan)") do set NWDIR=%%~a
for %%a in ("mfjump.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Monster Maulers (ver EAA)") do set NWDIR=%%~a
for %%a in ("mmaulers.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Monster Slider (Japan)") do set NWDIR=%%~a
for %%a in ("mslider.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Monsters World (bootleg of Super Pang)") do set NWDIR=%%~a
for %%a in ("mstworld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Monte Carlo") do set NWDIR=%%~a
for %%a in ("montecar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Moon Cresta (Nichibutsu)") do set NWDIR=%%~a
for %%a in ("mooncrst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Moon Patrol") do set NWDIR=%%~a
for %%a in ("mpatrol.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Moon Quasar") do set NWDIR=%%~a
for %%a in ("moonqsr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Moon Shuttle (US- set 1)") do set NWDIR=%%~a
for %%a in ("mshuttle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Moon War (prototype on Frenzy hardware)") do set NWDIR=%%~a
for %%a in ("moonwarp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Moonwar") do set NWDIR=%%~a
for %%a in ("moonwar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("More More") do set NWDIR=%%~a
for %%a in ("moremore.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("More More Plus") do set NWDIR=%%~a
for %%a in ("moremorp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mortal Kombat (rev 5.0 T-Unit 03-19-93)") do set NWDIR=%%~a
for %%a in ("mk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mortal Kombat 3 (bootleg of Megadrive version)") do set NWDIR=%%~a
for %%a in ("mk3mdb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mortal Kombat 3 (rev 2.1)") do set NWDIR=%%~a
for %%a in ("mk3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mortal Kombat 4 (version 3.0)") do set NWDIR=%%~a
for %%a in ("mk4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mortal Kombat II (rev L3.1)") do set NWDIR=%%~a
for %%a in ("mk2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mosaic") do set NWDIR=%%~a
for %%a in ("mosaic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mosaic (F2 System)") do set NWDIR=%%~a
for %%a in ("mosaicf2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Motos") do set NWDIR=%%~a
for %%a in ("motos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mouja (Japan)") do set NWDIR=%%~a
for %%a in ("mouja.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mouse Attack") do set NWDIR=%%~a
for %%a in ("mouseatk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mouse Shooter GoGo") do set NWDIR=%%~a
for %%a in ("msgogo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mouse Trap (version 5)") do set NWDIR=%%~a
for %%a in ("mtrap.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mouser") do set NWDIR=%%~a
for %%a in ("mouser.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("MPU4 Meter Clear ROM") do set NWDIR=%%~a
for %%a in ("m4clr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("MPU4 Unit Test (Program 2)") do set NWDIR=%%~a
for %%a in ("m4tst2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("MPU4 Unit Test (Program 4)") do set NWDIR=%%~a
for %%a in ("m4tst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mr. Dig") do set NWDIR=%%~a
for %%a in ("mrdig.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mr. Do!") do set NWDIR=%%~a
for %%a in ("mrdo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mr. Do's Castle (set 1)") do set NWDIR=%%~a
for %%a in ("docastle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mr. Do's Wild Ride") do set NWDIR=%%~a
for %%a in ("dowild.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mr. Driller (Japan, DRI1-VER.A2)") do set NWDIR=%%~a
for %%a in ("mrdrillr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mr. Goemon (Japan)") do set NWDIR=%%~a
for %%a in ("mrgoemon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mr. Jong (Japan)") do set NWDIR=%%~a
for %%a in ("mrjong.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mr. Kougar") do set NWDIR=%%~a
for %%a in ("mrkougar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mr. TNT") do set NWDIR=%%~a
for %%a in ("mrtnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ms. Pac-Man") do set NWDIR=%%~a
for %%a in ("mspacman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ms. Pac-Man-Galaga - 20th Anniversary Class of 1981 Reunion (V1.08)") do set NWDIR=%%~a
for %%a in ("20pacgal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Muchi Muchi Pork! (2007- 4-17 MASTER VER.)") do set NWDIR=%%~a
for %%a in ("mmpork.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mug Smashers") do set NWDIR=%%~a
for %%a in ("mugsmash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("MuHanSeungBu (SemiCom Baseball) (Korea)") do set NWDIR=%%~a
for %%a in ("semibase.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Multi 5 - New Multi Game 5") do set NWDIR=%%~a
for %%a in ("nmg5.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Multi Champ (World, ver. 2.5)") do set NWDIR=%%~a
for %%a in ("multchmp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Multi Champ Deluxe (ver. 0106, 06-01-2000)") do set NWDIR=%%~a
for %%a in ("mchampdx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Multi Game (set 1)") do set NWDIR=%%~a
for %%a in ("multigam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Multi Game (Tung Sheng Electronics)") do set NWDIR=%%~a
for %%a in ("multigmt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Multi Game 2") do set NWDIR=%%~a
for %%a in ("multigm2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Multi Game III") do set NWDIR=%%~a
for %%a in ("multigm3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Muscle Bomber Duo- Ultimate Team Battle (World 931206)") do set NWDIR=%%~a
for %%a in ("mbombrd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mushihime-Sama (2004-10-12 MASTER VER.)") do set NWDIR=%%~a
for %%a in ("mushisam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mushihime-Sama Futari Ver 1.5 (2006-12-8.MASTER VER. 1.54.)") do set NWDIR=%%~a
for %%a in ("futari15.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mustache Boy") do set NWDIR=%%~a
for %%a in ("mustache.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mutant Fighter (World ver EM-5)") do set NWDIR=%%~a
for %%a in ("mutantf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mutant Night") do set NWDIR=%%~a
for %%a in ("mnight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mutation Nation (NGM-014)(NGH-014)") do set NWDIR=%%~a
for %%a in ("mutnat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("MVP (set 2, US, FD1094 317-0143)") do set NWDIR=%%~a
for %%a in ("mvp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("MX5000") do set NWDIR=%%~a
for %%a in ("mx5000.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("My Hero (US, not encrypted)") do set NWDIR=%%~a
for %%a in ("myhero.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mysterious Stones - Dr. John's Adventure") do set NWDIR=%%~a
for %%a in ("mystston.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mystic Marathon") do set NWDIR=%%~a
for %%a in ("mysticm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mystic Riders (World)") do set NWDIR=%%~a
for %%a in ("mysticri.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Mystic Warriors (ver EAA)") do set NWDIR=%%~a
for %%a in ("mystwarr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("N.Y. Captor") do set NWDIR=%%~a
for %%a in ("nycaptor.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nagano Winter Olympics '98 (GX720 EAA)") do set NWDIR=%%~a
for %%a in ("nagano98.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("NAM-1975 (NGM-001)(NGH-001)") do set NWDIR=%%~a
for %%a in ("nam1975.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Namco Classic Collection Vol.1") do set NWDIR=%%~a
for %%a in ("ncv1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Namco Classic Collection Vol.2") do set NWDIR=%%~a
for %%a in ("ncv2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Naname de Magic! (Japan)") do set NWDIR=%%~a
for %%a in ("naname.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Narc (rev 7.00)") do set NWDIR=%%~a
for %%a in ("narc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nastar (World)") do set NWDIR=%%~a
for %%a in ("nastar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Naughty Boy") do set NWDIR=%%~a
for %%a in ("naughtyb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Naughty Mouse (set 1)") do set NWDIR=%%~a
for %%a in ("nmouse.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Navarone") do set NWDIR=%%~a
for %%a in ("navarone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("NBA Hangtime (rev L1.1 04-16-96)") do set NWDIR=%%~a
for %%a in ("nbahangt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("NBA Jam (rev 3.01 04-07-93)") do set NWDIR=%%~a
for %%a in ("nbajam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("NBA Jam TE (rev 4.0 03-23-94)") do set NWDIR=%%~a
for %%a in ("nbajamte.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("NBA Play By Play") do set NWDIR=%%~a
for %%a in ("nbapbp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nebulas Ray (World, NR2)") do set NWDIR=%%~a
for %%a in ("nebulray.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Neck-n-Neck (v1.2)") do set NWDIR=%%~a
for %%a in ("neckneck.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nemesis (ROM version)") do set NWDIR=%%~a
for %%a in ("nemesis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nemo (World 901130)") do set NWDIR=%%~a
for %%a in ("nemo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Neo Bomberman") do set NWDIR=%%~a
for %%a in ("neobombe.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Neo Drift Out - New Technology") do set NWDIR=%%~a
for %%a in ("neodrift.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Neo Mr. Do!") do set NWDIR=%%~a
for %%a in ("neomrdo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Neo Turf Masters - Big Tournament Golf") do set NWDIR=%%~a
for %%a in ("turfmast.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Neo-Geo Cup '98 - The Road to the Victory") do set NWDIR=%%~a
for %%a in ("neocup98.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Neratte Chu") do set NWDIR=%%~a
for %%a in ("nratechu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Net Wars") do set NWDIR=%%~a
for %%a in ("netwars.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("New Double Bet Mahjong (bootleg of Janputer)") do set NWDIR=%%~a
for %%a in ("janputer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("New Fantasia (set 1)") do set NWDIR=%%~a
for %%a in ("newfant.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("New Hidden Catch (World) - New Tul Lin Gu Lim Chat Ki '98 (Korea) (pcb ver 3.02)") do set NWDIR=%%~a
for %%a in ("nhidctch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("New Sinbad 7") do set NWDIR=%%~a
for %%a in ("newsin7.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("New York! New York!") do set NWDIR=%%~a
for %%a in ("nyny.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("News (set 1)") do set NWDIR=%%~a
for %%a in ("news.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("NFL Blitz (boot ROM 1.2)") do set NWDIR=%%~a
for %%a in ("blitz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("NFL Blitz 2000 Gold Edition") do set NWDIR=%%~a
for %%a in ("blitz2k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("NFL Blitz '99") do set NWDIR=%%~a
for %%a in ("blitz99.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nibbler (rev 9)") do set NWDIR=%%~a
for %%a in ("nibbler.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Night Bunny (Japan 840601 MRN 2-10)") do set NWDIR=%%~a
for %%a in ("ngtbunny.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Night Driver") do set NWDIR=%%~a
for %%a in ("nitedrvr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Night Gal (Japan 840920 AG 1-00)") do set NWDIR=%%~a
for %%a in ("nightgal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Night Raid (V2.03J)") do set NWDIR=%%~a
for %%a in ("nightrai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Night Slashers (Korea Rev 1.3)") do set NWDIR=%%~a
for %%a in ("nslasher.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Night Star (DECO Cassette, set 1)") do set NWDIR=%%~a
for %%a in ("cnightst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Night Stocker (10-6-86)") do set NWDIR=%%~a
for %%a in ("nstocker.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Night Striker (World)") do set NWDIR=%%~a
for %%a in ("nightstr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Night Warriors- Darkstalkers' Revenge (Euro 950316)") do set NWDIR=%%~a
for %%a in ("nwarr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nightmare in the Dark") do set NWDIR=%%~a
for %%a in ("nitd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Baseball Bat Man (World)") do set NWDIR=%%~a
for %%a in ("nbbatman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Clowns (08-27-91)") do set NWDIR=%%~a
for %%a in ("ninclown.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Combat (NGM-009)") do set NWDIR=%%~a
for %%a in ("ncombat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Commando") do set NWDIR=%%~a
for %%a in ("ncommand.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Emaki (US)") do set NWDIR=%%~a
for %%a in ("ninjemak.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Gaiden (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_ngaid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Gaiden Episode II- The Dark Sword of Chaos (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_ngai2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Gaiden Episode III- The Ancient Ship of Doom (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_ngai3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Kazan (World)") do set NWDIR=%%~a
for %%a in ("kazan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Master's - haoh-ninpo-cho") do set NWDIR=%%~a
for %%a in ("ninjamas.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Mission (Arcadia, set 1, V 2.5)") do set NWDIR=%%~a
for %%a in ("ar_ninj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja Spirit") do set NWDIR=%%~a
for %%a in ("nspirit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninja-Kid II - NinjaKun Ashura no Shou (set 1)") do set NWDIR=%%~a
for %%a in ("ninjakd2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ninjakun Majou no Bouken") do set NWDIR=%%~a
for %%a in ("ninjakun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nintendo World Cup (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_wcup.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nitro Ball (US)") do set NWDIR=%%~a
for %%a in ("nitrobal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Niyanpai (Japan)") do set NWDIR=%%~a
for %%a in ("niyanpai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("No Man's Land") do set NWDIR=%%~a
for %%a in ("nomnlnd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Noah's Ark") do set NWDIR=%%~a
for %%a in ("noahsark.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Noboranka (Japan)") do set NWDIR=%%~a
for %%a in ("nob.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nostradamus") do set NWDIR=%%~a
for %%a in ("nost.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Nova 2001 (Japan)") do set NWDIR=%%~a
for %%a in ("nova2001.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("N-Sub (upright)") do set NWDIR=%%~a
for %%a in ("nsub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Numan Athletics (World)") do set NWDIR=%%~a
for %%a in ("numanath.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Off Road Challenge (v1.63)") do set NWDIR=%%~a
for %%a in ("offroadc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Off the Wall (2-3-player upright)") do set NWDIR=%%~a
for %%a in ("offtwall.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Off the Wall (Sente)") do set NWDIR=%%~a
for %%a in ("otwalls.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Oh My God! (Japan)") do set NWDIR=%%~a
for %%a in ("ohmygod.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Oh! Paipee (Japan 890227)") do set NWDIR=%%~a
for %%a in ("ohpaipee.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Oishii Puzzle Ha Irimasenka") do set NWDIR=%%~a
for %%a in ("oisipuzl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Oli-Boo-Chu") do set NWDIR=%%~a
for %%a in ("olibochu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Omega Fighter") do set NWDIR=%%~a
for %%a in ("omegaf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Omega Race (set 1)") do set NWDIR=%%~a
for %%a in ("omegrace.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("One + Two") do set NWDIR=%%~a
for %%a in ("onetwo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("One Shot One Kill") do set NWDIR=%%~a
for %%a in ("oneshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Onna Sansirou - Typhoon Gal (set 1)") do set NWDIR=%%~a
for %%a in ("onna34ro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Oozumou - The Grand Sumo (DECO Cassette, Japan)") do set NWDIR=%%~a
for %%a in ("coozumou.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Opa Opa (MC-8123, 317-0042)") do set NWDIR=%%~a
for %%a in ("opaopa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Operation Thunderbolt (World)") do set NWDIR=%%~a
for %%a in ("othunder.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Operation Wolf (World, set 1)") do set NWDIR=%%~a
for %%a in ("opwolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Operation Wolf 3 (World)") do set NWDIR=%%~a
for %%a in ("opwolf3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Orbit") do set NWDIR=%%~a
for %%a in ("orbit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Orbitron") do set NWDIR=%%~a
for %%a in ("orbitron.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Orbs (10-7-94 prototype-)") do set NWDIR=%%~a
for %%a in ("orbs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ordyne (Japan, English Version)") do set NWDIR=%%~a
for %%a in ("ordyne.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Oriental Legend - Xi You Shi E Zhuan (ver. 126)") do set NWDIR=%%~a
for %%a in ("orlegend.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Oriental Legend Special - Xi You Shi E Zhuan Super (ver. 101, Korean Board)") do set NWDIR=%%~a
for %%a in ("olds.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Osman (World)") do set NWDIR=%%~a
for %%a in ("osman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Otenami Haiken (V2.04J)") do set NWDIR=%%~a
for %%a in ("otenamih.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Otenami Haiken Final (V2.07JC)") do set NWDIR=%%~a
for %%a in ("otenamhf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Otenki Kororin (V2.01J)") do set NWDIR=%%~a
for %%a in ("otenki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Othello (version 3.0)") do set NWDIR=%%~a
for %%a in ("othello.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Otogizoushi Urashima Mahjong (Japan)") do set NWDIR=%%~a
for %%a in ("urashima.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Out Run (sitdown-upright, Rev B)") do set NWDIR=%%~a
for %%a in ("outrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Out Zone") do set NWDIR=%%~a
for %%a in ("outzone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("OutRunners (World)") do set NWDIR=%%~a
for %%a in ("orunners.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Over Top") do set NWDIR=%%~a
for %%a in ("overtop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ozma Wars (set 1)") do set NWDIR=%%~a
for %%a in ("ozmawars.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ozon I") do set NWDIR=%%~a
for %%a in ("ozon1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("P.O.W. - Prisoners of War (US version 1)") do set NWDIR=%%~a
for %%a in ("pow.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("P-47 - The Phantom Fighter (World)") do set NWDIR=%%~a
for %%a in ("p47.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("P-47 Aces") do set NWDIR=%%~a
for %%a in ("p47aces.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pac & Pal") do set NWDIR=%%~a
for %%a in ("pacnpal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paca Paca Passion (Japan, PPP1-VER.A2)") do set NWDIR=%%~a
for %%a in ("pacapp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paca Paca Passion 2 (Japan, PKS1-VER.A)") do set NWDIR=%%~a
for %%a in ("pacapp2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paca Paca Passion Special (Japan, PSP1-VER.A)") do set NWDIR=%%~a
for %%a in ("pacappsp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pachifever") do set NWDIR=%%~a
for %%a in ("pachifev.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pachinko Gindama Shoubu (Japan)") do set NWDIR=%%~a
for %%a in ("pkgnsh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pachinko Gindama Shoubu DX (Japan)") do set NWDIR=%%~a
for %%a in ("pkgnshdx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pachinko Sexy Reaction (Japan)") do set NWDIR=%%~a
for %%a in ("sxyreact.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pachinko Sexy Reaction 2 (Japan)") do set NWDIR=%%~a
for %%a in ("sxyreac2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pac-Land (United Amusements PC Engine)") do set NWDIR=%%~a
for %%a in ("paclandp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pac-Land (World)") do set NWDIR=%%~a
for %%a in ("pacland.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pac-Man Plus") do set NWDIR=%%~a
for %%a in ("pacplus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pac-Mania") do set NWDIR=%%~a
for %%a in ("pacmania.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paddle Mania") do set NWDIR=%%~a
for %%a in ("paddlema.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pairs (Nichibutsu) (Japan 890822)") do set NWDIR=%%~a
for %%a in ("pairsnb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pairs (V1.2, 09-30-94)") do set NWDIR=%%~a
for %%a in ("pairs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pairs Love") do set NWDIR=%%~a
for %%a in ("pairlove.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pairs Redemption (V1.0, 10-25-94)") do set NWDIR=%%~a
for %%a in ("pairsred.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Palamedes (Japan)") do set NWDIR=%%~a
for %%a in ("palamed.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pandora's Palace") do set NWDIR=%%~a
for %%a in ("pandoras.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Panel & Variety Akamaru Q Jousyou Dont-R") do set NWDIR=%%~a
for %%a in ("akamaru.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pang (World)") do set NWDIR=%%~a
for %%a in ("pang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pang Pang") do set NWDIR=%%~a
for %%a in ("pangpang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pang Pang Car") do set NWDIR=%%~a
for %%a in ("ppcar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pang Pom's") do set NWDIR=%%~a
for %%a in ("pangpoms.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pang! 3 (Euro 950601)") do set NWDIR=%%~a
for %%a in ("pang3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Panic Bomber") do set NWDIR=%%~a
for %%a in ("panicbom.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Panic Road (Japan)") do set NWDIR=%%~a
for %%a in ("panicr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Panic Street (Japan)") do set NWDIR=%%~a
for %%a in ("panicstr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Panther") do set NWDIR=%%~a
for %%a in ("panther.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paparazzi") do set NWDIR=%%~a
for %%a in ("paprazzi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paperboy (rev 3)") do set NWDIR=%%~a
for %%a in ("paperboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paradice (Dutch, Game Card 95-750-615)") do set NWDIR=%%~a
for %%a in ("paradice.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paradise") do set NWDIR=%%~a
for %%a in ("paradise.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paradise 2 Deluxe") do set NWDIR=%%~a
for %%a in ("para2dx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Paradise Deluxe") do set NWDIR=%%~a
for %%a in ("paradlx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Parallel Turn") do set NWDIR=%%~a
for %%a in ("pturn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Parodius DA! (World, set 1)") do set NWDIR=%%~a
for %%a in ("parodius.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Party Time- Gonta the Diver II - Ganbare! Gonta!! 2 (World Release)") do set NWDIR=%%~a
for %%a in ("prtytime.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pasha Pasha 2") do set NWDIR=%%~a
for %%a in ("pasha2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pass") do set NWDIR=%%~a
for %%a in ("pass.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Passing Shot (World, 2 Players, FD1094 317-0080)") do set NWDIR=%%~a
for %%a in ("passsht.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pebble Beach - The Great Shot (JUE 950913 V0.990)") do set NWDIR=%%~a
for %%a in ("pblbeach.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Peek-a-Boo!") do set NWDIR=%%~a
for %%a in ("peekaboo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Peggle (Joystick, v1.0)") do set NWDIR=%%~a
for %%a in ("peggle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Penfan Girls - Step1. Mild Mind (set 1)") do set NWDIR=%%~a
for %%a in ("penfan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pengo (set 1 rev c)") do set NWDIR=%%~a
for %%a in ("pengo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Penguin Adventure (bootleg of MSX version)") do set NWDIR=%%~a
for %%a in ("pengadvb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Penguin Brothers (Japan)") do set NWDIR=%%~a
for %%a in ("penbros.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Penguin-Kun Wars (US)") do set NWDIR=%%~a
for %%a in ("pkunwar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Penky") do set NWDIR=%%~a
for %%a in ("penky.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pepper II (version 8)") do set NWDIR=%%~a
for %%a in ("pepper2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Perestroika Girls") do set NWDIR=%%~a
for %%a in ("perestro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Perfect Billiard") do set NWDIR=%%~a
for %%a in ("pbillrd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Performan (Japan)") do set NWDIR=%%~a
for %%a in ("perfrman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pesadelo (bootleg of Knightmare on MSX)") do set NWDIR=%%~a
for %%a in ("pesadelo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Peter Pack-Rat") do set NWDIR=%%~a
for %%a in ("peterpak.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Peter Pepper's Ice Cream Factory (DECO Cassette, set 1)") do set NWDIR=%%~a
for %%a in ("cppicf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pharaohs Match (Arcadia)") do set NWDIR=%%~a
for %%a in ("ar_pm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Phelios (Japan)") do set NWDIR=%%~a
for %%a in ("phelios.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Phoenix (Amstar)") do set NWDIR=%%~a
for %%a in ("phoenix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Photo Y2K (ver. 105)") do set NWDIR=%%~a
for %%a in ("photoy2k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Phozon (Japan)") do set NWDIR=%%~a
for %%a in ("phozon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pickin'") do set NWDIR=%%~a
for %%a in ("pickin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pig Newton (version C)") do set NWDIR=%%~a
for %%a in ("pignewt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pig Out- Dine Like a Swine! (set 1)") do set NWDIR=%%~a
for %%a in ("pigout.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pigskin 621AD (rev 1.1K 8-01-90)") do set NWDIR=%%~a
for %%a in ("pigskin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pinball Action (set 1)") do set NWDIR=%%~a
for %%a in ("pbaction.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pinbo (set 1)") do set NWDIR=%%~a
for %%a in ("pinbo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("PinBot (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_pinbt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ping Pong Masters '93") do set NWDIR=%%~a
for %%a in ("ppmast93.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pink Sweets- Ibara Sorekara (2006-04-06 MASTER VER....)") do set NWDIR=%%~a
for %%a in ("pinkswts.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pioneer Balloon") do set NWDIR=%%~a
for %%a in ("pballoon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pipe Dream (World)") do set NWDIR=%%~a
for %%a in ("pipedrm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pipeline") do set NWDIR=%%~a
for %%a in ("pipeline.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pipi & Bibis - Whoopee!! (Z80 sound cpu, set 1)") do set NWDIR=%%~a
for %%a in ("pipibibs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pirate Ship Higemaru") do set NWDIR=%%~a
for %%a in ("higemaru.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pirate Treasure") do set NWDIR=%%~a
for %%a in ("piratetr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pirates") do set NWDIR=%%~a
for %%a in ("pirates.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pisces") do set NWDIR=%%~a
for %%a in ("pisces.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pistol Daimyo no Bouken (Japan)") do set NWDIR=%%~a
for %%a in ("pistoldm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pit & Run - F-1 Race (set 1)") do set NWDIR=%%~a
for %%a in ("pitnrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pit Boss Megatouch II (9255-10-01 ROG, Standard version)") do set NWDIR=%%~a
for %%a in ("megat2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pit Fighter (rev 9)") do set NWDIR=%%~a
for %%a in ("pitfight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pitfall II (315-5093)") do set NWDIR=%%~a
for %%a in ("pitfall2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("PK Scramble") do set NWDIR=%%~a
for %%a in ("pkscram.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Planet Probe (prototype-)") do set NWDIR=%%~a
for %%a in ("pprobe.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Plasma Sword- Nightmare of Bilstein (USA 980316)") do set NWDIR=%%~a
for %%a in ("plsmaswd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Play Girls") do set NWDIR=%%~a
for %%a in ("plgirls.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Play Girls 2") do set NWDIR=%%~a
for %%a in ("plgirls2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("PlayBall! (prototype)") do set NWDIR=%%~a
for %%a in ("playball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (BE0014) Blackjack") do set NWDIR=%%~a
for %%a in ("pebe0014.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (KE1012) Keno") do set NWDIR=%%~a
for %%a in ("peke1012.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (PS0014) Super Joker Slots") do set NWDIR=%%~a
for %%a in ("peps0014.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (PS0021) Red White & Blue Slots") do set NWDIR=%%~a
for %%a in ("peps0021.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (PS0042) Double Diamond Slots") do set NWDIR=%%~a
for %%a in ("peps0042.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (PS0308) Double Jackpot Slots") do set NWDIR=%%~a
for %%a in ("peps0308.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (PS0615) Chaos Slots") do set NWDIR=%%~a
for %%a in ("peps0615.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (PS0716) River Gambler Slots") do set NWDIR=%%~a
for %%a in ("peps0716.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (Set001) Set Chip") do set NWDIR=%%~a
for %%a in ("peset001.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (Set038) Set Chip") do set NWDIR=%%~a
for %%a in ("peset038.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (X000838S+XS000002) Five Times Pay Slots") do set NWDIR=%%~a
for %%a in ("pex0838s.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (X000998S+XS000006) Triple Triple Diamond Slots") do set NWDIR=%%~a
for %%a in ("pex0998s.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Player's Edge Plus (X001087S+XS000006) Double Double Diamond Slots") do set NWDIR=%%~a
for %%a in ("pex1087s.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pleasure Goal - Futsal - 5 on 5 Mini Soccer (NGM-219)") do set NWDIR=%%~a
for %%a in ("pgoal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pleiads (Tehkan)") do set NWDIR=%%~a
for %%a in ("pleiads.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Plotting (World set 1)") do set NWDIR=%%~a
for %%a in ("plotting.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Plump Pop (Japan)") do set NWDIR=%%~a
for %%a in ("plumppop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Plus Alpha") do set NWDIR=%%~a
for %%a in ("plusalph.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pnickies (Japan 940608)") do set NWDIR=%%~a
for %%a in ("pnickj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pochi and Nyaa") do set NWDIR=%%~a
for %%a in ("pnyaa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pocket Gal (Japan)") do set NWDIR=%%~a
for %%a in ("pcktgal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pocket Gal Deluxe (Euro v3.00)") do set NWDIR=%%~a
for %%a in ("pktgaldx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pocket Racer (Japan, PKR1-VER.B)") do set NWDIR=%%~a
for %%a in ("pocketrc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Point Blank (World, GN2 Rev B)") do set NWDIR=%%~a
for %%a in ("ptblank.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Point Blank 2 (GNB5-VER.A)") do set NWDIR=%%~a
for %%a in ("ptblank2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Poitto!") do set NWDIR=%%~a
for %%a in ("poitto.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Poizone") do set NWDIR=%%~a
for %%a in ("poizone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Poka Poka Satan (Japan)") do set NWDIR=%%~a
for %%a in ("ppsatan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Poke Champ") do set NWDIR=%%~a
for %%a in ("pokechmp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pokio (Dutch, Game Card 95-750-278)") do set NWDIR=%%~a
for %%a in ("pokio.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Polaris (Latest version)") do set NWDIR=%%~a
for %%a in ("polaris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pole Position (World)") do set NWDIR=%%~a
for %%a in ("polepos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pole Position II (Japan)") do set NWDIR=%%~a
for %%a in ("polepos2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Police Trainer (Rev 1.3)") do set NWDIR=%%~a
for %%a in ("policetr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pollux (set 1)") do set NWDIR=%%~a
for %%a in ("pollux.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Poly-Play") do set NWDIR=%%~a
for %%a in ("polyplay.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pong (Rev E)") do set NWDIR=%%~a
for %%a in ("pong.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pong (Rev E), no subcycles") do set NWDIR=%%~a
for %%a in ("pongf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ponpoko") do set NWDIR=%%~a
for %%a in ("ponpoko.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pontoon (Tehkan)") do set NWDIR=%%~a
for %%a in ("ponttehk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Poolshark") do set NWDIR=%%~a
for %%a in ("poolshrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pooyan") do set NWDIR=%%~a
for %%a in ("pooyan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pop Bingo") do set NWDIR=%%~a
for %%a in ("popbingo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pop Flamer (protected)") do set NWDIR=%%~a
for %%a in ("popflame.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pop 'n Bounce - Gapporin") do set NWDIR=%%~a
for %%a in ("popbounc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Popeye (revision D)") do set NWDIR=%%~a
for %%a in ("popeye.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pop'n Music 2 (ver JA-A)") do set NWDIR=%%~a
for %%a in ("popn2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pop'n Pop (Ver 2.07O 1998-02-09)") do set NWDIR=%%~a
for %%a in ("popnpop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("PoPo Bear") do set NWDIR=%%~a
for %%a in ("popobear.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Popper") do set NWDIR=%%~a
for %%a in ("popper.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pop's Pop's") do set NWDIR=%%~a
for %%a in ("popspops.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Porky") do set NWDIR=%%~a
for %%a in ("porky.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Portraits (set 1)") do set NWDIR=%%~a
for %%a in ("portrait.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Poto Poto (Japan)") do set NWDIR=%%~a
for %%a in ("potopoto.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pound for Pound (World)") do set NWDIR=%%~a
for %%a in ("poundfor.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Povar - Sobrat' Buran - Agroprom (Arcade multi-game bootleg of ZX Spectrum 'Cookie', 'Jetpac' & 'Pssst')") do set NWDIR=%%~a
for %%a in ("kok.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Balls") do set NWDIR=%%~a
for %%a in ("powerbal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Blade (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_pwbld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Drift (World, Rev A)") do set NWDIR=%%~a
for %%a in ("pdrift.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Drive") do set NWDIR=%%~a
for %%a in ("powerdrv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Instinct (USA)") do set NWDIR=%%~a
for %%a in ("powerins.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Instinct 2 (US, Ver. 94-04-08)") do set NWDIR=%%~a
for %%a in ("pwrinst2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Play") do set NWDIR=%%~a
for %%a in ("powrplay.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Spikes (World)") do set NWDIR=%%~a
for %%a in ("pspikes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Spikes II (NGM-068)") do set NWDIR=%%~a
for %%a in ("pspikes2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Power Surge") do set NWDIR=%%~a
for %%a in ("psurge.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Prebillian") do set NWDIR=%%~a
for %%a in ("pbillian.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Prehistoric Isle 2") do set NWDIR=%%~a
for %%a in ("preisle2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Prehistoric Isle in 1930 (World)") do set NWDIR=%%~a
for %%a in ("prehisle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Premier Soccer (ver EAB)") do set NWDIR=%%~a
for %%a in ("prmrsocr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pretty Soldier Sailor Moon (Ver. 95-03-22B, Europe)") do set NWDIR=%%~a
for %%a in ("sailormn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Primal Rage (version 2.3)") do set NWDIR=%%~a
for %%a in ("primrage.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Prime Goal EX (Japan, PG1-VER.A)") do set NWDIR=%%~a
for %%a in ("primglex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Princess Clara Daisakusen (J 960910 V1.000)") do set NWDIR=%%~a
for %%a in ("prikura.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pro Baseball Skill Tryout (Japan)") do set NWDIR=%%~a
for %%a in ("tryout.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pro Bowling (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cprobowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pro Soccer") do set NWDIR=%%~a
for %%a in ("prosoccr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pro Soccer (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cpsoccer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pro Sports - Bowling, Tennis, and Golf (set 1)") do set NWDIR=%%~a
for %%a in ("prosport.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pro Tennis (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cptennis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pro Wrestling (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_pwrst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Progear (USA 010117)") do set NWDIR=%%~a
for %%a in ("progear.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Progress") do set NWDIR=%%~a
for %%a in ("progress.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Prop Cycle (Rev. PR2 Ver.A)") do set NWDIR=%%~a
for %%a in ("propcycl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Psychic 5 (set 1)") do set NWDIR=%%~a
for %%a in ("psychic5.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Psychic Force (Ver 2.4O)") do set NWDIR=%%~a
for %%a in ("psyforce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Psycho Soldier (US)") do set NWDIR=%%~a
for %%a in ("psychos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Psycho-Nics Oscar (World revision 0)") do set NWDIR=%%~a
for %%a in ("oscar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Psyvariar -Medium Unit- (V2.04J)") do set NWDIR=%%~a
for %%a in ("psyvaria.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Psyvariar -Revision- (V2.04J)") do set NWDIR=%%~a
for %%a in ("psyvarrv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("PT Reach Mahjong (Japan)") do set NWDIR=%%~a
for %%a in ("ptrmj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puchi Carat (Ver 2.02O 1997-10-29)") do set NWDIR=%%~a
for %%a in ("puchicar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puck Man (Japan set 1)") do set NWDIR=%%~a
for %%a in ("puckman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puckman Pockimon (set 1)") do set NWDIR=%%~a
for %%a in ("puckpkmn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("PuLiRuLa (World)") do set NWDIR=%%~a
for %%a in ("pulirula.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pull Tabs") do set NWDIR=%%~a
for %%a in ("pulltabs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pulstar") do set NWDIR=%%~a
for %%a in ("pulstar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Punch-Out!!") do set NWDIR=%%~a
for %%a in ("punchout.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Punk Shot (US 4 Players)") do set NWDIR=%%~a
for %%a in ("punkshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pururun") do set NWDIR=%%~a
for %%a in ("pururun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pushman (Korea, set 1)") do set NWDIR=%%~a
for %%a in ("pushman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puyo Puyo (World)") do set NWDIR=%%~a
for %%a in ("puyo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puyo Puyo 2 (Japan)") do set NWDIR=%%~a
for %%a in ("puyopuy2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puyo Puyo Sun (J 961115 V0.001)") do set NWDIR=%%~a
for %%a in ("puyosun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzz Loop (Europe, v0.94)") do set NWDIR=%%~a
for %%a in ("puzzloop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzz Loop 2 (Euro 010302)") do set NWDIR=%%~a
for %%a in ("pzloop2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle & Action- Ichidant-R (World)") do set NWDIR=%%~a
for %%a in ("ichir.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle & Action- Sando-R (J 951114 V1.000)") do set NWDIR=%%~a
for %%a in ("sandor.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle & Action- Tant-R (Japan)") do set NWDIR=%%~a
for %%a in ("tantr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Bobble (Japan, B-System)") do set NWDIR=%%~a
for %%a in ("pbobble.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Bobble - Bust-A-Move (Neo-Geo) (NGM-083)") do set NWDIR=%%~a
for %%a in ("pbobblen.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Bobble 2 (Ver 2.3O 1995-07-31)") do set NWDIR=%%~a
for %%a in ("pbobble2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Bobble 2 - Bust-A-Move Again (Neo-Geo)") do set NWDIR=%%~a
for %%a in ("pbobbl2n.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Bobble 3 (Ver 2.1O 1996-09-27)") do set NWDIR=%%~a
for %%a in ("pbobble3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Bobble 4 (Ver 2.04O 1997-12-19)") do set NWDIR=%%~a
for %%a in ("pbobble4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Break") do set NWDIR=%%~a
for %%a in ("pzlbreak.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Club (Japan prototype)") do set NWDIR=%%~a
for %%a in ("puzlclub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Club (Yun Sung, set 1)") do set NWDIR=%%~a
for %%a in ("pclubys.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle De Bowling (Japan)") do set NWDIR=%%~a
for %%a in ("pzlbowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle De Pon!") do set NWDIR=%%~a
for %%a in ("puzzledp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Game Rong Rong (Europe)") do set NWDIR=%%~a
for %%a in ("rongrong.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle King (Dance & Puzzle)") do set NWDIR=%%~a
for %%a in ("puzzlekg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle King (includes bootleg of Snow Bros.)") do set NWDIR=%%~a
for %%a in ("4in1boot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Star (Sang Ho Soft)") do set NWDIR=%%~a
for %%a in ("pzlestar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Time (prototype)") do set NWDIR=%%~a
for %%a in ("pzletime.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle Uo Poko (International)") do set NWDIR=%%~a
for %%a in ("uopoko.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzle! Mushihime-Tama (2005-09-09 MASTER VER)") do set NWDIR=%%~a
for %%a in ("mushitam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzled - Joy Joy Kid (NGM-021)(NGH-021)") do set NWDIR=%%~a
for %%a in ("joyjoy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzli") do set NWDIR=%%~a
for %%a in ("puzzli.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzzli 2 (ver. 100)") do set NWDIR=%%~a
for %%a in ("puzzli2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Puzznic (World)") do set NWDIR=%%~a
for %%a in ("puzznic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pye-nage Taikai") do set NWDIR=%%~a
for %%a in ("pyenaget.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Pyramid (Dutch, Game Card 95-750-898)") do set NWDIR=%%~a
for %%a in ("pyramid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Python (Photon System)") do set NWDIR=%%~a
for %%a in ("phpython.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("QB-3 (prototype)") do set NWDIR=%%~a
for %%a in ("qb3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Qix (Rev 2)") do set NWDIR=%%~a
for %%a in ("qix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Quantum (rev 2)") do set NWDIR=%%~a
for %%a in ("quantum.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Quarterback (set 1)") do set NWDIR=%%~a
for %%a in ("quarterb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Quartet (Rev A, 8751 315-5194)") do set NWDIR=%%~a
for %%a in ("quartet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Quasar (set 1)") do set NWDIR=%%~a
for %%a in ("quasar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Quester (Japan)") do set NWDIR=%%~a
for %%a in ("quester.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Quintoon (Dutch, Game Card 95-750-243)") do set NWDIR=%%~a
for %%a in ("qntoond.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Quintoon (UK, Game Card 95-750-206)") do set NWDIR=%%~a
for %%a in ("quintoon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Qwak (prototype)") do set NWDIR=%%~a
for %%a in ("qwak.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("R.C. Pro-Am (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_rcpam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("R2D Tank") do set NWDIR=%%~a
for %%a in ("r2dtank.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rabbit (Japan)") do set NWDIR=%%~a
for %%a in ("rabbit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rabio Lepus (Japan)") do set NWDIR=%%~a
for %%a in ("rabiolep.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Raccoon World") do set NWDIR=%%~a
for %%a in ("raccoon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Race Drivin' (cockpit, rev 5)") do set NWDIR=%%~a
for %%a in ("racedriv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Racing Beat (World)") do set NWDIR=%%~a
for %%a in ("racingb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Racing Hero (FD1094 317-0144)") do set NWDIR=%%~a
for %%a in ("rachero.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rack + Roll") do set NWDIR=%%~a
for %%a in ("racknrol.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rack 'em Up (program code L)") do set NWDIR=%%~a
for %%a in ("rackemup.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rad Mobile (World)") do set NWDIR=%%~a
for %%a in ("radm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rad Racer (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_radrc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rad Racer II (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_radr2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rad Rally (World)") do set NWDIR=%%~a
for %%a in ("radr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Radar Scope") do set NWDIR=%%~a
for %%a in ("radarscp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Radar Zone") do set NWDIR=%%~a
for %%a in ("radarzon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Radiant Silvergun (JUET 980523 V1.000)") do set NWDIR=%%~a
for %%a in ("rsgun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Radical Radial") do set NWDIR=%%~a
for %%a in ("radrad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Radikal Bikers (Version 2.02)") do set NWDIR=%%~a
for %%a in ("radikalb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rafflesia (315-5162)") do set NWDIR=%%~a
for %%a in ("raflesia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rage of the Dragons (NGM-264-)") do set NWDIR=%%~a
for %%a in ("rotd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ragnagard - Shin-Oh-Ken") do set NWDIR=%%~a
for %%a in ("ragnagrd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Raiden (set 1)") do set NWDIR=%%~a
for %%a in ("raiden.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Raiden Fighters (Japan set 1)") do set NWDIR=%%~a
for %%a in ("rdft.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Raiden Fighters 2 - Operation Hell Dive (Europe)") do set NWDIR=%%~a
for %%a in ("rdft2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Raiden Fighters Jet (Europe)") do set NWDIR=%%~a
for %%a in ("rfjet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Raiders") do set NWDIR=%%~a
for %%a in ("raiders.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Raiders5") do set NWDIR=%%~a
for %%a in ("raiders5.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Raiga - Strato Fighter (US)") do set NWDIR=%%~a
for %%a in ("stratof.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rail Chase (World)") do set NWDIR=%%~a
for %%a in ("rchase.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Raimais (World)") do set NWDIR=%%~a
for %%a in ("raimais.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rainbow Islands (new version)") do set NWDIR=%%~a
for %%a in ("rbisland.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rally Bike - Dash Yarou") do set NWDIR=%%~a
for %%a in ("rallybik.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rambo III (Europe)") do set NWDIR=%%~a
for %%a in ("rambo3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rampage (Rev 3, 8-27-86)") do set NWDIR=%%~a
for %%a in ("rampage.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rampage- World Tour (rev 1.3)") do set NWDIR=%%~a
for %%a in ("rmpgwt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rampart (Trackball)") do set NWDIR=%%~a
for %%a in ("rampart.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rapid Fire v1.1 (Build 239)") do set NWDIR=%%~a
for %%a in ("rapidfir.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rastan (World Rev 1)") do set NWDIR=%%~a
for %%a in ("rastan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rave Racer (Rev. RV2, World)") do set NWDIR=%%~a
for %%a in ("raveracw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ray Crisis (V2.03J)") do set NWDIR=%%~a
for %%a in ("raycris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ray Storm (Ver 2.06A)") do set NWDIR=%%~a
for %%a in ("raystorm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Razzmatazz") do set NWDIR=%%~a
for %%a in ("razmataz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Reaktor (Track & Field conversion)") do set NWDIR=%%~a
for %%a in ("reaktor.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Real Bout Fatal Fury - Real Bout Garou Densetsu (NGM-095)(NGH-095)") do set NWDIR=%%~a
for %%a in ("rbff1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers - Real Bout Garou Densetsu 2 - the newcomers (NGM-2400)") do set NWDIR=%%~a
for %%a in ("rbff2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Real Bout Fatal Fury Special - Real Bout Garou Densetsu Special") do set NWDIR=%%~a
for %%a in ("rbffspec.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Real Puncher") do set NWDIR=%%~a
for %%a in ("realpunc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Reality Tennis") do set NWDIR=%%~a
for %%a in ("rltennis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Recalhorn (Ver 1.42J 1994-5-11) (Prototype)") do set NWDIR=%%~a
for %%a in ("recalh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Recordbreaker (World)") do set NWDIR=%%~a
for %%a in ("recordbr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Red Alert") do set NWDIR=%%~a
for %%a in ("redalert.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Red Baron (Revised Hardware)") do set NWDIR=%%~a
for %%a in ("redbaron.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Red Clash (set 1)") do set NWDIR=%%~a
for %%a in ("redclash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Red Earth (Euro 961121)") do set NWDIR=%%~a
for %%a in ("redearth.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Red Robin") do set NWDIR=%%~a
for %%a in ("redrobin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Redline Racer (2 players)") do set NWDIR=%%~a
for %%a in ("redlin2p.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Reel Fun (Version 7.03)") do set NWDIR=%%~a
for %%a in ("reelfun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Regulus (315-5033, Rev A.)") do set NWDIR=%%~a
for %%a in ("regulus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Reikai Doushi (Japan)") do set NWDIR=%%~a
for %%a in ("reikaids.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Relief Pitcher (set 1, 07 Jun 1992 - 28 May 1992)") do set NWDIR=%%~a
for %%a in ("relief.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Renegade (US)") do set NWDIR=%%~a
for %%a in ("renegade.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Repulse") do set NWDIR=%%~a
for %%a in ("repulse.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rescue") do set NWDIR=%%~a
for %%a in ("rescue.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rescue Raider (5-11-87) (non-cartridge)") do set NWDIR=%%~a
for %%a in ("rescraid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Return Of Sel Jan II (Japan, NM557)") do set NWDIR=%%~a
for %%a in ("seljan2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Return of the Invaders") do set NWDIR=%%~a
for %%a in ("retofinv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Return of the Jedi") do set NWDIR=%%~a
for %%a in ("jedi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Revolution X (Rev. 1.0 6-16-94)") do set NWDIR=%%~a
for %%a in ("revx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rezon") do set NWDIR=%%~a
for %%a in ("rezon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ribbit!") do set NWDIR=%%~a
for %%a in ("ribbit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Riddle of Pythagoras (Japan)") do set NWDIR=%%~a
for %%a in ("ridleofp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ridge Racer (Rev. RR3, World)") do set NWDIR=%%~a
for %%a in ("ridgerac.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ridge Racer 2 (Rev. RRS2, World)") do set NWDIR=%%~a
for %%a in ("ridgera2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Riding Fight (Ver 1.0O)") do set NWDIR=%%~a
for %%a in ("ridingf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Riding Hero (NGM-006)(NGH-006)") do set NWDIR=%%~a
for %%a in ("ridhero.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rim Rockin' Basketball (V2.2)") do set NWDIR=%%~a
for %%a in ("rimrockn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ring of Destruction- Slammasters II (Euro 940902)") do set NWDIR=%%~a
for %%a in ("ringdest.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ring Rage (Ver 2.3O 1992-08-09)") do set NWDIR=%%~a
for %%a in ("ringrage.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Riot") do set NWDIR=%%~a
for %%a in ("riot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Riot City (Japan)") do set NWDIR=%%~a
for %%a in ("riotcity.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ripper Ribbit (Version 2.8.4)") do set NWDIR=%%~a
for %%a in ("ripribit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rise of the Robots (prototype)") do set NWDIR=%%~a
for %%a in ("rotr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Risky Challenge") do set NWDIR=%%~a
for %%a in ("riskchal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rival Schools- United By Fate (Euro 971117)") do set NWDIR=%%~a
for %%a in ("rvschool.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("River Patrol (Orca)") do set NWDIR=%%~a
for %%a in ("rpatrol.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Road Blasters (upright, rev 4)") do set NWDIR=%%~a
for %%a in ("roadblst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Road Fighter (set 1)") do set NWDIR=%%~a
for %%a in ("roadf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Road Riot 4WD (set 1, 13 Nov 1991)") do set NWDIR=%%~a
for %%a in ("roadriot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Road Runner (rev 2)") do set NWDIR=%%~a
for %%a in ("roadrunn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("RoadWars (Arcadia, V 2.3)") do set NWDIR=%%~a
for %%a in ("ar_rdwr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Robo Army") do set NWDIR=%%~a
for %%a in ("roboarmy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Robo Wres 2001") do set NWDIR=%%~a
for %%a in ("robowres.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Robocop (World revision 4)") do set NWDIR=%%~a
for %%a in ("robocop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Robocop 2 (Euro-Asia v0.10)") do set NWDIR=%%~a
for %%a in ("robocop2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Robotron- 2084 (Solid Blue label)") do set NWDIR=%%~a
for %%a in ("robotron.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rock Climber") do set NWDIR=%%~a
for %%a in ("rockclim.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rock Duck (prototype-)") do set NWDIR=%%~a
for %%a in ("rockduck.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rock Tris") do set NWDIR=%%~a
for %%a in ("rocktris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rockin' Kats (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_rkats.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rock'n 3 (Japan)") do set NWDIR=%%~a
for %%a in ("rockn3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rock'n 4 (Japan, prototype)") do set NWDIR=%%~a
for %%a in ("rockn4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rock'n MegaSession (Japan)") do set NWDIR=%%~a
for %%a in ("rocknms.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rock'n Rage (World)") do set NWDIR=%%~a
for %%a in ("rockrage.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rock'n Tread (Japan)") do set NWDIR=%%~a
for %%a in ("rockn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rock'n Tread 2 (Japan)") do set NWDIR=%%~a
for %%a in ("rockn2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Roc'n Rope") do set NWDIR=%%~a
for %%a in ("rocnrope.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rod-Land (World)") do set NWDIR=%%~a
for %%a in ("rodland.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rohga Armor Force (Asia-Europe v5.0)") do set NWDIR=%%~a
for %%a in ("rohga.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Roller Jammer") do set NWDIR=%%~a
for %%a in ("rjammer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rollergames (US)") do set NWDIR=%%~a
for %%a in ("rollerg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rolling Thunder (rev 3)") do set NWDIR=%%~a
for %%a in ("rthunder.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rolling Thunder 2") do set NWDIR=%%~a
for %%a in ("rthun2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rompers (Japan)") do set NWDIR=%%~a
for %%a in ("rompers.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rootin' Tootin' - La-Pa-Pa (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("clapapa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rough Racer (Japan, Floppy Based, FD1094 317-0058-06b)") do set NWDIR=%%~a
for %%a in ("roughrac.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rougien") do set NWDIR=%%~a
for %%a in ("rougien.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Round Up 5 - Super Delta Force") do set NWDIR=%%~a
for %%a in ("roundup5.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Round-Up") do set NWDIR=%%~a
for %%a in ("roundup.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Route 16 (set 1)") do set NWDIR=%%~a
for %%a in ("route16.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Royal Mahjong (Japan, v1.13)") do set NWDIR=%%~a
for %%a in ("royalmj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Royal Queen [BET] (Japan 841010 RQ 0-07)") do set NWDIR=%%~a
for %%a in ("royalqn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("R-Shark") do set NWDIR=%%~a
for %%a in ("rshark.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("R-Type (World)") do set NWDIR=%%~a
for %%a in ("rtype.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("R-Type II") do set NWDIR=%%~a
for %%a in ("rtype2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("R-Type Leo (World)") do set NWDIR=%%~a
for %%a in ("rtypeleo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ruleta RCI (6-players, Spanish)") do set NWDIR=%%~a
for %%a in ("rcirulet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ruleta RE-800 (v1.0)") do set NWDIR=%%~a
for %%a in ("re800v1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ruleta RE-800 (v3.0)") do set NWDIR=%%~a
for %%a in ("re800v3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ruleta RE-900") do set NWDIR=%%~a
for %%a in ("re900.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rumba Lumber") do set NWDIR=%%~a
for %%a in ("rumba.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Run and Gun (ver EAA 1993 10.8)") do set NWDIR=%%~a
for %%a in ("rungun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Run and Gun 2 (ver UAA)") do set NWDIR=%%~a
for %%a in ("rungun2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Runaway (prototype)") do set NWDIR=%%~a
for %%a in ("runaway.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rushing Heroes (ver UAB)") do set NWDIR=%%~a
for %%a in ("rushhero.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rush'n Attack (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_rnatk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rygar (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_rygar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Rygar (US set 1)") do set NWDIR=%%~a
for %%a in ("rygar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ryu Jin (Japan)") do set NWDIR=%%~a
for %%a in ("ryujin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("RyuKyu (Japan, FD1094 317-5023)") do set NWDIR=%%~a
for %%a in ("ryukyu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("S.O.S.") do set NWDIR=%%~a
for %%a in ("sosterm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("S.P.Y. - Special Project Y (World ver. N)") do set NWDIR=%%~a
for %%a in ("spy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("S.R.D. Mission") do set NWDIR=%%~a
for %%a in ("srdmissn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("S.S. Mission") do set NWDIR=%%~a
for %%a in ("ssmissin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("S.T.U.N. Runner (rev 6)") do set NWDIR=%%~a
for %%a in ("stunrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Saboten Bombers (set 1)") do set NWDIR=%%~a
for %%a in ("sabotenb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sadari") do set NWDIR=%%~a
for %%a in ("sadari.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Safari (set 1)") do set NWDIR=%%~a
for %%a in ("safari.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Saint Dragon (set 1)") do set NWDIR=%%~a
for %%a in ("stdragon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sakura Taisen - Hanagumi Taisen Columns (J 971007 V1.010)") do set NWDIR=%%~a
for %%a in ("hanagumi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Salamander (version D)") do set NWDIR=%%~a
for %%a in ("salamand.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Salamander 2 (ver JAA)") do set NWDIR=%%~a
for %%a in ("salmndr2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Salary Man Champ (GCA18 VER. JAA)") do set NWDIR=%%~a
for %%a in ("salarymc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Samurai") do set NWDIR=%%~a
for %%a in ("samurai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Samurai Aces (World)") do set NWDIR=%%~a
for %%a in ("samuraia.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Samurai Nihon-Ichi (set 1)") do set NWDIR=%%~a
for %%a in ("tsamurai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Samurai Shodown - Samurai Spirits (NGM-045)") do set NWDIR=%%~a
for %%a in ("samsho.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Samurai Shodown II - Shin Samurai Spirits - Haohmaru jigokuhen (NGM-063)(NGH-063)") do set NWDIR=%%~a
for %%a in ("samsho2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Samurai Shodown III - Samurai Spirits - Zankurou Musouken (NGM-087)") do set NWDIR=%%~a
for %%a in ("samsho3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Samurai Shodown IV - Amakusa's Revenge - Samurai Spirits - Amakusa Kourin (NGM-222)(NGH-222)") do set NWDIR=%%~a
for %%a in ("samsho4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Samurai Shodown V - Samurai Spirits Zero (NGM-2700)") do set NWDIR=%%~a
for %%a in ("samsho5.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Samurai Shodown V Special - Samurai Spirits Zero Special (NGM-2720)") do set NWDIR=%%~a
for %%a in ("samsh5sp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("San Francisco Rush") do set NWDIR=%%~a
for %%a in ("sfrush.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sand Scorpion") do set NWDIR=%%~a
for %%a in ("sandscrp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sankokushi (Japan)") do set NWDIR=%%~a
for %%a in ("3kokushi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SAR - Search And Rescue (World)") do set NWDIR=%%~a
for %%a in ("searchar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sarge") do set NWDIR=%%~a
for %%a in ("sarge.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Satan's Hollow (set 1)") do set NWDIR=%%~a
for %%a in ("shollow.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Saturday Night Slam Masters (World 930713)") do set NWDIR=%%~a
for %%a in ("slammast.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Saturn") do set NWDIR=%%~a
for %%a in ("saturnzi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sauro") do set NWDIR=%%~a
for %%a in ("sauro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Savage Reign - Fu'un Mokushiroku - kakutou sousei") do set NWDIR=%%~a
for %%a in ("savagere.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Schmeiser Robo (Japan)") do set NWDIR=%%~a
for %%a in ("schmeisr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Scion") do set NWDIR=%%~a
for %%a in ("scion.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Scooter Shooter") do set NWDIR=%%~a
for %%a in ("scotrsht.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Scorpion (set 1)") do set NWDIR=%%~a
for %%a in ("scorpion.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Scrabble (rev. F)") do set NWDIR=%%~a
for %%a in ("scrabble.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Scramble") do set NWDIR=%%~a
for %%a in ("scramble.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Scramble Spirits (World, Floppy Based)") do set NWDIR=%%~a
for %%a in ("sspirits.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Scrambled Egg") do set NWDIR=%%~a
for %%a in ("scregg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Screw Loose (prototype)") do set NWDIR=%%~a
for %%a in ("screwloo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Scrum Try (DECO Cassette, set 1)") do set NWDIR=%%~a
for %%a in ("cscrtry.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Scud Hammer") do set NWDIR=%%~a
for %%a in ("scudhamm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SD Fighters (Korea)") do set NWDIR=%%~a
for %%a in ("sdfight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SD Gundam Neo Battling (Japan)") do set NWDIR=%%~a
for %%a in ("neobattl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SD Gundam Psycho Salamander no Kyoui") do set NWDIR=%%~a
for %%a in ("sdgndmps.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SDI - Strategic Defense Initiative (Japan, old, System 16A, FD1089B 317-0027)") do set NWDIR=%%~a
for %%a in ("sdi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sea Bass Fishing (JUET 971110 V0.001)") do set NWDIR=%%~a
for %%a in ("seabass.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sea Battle (set 1)") do set NWDIR=%%~a
for %%a in ("seabattl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sea Fighter Poseidon") do set NWDIR=%%~a
for %%a in ("sfposeid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sea Hunter Penguin") do set NWDIR=%%~a
for %%a in ("shpeng.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Search Eye") do set NWDIR=%%~a
for %%a in ("searchey.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Search Eye Plus V2.0") do set NWDIR=%%~a
for %%a in ("searchp2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Second Chance") do set NWDIR=%%~a
for %%a in ("secondch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Section Z (set 1)") do set NWDIR=%%~a
for %%a in ("sectionz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("See See Find Out") do set NWDIR=%%~a
for %%a in ("ssfindo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sega Ninja (315-5102)") do set NWDIR=%%~a
for %%a in ("seganinj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SegaSonic The Hedgehog (Japan, rev. C)") do set NWDIR=%%~a
for %%a in ("sonic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Seicross") do set NWDIR=%%~a
for %%a in ("seicross.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sel Feena") do set NWDIR=%%~a
for %%a in ("selfeena.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Selection (Version 40.02TMB, set 1)") do set NWDIR=%%~a
for %%a in ("gs4002.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sengeki Striker (Asia)") do set NWDIR=%%~a
for %%a in ("sengekis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sengoku - Sengoku Denshou (NGM-017)(NGH-017)") do set NWDIR=%%~a
for %%a in ("sengoku.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sengoku 2 - Sengoku Denshou 2") do set NWDIR=%%~a
for %%a in ("sengoku2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sengoku 3 - Sengoku Densho 2001") do set NWDIR=%%~a
for %%a in ("sengoku3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Senjyo") do set NWDIR=%%~a
for %%a in ("senjyo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sen-Know (Japan)") do set NWDIR=%%~a
for %%a in ("senknow.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Senkyu (Japan set 1)") do set NWDIR=%%~a
for %%a in ("senkyu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sente Diagnostic Cartridge") do set NWDIR=%%~a
for %%a in ("sentetst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sex Appeal (Version 6.02)") do set NWDIR=%%~a
for %%a in ("sexappl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sex Triv") do set NWDIR=%%~a
for %%a in ("sextriv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sexy Boom") do set NWDIR=%%~a
for %%a in ("sexyboom.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sexy Parodius (ver JAA)") do set NWDIR=%%~a
for %%a in ("sexyparo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SF-X") do set NWDIR=%%~a
for %%a in ("sfx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shackled (US)") do set NWDIR=%%~a
for %%a in ("shackled.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shadow Dancer (World)") do set NWDIR=%%~a
for %%a in ("shdancer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shadow Force (US Version 2)") do set NWDIR=%%~a
for %%a in ("shadfrce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shadow Warriors (World, set 1)") do set NWDIR=%%~a
for %%a in ("shadoww.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shadowland") do set NWDIR=%%~a
for %%a in ("shadowld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shanghai - The Great Wall - Shanghai Triple Threat (JUE 950623 V1.005)") do set NWDIR=%%~a
for %%a in ("shanhigw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shanghai (Japan)") do set NWDIR=%%~a
for %%a in ("shanghai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shanghai II (Japan, set 1)") do set NWDIR=%%~a
for %%a in ("shangha2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shanghai III (US)") do set NWDIR=%%~a
for %%a in ("shangha3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shanghai Kid") do set NWDIR=%%~a
for %%a in ("shangkid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shanghai Matekibuyuu") do set NWDIR=%%~a
for %%a in ("shngmtkb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shanghai Sangokuhai Tougi (Ver 2.01J)") do set NWDIR=%%~a
for %%a in ("shangtou.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shanghai Shoryu Sairin (V2.03J)") do set NWDIR=%%~a
for %%a in ("shanghss.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sharpshooter (Rev 1.9)") do set NWDIR=%%~a
for %%a in ("sshooter.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sheriff") do set NWDIR=%%~a
for %%a in ("sheriff.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shienryu (JUET 961226 V1.000)") do set NWDIR=%%~a
for %%a in ("shienryu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shikigami no Shiro (V2.03J)") do set NWDIR=%%~a
for %%a in ("shikigam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shin Nihon Pro Wrestling Toukon Retsuden 3 Arcade Edition (Japan, TR1-VER.A)") do set NWDIR=%%~a
for %%a in ("toukon3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shingen Samurai-Fighter (Japan, English)") do set NWDIR=%%~a
for %%a in ("tshingen.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shinobi (set 6, System 16A, unprotected)") do set NWDIR=%%~a
for %%a in ("shinobi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shinobi - FZ-2006 (Korean System 16 bootleg) (ISG Selection Master Type 2006)") do set NWDIR=%%~a
for %%a in ("shinfz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shinobi III (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_shnb3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shock Troopers - 2nd Squad") do set NWDIR=%%~a
for %%a in ("shocktr2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shock Troopers (set 1)") do set NWDIR=%%~a
for %%a in ("shocktro.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shocking") do set NWDIR=%%~a
for %%a in ("shocking.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shogun Warriors (World)") do set NWDIR=%%~a
for %%a in ("shogwarr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shoot Out (US)") do set NWDIR=%%~a
for %%a in ("shootout.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shoot the Bull") do set NWDIR=%%~a
for %%a in ("shootbul.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shooting Gallery") do set NWDIR=%%~a
for %%a in ("shootgal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shot Rider") do set NWDIR=%%~a
for %%a in ("shtrider.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Show Hand (Italy)") do set NWDIR=%%~a
for %%a in ("showhand.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shrike Avenger (prototype)") do set NWDIR=%%~a
for %%a in ("shrike.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shuffleboard") do set NWDIR=%%~a
for %%a in ("shuffle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shuffleshot (v1.40)") do set NWDIR=%%~a
for %%a in ("shufshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Shuuz (version 8.0)") do set NWDIR=%%~a
for %%a in ("shuuz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Side Arms - Hyper Dyne (World)") do set NWDIR=%%~a
for %%a in ("sidearms.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Side by Side (Ver 2.7 J)") do set NWDIR=%%~a
for %%a in ("sidebs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Side by Side 2 (Ver 2.6 A)") do set NWDIR=%%~a
for %%a in ("sidebs2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Side Pocket (World)") do set NWDIR=%%~a
for %%a in ("sidepckt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sidewinder") do set NWDIR=%%~a
for %%a in ("sidewndr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sidewinder (Arcadia, set 1, V 2.1)") do set NWDIR=%%~a
for %%a in ("ar_sdwr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Silent Dragon (World)") do set NWDIR=%%~a
for %%a in ("silentd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Silk Worm (World)") do set NWDIR=%%~a
for %%a in ("silkworm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Silver Millennium") do set NWDIR=%%~a
for %%a in ("silvmil.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Simpsons Bowling (GQ829 UAA)") do set NWDIR=%%~a
for %%a in ("simpbowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sindbad Mystery") do set NWDIR=%%~a
for %%a in ("sindbadm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sinistar (revision 3)") do set NWDIR=%%~a
for %%a in ("sinistar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Skater (DECO Cassette, Japan)") do set NWDIR=%%~a
for %%a in ("cskater.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Skimaxx") do set NWDIR=%%~a
for %%a in ("skimaxx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Skull & Crossbones (rev 5)") do set NWDIR=%%~a
for %%a in ("skullxbo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Skull Fang (World)") do set NWDIR=%%~a
for %%a in ("skullfng.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Adventure (World)") do set NWDIR=%%~a
for %%a in ("skyadvnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Alert") do set NWDIR=%%~a
for %%a in ("skyalert.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Army") do set NWDIR=%%~a
for %%a in ("skyarmy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Base") do set NWDIR=%%~a
for %%a in ("skybase.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Bumper") do set NWDIR=%%~a
for %%a in ("skybump.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Destroyer (Japan)") do set NWDIR=%%~a
for %%a in ("skydest.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Diver") do set NWDIR=%%~a
for %%a in ("skydiver.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Fox") do set NWDIR=%%~a
for %%a in ("skyfox.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Kid (new version)") do set NWDIR=%%~a
for %%a in ("skykid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Kid Deluxe (set 1)") do set NWDIR=%%~a
for %%a in ("skykiddx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Lancer") do set NWDIR=%%~a
for %%a in ("skylancr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Raider") do set NWDIR=%%~a
for %%a in ("skyraid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Skipper") do set NWDIR=%%~a
for %%a in ("skyskipr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Smasher") do set NWDIR=%%~a
for %%a in ("skysmash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sky Soldiers (US)") do set NWDIR=%%~a
for %%a in ("skysoldr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Slap Shot (Japan)") do set NWDIR=%%~a
for %%a in ("slapshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Slick Shot (V2.2)") do set NWDIR=%%~a
for %%a in ("slikshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Slip Stream (Brazil 950515)") do set NWDIR=%%~a
for %%a in ("slipstrm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Slither (set 1)") do set NWDIR=%%~a
for %%a in ("slither.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sliver") do set NWDIR=%%~a
for %%a in ("sliver.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Slots (Belgian Cash, Game Card 95-750-938)") do set NWDIR=%%~a
for %%a in ("sltblgpo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Slots (Belgian Token, Game Card 95-750-943)") do set NWDIR=%%~a
for %%a in ("sltblgtk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Slots (Dutch, Game Card 95-750-368)") do set NWDIR=%%~a
for %%a in ("slotsnl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sly Spy (US revision 3)") do set NWDIR=%%~a
for %%a in ("slyspy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Smash T.V. (rev 8.00)") do set NWDIR=%%~a
for %%a in ("smashtv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Snacks'n Jaxson") do set NWDIR=%%~a
for %%a in ("snakjack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Snake Pit") do set NWDIR=%%~a
for %%a in ("snakepit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Snap Jack") do set NWDIR=%%~a
for %%a in ("snapjack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Snapper (Korea)") do set NWDIR=%%~a
for %%a in ("snapper.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Snezhnaja Koroleva") do set NWDIR=%%~a
for %%a in ("koroleva.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SNK vs. Capcom - SVC Chaos (JAMMA PCB, set 1)") do set NWDIR=%%~a
for %%a in ("svcpcb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SNK vs. Capcom - SVC Chaos (NGM-2690)(NGH-2690)") do set NWDIR=%%~a
for %%a in ("svc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Snow Bros. - Nick & Tom (set 1)") do set NWDIR=%%~a
for %%a in ("snowbros.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Snow Bros. 2 - With New Elves - Otenki Paradise") do set NWDIR=%%~a
for %%a in ("snowbro2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Snow Brothers 3 - Magical Adventure") do set NWDIR=%%~a
for %%a in ("snowbro3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Soccer Brawl (NGM-031)") do set NWDIR=%%~a
for %%a in ("socbrawl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Soccer Superstars (ver EAA)") do set NWDIR=%%~a
for %%a in ("soccerss.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sokonuke Taisen Game (Japan)") do set NWDIR=%%~a
for %%a in ("sokonuke.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sol Divide - The Sword Of Darkness") do set NWDIR=%%~a
for %%a in ("soldivid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Solar Assault (ver UAA)") do set NWDIR=%%~a
for %%a in ("slrasslt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Solar Fox (upright)") do set NWDIR=%%~a
for %%a in ("solarfox.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Solar Jetman (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_sjetm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Soldam") do set NWDIR=%%~a
for %%a in ("soldam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Soldier Girl Amazon") do set NWDIR=%%~a
for %%a in ("amazon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Solitary Fighter (World)") do set NWDIR=%%~a
for %%a in ("solfigtr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Solomon's Key (US)") do set NWDIR=%%~a
for %%a in ("solomon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Solvalou (Japan)") do set NWDIR=%%~a
for %%a in ("solvalou.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Son Son") do set NWDIR=%%~a
for %%a in ("sonson.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sonic Blast Man (Japan)") do set NWDIR=%%~a
for %%a in ("sbm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sonic Blast Man 2 Special Turbo (SNES bootleg)") do set NWDIR=%%~a
for %%a in ("sblast2b.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sonic Boom (FD1094 317-0053)") do set NWDIR=%%~a
for %%a in ("sonicbom.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sonic The Hedgehog (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_sonic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sonic The Hedgehog 2 (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_soni2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sorcer Striker (set 1)") do set NWDIR=%%~a
for %%a in ("sstriker.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SOS") do set NWDIR=%%~a
for %%a in ("sos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sotsugyo Shousho") do set NWDIR=%%~a
for %%a in ("sotsugyo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Soukyugurentai - Terra Diver (JUET 960821 V1.000)") do set NWDIR=%%~a
for %%a in ("sokyugrt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Soul Calibur (World, SOC14-VER.C)") do set NWDIR=%%~a
for %%a in ("soulclbr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Soul Edge Ver. II (World, SO4-VER.C)") do set NWDIR=%%~a
for %%a in ("souledge.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Soutenryu (V2.07J)") do set NWDIR=%%~a
for %%a in ("soutenry.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Attack (upright set 1)") do set NWDIR=%%~a
for %%a in ("sspaceat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Attack - Head On") do set NWDIR=%%~a
for %%a in ("sspacaho.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Bomber (ver. B)") do set NWDIR=%%~a
for %%a in ("sbomber.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Chaser (set 1)") do set NWDIR=%%~a
for %%a in ("schaser.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Cruiser") do set NWDIR=%%~a
for %%a in ("spacecr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Duel") do set NWDIR=%%~a
for %%a in ("spacduel.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Dungeon") do set NWDIR=%%~a
for %%a in ("sdungeon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Encounters") do set NWDIR=%%~a
for %%a in ("spcenctr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Fever (New Ver.)") do set NWDIR=%%~a
for %%a in ("spacefev.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Fever High Splitter (set 1)") do set NWDIR=%%~a
for %%a in ("highsplt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Fighter Mark II (set 1)") do set NWDIR=%%~a
for %%a in ("spfghmk2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Force (set 1)") do set NWDIR=%%~a
for %%a in ("spcforce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Fortress (CVS)") do set NWDIR=%%~a
for %%a in ("spacefrt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Guerrilla") do set NWDIR=%%~a
for %%a in ("spaceg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Gun (World)") do set NWDIR=%%~a
for %%a in ("spacegun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Harrier (Rev A, 8751 315-5163A)") do set NWDIR=%%~a
for %%a in ("sharrier.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Invaders - Qix Silver Anniversary Edition (Ver. 2.03)") do set NWDIR=%%~a
for %%a in ("invqix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Invaders - Space Invaders M") do set NWDIR=%%~a
for %%a in ("invaders.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Invaders '95- The Attack Of Lunar Loonies (Ver 2.5O 1995-06-14)") do set NWDIR=%%~a
for %%a in ("spcinv95.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Invaders DX (US, v2.1)") do set NWDIR=%%~a
for %%a in ("spacedx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Invaders II (Midway, cocktail)") do set NWDIR=%%~a
for %%a in ("invad2ct.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Invaders Multigame (M8.03D)") do set NWDIR=%%~a
for %%a in ("invmulti.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Launcher") do set NWDIR=%%~a
for %%a in ("spacelnc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Position (Japan)") do set NWDIR=%%~a
for %%a in ("spcpostn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Raider") do set NWDIR=%%~a
for %%a in ("sraider.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Ranger (Arcadia, V 2.0)") do set NWDIR=%%~a
for %%a in ("ar_sprg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Seeker") do set NWDIR=%%~a
for %%a in ("spaceskr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Stranger") do set NWDIR=%%~a
for %%a in ("sstrangr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Tactics") do set NWDIR=%%~a
for %%a in ("stactics.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Trek (upright)") do set NWDIR=%%~a
for %%a in ("spacetrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Walk") do set NWDIR=%%~a
for %%a in ("spacwalk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Space Zap") do set NWDIR=%%~a
for %%a in ("spacezap.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spark Man (v2.0, set 1)") do set NWDIR=%%~a
for %%a in ("sparkman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sparkz (prototype)") do set NWDIR=%%~a
for %%a in ("sparkz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spatter") do set NWDIR=%%~a
for %%a in ("spatter.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Speak & Rescue") do set NWDIR=%%~a
for %%a in ("speakres.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Special Criminal Investigation (World set 1)") do set NWDIR=%%~a
for %%a in ("sci.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Special Forces") do set NWDIR=%%~a
for %%a in ("spclforc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Special Forces II") do set NWDIR=%%~a
for %%a in ("spcfrcii.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spectrum 2000 (Euro)") do set NWDIR=%%~a
for %%a in ("spec2k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Speed Ball") do set NWDIR=%%~a
for %%a in ("speedbal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Speed Ball - Contest at Neonworld (prototype)") do set NWDIR=%%~a
for %%a in ("spdball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Speed Coin (prototype)") do set NWDIR=%%~a
for %%a in ("spdcoin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Speed Racer") do set NWDIR=%%~a
for %%a in ("speedrcr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Speed Spin") do set NWDIR=%%~a
for %%a in ("speedspn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Speed Up (Version 1.20)") do set NWDIR=%%~a
for %%a in ("speedup.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spellbound") do set NWDIR=%%~a
for %%a in ("spellbnd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spelunker") do set NWDIR=%%~a
for %%a in ("spelunkr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spelunker II") do set NWDIR=%%~a
for %%a in ("spelunk2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spider-Man- The Videogame (World)") do set NWDIR=%%~a
for %%a in ("spidman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spiders (set 1)") do set NWDIR=%%~a
for %%a in ("spiders.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spiker") do set NWDIR=%%~a
for %%a in ("spiker.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spin Master - Miracle Adventure") do set NWDIR=%%~a
for %%a in ("spinmast.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spinal Breakers (World)") do set NWDIR=%%~a
for %%a in ("spinlbrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Splash! (Ver. 1.2 World)") do set NWDIR=%%~a
for %%a in ("splash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Splat!") do set NWDIR=%%~a
for %%a in ("splat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Splatter House (World new version)") do set NWDIR=%%~a
for %%a in ("splatter.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sports Authority") do set NWDIR=%%~a
for %%a in ("sprtauth.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SportTime Bowling (Arcadia, V 2.1)") do set NWDIR=%%~a
for %%a in ("ar_bowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SportTime Table Hockey (Arcadia, set 1, V 2.1)") do set NWDIR=%%~a
for %%a in ("ar_airh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spot (Arcadia, V 2.0)") do set NWDIR=%%~a
for %%a in ("ar_spot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spotty (Ver. 2.0.2)") do set NWDIR=%%~a
for %%a in ("spotty.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Springer") do set NWDIR=%%~a
for %%a in ("springer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sprint 1") do set NWDIR=%%~a
for %%a in ("sprint1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sprint 4 (set 1)") do set NWDIR=%%~a
for %%a in ("sprint4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sprint 8") do set NWDIR=%%~a
for %%a in ("sprint8.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spy Hunter") do set NWDIR=%%~a
for %%a in ("spyhunt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Spy Hunter II (rev 2)") do set NWDIR=%%~a
for %%a in ("spyhunt2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Squash (Itisa)") do set NWDIR=%%~a
for %%a in ("squaitsa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Squash (Ver. 1.0)") do set NWDIR=%%~a
for %%a in ("squash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stack Columns (World)") do set NWDIR=%%~a
for %%a in ("stkclmns.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stadium Cross (World)") do set NWDIR=%%~a
for %%a in ("scross.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stadium Hero (Japan)") do set NWDIR=%%~a
for %%a in ("stadhero.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stadium Hero '96 (World, EAJ)") do set NWDIR=%%~a
for %%a in ("stadhr96.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stagger I (Japan)") do set NWDIR=%%~a
for %%a in ("stagger1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stakes Winner - Stakes Winner - GI kinzen seiha e no michi") do set NWDIR=%%~a
for %%a in ("stakwin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stakes Winner 2") do set NWDIR=%%~a
for %%a in ("stakwin2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Star Fighter (v1)") do set NWDIR=%%~a
for %%a in ("starfigh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Star Force") do set NWDIR=%%~a
for %%a in ("starforc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Star Gladiator Episode I- Final Crusade (USA 960627)") do set NWDIR=%%~a
for %%a in ("starglad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Star Guards") do set NWDIR=%%~a
for %%a in ("stargrds.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Star Jacker (Sega)") do set NWDIR=%%~a
for %%a in ("starjack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Star Soldier- Vanishing Earth") do set NWDIR=%%~a
for %%a in ("starsldr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Star Sweep (Japan, STP1-VER.A)") do set NWDIR=%%~a
for %%a in ("starswep.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Star Trek") do set NWDIR=%%~a
for %%a in ("startrek.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Star Wars (rev 2)") do set NWDIR=%%~a
for %%a in ("starwars.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Starblade (World)") do set NWDIR=%%~a
for %%a in ("starblad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stargate") do set NWDIR=%%~a
for %%a in ("stargate.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Starship 1") do set NWDIR=%%~a
for %%a in ("starshp1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Status Black Jack (V1.0c)") do set NWDIR=%%~a
for %%a in ("statusbj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Steal See") do set NWDIR=%%~a
for %%a in ("stealsee.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Steel Force") do set NWDIR=%%~a
for %%a in ("stlforce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Steel Gunner") do set NWDIR=%%~a
for %%a in ("sgunner.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Steel Gunner 2 (US)") do set NWDIR=%%~a
for %%a in ("sgunner2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Steel Talons (rev 2)") do set NWDIR=%%~a
for %%a in ("steeltal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Steep Slope Sliders (JUET 981110 V1.000)") do set NWDIR=%%~a
for %%a in ("sss.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stinger") do set NWDIR=%%~a
for %%a in ("stinger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stocker (3-19-85)") do set NWDIR=%%~a
for %%a in ("stocker.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stompin' (4-4-86)") do set NWDIR=%%~a
for %%a in ("stompin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stone Ball (4 Players)") do set NWDIR=%%~a
for %%a in ("stonebal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Storm Blade (US)") do set NWDIR=%%~a
for %%a in ("stmblade.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Straight Flush") do set NWDIR=%%~a
for %%a in ("sflush.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strata Bowling (V3)") do set NWDIR=%%~a
for %%a in ("stratab.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strategy X") do set NWDIR=%%~a
for %%a in ("stratgyx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Streaking (set 1)") do set NWDIR=%%~a
for %%a in ("streakng.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Drivin' (prototype)") do set NWDIR=%%~a
for %%a in ("strtdriv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter (World, Analog buttons)") do set NWDIR=%%~a
for %%a in ("sf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter Alpha 2 (Euro 960229)") do set NWDIR=%%~a
for %%a in ("sfa2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter Alpha 3 (Euro 980904)") do set NWDIR=%%~a
for %%a in ("sfa3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter Alpha- Warriors' Dreams (Euro 950727)") do set NWDIR=%%~a
for %%a in ("sfa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter EX (Euro 961219)") do set NWDIR=%%~a
for %%a in ("sfex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter EX Plus (USA 970407)") do set NWDIR=%%~a
for %%a in ("sfexp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter EX2 (USA 980526)") do set NWDIR=%%~a
for %%a in ("sfex2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter EX2 Plus (USA 990611)") do set NWDIR=%%~a
for %%a in ("sfex2p.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter II'- Champion Edition (World 920513)") do set NWDIR=%%~a
for %%a in ("sf2ce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter II'- Hyper Fighting (World 921209)") do set NWDIR=%%~a
for %%a in ("sf2hf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter II- The World Warrior (World 910522)") do set NWDIR=%%~a
for %%a in ("sf2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter III 2nd Impact- Giant Attack (USA 970930)") do set NWDIR=%%~a
for %%a in ("sfiii2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter III 3rd Strike- Fight for the Future (Euro 990608)") do set NWDIR=%%~a
for %%a in ("sfiii3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter III- New Generation (Euro 970204)") do set NWDIR=%%~a
for %%a in ("sfiii.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter Zero 2 Alpha (Asia 960826)") do set NWDIR=%%~a
for %%a in ("sfz2al.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Fighter- The Movie (v1.12)") do set NWDIR=%%~a
for %%a in ("sftm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Football (11-12-86)") do set NWDIR=%%~a
for %%a in ("sfootbal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Games II (Revision 7C)") do set NWDIR=%%~a
for %%a in ("streetg2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Heat") do set NWDIR=%%~a
for %%a in ("strtheat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Hoop - Street Slam - Dunk Dream (DEM-004) (DEH-004)") do set NWDIR=%%~a
for %%a in ("strhoop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Street Smart (US version 2)") do set NWDIR=%%~a
for %%a in ("streetsm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Streets of Rage II (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_sor2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strength & Skill") do set NWDIR=%%~a
for %%a in ("strnskil.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strider (USA, B-Board 89624B-2)") do set NWDIR=%%~a
for %%a in ("strider.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strider 2 (USA 991213)") do set NWDIR=%%~a
for %%a in ("strider2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strike Bowling") do set NWDIR=%%~a
for %%a in ("sbowling.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strike Fighter (World)") do set NWDIR=%%~a
for %%a in ("strkfgtr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strike Force (rev 1 02-25-91)") do set NWDIR=%%~a
for %%a in ("strkforc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strike Gunner S.T.G") do set NWDIR=%%~a
for %%a in ("stg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strike Zone Baseball") do set NWDIR=%%~a
for %%a in ("strkzone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strikers 1945 (World)") do set NWDIR=%%~a
for %%a in ("s1945.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strikers 1945 II") do set NWDIR=%%~a
for %%a in ("s1945ii.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strikers 1945 III (World) - Strikers 1999 (Japan)") do set NWDIR=%%~a
for %%a in ("s1945iii.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Strikers 1945 Plus") do set NWDIR=%%~a
for %%a in ("s1945p.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Stunt Air") do set NWDIR=%%~a
for %%a in ("stuntair.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Submarine (Sigma)") do set NWDIR=%%~a
for %%a in ("sub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Subs") do set NWDIR=%%~a
for %%a in ("subs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Success Joe (World)") do set NWDIR=%%~a
for %%a in ("scessjoe.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Suiko Enbu - Outlaws of the Lost Dynasty (JUETL 950314 V2.001)") do set NWDIR=%%~a
for %%a in ("suikoenb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sunset Riders (4 Players ver EAC)") do set NWDIR=%%~a
for %%a in ("ssriders.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sunset Riders (bootleg of Megadrive version)") do set NWDIR=%%~a
for %%a in ("srmdb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super ABC (Pac-Man multigame kit, Sep. 03 1999)") do set NWDIR=%%~a
for %%a in ("superabc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Astro Fighter (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("csuperas.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Bagman") do set NWDIR=%%~a
for %%a in ("sbagman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Baseball Double Play Home Run Derby") do set NWDIR=%%~a
for %%a in ("dblplay.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Basketball (version I, encrypted)") do set NWDIR=%%~a
for %%a in ("sbasketb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Bishi Bashi Championship (ver JAA, 2 Players)") do set NWDIR=%%~a
for %%a in ("sbishi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Bowl (Version 16.03B)") do set NWDIR=%%~a
for %%a in ("superbwl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Breakout (rev 04)") do set NWDIR=%%~a
for %%a in ("sbrkout.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Bubble 2003 (World, Ver 1.0)") do set NWDIR=%%~a
for %%a in ("sb2003.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Bug") do set NWDIR=%%~a
for %%a in ("superbug.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Burger Time (World, set 1)") do set NWDIR=%%~a
for %%a in ("supbtime.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super C (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_suprc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Champion Baseball (US)") do set NWDIR=%%~a
for %%a in ("sbasebal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Chase - Criminal Termination (World)") do set NWDIR=%%~a
for %%a in ("superchs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Cobra") do set NWDIR=%%~a
for %%a in ("scobra.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Contra") do set NWDIR=%%~a
for %%a in ("scontra.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Cross II (Japan, set 1)") do set NWDIR=%%~a
for %%a in ("sprcros2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Crowns Golf (Japan)") do set NWDIR=%%~a
for %%a in ("suprgolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Cup Finals (Ver 2.2O 1994-01-13)") do set NWDIR=%%~a
for %%a in ("scfinals.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Derby (v.07.03)") do set NWDIR=%%~a
for %%a in ("sderby.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Dodge Ball (US)") do set NWDIR=%%~a
for %%a in ("spdodgeb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Dodge Ball - Kunio no Nekketsu Toukyuu Densetsu") do set NWDIR=%%~a
for %%a in ("sdodgeb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Doubles Tennis") do set NWDIR=%%~a
for %%a in ("sdtennis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Doubles Tennis (DECO Cassette, Japan)") do set NWDIR=%%~a
for %%a in ("csdtenis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Eagle Shot") do set NWDIR=%%~a
for %%a in ("speglsht.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Football Champ (Ver 2.5O)") do set NWDIR=%%~a
for %%a in ("sfchamp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Free Kick (set 1)") do set NWDIR=%%~a
for %%a in ("sfkick.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Game III") do set NWDIR=%%~a
for %%a in ("supergm3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Game Mega Type 1") do set NWDIR=%%~a
for %%a in ("sgmt1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Gem Fighter Mini Mix (USA 970904)") do set NWDIR=%%~a
for %%a in ("sgemf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Glob") do set NWDIR=%%~a
for %%a in ("suprglob.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Hana Paradise (Japan)") do set NWDIR=%%~a
for %%a in ("hparadis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Hang-On (sitdown-upright, unprotected)") do set NWDIR=%%~a
for %%a in ("shangon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super High Impact (rev LA1 09-30-91)") do set NWDIR=%%~a
for %%a in ("shimpact.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super League (FD1094 317-0045)") do set NWDIR=%%~a
for %%a in ("suprleag.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Locomotive (Rev.A)") do set NWDIR=%%~a
for %%a in ("suprloco.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Lucky Roulette") do set NWDIR=%%~a
for %%a in ("roul.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Lup Lup Puzzle - Zhuan Zhuan Puzzle (version 4.0 - 990518)") do set NWDIR=%%~a
for %%a in ("suplup.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Mario Bros. (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_smb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Mario Bros. 2 (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_smb2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Mario Bros. 3 (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_smb3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Model") do set NWDIR=%%~a
for %%a in ("supmodel.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Monaco GP (World, Rev B, FD1094 317-0126a)") do set NWDIR=%%~a
for %%a in ("smgp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Mouse") do set NWDIR=%%~a
for %%a in ("suprmous.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Othello") do set NWDIR=%%~a
for %%a in ("sothello.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Pac-Man") do set NWDIR=%%~a
for %%a in ("superpac.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Pang (World 900914)") do set NWDIR=%%~a
for %%a in ("spang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Pinball Action (US)") do set NWDIR=%%~a
for %%a in ("spbactn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Poker (Version 10.19S)") do set NWDIR=%%~a
for %%a in ("suprpokr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Punch-Out!!") do set NWDIR=%%~a
for %%a in ("spnchout.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Puzzle Bobble (V2.05O)") do set NWDIR=%%~a
for %%a in ("spuzbobl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Puzzle Fighter II Turbo (USA 960620)") do set NWDIR=%%~a
for %%a in ("spf2t.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Qix (World, Rev 2)") do set NWDIR=%%~a
for %%a in ("sqix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Ranger (v2.0)") do set NWDIR=%%~a
for %%a in ("sranger.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Real Darwin (World)") do set NWDIR=%%~a
for %%a in ("srdarwin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Real Mahjong P5") do set NWDIR=%%~a
for %%a in ("srmp5.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Real Mahjong Part 1 (Japan)") do set NWDIR=%%~a
for %%a in ("srmp1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Rider") do set NWDIR=%%~a
for %%a in ("suprridr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Shanghai Dragon's Eye (Japan)") do set NWDIR=%%~a
for %%a in ("sshangha.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Shot") do set NWDIR=%%~a
for %%a in ("sshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Sidekicks - Tokuten Ou") do set NWDIR=%%~a
for %%a in ("ssideki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Sidekicks 2 - The World Championship - Tokuten Ou 2 - real fight football (NGM-061)(NGH-061)") do set NWDIR=%%~a
for %%a in ("ssideki2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Sidekicks 3 - The Next Glory - Tokuten Ou 3 - eikou e no michi") do set NWDIR=%%~a
for %%a in ("ssideki3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Slam (set 1)") do set NWDIR=%%~a
for %%a in ("sslam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Space Invaders '91 (World, Rev 1)") do set NWDIR=%%~a
for %%a in ("ssi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Spacefortress Macross - Chou-Jikuu Yousai Macross") do set NWDIR=%%~a
for %%a in ("macross.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Spacefortress Macross II - Chou-Jikuu Yousai Macross II") do set NWDIR=%%~a
for %%a in ("macross2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Speed Race") do set NWDIR=%%~a
for %%a in ("sspeedr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Speed Race Junior (Japan)") do set NWDIR=%%~a
for %%a in ("ssrj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Sprint (rev 4)") do set NWDIR=%%~a
for %%a in ("ssprint.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Stingray (Japan)") do set NWDIR=%%~a
for %%a in ("sstingry.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Street Fighter II - The New Challengers (bootleg of Japanese MegaDrive version)") do set NWDIR=%%~a
for %%a in ("ssf2mdb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Street Fighter II Turbo (World 940223)") do set NWDIR=%%~a
for %%a in ("ssf2t.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Street Fighter II- The New Challengers (World 930911)") do set NWDIR=%%~a
for %%a in ("ssf2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Strike Bowling") do set NWDIR=%%~a
for %%a in ("sstrike.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Tank") do set NWDIR=%%~a
for %%a in ("supertnk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Ten V8.3") do set NWDIR=%%~a
for %%a in ("superten.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Toffy") do set NWDIR=%%~a
for %%a in ("stoffy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Trio") do set NWDIR=%%~a
for %%a in ("suprtrio.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Twenty One") do set NWDIR=%%~a
for %%a in ("super21.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Visual Football- European Sega Cup") do set NWDIR=%%~a
for %%a in ("svf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Volleyball (Japan)") do set NWDIR=%%~a
for %%a in ("svolley.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super Wing") do set NWDIR=%%~a
for %%a in ("superwng.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super World Court (World)") do set NWDIR=%%~a
for %%a in ("swcourt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super World Stadium (Japan)") do set NWDIR=%%~a
for %%a in ("sws.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super World Stadium '92 (Japan)") do set NWDIR=%%~a
for %%a in ("sws92.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super World Stadium '93 (Japan)") do set NWDIR=%%~a
for %%a in ("sws93.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super World Stadium '95 (Japan)") do set NWDIR=%%~a
for %%a in ("sws95.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super World Stadium '96 (Japan)") do set NWDIR=%%~a
for %%a in ("sws96.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super World Stadium '97 (Japan)") do set NWDIR=%%~a
for %%a in ("sws97.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super World Stadium '98 (Japan, SS81-VER.A)") do set NWDIR=%%~a
for %%a in ("sws98.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super World Stadium '99 (Japan, SS91-VER.A3)") do set NWDIR=%%~a
for %%a in ("sws99.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Superbike") do set NWDIR=%%~a
for %%a in ("superbik.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Superior Soldiers (US)") do set NWDIR=%%~a
for %%a in ("ssoldier.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Superman (World)") do set NWDIR=%%~a
for %%a in ("superman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Super-X (NTC)") do set NWDIR=%%~a
for %%a in ("superx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Sure Shot") do set NWDIR=%%~a
for %%a in ("sureshot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Surf Planet (Version 4.1)") do set NWDIR=%%~a
for %%a in ("surfplnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Surprise Attack (World ver. K)") do set NWDIR=%%~a
for %%a in ("suratk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Survival") do set NWDIR=%%~a
for %%a in ("survival.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Survival Arts (World)") do set NWDIR=%%~a
for %%a in ("survarts.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Suzuka 8 Hours (World)") do set NWDIR=%%~a
for %%a in ("suzuka8h.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Suzuka 8 Hours 2 (World)") do set NWDIR=%%~a
for %%a in ("suzuk8h2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SWAT (315-5048)") do set NWDIR=%%~a
for %%a in ("swat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("SWAT Police") do set NWDIR=%%~a
for %%a in ("swatpolc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Swimmer (set 1)") do set NWDIR=%%~a
for %%a in ("swimmer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Swinging Singles") do set NWDIR=%%~a
for %%a in ("ssingles.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Syusse Oozumou (Japan)") do set NWDIR=%%~a
for %%a in ("ssozumo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Syvalion (Japan)") do set NWDIR=%%~a
for %%a in ("syvalion.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("T.N.K III (US)") do set NWDIR=%%~a
for %%a in ("tnk3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tac-Scan") do set NWDIR=%%~a
for %%a in ("tacscan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tactician (set 1)") do set NWDIR=%%~a
for %%a in ("tactcian.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Taihou de Doboon") do set NWDIR=%%~a
for %%a in ("tdoboon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tail to Nose - Great Championship") do set NWDIR=%%~a
for %%a in ("tail2nos.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Taisen Hot Gimmick 4 Ever (Japan)") do set NWDIR=%%~a
for %%a in ("hotgm4ev.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Taisen Puzzle-dama (ver JAA)") do set NWDIR=%%~a
for %%a in ("puzldama.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Taisen Tanto-R Sashissu!! (J 980216 V1.000)") do set NWDIR=%%~a
for %%a in ("sasissu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Taisen Tokkae-dama (ver JAA)") do set NWDIR=%%~a
for %%a in ("tokkae.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Taito Cup Finals (Ver 1.0O 1993-02-28)") do set NWDIR=%%~a
for %%a in ("cupfinal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Taito Power Goal (Ver 2.5O 1994-11-03)") do set NWDIR=%%~a
for %%a in ("pwrgoal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Talbot") do set NWDIR=%%~a
for %%a in ("talbot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tang Tang (ver. 0526, 26-05-2000)") do set NWDIR=%%~a
for %%a in ("tangtang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tank 8 (set 1)") do set NWDIR=%%~a
for %%a in ("tank8.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tank Battle (prototype rev. 4-21-92)") do set NWDIR=%%~a
for %%a in ("tankbatl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tank Busters") do set NWDIR=%%~a
for %%a in ("tankbust.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tank Force (US, 2 Player)") do set NWDIR=%%~a
for %%a in ("tankfrce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tao Taido (set 1)") do set NWDIR=%%~a
for %%a in ("taotaido.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tap a Tune") do set NWDIR=%%~a
for %%a in ("tapatune.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tapper (Budweiser, set 1)") do set NWDIR=%%~a
for %%a in ("tapper.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Target Ball (Nude)") do set NWDIR=%%~a
for %%a in ("tgtball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Target Hits (ver 1.1)") do set NWDIR=%%~a
for %%a in ("targeth.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Target Panic") do set NWDIR=%%~a
for %%a in ("tgtpanic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Task Force Harrier") do set NWDIR=%%~a
for %%a in ("tharrier.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tattoo Assassins (US prototype)") do set NWDIR=%%~a
for %%a in ("tattass.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Taxi Driver") do set NWDIR=%%~a
for %%a in ("taxidriv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tazz-Mania (set 1)") do set NWDIR=%%~a
for %%a in ("tazmania.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tech Romancer (Euro 980914)") do set NWDIR=%%~a
for %%a in ("techromn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tecmo Bowl (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_tbowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tecmo Bowl (World)") do set NWDIR=%%~a
for %%a in ("tbowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tecmo World Cup (Mega Play)") do set NWDIR=%%~a
for %%a in ("mp_twc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tecmo World Cup '90 (World)") do set NWDIR=%%~a
for %%a in ("wc90.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tecmo World Cup '98 (JUET 980410 V1.000)") do set NWDIR=%%~a
for %%a in ("twcup98.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tecmo World Cup Millennium (Japan)") do set NWDIR=%%~a
for %%a in ("tecmowcm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tecmo World Soccer '96") do set NWDIR=%%~a
for %%a in ("tws96.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("TeddyBoy Blues (315-5115, New Ver.)") do set NWDIR=%%~a
for %%a in ("teddybb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tee'd Off (Japan)") do set NWDIR=%%~a
for %%a in ("teedoff.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Teenage Mutant Ninja Turtles - Turtles in Time (4 Players ver UAA)") do set NWDIR=%%~a
for %%a in ("tmnt2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Teenage Mutant Ninja Turtles (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_tmnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Teenage Mutant Ninja Turtles (World 4 Players)") do set NWDIR=%%~a
for %%a in ("tmnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Teenage Mutant Ninja Turtles II- The Arcade Game (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_tmnt2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Teeter Torture (prototype)") do set NWDIR=%%~a
for %%a in ("teetert.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tehkan World Cup (set 1)") do set NWDIR=%%~a
for %%a in ("tehkanwc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Teki Paki") do set NWDIR=%%~a
for %%a in ("tekipaki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tekken (World, TE4-VER.C)") do set NWDIR=%%~a
for %%a in ("tekken.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tekken 2 Ver.B (US, TES3-VER.D)") do set NWDIR=%%~a
for %%a in ("tekken2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tekken 3 (Japan, TET1-VER.E1)") do set NWDIR=%%~a
for %%a in ("tekken3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tekken Tag Tournament (US, TEG3-VER.C1)") do set NWDIR=%%~a
for %%a in ("tektagt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tempest (rev 3, Revised Hardware)") do set NWDIR=%%~a
for %%a in ("tempest.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ten Up (compendium 17)") do set NWDIR=%%~a
for %%a in ("tenup.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tengai (World)") do set NWDIR=%%~a
for %%a in ("tengai.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tenkomori Shooting (Asia, TKM2-VER.A1)") do set NWDIR=%%~a
for %%a in ("tenkomor.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tennis (bootleg of Pro Tennis)") do set NWDIR=%%~a
for %%a in ("protennb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tennis (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_tenis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tenth Degree (prototype)") do set NWDIR=%%~a
for %%a in ("tenthdeg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Terminator 2 - Judgment Day (rev LA4 08-03-92)") do set NWDIR=%%~a
for %%a in ("term2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Terra Cresta (YM3526 set 1)") do set NWDIR=%%~a
for %%a in ("terracre.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Terra Force") do set NWDIR=%%~a
for %%a in ("terraf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Terranean (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cterrani.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Test Tape (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("ctsttape.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris (D.R. Korea)") do set NWDIR=%%~a
for %%a in ("tetrsark.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris (Japan, System E)") do set NWDIR=%%~a
for %%a in ("tetrisse.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris (Photon System)") do set NWDIR=%%~a
for %%a in ("phtetris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris (set 1)") do set NWDIR=%%~a
for %%a in ("atetris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris (set 4, Japan, System 16A, FD1094 317-0093)") do set NWDIR=%%~a
for %%a in ("tetris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris - Bloxeed (Korean System 16 bootleg) (ISG Selection Master Type 2006)") do set NWDIR=%%~a
for %%a in ("tetrbx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris Plus") do set NWDIR=%%~a
for %%a in ("tetrisp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris Plus 2 (World)") do set NWDIR=%%~a
for %%a in ("tetrisp2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris the Absolute The Grand Master 2") do set NWDIR=%%~a
for %%a in ("tgm2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tetris The Grand Master (Japan 980710)") do set NWDIR=%%~a
for %%a in ("tgmj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Adventures of Robby Roto!") do set NWDIR=%%~a
for %%a in ("robby.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Amazing Adventures of Mr. F. Lea") do set NWDIR=%%~a
for %%a in ("mrflea.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Astyanax") do set NWDIR=%%~a
for %%a in ("astyanax.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Battle-Road") do set NWDIR=%%~a
for %%a in ("battroad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Berenstain Bears in Big Paw's Cave") do set NWDIR=%%~a
for %%a in ("berenstn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Berlin Wall") do set NWDIR=%%~a
for %%a in ("berlwall.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Big Pro Wrestling!") do set NWDIR=%%~a
for %%a in ("bigprowr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Block Kuzushi (Japan)") do set NWDIR=%%~a
for %%a in ("tblkkuzu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Bounty") do set NWDIR=%%~a
for %%a in ("bounty.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Cliffhanger - Edward Randy (World ver 3)") do set NWDIR=%%~a
for %%a in ("edrandy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Combatribes (US)") do set NWDIR=%%~a
for %%a in ("ctribe.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Crystal of Kings") do set NWDIR=%%~a
for %%a in ("crysking.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Dealer") do set NWDIR=%%~a
for %%a in ("dealer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Deep (Japan)") do set NWDIR=%%~a
for %%a in ("thedeep.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Electric Yo-Yo (set 1)") do set NWDIR=%%~a
for %%a in ("elecyoyo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Empire Strikes Back") do set NWDIR=%%~a
for %%a in ("esb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The End") do set NWDIR=%%~a
for %%a in ("theend.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The FairyLand Story") do set NWDIR=%%~a
for %%a in ("flstory.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Final Round (version M)") do set NWDIR=%%~a
for %%a in ("fround.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The First Funky Fighter (set 1)") do set NWDIR=%%~a
for %%a in ("funkyfig.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Game Paradise - Master of Shooting! - Game Tengoku - The Game Paradise") do set NWDIR=%%~a
for %%a in ("gametngk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Gladiator - Road of the Sword - Shen Jian (M68k label V101) (ARM label V107, ROM 06-06-03 SHEN JIAN V107)") do set NWDIR=%%~a
for %%a in ("theglad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Goonies (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_goons.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The History of Martial Arts") do set NWDIR=%%~a
for %%a in ("histryma.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Invaders") do set NWDIR=%%~a
for %%a in ("tinv2650.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Irritating Maze - Ultra Denryu Iraira Bou") do set NWDIR=%%~a
for %%a in ("irrmaze.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Karate Tournament") do set NWDIR=%%~a
for %%a in ("karatour.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Killing Blade (ver. 109, Chinese Board)") do set NWDIR=%%~a
for %%a in ("killbld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Killing Blade Plus (China, ver. 300)") do set NWDIR=%%~a
for %%a in ("killbldp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Dragons (World 910805)") do set NWDIR=%%~a
for %%a in ("kod.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters 2000 (NGM-2570) (NGH-2570)") do set NWDIR=%%~a
for %%a in ("kof2000.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters 2001 (NGM-262-)") do set NWDIR=%%~a
for %%a in ("kof2001.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters 2002 (NGM-2650)(NGH-2650)") do set NWDIR=%%~a
for %%a in ("kof2002.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters 2003 (Japan, JAMMA PCB)") do set NWDIR=%%~a
for %%a in ("kf2k3pcb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters 2003 (NGM-2710)") do set NWDIR=%%~a
for %%a in ("kof2003.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters '94 (NGM-055)(NGH-055)") do set NWDIR=%%~a
for %%a in ("kof94.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters '95 (NGM-084)") do set NWDIR=%%~a
for %%a in ("kof95.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters '96 (NGM-214)") do set NWDIR=%%~a
for %%a in ("kof96.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters '97 (NGM-2320)") do set NWDIR=%%~a
for %%a in ("kof97.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters '98 - The Slugfest - King of Fighters '98 - dream match never ends (NGM-2420)") do set NWDIR=%%~a
for %%a in ("kof98.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The King of Fighters '99 - Millennium Battle (NGM-2510)") do set NWDIR=%%~a
for %%a in ("kof99.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Last Blade - Bakumatsu Roman - Gekka no Kenshi (NGM-2340)") do set NWDIR=%%~a
for %%a in ("lastblad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Last Blade 2 - Bakumatsu Roman - Dai Ni Maku Gekka no Kenshi (NGM-2430)(NGH-2430)") do set NWDIR=%%~a
for %%a in ("lastbld2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Last Day (set 1)") do set NWDIR=%%~a
for %%a in ("lastday.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Last Starfighter (prototype)") do set NWDIR=%%~a
for %%a in ("laststar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Legend of Kage") do set NWDIR=%%~a
for %%a in ("lkage.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Legend of Silkroad") do set NWDIR=%%~a
for %%a in ("silkroad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Lost Castle In Darkmist") do set NWDIR=%%~a
for %%a in ("darkmist.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Main Event (4 Players ver. Y)") do set NWDIR=%%~a
for %%a in ("mainevt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Masters of Kin") do set NWDIR=%%~a
for %%a in ("mastkin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The NewZealand Story (World, new version) (newer PCB)") do set NWDIR=%%~a
for %%a in ("tnzs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Next Space (set 1)") do set NWDIR=%%~a
for %%a in ("tnextspc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Ninja Kids (World)") do set NWDIR=%%~a
for %%a in ("ninjak.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Ninja Warriors (World)") do set NWDIR=%%~a
for %%a in ("ninjaw.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Outfoxies (World, OU2)") do set NWDIR=%%~a
for %%a in ("outfxies.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Percussor") do set NWDIR=%%~a
for %%a in ("percuss.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Pit") do set NWDIR=%%~a
for %%a in ("thepit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Punisher (World 930422)") do set NWDIR=%%~a
for %%a in ("punisher.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Real Ghostbusters (US 2 Players, revision 2)") do set NWDIR=%%~a
for %%a in ("ghostb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Return of Ishtar") do set NWDIR=%%~a
for %%a in ("roishtar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Return of Lady Frog (set 1)") do set NWDIR=%%~a
for %%a in ("roldfrog.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Simpsons (4 Players World, set 1)") do set NWDIR=%%~a
for %%a in ("simpsons.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Speed Rumbler (set 1)") do set NWDIR=%%~a
for %%a in ("srumbler.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Super Spy (NGM-011)(NGH-011)") do set NWDIR=%%~a
for %%a in ("superspy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Three Stooges In Brides Is Brides") do set NWDIR=%%~a
for %%a in ("3stooges.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Tin Star (set 1)") do set NWDIR=%%~a
for %%a in ("tinstar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Tower of Druaga (New Ver.)") do set NWDIR=%%~a
for %%a in ("todruaga.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("The Ultimate 11 - The SNK Football Championship - Tokuten Ou - Honoo no Libero") do set NWDIR=%%~a
for %%a in ("ssideki4.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thrash Rally (ALM-003)(ALH-003)") do set NWDIR=%%~a
for %%a in ("trally.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Three Wonders (World 910520)") do set NWDIR=%%~a
for %%a in ("3wonders.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thrill Drive (JAE)") do set NWDIR=%%~a
for %%a in ("thrilld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder & Lightning") do set NWDIR=%%~a
for %%a in ("thunderl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Blade (upright, FD1094 317-0056)") do set NWDIR=%%~a
for %%a in ("thndrbld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Ceptor") do set NWDIR=%%~a
for %%a in ("tceptor.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Cross (set 1)") do set NWDIR=%%~a
for %%a in ("thunderx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Cross II (World)") do set NWDIR=%%~a
for %%a in ("thndrx2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Dragon (9th Jan. 1992)") do set NWDIR=%%~a
for %%a in ("tdragon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Dragon 2 (9th Nov. 1993)") do set NWDIR=%%~a
for %%a in ("tdragon2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Force AC") do set NWDIR=%%~a
for %%a in ("tfrceac.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Fox (World)") do set NWDIR=%%~a
for %%a in ("thundfox.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Heroes") do set NWDIR=%%~a
for %%a in ("theroes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Hoop (Ver. 1)") do set NWDIR=%%~a
for %%a in ("thoop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Strike (set 1)") do set NWDIR=%%~a
for %%a in ("tstrike.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thunder Zone (World, Rev 1)") do set NWDIR=%%~a
for %%a in ("thndzone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Thundercade - Twin Formation") do set NWDIR=%%~a
for %%a in ("tndrcade.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("ThunderJaws (rev 3)") do set NWDIR=%%~a
for %%a in ("thunderj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tickee Tickats") do set NWDIR=%%~a
for %%a in ("tickee.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tiger Heli (US)") do set NWDIR=%%~a
for %%a in ("tigerh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tiger Road (US)") do set NWDIR=%%~a
for %%a in ("tigeroad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Timber") do set NWDIR=%%~a
for %%a in ("timber.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Time Crisis (Rev. TS2 Ver.B)") do set NWDIR=%%~a
for %%a in ("timecris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Time Fighter (Time Pilot conversion on Galaxian hardware)") do set NWDIR=%%~a
for %%a in ("timefgtr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Time Killers (v1.32)") do set NWDIR=%%~a
for %%a in ("timekill.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Time Limit") do set NWDIR=%%~a
for %%a in ("timelimt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Time Pilot") do set NWDIR=%%~a
for %%a in ("timeplt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Time Pilot '84 (set 1)") do set NWDIR=%%~a
for %%a in ("tp84.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Time Scanner (set 2, System 16B)") do set NWDIR=%%~a
for %%a in ("timescan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Time Soldiers (US Rev 3)") do set NWDIR=%%~a
for %%a in ("timesold.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Time Tunnel") do set NWDIR=%%~a
for %%a in ("timetunl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tinkle Pit (Japan)") do set NWDIR=%%~a
for %%a in ("tinklpit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Title Fight (World)") do set NWDIR=%%~a
for %%a in ("titlef.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("T-MEK (v5.1, The Warlords)") do set NWDIR=%%~a
for %%a in ("tmek.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toffy") do set NWDIR=%%~a
for %%a in ("toffy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toggle (prototype)") do set NWDIR=%%~a
for %%a in ("toggle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toki (World, set 1)") do set NWDIR=%%~a
for %%a in ("toki.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toki no Senshi - Chrono Soldier") do set NWDIR=%%~a
for %%a in ("tokisens.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tokimeki Memorial Taisen Puzzle-dama (ver JAB)") do set NWDIR=%%~a
for %%a in ("tkmmpzdm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tomahawk 777 (rev 5)") do set NWDIR=%%~a
for %%a in ("tomahawk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("TomCat (prototype)") do set NWDIR=%%~a
for %%a in ("tomcat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tondemo Crisis (Japan)") do set NWDIR=%%~a
for %%a in ("tondemo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toobin' (rev 3)") do set NWDIR=%%~a
for %%a in ("toobin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Top Gunner (Exidy)") do set NWDIR=%%~a
for %%a in ("topgunnr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Top Hunter - Roddy & Cathy (NGM-046)") do set NWDIR=%%~a
for %%a in ("tophuntr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Top Player's Golf (NGM-003)(NGH-003)") do set NWDIR=%%~a
for %%a in ("tpgolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Top Ranking Stars (Ver 2.1O 1993-05-21) (New Version)") do set NWDIR=%%~a
for %%a in ("trstar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Top Roller") do set NWDIR=%%~a
for %%a in ("toprollr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Top Secret (Exidy) (version 1.0)") do set NWDIR=%%~a
for %%a in ("topsecex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Top Shooter") do set NWDIR=%%~a
for %%a in ("topshoot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Top Speed (World)") do set NWDIR=%%~a
for %%a in ("topspeed.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toppy & Rappy") do set NWDIR=%%~a
for %%a in ("toppyrap.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toride II Adauchi Gaiden") do set NWDIR=%%~a
for %%a in ("toride2g.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tornado (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("ctornado.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tornado Baseball - Ball Park") do set NWDIR=%%~a
for %%a in ("tornbase.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Torus") do set NWDIR=%%~a
for %%a in ("torus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toryumon") do set NWDIR=%%~a
for %%a in ("toryumon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Total Carnage (rev LA1 03-10-92)") do set NWDIR=%%~a
for %%a in ("totcarn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tottemo E Jong") do set NWDIR=%%~a
for %%a in ("totmejan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("TouchDown Fever (US)") do set NWDIR=%%~a
for %%a in ("tdfever.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touche Me") do set NWDIR=%%~a
for %%a in ("toucheme.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touchmaster (v3.00 Euro)") do set NWDIR=%%~a
for %%a in ("tm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touchmaster 2000 Plus (v4.63 Standard)") do set NWDIR=%%~a
for %%a in ("tm2k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touchmaster 3000 (v5.02 Standard)") do set NWDIR=%%~a
for %%a in ("tm3k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touchmaster 4000 (v6.03 Standard)") do set NWDIR=%%~a
for %%a in ("tm4k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touchmaster 5000 (v7.10 Standard)") do set NWDIR=%%~a
for %%a in ("tm5k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touchmaster 7000 (v8.04 Standard)") do set NWDIR=%%~a
for %%a in ("tm7k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touchmaster 8000 (v9.04 Standard)") do set NWDIR=%%~a
for %%a in ("tm8k.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touchstar Bonanza (Revision 3)") do set NWDIR=%%~a
for %%a in ("bonanza.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tougenkyou (Japan 890418)") do set NWDIR=%%~a
for %%a in ("togenkyo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tough Turf (set 2, Japan, 8751 317-0104)") do set NWDIR=%%~a
for %%a in ("tturf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toukidenshou - Angel Eyes (VER. 960614)") do set NWDIR=%%~a
for %%a in ("tkdensho.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tournament Arkanoid (US)") do set NWDIR=%%~a
for %%a in ("arkatour.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tournament Pro Golf (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("cprogolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tournament Table (set 1)") do set NWDIR=%%~a
for %%a in ("tourtabl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Touryuumon (V1.1)-") do set NWDIR=%%~a
for %%a in ("touryuu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toy Land Adventure") do set NWDIR=%%~a
for %%a in ("toyland.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Toypop") do set NWDIR=%%~a
for %%a in ("toypop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Track & Field") do set NWDIR=%%~a
for %%a in ("trackfld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Track & Field (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_tkfld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tranquilizer Gun") do set NWDIR=%%~a
for %%a in ("tranqgun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Transformer") do set NWDIR=%%~a
for %%a in ("transfrm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Traverse USA - Zippy Race") do set NWDIR=%%~a
for %%a in ("travrusa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Treasure Island (DECO Cassette, set 1)") do set NWDIR=%%~a
for %%a in ("ctisland.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Treasure of the Caribbean (prototype)") do set NWDIR=%%~a
for %%a in ("totcarib.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Treble Top (39-360-070)") do set NWDIR=%%~a
for %%a in ("trebltop.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trick Trap (World-)") do set NWDIR=%%~a
for %%a in ("tricktrp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tricky Doc (set 1)") do set NWDIR=%%~a
for %%a in ("trckydoc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trio The Punch - Never Forget Me... (World)") do set NWDIR=%%~a
for %%a in ("triothep.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Triple Draw Poker") do set NWDIR=%%~a
for %%a in ("tdpgal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Triple Punch (set 1)") do set NWDIR=%%~a
for %%a in ("triplep.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tri-Sports") do set NWDIR=%%~a
for %%a in ("trisport.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trivia (Questions Series 1)") do set NWDIR=%%~a
for %%a in ("gtsers1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trivia (Questions Series 8)") do set NWDIR=%%~a
for %%a in ("gtsers8.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trivia Hangup (question set 1)") do set NWDIR=%%~a
for %%a in ("trvhang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trivia Quest") do set NWDIR=%%~a
for %%a in ("trvquest.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trivial Pursuit (New Edition) (prod. 1D)") do set NWDIR=%%~a
for %%a in ("trivialp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trivial Pursuit (Spanish)") do set NWDIR=%%~a
for %%a in ("triviaes.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trog (rev LA5 03-29-91)") do set NWDIR=%%~a
for %%a in ("trog.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trojan (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_trjan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trojan (US set 1)") do set NWDIR=%%~a
for %%a in ("trojan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tron (8-9)") do set NWDIR=%%~a
for %%a in ("tron.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Trophy Hunting - Bear & Moose V1.0") do set NWDIR=%%~a
for %%a in ("trophyh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tropical Angel") do set NWDIR=%%~a
for %%a in ("troangel.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Truxton - Tatsujin") do set NWDIR=%%~a
for %%a in ("truxton.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Truxton II - Tatsujin Oh") do set NWDIR=%%~a
for %%a in ("truxton2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tube Panic") do set NWDIR=%%~a
for %%a in ("tubep.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tugboat") do set NWDIR=%%~a
for %%a in ("tugboat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tumble Pop (World)") do set NWDIR=%%~a
for %%a in ("tumblep.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tunnel Hunt") do set NWDIR=%%~a
for %%a in ("tunhunt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Turbo Force (old revision)") do set NWDIR=%%~a
for %%a in ("turbofrc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Turbo Out Run (Out Run upgrade, FD1094 317-0118)") do set NWDIR=%%~a
for %%a in ("toutrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Turbo Sub (prototype rev. TSCA)") do set NWDIR=%%~a
for %%a in ("turbosub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Turbo Tag (prototype)") do set NWDIR=%%~a
for %%a in ("turbotag.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Turkey Hunting USA V1.0") do set NWDIR=%%~a
for %%a in ("turkhunt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Turkey Shoot") do set NWDIR=%%~a
for %%a in ("tshoot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Turret Tower") do set NWDIR=%%~a
for %%a in ("turrett.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Turtle Ship (North America)") do set NWDIR=%%~a
for %%a in ("turtship.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Turtles") do set NWDIR=%%~a
for %%a in ("turtles.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tutankham") do set NWDIR=%%~a
for %%a in ("tutankhm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Tut's Tomb") do set NWDIR=%%~a
for %%a in ("tutstomb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Action") do set NWDIR=%%~a
for %%a in ("twinactn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Adventure (World)") do set NWDIR=%%~a
for %%a in ("twinadv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Bee Yahhoo! (ver JAA)") do set NWDIR=%%~a
for %%a in ("tbyahhoo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Brats (set 1)") do set NWDIR=%%~a
for %%a in ("twinbrat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Cobra (World)") do set NWDIR=%%~a
for %%a in ("twincobr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Cobra II (Ver 2.1O 1995-11-30)") do set NWDIR=%%~a
for %%a in ("tcobra2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Eagle - Revenge Joe's Brother") do set NWDIR=%%~a
for %%a in ("twineagl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Eagle II - The Rescue Mission") do set NWDIR=%%~a
for %%a in ("twineag2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Falcons") do set NWDIR=%%~a
for %%a in ("twinfalc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Hawk (World)") do set NWDIR=%%~a
for %%a in ("twinhawk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Qix (Ver 1.0A 1995-01-17) (Prototype)") do set NWDIR=%%~a
for %%a in ("twinqix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twin Squash") do set NWDIR=%%~a
for %%a in ("twinsqua.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("TwinBee (ROM version)") do set NWDIR=%%~a
for %%a in ("twinbee.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twinkle") do set NWDIR=%%~a
for %%a in ("twinkle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twinkle Star Sprites") do set NWDIR=%%~a
for %%a in ("twinspri.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Twins (set 1)") do set NWDIR=%%~a
for %%a in ("twins.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("TX-1 (World)") do set NWDIR=%%~a
for %%a in ("tx1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("U.N. Defense Force- Earth Joker (Japan)") do set NWDIR=%%~a
for %%a in ("earthjkr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("U.N. Squadron (USA)") do set NWDIR=%%~a
for %%a in ("unsquad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("U.S. Championship V'ball (US)") do set NWDIR=%%~a
for %%a in ("vball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("U.S. Classic") do set NWDIR=%%~a
for %%a in ("usclssic.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ufo Robo Dangar (12-1-1986)") do set NWDIR=%%~a
for %%a in ("dangar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ufo Senshi Yohko Chan (MC-8123, 317-0064)") do set NWDIR=%%~a
for %%a in ("ufosensi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ultimate Mortal Kombat 3 (rev 1.2)") do set NWDIR=%%~a
for %%a in ("umk3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ultimate Tennis") do set NWDIR=%%~a
for %%a in ("ultennis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ultra Balloon") do set NWDIR=%%~a
for %%a in ("uballoon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ultra Tank") do set NWDIR=%%~a
for %%a in ("ultratnk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ultra Toukon Densetsu (Japan)") do set NWDIR=%%~a
for %%a in ("utoukond.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ultra X Weapons - Ultra Keibitai") do set NWDIR=%%~a
for %%a in ("ultrax.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ultraman (Japan)") do set NWDIR=%%~a
for %%a in ("ultraman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ultraman Club - Tatakae! Ultraman Kyoudai!!") do set NWDIR=%%~a
for %%a in ("umanclub.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Uncle Fester's Quest- The Addams Family (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_ftqst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Uncle Poo") do set NWDIR=%%~a
for %%a in ("unclepoo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Under Fire (World)") do set NWDIR=%%~a
for %%a in ("undrfire.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Undercover Cops (World)") do set NWDIR=%%~a
for %%a in ("uccops.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("UniWar S") do set NWDIR=%%~a
for %%a in ("uniwars.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("unknown fighting game 'BB' (prototype)") do set NWDIR=%%~a
for %%a in ("bbprot.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Up Scope") do set NWDIR=%%~a
for %%a in ("upscope.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Up Your Alley") do set NWDIR=%%~a
for %%a in ("upyoural.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Up'n Down (315-5030)") do set NWDIR=%%~a
for %%a in ("upndown.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("US AAF Mustang (25th May. 1990)") do set NWDIR=%%~a
for %%a in ("mustang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Us vs. Them") do set NWDIR=%%~a
for %%a in ("usvsthem.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Usagi (V2.02J)") do set NWDIR=%%~a
for %%a in ("usagi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Valkyrie No Densetsu (Japan)") do set NWDIR=%%~a
for %%a in ("valkyrie.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Valtric") do set NWDIR=%%~a
for %%a in ("valtric.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vamf x1-2 (Europe)") do set NWDIR=%%~a
for %%a in ("vamphalf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vampire Hunter 2- Darkstalkers Revenge (Japan 970929)") do set NWDIR=%%~a
for %%a in ("vhunt2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vampire Savior 2- The Lord of Vampire (Japan 970913)") do set NWDIR=%%~a
for %%a in ("vsav2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vampire Savior- The Lord of Vampire (Euro 970519)") do set NWDIR=%%~a
for %%a in ("vsav.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vandyke (Japan)") do set NWDIR=%%~a
for %%a in ("vandyke.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vanguard II") do set NWDIR=%%~a
for %%a in ("vangrd2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Van-Van Car") do set NWDIR=%%~a
for %%a in ("vanvan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vapor Trail - Hyper Offence Formation (World revision 1)") do set NWDIR=%%~a
for %%a in ("vaportra.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vapor TRX") do set NWDIR=%%~a
for %%a in ("vaportrx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Varia Metal") do set NWDIR=%%~a
for %%a in ("vmetal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Varth- Operation Thunderstorm (World 920714)") do set NWDIR=%%~a
for %%a in ("varth.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vasara") do set NWDIR=%%~a
for %%a in ("vasara.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vasara 2 (set 1)") do set NWDIR=%%~a
for %%a in ("vasara2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vastar (set 1)") do set NWDIR=%%~a
for %%a in ("vastar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vega") do set NWDIR=%%~a
for %%a in ("vega.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vegas Roulette") do set NWDIR=%%~a
for %%a in ("vroulet.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vendetta (World 4 Players ver. T)") do set NWDIR=%%~a
for %%a in ("vendetta.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Venture (version 5 set 1)") do set NWDIR=%%~a
for %%a in ("venture.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Versus Net Soccer (ver EAD)") do set NWDIR=%%~a
for %%a in ("vsnetscr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vicious Circle (prototype)") do set NWDIR=%%~a
for %%a in ("vcircle.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Victorious Nine") do set NWDIR=%%~a
for %%a in ("victnine.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Victory") do set NWDIR=%%~a
for %%a in ("victory.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Victory Road") do set NWDIR=%%~a
for %%a in ("victroad.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Video Eight Ball") do set NWDIR=%%~a
for %%a in ("8ball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Video Hustler") do set NWDIR=%%~a
for %%a in ("hustler.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Video Pinball") do set NWDIR=%%~a
for %%a in ("videopin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Video Vince and the Game Factory (prototype)") do set NWDIR=%%~a
for %%a in ("vidvince.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Viewpoint") do set NWDIR=%%~a
for %%a in ("viewpoin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vigilante (World, set 1)") do set NWDIR=%%~a
for %%a in ("vigilant.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vimana (World, set 1)") do set NWDIR=%%~a
for %%a in ("vimana.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vindicators (rev 5)") do set NWDIR=%%~a
for %%a in ("vindictr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vindicators Part II (rev 3)") do set NWDIR=%%~a
for %%a in ("vindctr2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Violence Fight (World)") do set NWDIR=%%~a
for %%a in ("viofight.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Violent Storm (ver EAC)") do set NWDIR=%%~a
for %%a in ("viostorm.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Viper") do set NWDIR=%%~a
for %%a in ("viper.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Viper Phase 1 (New Version, World)") do set NWDIR=%%~a
for %%a in ("viprp1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Virtua Bowling (World, V101XCM)") do set NWDIR=%%~a
for %%a in ("vbowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Virtua Fighter") do set NWDIR=%%~a
for %%a in ("vf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Virtua Fighter Kids (JUET 960319 V0.000)") do set NWDIR=%%~a
for %%a in ("vfkids.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Virtua Racing") do set NWDIR=%%~a
for %%a in ("vr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Virtual Mahjong 2 - My Fair Lady (J 980608 V1.000)") do set NWDIR=%%~a
for %%a in ("myfairld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vivid Dolls") do set NWDIR=%%~a
for %%a in ("vivdolls.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("V-Liner (set 1)") do set NWDIR=%%~a
for %%a in ("vliner.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Volfied (World, revision 1)") do set NWDIR=%%~a
for %%a in ("volfied.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Volley Ball (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_vball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Voltage Fighter - Gowcaizer - Choujin Gakuen Gowcaizer") do set NWDIR=%%~a
for %%a in ("gowcaizr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vortex") do set NWDIR=%%~a
for %%a in ("vortex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("VS Block Breaker (Asia)") do set NWDIR=%%~a
for %%a in ("vblokbrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("VS Gong Fight") do set NWDIR=%%~a
for %%a in ("vsgongf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Atari R.B.I. Baseball (set 1)") do set NWDIR=%%~a
for %%a in ("rbibb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Balloon Fight (set BF4 A-3)") do set NWDIR=%%~a
for %%a in ("balonfgt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. BaseBall (US, set BA E-1)") do set NWDIR=%%~a
for %%a in ("vsbball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Battle City") do set NWDIR=%%~a
for %%a in ("btlecity.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Castlevania") do set NWDIR=%%~a
for %%a in ("cstlevna.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Clu Clu Land") do set NWDIR=%%~a
for %%a in ("cluclu.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Dr. Mario") do set NWDIR=%%~a
for %%a in ("drmario.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Duck Hunt (set DH3 E)") do set NWDIR=%%~a
for %%a in ("duckhunt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Excitebike (set EB4-4 A)") do set NWDIR=%%~a
for %%a in ("excitebk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Freedom Force") do set NWDIR=%%~a
for %%a in ("vsfdf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Gradius (US, set GR E)") do set NWDIR=%%~a
for %%a in ("vsgradus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Gumshoe (set GM5)") do set NWDIR=%%~a
for %%a in ("vsgshoe.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Hogan's Alley (set HA4-1 E-1)") do set NWDIR=%%~a
for %%a in ("hogalley.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Hot Smash") do set NWDIR=%%~a
for %%a in ("hotsmash.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Ice Climber (set IC4-4 B-1)") do set NWDIR=%%~a
for %%a in ("iceclimb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Ice Climber Dual (set IC4-4 A-1)") do set NWDIR=%%~a
for %%a in ("iceclmrd.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Janshi Brandnew Stars") do set NWDIR=%%~a
for %%a in ("bnstars1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Mach Rider (Endurance Course Version)") do set NWDIR=%%~a
for %%a in ("machridr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Mighty Bomb Jack (Japan)") do set NWDIR=%%~a
for %%a in ("mightybj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Ninja Jajamaru Kun (Japan)") do set NWDIR=%%~a
for %%a in ("jajamaru.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Pinball (US, set PN4 E-1)") do set NWDIR=%%~a
for %%a in ("vspinbal.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Platoon") do set NWDIR=%%~a
for %%a in ("platoon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Raid on Bungeling Bay (RD4-2 B)") do set NWDIR=%%~a
for %%a in ("bnglngby.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Slalom") do set NWDIR=%%~a
for %%a in ("vsslalom.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Soccer (set SC4-2 A)") do set NWDIR=%%~a
for %%a in ("vssoccer.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Star Luster") do set NWDIR=%%~a
for %%a in ("starlstr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Stroke & Match Golf (Men Version, set GF4-2 F)") do set NWDIR=%%~a
for %%a in ("smgolf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Super Mario Bros. (set SM4-4 E)") do set NWDIR=%%~a
for %%a in ("suprmrio.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Super SkyKid") do set NWDIR=%%~a
for %%a in ("vsskykid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Super Xevious") do set NWDIR=%%~a
for %%a in ("supxevs.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. T.K.O. Boxing") do set NWDIR=%%~a
for %%a in ("tkoboxng.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Tennis (Japan-USA, set TE A-3)") do set NWDIR=%%~a
for %%a in ("vstennis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Tetris") do set NWDIR=%%~a
for %%a in ("vstetris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. The Goonies (set E)") do set NWDIR=%%~a
for %%a in ("goonies.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Top Gun") do set NWDIR=%%~a
for %%a in ("topgun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vs. Wrecking Crew") do set NWDIR=%%~a
for %%a in ("wrecking.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vulcan Venture (New)") do set NWDIR=%%~a
for %%a in ("vulcan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Vulgus (set 1)") do set NWDIR=%%~a
for %%a in ("vulgus.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wacko") do set NWDIR=%%~a
for %%a in ("wacko.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wai Wai Jockey Gate-In!") do set NWDIR=%%~a
for %%a in ("wwjgtin.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Waku Waku 7") do set NWDIR=%%~a
for %%a in ("wakuwak7.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wall Crash (set 1)") do set NWDIR=%%~a
for %%a in ("wallc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wall Street") do set NWDIR=%%~a
for %%a in ("wallst.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wally wo Sagase! (rev B, Japan, FD1094 317-0197B)") do set NWDIR=%%~a
for %%a in ("wwallyj.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wanted") do set NWDIR=%%~a
for %%a in ("wanted.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("War Gods (HD 10-09-1996 - Dual Resolution)") do set NWDIR=%%~a
for %%a in ("wargods.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("War of Aero - Project MEIOU") do set NWDIR=%%~a
for %%a in ("wrofaero.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("War of the Bugs or Monsterous Manouvers in a Mushroom Maze") do set NWDIR=%%~a
for %%a in ("warofbug.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wardner (World)") do set NWDIR=%%~a
for %%a in ("wardner.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Warlords") do set NWDIR=%%~a
for %%a in ("warlords.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Warp & Warp") do set NWDIR=%%~a
for %%a in ("warpwarp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Warp Speed (prototype)") do set NWDIR=%%~a
for %%a in ("warpsped.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Warrior Blade - Rastan Saga Episode III (Japan)") do set NWDIR=%%~a
for %%a in ("warriorb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Warriors of Fate (World 921031)") do set NWDIR=%%~a
for %%a in ("wof.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Water Balls") do set NWDIR=%%~a
for %%a in ("watrball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Water Match (315-5064)") do set NWDIR=%%~a
for %%a in ("wmatch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Water Ski") do set NWDIR=%%~a
for %%a in ("waterski.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wave Shark (UAB, USA v1.04)") do set NWDIR=%%~a
for %%a in ("waveshrk.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wayne Gretzky's 3D Hockey") do set NWDIR=%%~a
for %%a in ("wg3dh.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("WEC Le Mans 24 (set 1)") do set NWDIR=%%~a
for %%a in ("wecleman.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Welltris (World-, 2 players)") do set NWDIR=%%~a
for %%a in ("welltris.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wheels Runner") do set NWDIR=%%~a
for %%a in ("wheelrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Who Dunit (version 9.0)") do set NWDIR=%%~a
for %%a in ("whodunit.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wiggie Waggie") do set NWDIR=%%~a
for %%a in ("wiggie.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wild Fang - Tecmo Knight") do set NWDIR=%%~a
for %%a in ("wildfang.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wild Gunman (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_wgnmn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wild Pilot") do set NWDIR=%%~a
for %%a in ("wildplt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wild West C.O.W.-Boys of Moo Mesa (ver EAB)") do set NWDIR=%%~a
for %%a in ("moomesa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wild Western (set 1)") do set NWDIR=%%~a
for %%a in ("wwestern.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Williams Multigame") do set NWDIR=%%~a
for %%a in ("wmg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Willow (USA)") do set NWDIR=%%~a
for %%a in ("willow.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wily Tower") do set NWDIR=%%~a
for %%a in ("wilytowr.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Winding Heat (EAA, Euro v2.11)") do set NWDIR=%%~a
for %%a in ("windheat.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Windjammers - Flying Power Disc") do set NWDIR=%%~a
for %%a in ("wjammers.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wing Shooting Championship V2.00") do set NWDIR=%%~a
for %%a in ("wschamp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wink (set 1)") do set NWDIR=%%~a
for %%a in ("wink.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Winners Circle (82)") do set NWDIR=%%~a
for %%a in ("winner82.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Winning Run") do set NWDIR=%%~a
for %%a in ("winrun.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Winning Run '91 (Japan)") do set NWDIR=%%~a
for %%a in ("winrun91.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Winning Run Suzuka Grand Prix (Japan)") do set NWDIR=%%~a
for %%a in ("winrungp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Winning Spike (ver EAA)") do set NWDIR=%%~a
for %%a in ("winspike.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Winter Heat (JUET 971012 V1.000)") do set NWDIR=%%~a
for %%a in ("winterht.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wiping") do set NWDIR=%%~a
for %%a in ("wiping.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Witch") do set NWDIR=%%~a
for %%a in ("witch.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wit's (Japan)") do set NWDIR=%%~a
for %%a in ("wits.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wivern Wings") do set NWDIR=%%~a
for %%a in ("wivernwg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wiz") do set NWDIR=%%~a
for %%a in ("wiz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wiz Warz (prototype)") do set NWDIR=%%~a
for %%a in ("wizwarz.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wizard Fire (Over Sea v2.1)") do set NWDIR=%%~a
for %%a in ("wizdfire.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wolf Pack (prototype)") do set NWDIR=%%~a
for %%a in ("wolfpack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wonder Boy (set 1, 315-5177)") do set NWDIR=%%~a
for %%a in ("wboy.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wonder Boy III - Monster Lair (set 6, World, System 16B, 8751 317-0098)") do set NWDIR=%%~a
for %%a in ("wb3.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wonder Boy in Monster Land (Japan New Ver., MC-8123, 317-0043)") do set NWDIR=%%~a
for %%a in ("wbml.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wonder League '96 (Korea)") do set NWDIR=%%~a
for %%a in ("wondl96.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wonder League Star - Sok-Magicball Fighting (Korea)") do set NWDIR=%%~a
for %%a in ("wlstar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wonder Momo") do set NWDIR=%%~a
for %%a in ("wndrmomo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wonder Planet (Japan)") do set NWDIR=%%~a
for %%a in ("wndrplnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wonder Stick") do set NWDIR=%%~a
for %%a in ("wondstck.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Woodpecker (set 1)") do set NWDIR=%%~a
for %%a in ("woodpeck.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Beach Volley (set 1)") do set NWDIR=%%~a
for %%a in ("wbeachvl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Class Bowling (v1.66)") do set NWDIR=%%~a
for %%a in ("wcbowl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Class Bowling Deluxe (v2.00)") do set NWDIR=%%~a
for %%a in ("wcbowldx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Court (Japan)") do set NWDIR=%%~a
for %%a in ("wldcourt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Cup Volley '95 (Japan v1.0)") do set NWDIR=%%~a
for %%a in ("wcvol95.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Darts (Arcadia, set 1, V 2.1)") do set NWDIR=%%~a
for %%a in ("ar_dart.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Heroes (ALM-005)") do set NWDIR=%%~a
for %%a in ("wh1.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Heroes 2 (ALM-006)(ALH-006)") do set NWDIR=%%~a
for %%a in ("wh2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Heroes 2 Jet (ADM-007)(ADH-007)") do set NWDIR=%%~a
for %%a in ("wh2j.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Heroes Perfect") do set NWDIR=%%~a
for %%a in ("whp.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World PK Soccer V2 (ver 1.1)") do set NWDIR=%%~a
for %%a in ("wpksocv2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Rally (set 1)") do set NWDIR=%%~a
for %%a in ("wrally.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Series- The Season") do set NWDIR=%%~a
for %%a in ("wseries.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Soccer Finals") do set NWDIR=%%~a
for %%a in ("wsf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Stadium (Japan)") do set NWDIR=%%~a
for %%a in ("ws.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Tennis") do set NWDIR=%%~a
for %%a in ("wtennis.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Trophy Soccer (Arcadia, V 3.0)") do set NWDIR=%%~a
for %%a in ("ar_socc.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("World Wars (World-)") do set NWDIR=%%~a
for %%a in ("worldwar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("WOW New Fantasia") do set NWDIR=%%~a
for %%a in ("wownfant.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Wrestle War (set 3, World, 8751 317-0103)") do set NWDIR=%%~a
for %%a in ("wrestwar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("WWF Superstars (Europe)") do set NWDIR=%%~a
for %%a in ("wwfsstar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("WWF WrestleFest (US set 1)") do set NWDIR=%%~a
for %%a in ("wwfwfest.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("WWF- Wrestlemania (rev 1.30 08-10-95)") do set NWDIR=%%~a
for %%a in ("wwfmania.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("X Force") do set NWDIR=%%~a
for %%a in ("xforce.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("X Multiply (World, M81)") do set NWDIR=%%~a
for %%a in ("xmultipl.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("X the Ball") do set NWDIR=%%~a
for %%a in ("xtheball.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xain'd Sleena (World)") do set NWDIR=%%~a
for %%a in ("xsleena.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("X-Day 2 (Japan)") do set NWDIR=%%~a
for %%a in ("xday2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xenon (Arcadia, V 2.3)") do set NWDIR=%%~a
for %%a in ("ar_xeon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xenophobe") do set NWDIR=%%~a
for %%a in ("xenophob.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("XESS - The New Revolution (SemiCom 3-in-1)") do set NWDIR=%%~a
for %%a in ("3in1semi.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xevious (Namco)") do set NWDIR=%%~a
for %%a in ("xevious.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xevious 3D-G (Japan, XV31-VER.A)") do set NWDIR=%%~a
for %%a in ("xevi3dg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xexex (ver EAA)") do set NWDIR=%%~a
for %%a in ("xexex.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("X-Files") do set NWDIR=%%~a
for %%a in ("xfiles.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("XII Stag (V2.01J)") do set NWDIR=%%~a
for %%a in ("xiistag.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xing Yun Man Guan (China, V651C)") do set NWDIR=%%~a
for %%a in ("xymg.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("X-Men (4 Players ver UBB)") do set NWDIR=%%~a
for %%a in ("xmen.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("X-Men Vs. Street Fighter (Euro 961004)") do set NWDIR=%%~a
for %%a in ("xmvsf.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("X-Men- Children of the Atom (Euro 950331)") do set NWDIR=%%~a
for %%a in ("xmcota.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xor World (prototype)") do set NWDIR=%%~a
for %%a in ("xorworld.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("XX Mission") do set NWDIR=%%~a
for %%a in ("xxmissio.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xybots (rev 2)") do set NWDIR=%%~a
for %%a in ("xybots.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Xyonix") do set NWDIR=%%~a
for %%a in ("xyonix.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Yam! Yam!-") do set NWDIR=%%~a
for %%a in ("yamyam.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Yamato (US)") do set NWDIR=%%~a
for %%a in ("yamato.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Yie Ar Kung-Fu (program code I)") do set NWDIR=%%~a
for %%a in ("yiear.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Ying Hua Lian 2.0 (China, Ver. 1.02)") do set NWDIR=%%~a
for %%a in ("saklove.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Yo! Noid (PlayChoice-10)") do set NWDIR=%%~a
for %%a in ("pc_ynoid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Youjyuden (Japan)") do set NWDIR=%%~a
for %%a in ("youjyudn.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Yu-Jan") do set NWDIR=%%~a
for %%a in ("yujan.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Yu-Ka") do set NWDIR=%%~a
for %%a in ("yuka.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Yukon (version 2.0)") do set NWDIR=%%~a
for %%a in ("yukon.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Yumefuda [BET]") do set NWDIR=%%~a
for %%a in ("yumefuda.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zaviga") do set NWDIR=%%~a
for %%a in ("zaviga.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zed Blade - Operation Ragnarok") do set NWDIR=%%~a
for %%a in ("zedblade.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zen Nippon Pro-Wrestling Featuring Virtua (J 971123 V1.000)") do set NWDIR=%%~a
for %%a in ("znpwfv.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zenkoku Seifuku Bishoujo Grand Prix Find Love (J 971212 V1.000)") do set NWDIR=%%~a
for %%a in ("findlove.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zero Hour (set 1)") do set NWDIR=%%~a
for %%a in ("zerohour.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zero Point (set 1)") do set NWDIR=%%~a
for %%a in ("zeropnt.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zero Point 2") do set NWDIR=%%~a
for %%a in ("zeropnt2.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zero Wing (1P set)") do set NWDIR=%%~a
for %%a in ("zerowing.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zero Zone") do set NWDIR=%%~a
for %%a in ("zerozone.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zeroize (DECO Cassette)") do set NWDIR=%%~a
for %%a in ("czeroize.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zig Zag (Galaxian hardware, set 1)") do set NWDIR=%%~a
for %%a in ("zigzag.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zing Zing Zip") do set NWDIR=%%~a
for %%a in ("zingzip.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zintrick - Oshidashi Zentrix (hack)") do set NWDIR=%%~a
for %%a in ("zintrckb.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zip & Zap") do set NWDIR=%%~a
for %%a in ("zipzap.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zoar") do set NWDIR=%%~a
for %%a in ("zoar.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zodiack") do set NWDIR=%%~a
for %%a in ("zodiack.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zoku Otenamihaiken (V2.03J)") do set NWDIR=%%~a
for %%a in ("zokuoten.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zombie Raid (9-28-95, US)") do set NWDIR=%%~a
for %%a in ("zombraid.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zoo Keeper (set 1)") do set NWDIR=%%~a
for %%a in ("zookeep.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zooo (V2.01J)") do set NWDIR=%%~a
for %%a in ("zooo.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zunzunkyou No Yabou (Japan)") do set NWDIR=%%~a
for %%a in ("zunkyou.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zupapa!") do set NWDIR=%%~a
for %%a in ("zupapa.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zwackery") do set NWDIR=%%~a
for %%a in ("zwackery.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
for %%a in ("Zzyzzyxx (set 1)") do set NWDIR=%%~a
for %%a in ("zzyzzyxx.png") do if exist "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%MAMENAME%"
