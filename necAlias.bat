goto :SORTOUT


:SORTOUT
cd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/l/a "*.*"') do (
SET ROM=%%~nxa
call :"%%~na"
)
exit /b

:"1943kai"
for %%a in ("1943 Kai") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"21emon"
for %%a in ("21 Emon - Mezase Hotel ou!!") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advislnd"
for %%a in ("Adventure Island") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aeroblst"
for %%a in ("Aero Blasters") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aburner2"
for %%a in ("After Burner II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"acrush"
for %%a in ("Alien Crush") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ankoku"
for %%a in ("Ankoku Densetsu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aoiblink"
for %%a in ("Aoi Blink") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"appgateb"
for %%a in ("Appare! Gateball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"armedf"
for %%a in ("Armed Formation F") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"arttool"
for %%a in ("Artist Tool") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atomrobo"
for %%a in ("Atomic Robo-kid Special") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"avpoker"
for %%a in ("AV Poker") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ballistx"
for %%a in ("Ballistix") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"baribari"
for %%a in ("Bari Bari Densetsu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"barunba"
for %%a in ("Barunba") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"batman"
for %%a in ("Batman") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"batloder"
for %%a in ("Battle Lode Runner") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beball"
for %%a in ("Be Ball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bikkuri"
for %%a in ("Bikkuriman World") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bikkuri1"
for %%a in ("Bikkuriman World (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"blodia"
for %%a in ("Blodia") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bodycon2"
for %%a in ("Body Conquest II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bombman"
for %%a in ("Bomberman") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bombmn93"
for %%a in ("Bomberman '93") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bombmn93s"
for %%a in ("Bomberman '93 (Special Version)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bombmn94"
for %%a in ("Bomberman '94") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bombmnub"
for %%a in ("Bomberman - Users Battle") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lostsunh"
for %%a in ("Bouken Danshaku Don - The Lost Sunheart [Bad sound]") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"breakin"
for %%a in ("Break In") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bubblegm"
for %%a in ("Bubblegum Crash! - Knight Sabers 2034") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bullfght"
for %%a in ("Bull Fight - Ring no Haja") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"burnangl"
for %%a in ("Burning Angels") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cyberx"
for %%a in ("Busou Keiji - Cyber Cross") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cadash"
for %%a in ("Cadash [Bad graphics]") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"champwrs"
for %%a in ("Champion Wrestler") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chibim"
for %%a in ("Chibi Maruko Chan - Quiz de Piihyara") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chikuden"
for %%a in ("Chikudenya Toubei - Kubikiri Yakata Yori") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chikuden1"
for %%a in ("Chikudenya Toubei - Kubikiri Yakata Yori (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bravoman"
for %%a in ("Chouzetsu Rinjin - Bravoman") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"circusld"
for %%a in ("Circus Lido") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cityhunt"
for %%a in ("City Hunter") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"columns"
for %%a in ("Columns") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"coryoon"
for %%a in ("Coryoon - Child of Dragon") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"coryoon1"
for %%a in ("Coryoon - Child of Dragon (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xwiber"
for %%a in ("Cross Wiber - Cyber Combat Police") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cybrcore"
for %%a in ("Cyber Core") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cyberdod"
for %%a in ("Cyber Dodge") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cyknight"
for %%a in ("Cyber Knight") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daisenpu"
for %%a in ("Dai Senpu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"donaturl"
for %%a in ("Daichi Kun Crisis - Do Natural") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dariusa"
for %%a in ("Darius Alpha") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dariusp"
for %%a in ("Darius Plus") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"deadmoon"
for %%a in ("Dead Moon - Tsuki Sekai no Akumu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"deepblue"
for %%a in ("Deep Blue - Kaitei Shinwa") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"twinbee"
for %%a in ("Detana!! Twinbee") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"devlcrsh"
for %%a in ("Devil Crash - Naxat Pinball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"diehard"
for %%a in ("Die Hard") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"digichmp"
for %%a in ("Digital Champ") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dondoko"
for %%a in ("Don Doko Don!") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dorams"
for %%a in ("Doraemon - Meikyuu Dai Sakusen") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dorandn"
for %%a in ("Doraemon - Nobita no Dorabian Night") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddungw"
for %%a in ("Double Dungeons - W") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"download"
for %%a in ("Download") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"download1"
for %%a in ("Download (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dragnegg"
for %%a in ("Dragon Egg!") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dsaber"
for %%a in ("Dragon Saber - After Story of Dragon Spirit") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dsaber1"
for %%a in ("Dragon Saber - After Story of Dragon Spirit (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dspirit"
for %%a in ("Dragon Spirit") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"droprock"
for %%a in ("Drop Rock Hora Hora") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"droprock1"
for %%a in ("Drop Rock Hora Hora (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dungexpl"
for %%a in ("Dungeon Explorer") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"energy"
for %%a in ("Energy") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1dream"
for %%a in ("F-1 Dream") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1pilot"
for %%a in ("F-1 Pilot - You're King of Kings") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1circus"
for %%a in ("F1 Circus") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1circ91"
for %%a in ("F1 Circus '91 - World Championship") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1circ92"
for %%a in ("F1 Circus '92 - The Speed of Sound") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1circus1"
for %%a in ("F1 Circus (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1tb"
for %%a in ("F1 Triple Battle") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fantzone"
for %%a in ("Fantasy Zone") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fightrun"
for %%a in ("Fighting Run") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"finlblst"
for %%a in ("Final Blaster") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"finallap"
for %%a in ("Final Lap Twin") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"finalmt"
for %%a in ("Final Match Tennis") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"finalsol"
for %%a in ("Final Soldier") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"finalsols"
for %%a in ("Final Soldier (Special Version)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fireprow"
for %%a in ("Fire Pro Wrestling - Combination Tag") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fireprw2"
for %%a in ("Fire Pro Wrestling 2 - 2nd Bout") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fireprw3"
for %%a in ("Fire Pro Wrestling 3 - Legend Bout") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fsoccr90"
for %%a in ("Formation Soccer - Human Cup '90") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fsoccer"
for %%a in ("Formation Soccer - On J. League") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alice"
for %%a in ("Fushigi no Yume no Alice") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gaiflame"
for %%a in ("Gai Flame") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gaiamons"
for %%a in ("Gaia no Monshou") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"galaga88"
for %%a in ("Galaga '88") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ganbgolf"
for %%a in ("Ganbare! Golf Boys") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gekisboy"
for %%a in ("Gekisha Boy") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"genjitsu"
for %%a in ("Genji Tsuushin Agedama") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"genpei"
for %%a in ("Genpei Toumaden") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"genpemak"
for %%a in ("Genpei Toumaden ni no Maki") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chukatai"
for %%a in ("Gokuraku! Chuka Taisen") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gomola"
for %%a in ("Gomola Speed") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gradius"
for %%a in ("Gradius") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gunhed"
for %%a in ("GunHed") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gunhedht"
for %%a in ("GunHed - Hudson GunHed Taikai") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hanataka"
for %%a in ("Hana Taaka Daka!") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"haniisky"
for %%a in ("Hanii in the Sky") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"haniirod"
for %%a in ("Hanii on the Road") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hatris"
for %%a in ("Hatris") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hvyunit"
for %%a in ("Heavy Unit") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hitice"
for %%a in ("Hit the Ice - VHL - The Official Video Hockey League") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddanpei"
for %%a in ("Honoo no Toukyuuji - Dodge Danpei") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"idolhana"
for %%a in ("Idol Hanafuda Fan Club") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"imagefgt"
for %%a in ("Image Fight") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jleag11"
for %%a in ("J. League Greatest Eleven") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nicklaus"
for %%a in ("Jack Nicklaus' Greatest 18 Holes of Major Championship Golf") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jchan"
for %%a in ("Jackie Chan") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jigomegu"
for %%a in ("Jigoku Meguri") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jinmu"
for %%a in ("Jinmu Denshou") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jinmu1"
for %%a in ("Jinmu Denshou (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"juuouki"
for %%a in ("Juuouki") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"juuouki1"
for %%a in ("Juuouki (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shubibi"
for %%a in ("Kaizou Choujin Shubibinman") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shubibi2"
for %%a in ("Kaizou Choujin Shubibinman 2 - Aratanaru Teki") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"katochan"
for %%a in ("Kato Chan ^&; Ken Chan") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kattobi"
for %%a in ("Kattobi! Takuhai Kun") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kickball"
for %%a in ("Kickball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kikikai"
for %%a in ("Kiki KaiKai") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kingcasn"
for %%a in ("King of Casino") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"klax"
for %%a in ("Klax") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"knightrs"
for %%a in ("Knight Rider Special") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"proyak89"
for %%a in ("Kore Ga Pro Yakyuu '89") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"proyak90"
for %%a in ("Kore Ga Pro Yakyuu '90") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kyukyomj"
for %%a in ("Kyuukyoku Mahjong - Idol Graphics") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kyukyom2"
for %%a in ("Kyuukyoku Mahjong II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ktiger"
for %%a in ("Kyuukyoku Tiger") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ladyswrd"
for %%a in ("Lady Sword") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ladyswrd1"
for %%a in ("Lady Sword (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"loht"
for %%a in ("Legend of Hero Tonma") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ldrun"
for %%a in ("Lode Runner - Lost Labyrinth") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"magchase"
for %%a in ("Magical Chase") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mjgakuen"
for %%a in ("Mahjong Gakuen - Touma Soushirou Toujou") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mjgakmld"
for %%a in ("Mahjong Gakuen Mild - Touma Soushirou Toujou") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mjgakmld1"
for %%a in ("Mahjong Gakuen Mild - Touma Soushirou Toujou (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mjgokusp"
for %%a in ("Mahjong Gokuu Special") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mjkaiser"
for %%a in ("Mahjong Haou Den - Kaiser's Quest") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mjwars"
for %%a in ("Mahjong Shikyaku Retsuden - Mahjong Wars") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mikkoku"
for %%a in ("Maison Ikkoku") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wataru"
for %%a in ("Majin Eiyuu Den Wataru") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"makaihak"
for %%a in ("Makai Hakken Den Shada") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"makaipri"
for %%a in ("Makai Prince Dorabocchan") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"makyoden"
for %%a in ("Makyou Densetsu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"maniacpw"
for %%a in ("Maniac Pro Wres - Asu Heno Tatakai") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mesopot"
for %%a in ("Mesopotamia") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"metlstok"
for %%a in ("Metal Stoker") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mizubaku"
for %%a in ("Mizubaku Dai Bouken") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"momogdn"
for %%a in ("Momotarou Densetsu Gaiden Dai 1 Shuu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"momo2"
for %%a in ("Momotarou Densetsu II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"momotrbo"
for %%a in ("Momotarou Densetsu Turbo") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"momoktsg"
for %%a in ("Momotarou Katsugeki") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mnstprow"
for %%a in ("Monster Pro Wres") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"moritash"
for %%a in ("Morita Shougi PC") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"motoroad"
for %%a in ("Moto Roader") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"motorod2"
for %%a in ("Moto Roader II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"motorod2a"
for %%a in ("Moto Roader II (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mrheli"
for %%a in ("Mr. Heli no Daibouken") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mrheli1"
for %%a in ("Mr. Heli no Daibouken (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"marchen"
for %%a in ("Märchen Maze") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"blodwolf"
for %%a in ("Narazumono Sentai Butai - Bloody Wolf") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"naxopen"
for %%a in ("Naxat Open") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"naxstad"
for %%a in ("Naxat Stadium") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nazomasq"
for %%a in ("Nazo no Masquerade") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"necromcr"
for %%a in ("Necromancer") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"necros"
for %%a in ("Necros no Yousai") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nectaris"
for %%a in ("Nectaris") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nekdodge"
for %%a in ("Nekketsu Koukou Dodgeball Bu - PC Bangai Hen") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"neksoccr"
for %%a in ("Nekketsu Koukou Dodgeball Bu - Soccer PC Hen") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"neutopia"
for %%a in ("Neutopia") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"neutopi2"
for %%a in ("Neutopia II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhktaidr"
for %%a in ("NHK Taiga Drama - Taiheiki") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nryukend"
for %%a in ("Ninja Ryukenden") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"oboccha"
for %%a in ("Obocchama-kun") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"opwolf"
for %%a in ("Operation Wolf") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ordyne"
for %%a in ("Ordyne") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outlive"
for %%a in ("Out Live") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outrun"
for %%a in ("Out Run") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"override"
for %%a in ("Override") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"p47"
for %%a in ("P-47 - The Freedom Fighter") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pacland"
for %%a in ("Pac-land") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pachikun"
for %%a in ("Pachio Kun - Juuban Shoubu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"paranoia"
for %%a in ("Paranoia") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"parasol"
for %%a in ("Parasol Stars - The Story of Bubble Bobble III") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"parodius"
for %%a in ("Parodius da! - Shinwa Kara Owarai He") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pcgenj"
for %%a in ("PC Genjin - Pithecanthropus Computerurus") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pcgenja"
for %%a in ("PC Genjin - Pithecanthropus Computerurus (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pcgenj2"
for %%a in ("PC Genjin 2 - Pithecanthropus Computerurus") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pcgenj3"
for %%a in ("PC Genjin 3 - Pithecanthropus Computerurus") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pcgenj3t"
for %%a in ("PC Genjin 3 - Pithecanthropus Computerurus (Taikenban)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pcpachi"
for %%a in ("PC Pachi-slot") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"populous"
for %%a in ("Populous") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"populous1"
for %%a in ("Populous (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pdrift"
for %%a in ("Power Drift") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pdrift1"
for %%a in ("Power Drift (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"power11"
for %%a in ("Power Eleven") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"powergat"
for %%a in ("Power Gate") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pgolf"
for %%a in ("Power Golf") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pleague"
for %%a in ("Power League") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pleag93"
for %%a in ("Power League '93") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pleagas"
for %%a in ("Power League (All Star Version)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pleag2"
for %%a in ("Power League II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pleag3"
for %%a in ("Power League III") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pleag4"
for %%a in ("Power League IV") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pleag5"
for %%a in ("Power League V") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"psports"
for %%a in ("Power Sports") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ptennwc"
for %%a in ("Pro Tennis World Court") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"proyak"
for %%a in ("Pro Yakyuu World Stadium") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"proyak91"
for %%a in ("Pro Yakyuu World Stadium '91") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"psychas"
for %%a in ("Psycho Chaser") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"puzzlboy"
for %%a in ("Puzzle Boy") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"puzznic"
for %%a in ("Puzznic") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"quizts"
for %%a in ("Quiz Toukou Shashin") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rtypep1"
for %%a in ("R-Type Part-1") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rtypep2"
for %%a in ("R-Type Part-2") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rabiolep"
for %%a in ("Rabio Lepus Special") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"racindam"
for %%a in ("Racing Damashii") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"raiden"
for %%a in ("Raiden") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rastan2"
for %%a in ("Rastan Saga II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rockon"
for %%a in ("Rock-on") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ryukyu"
for %%a in ("Ryuukyuu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sadaki7"
for %%a in ("Sadakichi 7 Series - Hideyoshi no Ougon") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"saigonin"
for %%a in ("Saigo no Nindou - Ninja Spirit") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"salamand"
for %%a in ("Salamander") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sekigaha"
for %%a in ("Sekigahara") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sengokmj"
for %%a in ("Sengoku Mahjong") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shanghai"
for %%a in ("Shanghai") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinobi"
for %%a in ("Shinobi") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shiryo"
for %%a in ("Shiryou Sensen") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shogisi"
for %%a in ("Shougi Shodan Icchokusen") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shogism"
for %%a in ("Shougi Shoshinsha Muyou") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sidearms"
for %%a in ("Sidearms - Hyper Dyne") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"silentd"
for %%a in ("Silent Debuggers") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sindibad"
for %%a in ("Sindibad Chitei no Dai Makyuu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skweek"
for %%a in ("Skweek") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sokoban"
for %%a in ("Sokoban World") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soldblad"
for %%a in ("Soldier Blade") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soldblas"
for %%a in ("Soldier Blade Special - Caravan Stage") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonson2"
for %%a in ("Son Son II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sharrier"
for %%a in ("Space Harrier") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spaceinv"
for %%a in ("Space Invaders - Fukkatsu no Hi") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sci"
for %%a in ("Special Criminal Investigation") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spinpair"
for %%a in ("Spin Pair") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spirwave"
for %%a in ("Spiral Wave") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"splatth"
for %%a in ("Splatterhouse") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"stratego"
for %%a in ("Stratego") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sf2ce"
for %%a in ("Street Fighter II' - Champion Edition") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"stripf2"
for %%a in ("Strip Fighter II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smcrush"
for %%a in ("Super Metal Crusher") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smomo"
for %%a in ("Super Momotarou Dentetsu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smomo2"
for %%a in ("Super Momotarou Dentetsu II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sssoldr"
for %%a in ("Super Star Soldier") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"svolley"
for %%a in ("Super Volleyball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"susano"
for %%a in ("Susanoo Densetsu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chasehq"
for %%a in ("Taito Chase H.Q.") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"takameib"
for %%a in ("Takahashi Meijin no Shin Boukenjima") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shingen"
for %%a in ("Takeda Shingen") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shingen1"
for %%a in ("Takeda Shingen (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tatsunok"
for %%a in ("Tatsu No Ko Fighter") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tatsujin"
for %%a in ("Tatsujin") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tatsujinp"
for %%a in ("Tatsujin (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sdragon"
for %%a in ("Tenseiryuu - Saint Dragon") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"terracr2"
for %%a in ("Terra Cresta II - Mandoraa no Gyakushuu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kungfu"
for %%a in ("The Kung Fu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tnzs"
for %%a in ("The New Zealand Story") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ninjawar"
for %%a in ("The Ninja Warriors") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"druaga"
for %%a in ("The Tower of Druaga") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tblade"
for %%a in ("Thunder Blade") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"timcrus2"
for %%a in ("Time Cruise II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"titan"
for %%a in ("Titan") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toiletk"
for %%a in ("Toilet Kids") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toraheno"
for %%a in ("Tora Heno Michi") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"etercity"
for %%a in ("Toshi Tensou Keikaku - Eternal City") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toyshopb"
for %%a in ("Toy Shop Boys") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tricky"
for %%a in ("Tricky") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tsuppari"
for %%a in ("Tsuppari Oozumou - Heisei Ban") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"baibai"
for %%a in ("Tsuru Teruhito no Jissen Kabushiki Bai Bai Game") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tvbasket"
for %%a in ("TV Sports Basketball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tvfootbl"
for %%a in ("TV Sports Football") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tvhockey"
for %%a in ("TV Sports Hockey") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"usaprobs"
for %%a in ("USA Pro Basketball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"veigues"
for %%a in ("Veigues - Tactical Gladiator") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"victoryr"
for %%a in ("Victory Run") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vigilant"
for %%a in ("Vigilante") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"violents"
for %%a in ("Violent Soldier") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"volfied"
for %%a in ("Volfied") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wring"
for %%a in ("W-ring - The Double Rings") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"waiwaimj"
for %%a in ("Wai Wai Mahjong - Yukaina Janyuu Tachi") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"valkyrie"
for %%a in ("Walkuere no Densetsu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wallaby"
for %%a in ("Wallaby!! - Usagi no Kuni no Kangaroo Race") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"winshot"
for %%a in ("Winning Shot") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wonderm"
for %%a in ("Wonder Momo") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wbeach"
for %%a in ("World Beach Volley") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcircuit"
for %%a in ("World Circuit") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wjockey"
for %%a in ("World Jockey") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xevious"
for %%a in ("Xevious - Fardraut Densetsu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"youkaid"
for %%a in ("Youkai Douchuuki") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"yuyu"
for %%a in ("Yuu Yuu Jinsei - Victory Life") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zero4ca"
for %%a in ("Zero 4 Champ") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zero4c"
for %%a in ("Zero 4 Champ (v1.5)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zipang"
for %%a in ("Zipang") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"1941"
for %%a in ("1941 - Counter Attack") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aldynes"
for %%a in ("Aldynes") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"battlace"
for %%a in ("Battle Ace") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daimakai"
for %%a in ("Dai Makaimura") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"granzort"
for %%a in ("Madou Ou Granzort") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aeroblst"
for %%a in ("Aero Blasters") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"acrush"
for %%a in ("Alien Crush") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ballistx"
for %%a in ("Ballistix") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"batlroyl"
for %%a in ("Battle Royale") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"blazlazr"
for %%a in ("Blazing Lazers") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"blodwolf"
for %%a in ("Bloody Wolf") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bombman"
for %%a in ("Bomberman") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bombmn93"
for %%a in ("Bomberman '93") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bonk3"
for %%a in ("Bonk III - Bonk's Big Adventure") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bonk"
for %%a in ("Bonk's Adventure") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bonk2"
for %%a in ("Bonk's Revenge") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"boxyboy"
for %%a in ("Boxyboy") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bravoman"
for %%a in ("Bravoman") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cadash"
for %%a in ("Cadash [Bad graphics]") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"forevbox"
for %%a in ("Champions Forever Boxing [Bad sound]") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chewman"
for %%a in ("Chew Man Fu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chinawar"
for %%a in ("China Warrior") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cratermz"
for %%a in ("Cratermaze") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cybrcore"
for %%a in ("Cyber Core") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"darkwing"
for %%a in ("Darkwing Duck") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daviscup"
for %%a in ("Davis Cup Tennis") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"deadmoon"
for %%a in ("Dead Moon") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"deepblue"
for %%a in ("Deep Blue") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"devlcrsh"
for %%a in ("Devil's Crush - Naxat Pinball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddungw"
for %%a in ("Double Dungeons - W") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dspirit"
for %%a in ("Dragon Spirit") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dragcrse"
for %%a in ("Dragon's Curse") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dropoff"
for %%a in ("Drop.Off") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dungexpl"
for %%a in ("Dungeon Explorer") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"falcon"
for %%a in ("Falcon") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fantzone"
for %%a in ("Fantasy Zone") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"finallap"
for %%a in ("Final Lap Twin") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"galaga90"
for %%a in ("Galaga '90") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ghostman"
for %%a in ("Ghost Manor") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gunboat"
for %%a in ("Gunboat") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hitice"
for %%a in ("Hit the Ice - VHL - The Official Video Hockey League") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"impossam"
for %%a in ("Impossamole") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jjnjeff"
for %%a in ("J.J. ^&; Jeff") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nicklaus"
for %%a in ("Jack Nicklaus' Turbo Golf") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jchan"
for %%a in ("Jackie Chan's Action Kung Fu") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"keithcor"
for %%a in ("Keith Courage in Alpha Zones") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kingcasn"
for %%a in ("King of Casino") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"klax"
for %%a in ("Klax") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"loht"
for %%a in ("Legend of Hero Tonma") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"magchase"
for %%a in ("Magical Chase") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"miltrymd"
for %%a in ("Military Madness") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"motoroad"
for %%a in ("Moto Roader") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"neutopia"
for %%a in ("Neutopia") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"neutopi2"
for %%a in ("Neutopia II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advislnd"
for %%a in ("New Adventure Island") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nightcr"
for %%a in ("Night Creatures") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nspirit"
for %%a in ("Ninja Spirit") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"griffon"
for %%a in ("Order of the Griffon") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ordyne"
for %%a in ("Ordyne") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pacland"
for %%a in ("Pac-land") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"panzakb"
for %%a in ("Panza Kick Boxing") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"parasol"
for %%a in ("Parasol Stars - The Story of Bubble Bobble III") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pgolf"
for %%a in ("Power Golf") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"psychos"
for %%a in ("Psychosis") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rtype"
for %%a in ("R-Type") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"raiden"
for %%a in ("Raiden") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"samuraig"
for %%a in ("Samurai-Ghost") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shockman"
for %%a in ("Shockman") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sidearms"
for %%a in ("Sidearms - Hyper Dyne") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"silentd"
for %%a in ("Silent Debuggers") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sinistrn"
for %%a in ("Sinistron") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soldblad"
for %%a in ("Soldier Blade") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"somerass"
for %%a in ("Somer Assault") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wbeach"
for %%a in ("Sonic Spike - World Championship Beach Volleyball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sharrier"
for %%a in ("Space Harrier") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"splatth"
for %%a in ("Splatterhouse") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sssoldr"
for %%a in ("Super Star Soldier") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"svolley"
for %%a in ("Super Volleyball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chasehq"
for %%a in ("Taito Chase H.Q.") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"taknhoop"
for %%a in ("Takin' It to the Hoop") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"talespin"
for %%a in ("TaleSpin") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"legaxe"
for %%a in ("The Legendary Axe") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"legaxe2"
for %%a in ("The Legendary Axe II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tigerrod"
for %%a in ("Tiger Road") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"timcrus"
for %%a in ("Time Cruise") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"timeball"
for %%a in ("Timeball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tricky"
for %%a in ("Tricky Kick") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"turrican"
for %%a in ("Turrican") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tvbasket"
for %%a in ("TV Sports Basketball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tvfootbl"
for %%a in ("TV Sports Football") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tvhockey"
for %%a in ("TV Sports Hockey") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"veigues"
for %%a in ("Veigues - Tactical Gladiator") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"victoryr"
for %%a in ("Victory Run") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vigilant"
for %%a in ("Vigilante") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcbasebl"
for %%a in ("World Class Baseball") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wctennis"
for %%a in ("World Court Tennis") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wscomp"
for %%a in ("World Sports Competition") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"yobro"
for %%a in ("Yo, Bro") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
