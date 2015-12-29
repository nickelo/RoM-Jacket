goto :SORTOUT
:INTO
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" & call :%LINKR%
exit /b

:WINV
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%"
exit /b
:WINLEG
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%"
exit /b

:SORTOUT
mkdir "SOURCE"
ATTRIB +H "SOURCE"
move /y "*.zip" "SOURCE"
pushd "%GBG%\%GAM%\%CONS%\%NEOGE%\SOURCE"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROM=%%~nxa
call :"%%~a"
)
popd
exit /b

:"nam1975.zip"
for %%a in ("NAM-1975") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"bstars.zip"
for %%a in ("Baseball Stars Professional (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"bstarsh.zip"
for %%a in ("Baseball Stars Professional (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"tpgolf.zip"
for %%a in ("Top Player's Golf") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mahretsu.zip"
for %%a in ("Mahjong Kyo Retsuden") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"maglord.zip"
for %%a in ("Magician Lord (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"maglordh.zip"
for %%a in ("Magician Lord (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ridhero.zip"
for %%a in ("Riding Hero (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ridheroh.zip"
for %%a in ("Riding Hero (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"alpham2.zip"
for %%a in ("Alpha Mission II") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ncombat.zip"
for %%a in ("Ninja Combat (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ncombath.zip"
for %%a in ("Ninja Combat (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cyberlip.zip"
for %%a in ("Cyber-Lip") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"superspy.zip"
for %%a in ("The Super Spy") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mutnat.zip"
for %%a in ("Mutation Nation") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kotm.zip"
for %%a in ("King of the Monsters (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kotmh.zip"
for %%a in ("King of the Monsters (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sengoku.zip"
for %%a in ("Sengoku") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sengokuh.zip"
for %%a in ("Sengoku") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"burningf.zip"
for %%a in ("Burning Fight (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"burningfh.zip"
for %%a in ("Burning Fight (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"lbowling.zip"
for %%a in ("League Bowling") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gpilots.zip"
for %%a in ("Ghost Pilots (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gpilotsh.zip"
for %%a in ("Ghost Pilots (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"joyjoy.zip"
for %%a in ("Puzzled") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"bjourney.zip"
for %%a in ("Blue's Journey") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"quizdais.zip"
for %%a in ("Quiz Daisousa Sen - The Last Count Down") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"quizdaisk.zip"
for %%a in ("Quiz Daisousa Sen - The Last Count Down (Korean release)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"lresort.zip"
for %%a in ("Last Resort") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"eightman.zip"
for %%a in ("Eight Man") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"minasan.zip"
for %%a in ("Minnasanno Okagesamadesu") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"legendos.zip"
for %%a in ("Legend of Success Joe") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"2020bb.zip"
for %%a in ("2020 Super Baseball (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"2020bba.zip"
for %%a in ("2020 Super Baseball (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"2020bbh.zip"
for %%a in ("2020 Super Baseball (set 3)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"socbrawl.zip"
for %%a in ("Soccer Brawl (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"socbrawlh.zip"
for %%a in ("Soccer Brawl (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"roboarmy.zip"
for %%a in ("Robo Army") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"fatfury1.zip"
for %%a in ("Fatal Fury - King of Fighters") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"fbfrenzy.zip"
for %%a in ("Football Frenzy") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"bakatono.zip"
for %%a in ("Bakatonosama Mahjong Manyuuki") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"crsword.zip"
for %%a in ("Crossed Swords") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"trally.zip"
for %%a in ("Thrash Rally") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kotm2.zip"
for %%a in ("King of the Monsters 2 - The Next Thing") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sengoku2.zip"
for %%a in ("Sengoku 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"bstars2.zip"
for %%a in ("Baseball Stars 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"quizdai2.zip"
for %%a in ("Quiz Meitantei Neo  ^&  Geo - Quiz Daisousa Sen part 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"3countb.zip"
for %%a in ("3 Count Bout") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"aof.zip"
for %%a in ("Art of Fighting") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho.zip"
for %%a in ("Samurai Shodown") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samshoh.zip"
for %%a in ("Samurai Shodown") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"tophuntr.zip"
for %%a in ("Top Hunter - Roddy  ^&  Cathy (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"tophuntrh.zip"
for %%a in ("Top Hunter - Roddy  ^&  Cathy (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"fatfury2.zip"
for %%a in ("Fatal Fury 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"janshin.zip"
for %%a in ("Jyanshin Densetsu - Quest of Jongmaster") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"androdun.zip"
for %%a in ("Andro Dunos") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ncommand.zip"
for %%a in ("Ninja Commando") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"viewpoin.zip"
for %%a in ("Viewpoint") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssideki.zip"
for %%a in ("Super Sidekicks") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wh1.zip"
for %%a in ("World Heroes (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wh1h.zip"
for %%a in ("World Heroes (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wh1ha.zip"
for %%a in ("World Heroes (set 3)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof94.zip"
for %%a in ("The King of Fighters '94") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"aof2.zip"
for %%a in ("Art of Fighting 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"aof2a.zip"
for %%a in ("Art of Fighting 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wh2.zip"
for %%a in ("World Heroes 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"fatfursp.zip"
for %%a in ("Fatal Fury Special") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"fatfurspa.zip"
for %%a in ("Fatal Fury Special") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"savagere.zip"
for %%a in ("Savage Reign") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"fightfev.zip"
for %%a in ("Fight Fever (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"fightfeva.zip"
for %%a in ("Fight Fever (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssideki2.zip"
for %%a in ("Super Sidekicks 2 - The World Championship") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"spinmast.zip"
for %%a in ("Spin Master") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho2.zip"
for %%a in ("Samurai Shodown II") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho2k.zip"
for %%a in ("Saulabi Spirits") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wh2j.zip"
for %%a in ("World Heroes 2 Jet") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wjammers.zip"
for %%a in ("Windjammers") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"karnovr.zip"
for %%a in ("Karnov's Revenge") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gururin.zip"
for %%a in ("Gururin") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pspikes2.zip"
for %%a in ("Power Spikes II") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"fatfury3.zip"
for %%a in ("Fatal Fury 3 - Road to the Final Victory") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"zupapa.zip"
for %%a in ("Zupapa!") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"panicbom.zip"
for %%a in ("Panic Bomber") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"aodk.zip"
for %%a in ("Aggressors of Dark Kombat") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sonicwi2.zip"
for %%a in ("Aero Fighters 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"zedblade.zip"
for %%a in ("Zed Blade") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"galaxyfg.zip"
for %%a in ("Galaxy Fight - Universal Warriors") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"strhoop.zip"
for %%a in ("Street Hoop") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"quizkof.zip"
for %%a in ("Quiz King of Fighters") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"quizkofk.zip"
for %%a in ("Quiz King of Fighters (Korean release)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssideki3.zip"
for %%a in ("Super Sidekicks 3 - The Next Glory") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"doubledr.zip"
for %%a in ("Double Dragon (Neo-Geo)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pbobblen.zip"
for %%a in ("Puzzle Bobble") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pbobblenb.zip"
for %%a in ("Puzzle Bobble") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof95.zip"
for %%a in ("The King of Fighters '95 (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof95h.zip"
for %%a in ("The King of Fighters '95 (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"tws96.zip"
for %%a in ("Tecmo World Soccer '96") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho3.zip"
for %%a in ("Samurai Shodown III") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho3h.zip"
for %%a in ("Samurai Shodown III") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"fswords.zip"
for %%a in ("Fighters Swords (Korean release of Samurai Shodown III)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"stakwin.zip"
for %%a in ("Stakes Winner") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pulstar.zip"
for %%a in ("Pulstar") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"whp.zip"
for %%a in ("World Heroes Perfect") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kabukikl.zip"
for %%a in ("Far East of Eden - Kabuki Klash") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neobombe.zip"
for %%a in ("Neo Bomberman") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"gowcaizr.zip"
for %%a in ("Voltage Fighter - Gowcaizer") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rbff1.zip"
for %%a in ("Real Bout Fatal Fury") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rbff1a.zip"
for %%a in ("Real Bout Fatal Fury") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"aof3.zip"
for %%a in ("Art of Fighting 3 - The Path of the Warrior") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"aof3k.zip"
for %%a in ("Art of Fighting 3 - The Path of the Warrior (Korean release)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sonicwi3.zip"
for %%a in ("Aero Fighters 3") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"turfmast.zip"
for %%a in ("Neo Turf Masters") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug.zip"
for %%a in ("Metal Slug - Super Vehicle-001") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"puzzledp.zip"
for %%a in ("Puzzle De Pon!") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mosyougi.zip"
for %%a in ("Syougi No Tatsujin - Master of Syougi") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"marukodq.zip"
for %%a in ("Chibi Marukochan Deluxe Quiz") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neomrdo.zip"
for %%a in ("Neo Mr. Do!") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sdodgeb.zip"
for %%a in ("Super Dodge Ball") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"goalx3.zip"
for %%a in ("Goal! Goal! Goal!") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"zintrckb.zip"
for %%a in ("Zintrick") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"overtop.zip"
for %%a in ("Over Top") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neodrift.zip"
for %%a in ("Neo Drift Out - New Technology") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof96.zip"
for %%a in ("The King of Fighters '96 (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof96h.zip"
for %%a in ("The King of Fighters '96 (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ssideki4.zip"
for %%a in ("The Ultimate 11 - The SNK Football Championship") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kizuna.zip"
for %%a in ("Kizuna Encounter - Super Tag Battle") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ninjamas.zip"
for %%a in ("Ninja Master's - haoh-ninpo-cho") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ragnagrd.zip"
for %%a in ("Ragnagard") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pgoal.zip"
for %%a in ("Pleasure Goal") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"magdrop2.zip"
for %%a in ("Magical Drop II") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho4.zip"
for %%a in ("Samurai Shodown IV - Amakusa's Revenge") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho4k.zip"
for %%a in ("Pae Wang Jeon Seol") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rbffspec.zip"
for %%a in ("Real Bout Fatal Fury Special") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rbffspeck.zip"
for %%a in ("Real Bout Fatal Fury Special") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"twinspri.zip"
for %%a in ("Twinkle Star Sprites") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"wakuwak7.zip"
for %%a in ("Waku Waku 7") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"stakwin2.zip"
for %%a in ("Stakes Winner 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ghostlop.zip"
for %%a in ("Ghostlop (prototype)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"breakers.zip"
for %%a in ("Breakers") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"miexchng.zip"
for %%a in ("Money Puzzle Exchanger") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof97.zip"
for %%a in ("The King of Fighters '97 (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof97h.zip"
for %%a in ("The King of Fighters '97 (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof97pls.zip"
for %%a in ("The King of Fighters '97 Plus (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kog.zip"
for %%a in ("King of Gladiator (The King of Fighters '97 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"magdrop3.zip"
for %%a in ("Magical Drop III") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"lastblad.zip"
for %%a in ("The Last Blade") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"lastbladh.zip"
for %%a in ("The Last Blade") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"lastsold.zip"
for %%a in ("The Last Soldier (Korean release of The Last Blade)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"puzzldpr.zip"
for %%a in ("Puzzle De Pon! R!") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"irrmaze.zip"
for %%a in ("The Irritating Maze") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"popbounc.zip"
for %%a in ("Pop 'n Bounce") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"shocktro.zip"
for %%a in ("Shock Troopers (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"shocktroa.zip"
for %%a in ("Shock Troopers (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"blazstar.zip"
for %%a in ("Blazing Star") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rbff2.zip"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rbff2h.zip"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rbff2k.zip"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers (Korean release)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug2.zip"
for %%a in ("Metal Slug 2 - Super Vehicle-001/II") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof98.zip"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof98k.zip"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof98ka.zip"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof98h.zip"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"lastbld2.zip"
for %%a in ("The Last Blade 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neocup98.zip"
for %%a in ("Neo-Geo Cup '98 - The Road to the Victory") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"breakrev.zip"
for %%a in ("Breakers Revenge") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"shocktr2.zip"
for %%a in ("Shock Troopers - 2nd Squad") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"lans2004.zip"
for %%a in ("Lansquenet 2004 (Shock Troopers - 2nd Squad bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"flipshot.zip"
for %%a in ("Battle Flip Shot") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pbobbl2n.zip"
for %%a in ("Puzzle Bobble 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ctomaday.zip"
for %%a in ("Captain Tomaday") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslugx.zip"
for %%a in ("Metal Slug X - Super Vehicle-001") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof99.zip"
for %%a in ("The King of Fighters '99 - Millennium Battle (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof99h.zip"
for %%a in ("The King of Fighters '99 - Millennium Battle (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof99e.zip"
for %%a in ("The King of Fighters '99 - Millennium Battle (earlier)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof99k.zip"
for %%a in ("The King of Fighters '99 - Millennium Battle (Korean release)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof99p.zip"
for %%a in ("The King of Fighters '99 - Millennium Battle (prototype)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ganryu.zip"
for %%a in ("Ganryu") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"garou.zip"
for %%a in ("Garou - Mark of the Wolves (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"garouo.zip"
for %%a in ("Garou - Mark of the Wolves (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"garoup.zip"
for %%a in ("Garou - Mark of the Wolves (prototype)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"garoubl.zip"
for %%a in ("Garou - Mark of the Wolves (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"s1945p.zip"
for %%a in ("Strikers 1945 Plus") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"preisle2.zip"
for %%a in ("Prehistoric Isle 2") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug3.zip"
for %%a in ("Metal Slug 3") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug3h.zip"
for %%a in ("Metal Slug 3 (not encrypted)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug3b6.zip"
for %%a in ("Metal Slug 6 (Metal Slug 3 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2000.zip"
for %%a in ("The King of Fighters 2000") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2000n.zip"
for %%a in ("The King of Fighters 2000 (not encrypted)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"bangbead.zip"
for %%a in ("Bang Bead") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nitd.zip"
for %%a in ("Nightmare in the Dark") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nitdbl.zip"
for %%a in ("Nightmare in the Dark (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sengoku3.zip"
for %%a in ("Sengoku 3") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2001.zip"
for %%a in ("The King of Fighters 2001 (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2001h.zip"
for %%a in ("The King of Fighters 2001 (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"cthd2003.zip"
for %%a in ("Crouching Tiger Hidden Dragon 2003 (The King of Fighters 2001 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ct2k3sp.zip"
for %%a in ("Crouching Tiger Hidden Dragon 2003 Super Plus (The King of Fighters 2001 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ct2k3sa.zip"
for %%a in ("Crouching Tiger Hidden Dragon 2003 Super Plus alternate (The King of Fighters 2001 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug4.zip"
for %%a in ("Metal Slug 4 (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug4h.zip"
for %%a in ("Metal Slug 4 (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ms4plus.zip"
for %%a in ("Metal Slug 4 Plus (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rotd.zip"
for %%a in ("Rage of the Dragons") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2002.zip"
for %%a in ("The King of Fighters 2002") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2002b.zip"
for %%a in ("The King of Fighters 2002 (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k2pls.zip"
for %%a in ("The King of Fighters 2002 Plus (bootleg set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k2pla.zip"
for %%a in ("The King of Fighters 2002 Plus (bootleg set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k2mp.zip"
for %%a in ("The King of Fighters 2002 Magic Plus (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k2mp2.zip"
for %%a in ("The King of Fighters 2002 Magic Plus II (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof10th.zip"
for %%a in ("The King of Fighters 10th Anniversary (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k5uni.zip"
for %%a in ("The King of Fighters 10th Anniversary 2005 Unique (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf10thep.zip"
for %%a in ("The King of Fighters 10th Anniversary Extra Plus (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2k4se.zip"
for %%a in ("The King of Fighters Special Edition 2004 (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"matrim.zip"
for %%a in ("Matrimelee") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"matrimbl.zip"
for %%a in ("Matrimelee") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"pnyaa.zip"
for %%a in ("Pochi and Nyaa") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ms5pcb.zip"
for %%a in ("Metal Slug 5 (JAMMA PCB)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug5.zip"
for %%a in ("Metal Slug 5") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug5h.zip"
for %%a in ("Metal Slug 5 (AES Cart)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ms5plus.zip"
for %%a in ("Metal Slug 5 Plus (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"svcpcb.zip"
for %%a in ("SNK vs. Capcom - SVC Chaos (JAMMA PCB, set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"svcpcba.zip"
for %%a in ("SNK vs. Capcom - SVC Chaos (JAMMA PCB, set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"svc.zip"
for %%a in ("SNK vs. Capcom - SVC Chaos") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"svcboot.zip"
for %%a in ("SNK vs. Capcom - SVC Chaos (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"svcplus.zip"
for %%a in ("SNK vs. Capcom - SVC Chaos Plus (bootleg set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"svcplusa.zip"
for %%a in ("SNK vs. Capcom - SVC Chaos Plus (bootleg set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"svcsplus.zip"
for %%a in ("SNK vs. Capcom - SVC Chaos Super Plus (bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho5.zip"
for %%a in ("Samurai Shodown V") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho5h.zip"
for %%a in ("Samurai Shodown V") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsho5b.zip"
for %%a in ("Samurai Shodown V") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k3pcb.zip"
for %%a in ("The King of Fighters 2003 (Japan, JAMMA PCB)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2003.zip"
for %%a in ("The King of Fighters 2003") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2003h.zip"
for %%a in ("The King of Fighters 2003 (AES cart)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k3bl.zip"
for %%a in ("The King of Fighters 2003 (bootleg set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k3bla.zip"
for %%a in ("The King of Fighters 2003 (bootleg set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k3pl.zip"
for %%a in ("The King of Fighters 2004 Plus") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kf2k3upl.zip"
for %%a in ("The King of Fighters 2004 Ultra Plus (The King of Fighters 2003 bootleg)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsh5sp.zip"
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsh5sph.zip"
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsh5spn.zip"
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"jockeygp.zip"
for %%a in ("Jockey Grand Prix") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vliner.zip"
for %%a in ("V-Liner (set 1)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"vlinero.zip"
for %%a in ("V-Liner (set 2)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"diggerma.zip"
for %%a in ("Digger Man (prototype)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"98best44.zip"
for %%a in ("'98 NeoPri Best 44 (Neo Print)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"bngbeadn.zip"
for %%a in ("Bang Bead (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ganryun.zip"
for %%a in ("Ganryu (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"garoun.zip"
for %%a in ("Garou - Mark of the Wolves (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"matrimnd.zip"
for %%a in ("Matrimelee (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug3nd.zip"
for %%a in ("Metal Slug 3 (non encrypted P, decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug4nd.zip"
for %%a in ("Metal Slug 4 (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"mslug5nd.zip"
for %%a in ("Metal Slug 5 (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"nitdn.zip"
for %%a in ("Nightmare in the Dark (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"preisl2n.zip"
for %%a in ("Prehistoric Isle 2 (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"rotdnd.zip"
for %%a in ("Rage of the Dragons (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"sngoku3n.zip"
for %%a in ("Sengoku 3 (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"s1945pn.zip"
for %%a in ("Strikers 1945 Plus (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof99nd.zip"
for %%a in ("The King of Fighters '99 - Millennium Battle (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2knd.zip"
for %%a in ("The King of Fighters 2000 (non encrypted P, decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2k1nd.zip"
for %%a in ("The King of Fighters 2001 (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2k2nd.zip"
for %%a in ("The King of Fighters 2002 (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kof2k3nd.zip"
for %%a in ("The King of Fighters 2003 (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"zupapan.zip"
for %%a in ("Zupapa! (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"samsh5nd.zip"
for %%a in ("Samurai Shodown V (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"ss5shnd.zip"
for %%a in ("Samurai Shodown V Special (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"svcnd.zip"
for %%a in ("SNK Vs. CAPCOM (decrypted C) (non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neopong.zip"
for %%a in ("NeoPong (v1.1, non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neopong10.zip"
for %%a in ("NeoPong (v1.0, non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neonopon.zip"
for %%a in ("Neo No Panepon (20021005, non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neonopon1.zip"
for %%a in ("Neo No Panepon (20020707#1, non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neonopon2.zip"
for %%a in ("Neo No Panepon (20020707#2, non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"neonopon3.zip"
for %%a in ("Neo No Panepon (20020822, non-MAME)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b
:"kofse2k4.zip"
SET NWDIR=The King of Fighters Special Edition 2004 (non-MAME)
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%ROM%" CALL :%LINKR%
exit /b