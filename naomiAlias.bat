cd "%GBG%\%GAM%\%CONS%\%NAOMI%"
goto :SORTOUT
:INTO
mkdir "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" & move /y "%ROM%" "%NWDIR%"
exit /b

:SORTOUT
cd "%GBG%\%GAM%\%CONS%\%NAOMI%"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROM=%%~nxa
call :"%%~a"
)
move /Y naomi2.zip "%GBE%\%EMUZ%\%DMUL%\roms\naomi2.zip"
move /Y naomi.zip "%GBE%\%EMUZ%\%DMUL%\roms\naomi.zip"
move /Y naomigd.zip "%GBE%\%EMUZ%\%DMUL%\roms\naomigd.zip"
move /Y ngdup23a.zip "%GBE%\%EMUZ%\%DMUL%\roms\ngdup23a.zip"
move /Y ngdup23c.zip "%GBE%\%EMUZ%\%DMUL%\roms\ngdup23c.zip"
move /Y ngdup23e.zip "%GBE%\%EMUZ%\%DMUL%\roms\ngdup23e.zip"
move /Y ngdup42a.zip "%GBE%\%EMUZ%\%DMUL%\roms\ngdup42a.zip"
move /Y mie.zip "%GBE%\%EMUZ%\%DMUL%\roms\mie.zip"
exit /b

:"18wheelr.zip"
for %%a in ("18 Wheeler DX") do set NWDIR=%%~a
call :INTO
exit /b
:"18wheels.zip"
for %%a in ("18 Wheeler DX (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"18whlrur.zip"
for %%a in ("18 Wheeler") do set NWDIR=%%~a
call :INTO
exit /b
:"alienfnt.zip"
for %%a in ("Alien Front") do set NWDIR=%%~a
call :INTO
exit /b
:"alienfnta.zip"
for %%a in ("Alien Front (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"alpiltdx.zip"
for %%a in ("Airline Pilots Deluxe") do set NWDIR=%%~a
call :INTO
exit /b
:"alpilota.zip"
for %%a in ("Airline Pilots") do set NWDIR=%%~a
call :INTO
exit /b
:"asndynmt.zip"
for %%a in ("Dynamite Deka EX") do set NWDIR=%%~a
call :INTO
exit /b
:"ausfache.zip"
for %%a in ("Akatsuki Blitzkampf Ausf. Achse") do set NWDIR=%%~a
call :INTO
exit /b
:"capsnk.zip"
for %%a in ("Capcom Vs. SNK Millennium Fight 2000") do set NWDIR=%%~a
call :INTO
exit /b
:"capsnka.zip"
for %%a in ("Capcom Vs. SNK Millennium Fight 2000 (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"crackndj.zip"
for %%a in ("Crack'n DJ") do set NWDIR=%%~a
call :INTO
exit /b
:"crzytaxi.zip"
for %%a in ("Crazy Taxi") do set NWDIR=%%~a
call :INTO
exit /b
:"csmash.zip"
for %%a in ("Cosmic Smash (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"csmasho.zip"
for %%a in ("Cosmic Smash") do set NWDIR=%%~a
call :INTO
exit /b
:"cspike.zip"
for %%a in ("Cannon Spike") do set NWDIR=%%~a
call :INTO
exit /b
:"deathcox.zip"
for %%a in ("Death Crimson OX") do set NWDIR=%%~a
call :INTO
exit /b
:"derbyoc.zip"
for %%a in ("Derby Owners Club") do set NWDIR=%%~a
call :INTO
exit /b
:"derbyo2k.zip"
for %%a in ("Derby Owners Club 2000 Ver.2") do set NWDIR=%%~a
call :INTO
exit /b
:"derbyocw.zip"
for %%a in ("Derby Owners Club World Edition") do set NWDIR=%%~a
call :INTO
exit /b
:"drbyocwc.zip"
for %%a in ("Derby Owners Club World Edition (Rev. C)") do set NWDIR=%%~a
call :INTO
exit /b
:"derbyoc2.zip"
for %%a in ("Derby Owners Club II") do set NWDIR=%%~a
call :INTO
exit /b
:"doa2.zip"
for %%a in ("Dead or Alive 2") do set NWDIR=%%~a
call :INTO
exit /b
:"doa2m.zip"
for %%a in ("Dead or Alive 2 Millennium") do set NWDIR=%%~a
call :INTO
exit /b
:"dybb99.zip"
for %%a in ("World Series 99") do set NWDIR=%%~a
call :INTO
exit /b
:"dybbnao.zip"
for %%a in ("Dynamite Baseball") do set NWDIR=%%~a
call :INTO
exit /b
:"f355.zip"
for %%a in ("Ferrari F355 Challenge") do set NWDIR=%%~a
call :INTO
exit /b
:"f355twin.zip"
for %%a in ("Ferrari F355 Challenge (Twin)") do set NWDIR=%%~a
call :INTO
exit /b
:"f355twn2.zip"
for %%a in ("Ferrari F355 Challenge 2") do set NWDIR=%%~a
call :INTO
exit /b
:"ggram2.zip"
for %%a in ("Giant Gram - All Japan Pro Wrestling 2") do set NWDIR=%%~a
call :INTO
exit /b
:"ggx.zip"
for %%a in ("Guilty Gear X") do set NWDIR=%%~a
call :INTO
exit /b
:"gram2000.zip"
for %%a in ("Giant Gram 2000") do set NWDIR=%%~a
call :INTO
exit /b
:"gundmct.zip"
for %%a in ("Mobile Suit Gundam - Federation Vs. Zeon") do set NWDIR=%%~a
call :INTO
exit /b
:"gunsur2.zip"
for %%a in ("Gun Survivor 2 Biohazard Code - Veronica") do set NWDIR=%%~a
call :INTO
exit /b
:"gwing2.zip"
for %%a in ("Giga Wing 2") do set NWDIR=%%~a
call :INTO
exit /b
:"hmgeo.zip"
for %%a in ("Heavy Metal Geomatrix") do set NWDIR=%%~a
call :INTO
exit /b
:"hopperbd.zip"
for %%a in ("Hopper Board") do set NWDIR=%%~a
call :INTO
exit /b
:"hotd2.zip"
for %%a in ("House of the Dead 2") do set NWDIR=%%~a
call :INTO
exit /b
:"hotd2o.zip"
for %%a in ("House of the Dead 2 (original)") do set NWDIR=%%~a
call :INTO
exit /b
:"hotd2p.zip"
for %%a in ("House of the Dead 2 (prototype)") do set NWDIR=%%~a
call :INTO
exit /b
:"illvelo.zip"
for %%a in ("Illmatic Envelope") do set NWDIR=%%~a
call :INTO
exit /b
:"inunoos.zip"
for %%a in ("Inu No Osanpo") do set NWDIR=%%~a
call :INTO
exit /b
:"jambo.zip"
for %%a in ("Jambo! Safari") do set NWDIR=%%~a
call :INTO
exit /b
:"kick4csh.zip"
for %%a in ("Kick '4' Cash") do set NWDIR=%%~a
call :INTO
exit /b
:"mamonoro.zip"
for %%a in ("Mamoru-kun wa Norowarete Shimatta!") do set NWDIR=%%~a
call :INTO
exit /b
:"mazan.zip"
for %%a in ("Mazan - Flash of The Blade") do set NWDIR=%%~a
call :INTO
exit /b
:"mbaa.zip"
for %%a in ("Melty Blood Actress Again") do set NWDIR=%%~a
call :INTO
exit /b
:"mbaaa.zip"
for %%a in ("Melty Blood Actress Again (Ver. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"mushik2e.zip"
for %%a in ("Mushiking The King Of Beetles II ENG (Ver. 1.001)") do set NWDIR=%%~a
call :INTO
exit /b
:"mushi2ea.zip"
for %%a in ("Mushiking The King Of Beetles II") do set NWDIR=%%~a
call :INTO
exit /b
:"mtkob2.zip"
for %%a in ("Mushiking The King Of Beetles 2k3 2nd") do set NWDIR=%%~a
call :INTO
exit /b
:"mvsc2.zip"
for %%a in ("Marvel Vs. Capcom 2 New Age of Heroes") do set NWDIR=%%~a
call :INTO
exit /b
:"oinori.zip"
for %%a in ("Oinori") do set NWDIR=%%~a
call :INTO
exit /b
:"otrigger.zip"
for %%a in ("OutTrigger") do set NWDIR=%%~a
call :INTO
exit /b
:"pjustic.zip"
for %%a in ("Project Justice") do set NWDIR=%%~a
call :INTO
exit /b
:"pokasuka.zip"
for %%a in ("Manic Panic Ghosts!") do set NWDIR=%%~a
call :INTO
exit /b
:"pstone.zip"
for %%a in ("Power Stone") do set NWDIR=%%~a
call :INTO
exit /b
:"pstone2.zip"
for %%a in ("Power Stone 2") do set NWDIR=%%~a
call :INTO
exit /b
:"puyoda.zip"
for %%a in ("Puyo Puyo Da!") do set NWDIR=%%~a
call :INTO
exit /b
:"qmegamis.zip"
for %%a in ("Quiz Ah Megamisama") do set NWDIR=%%~a
call :INTO
exit /b
:"radirgyn.zip"
for %%a in ("Radirgy Noa") do set NWDIR=%%~a
call :INTO
exit /b
:"ringout.zip"
for %%a in ("Ring Out 4x4") do set NWDIR=%%~a
call :INTO
exit /b
:"samba.zip"
for %%a in ("Samba De Amigo") do set NWDIR=%%~a
call :INTO
exit /b
:"samba2k.zip"
for %%a in ("Samba De Amigo Ver. 2000") do set NWDIR=%%~a
call :INTO
exit /b
:"sgtetris.zip"
for %%a in ("Sega Tetris") do set NWDIR=%%~a
call :INTO
exit /b
:"shangril.zip"
for %%a in ("Dengen Tenshi Taisen Janshi Shangri-la") do set NWDIR=%%~a
call :INTO
exit /b
:"shootopl.zip"
for %%a in ("Shootout Pool") do set NWDIR=%%~a
call :INTO
exit /b
:"shootpl.zip"
for %%a in ("Shootout Pool") do set NWDIR=%%~a
call :INTO
exit /b
:"shootplm.zip"
for %%a in ("Shootout Pool Medal") do set NWDIR=%%~a
call :INTO
exit /b
:"sl2007.zip"
for %%a in ("Shooting Love 2007") do set NWDIR=%%~a
call :INTO
exit /b
:"slasho.zip"
for %%a in ("Slashout") do set NWDIR=%%~a
call :INTO
exit /b
:"smarinef.zip"
for %%a in ("Sega Marine Fishing") do set NWDIR=%%~a
call :INTO
exit /b
:"smlg99.zip"
for %%a in ("Super Major League 99") do set NWDIR=%%~a
call :INTO
exit /b
:"spawn.zip"
for %%a in ("Spawn In the Demon's Hand") do set NWDIR=%%~a
call :INTO
exit /b
:"sstrkfgt.zip"
for %%a in ("Sega Strike Fighter") do set NWDIR=%%~a
call :INTO
exit /b
:"suchie3.zip"
for %%a in ("Idol Janshi Suchie-Pai 3") do set NWDIR=%%~a
call :INTO
exit /b
:"tduno2.zip"
for %%a in ("Touch De Uno! 2") do set NWDIR=%%~a
call :INTO
exit /b
:"totd.zip"
for %%a in ("The Typing of the Dead") do set NWDIR=%%~a
call :INTO
exit /b
:"toukon4.zip"
for %%a in ("Shin Nihon Prowrestling Toukon Retsuden 4 Arcade Edition") do set NWDIR=%%~a
call :INTO
exit /b
:"toyfight.zip"
for %%a in ("Toy Fighter") do set NWDIR=%%~a
call :INTO
exit /b
:"virnba.zip"
for %%a in ("Virtua NBA") do set NWDIR=%%~a
call :INTO
exit /b
:"virnbao.zip"
for %%a in ("Virtua NBA (original)") do set NWDIR=%%~a
call :INTO
exit /b
:"virnbap.zip"
for %%a in ("Virtua NBA (prototype)") do set NWDIR=%%~a
call :INTO
exit /b
:"vonot.zip"
for %%a in ("Virtual ON Oratorio Tangram M.S.B.S. Ver. 5.66") do set NWDIR=%%~a
call :INTO
exit /b
:"vs2_2k.zip"
for %%a in ("Virtua Striker 2 Ver. 2000 (Rev. C)") do set NWDIR=%%~a
call :INTO
exit /b
:"vtennis.zip"
for %%a in ("Virtua Tennis") do set NWDIR=%%~a
call :INTO
exit /b
:"vtenis2c.zip"
for %%a in ("Virtua Tennis 2") do set NWDIR=%%~a
call :INTO
exit /b
:"wldkicks.zip"
for %%a in ("World Kicks") do set NWDIR=%%~a
call :INTO
exit /b
:"wrungp.zip"
for %%a in ("Wave Runner GP") do set NWDIR=%%~a
call :INTO
exit /b
:"wwfroyal.zip"
for %%a in ("WWF Royal Rumble") do set NWDIR=%%~a
call :INTO
exit /b
:"zerogu2.zip"
for %%a in ("Zero Gunner 2") do set NWDIR=%%~a
call :INTO
exit /b
:"zombrvn.zip"
for %%a in ("Zombie Revenge") do set NWDIR=%%~a
call :INTO
exit /b
:"zunou.zip"
for %%a in ("Touch de Zunou") do set NWDIR=%%~a
call :INTO
exit /b
:"azumanga.zip"
for %%a in ("Azumanga Daioh Puzzle Bobble") do set NWDIR=%%~a
call :INTO
exit /b
:"bdrdown.zip"
for %%a in ("Border Down") do set NWDIR=%%~a
call :INTO
exit /b
:"cfield.zip"
for %%a in ("Chaos Field") do set NWDIR=%%~a
call :INTO
exit /b
:"chocomk.zip"
for %%a in ("Musapey's Choco Marker") do set NWDIR=%%~a
call :INTO
exit /b
:"cleoftp.zip"
for %%a in ("Cleopatra Fortune Plus") do set NWDIR=%%~a
call :INTO
exit /b
:"confmiss.zip"
for %%a in ("Confidential Mission") do set NWDIR=%%~a
call :INTO
exit /b
:"cvs2gd.zip"
for %%a in ("Capcom vs SNK 2 Millionaire Fighting 2001") do set NWDIR=%%~a
call :INTO
exit /b
:"cvsgd.zip"
for %%a in ("Capcom vs SNK Millenium Fight 2000 Pro") do set NWDIR=%%~a
call :INTO
exit /b
:"dygolf.zip"
for %%a in ("Virtua Golf") do set NWDIR=%%~a
call :INTO
exit /b
:"ggxx.zip"
for %%a in ("Guilty Gear XX") do set NWDIR=%%~a
call :INTO
exit /b
:"ggxxac.zip"
for %%a in ("Guilty Gear XX Accent Core") do set NWDIR=%%~a
call :INTO
exit /b
:"ggxxrl.zip"
for %%a in ("Guilty Gear XX #Reload") do set NWDIR=%%~a
call :INTO
exit /b
:"ggxxsla.zip"
for %%a in ("Guilty Gear XX Slash") do set NWDIR=%%~a
call :INTO
exit /b
:"gundmgd.zip"
for %%a in ("Mobile Suit Gundam - Federation Vs. Zeon") do set NWDIR=%%~a
call :INTO
exit /b
:"gundmxgd.zip"
for %%a in ("Mobile Suit Gundam - Federation Vs. Zeon DX") do set NWDIR=%%~a
call :INTO
exit /b
:"ikaruga.zip"
for %%a in ("Ikaruga (GDL-0010)") do set NWDIR=%%~a
call :INTO
exit /b
:"jingystm.zip"
for %%a in ("Jingi Storm - The Arcade") do set NWDIR=%%~a
call :INTO
exit /b
:"karous.zip"
for %%a in ("Karous") do set NWDIR=%%~a
call :INTO
exit /b
:"keyboard.zip"
for %%a in ("La Keyboard") do set NWDIR=%%~a
call :INTO
exit /b
:"kurucham.zip"
for %%a in ("Kurukuru Chameleon") do set NWDIR=%%~a
call :INTO
exit /b
:"lupinsho.zip"
for %%a in ("Lupin The Third - The Shooting") do set NWDIR=%%~a
call :INTO
exit /b
:"luptype.zip"
for %%a in ("Lupin The Third - The Typing") do set NWDIR=%%~a
call :INTO
exit /b
:"meltyb.zip"
for %%a in ("Melty Blood Act Cadenza") do set NWDIR=%%~a
call :INTO
exit /b
:"meltyba.zip"
for %%a in ("Melty Blood Act Cadenza Ver B (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"meltybld.zip"
for %%a in ("Melty Blood Act Cadenza Ver A") do set NWDIR=%%~a
call :INTO
exit /b
:"moeru.zip"
for %%a in ("Moeru Casinyo") do set NWDIR=%%~a
call :INTO
exit /b
:"mok.zip"
for %%a in ("Maze of the Kings, The") do set NWDIR=%%~a
call :INTO
exit /b
:"monkeyba.zip"
for %%a in ("Monkey Ball") do set NWDIR=%%~a
call :INTO
exit /b
:"psyvar2.zip"
for %%a in ("Psyvariar 2 - The Will To Fabricate") do set NWDIR=%%~a
call :INTO
exit /b
:"puyofev.zip"
for %%a in ("Puyo Puyo Fever") do set NWDIR=%%~a
call :INTO
exit /b
:"quizqgd.zip"
for %%a in ("Quiz Keitai Q mode") do set NWDIR=%%~a
call :INTO
exit /b
:"radirgy.zip"
for %%a in ("Radirgy") do set NWDIR=%%~a
call :INTO
exit /b
:"senko.zip"
for %%a in ("Senko No Ronde NEW") do set NWDIR=%%~a
call :INTO
exit /b
:"senkoo.zip"
for %%a in ("Senko No Ronde") do set NWDIR=%%~a
call :INTO
exit /b
:"senkosp.zip"
for %%a in ("Senko No Ronde Special") do set NWDIR=%%~a
call :INTO
exit /b
:"sfz3ugd.zip"
for %%a in ("Street Fighter Zero 3 Upper") do set NWDIR=%%~a
call :INTO
exit /b
:"shaktamb.zip"
for %%a in ("Shakatto Tambourine Cho Powerup Chu") do set NWDIR=%%~a
call :INTO
exit /b
:"shikgam2.zip"
for %%a in ("The Castle of Shikigami II") do set NWDIR=%%~a
call :INTO
exit /b
:"slashout.zip"
for %%a in ("Slashout") do set NWDIR=%%~a
call :INTO
exit /b
:"spkrbtl.zip"
for %%a in ("Spikers Battle") do set NWDIR=%%~a
call :INTO
exit /b
:"sprtjam.zip"
for %%a in ("Sports Jam") do set NWDIR=%%~a
call :INTO
exit /b
:"ss2005.zip"
for %%a in ("Super Shanghai 2005") do set NWDIR=%%~a
call :INTO
exit /b
:"ss2005a.zip"
for %%a in ("Super Shanghai 2005 (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"starseek.zip"
for %%a in ("Doki Doki Idol Star Seeker") do set NWDIR=%%~a
call :INTO
exit /b
:"takoron.zip"
for %%a in ("Noukone Puzzle Takoron") do set NWDIR=%%~a
call :INTO
exit /b
:"tetkiwam.zip"
for %%a in ("Tetris Kiwamemichi") do set NWDIR=%%~a
call :INTO
exit /b
:"trgheart.zip"
for %%a in ("Trigger Heart Exelica") do set NWDIR=%%~a
call :INTO
exit /b
:"trizeal.zip"
for %%a in ("Trizeal") do set NWDIR=%%~a
call :INTO
exit /b
:"undefeat.zip"
for %%a in ("Under Defeat") do set NWDIR=%%~a
call :INTO
exit /b
:"usagiym.zip"
for %%a in ("Usagui - Yamashiro Mahjong Hen") do set NWDIR=%%~a
call :INTO
exit /b
:"vathlete.zip"
for %%a in ("Virtua Athletics") do set NWDIR=%%~a
call :INTO
exit /b
:"vtennis2.zip"
for %%a in ("Virtua Tennis 2") do set NWDIR=%%~a
call :INTO
exit /b
:"vtennisg.zip"
for %%a in ("Virtua Tennis") do set NWDIR=%%~a
call :INTO
exit /b
:"wsbbgd.zip"
for %%a in ("World Series Baseball") do set NWDIR=%%~a
call :INTO
exit /b
:"clubkrte.zip"
for %%a in ("Club Kart - European Session (2001)") do set NWDIR=%%~a
call :INTO
exit /b
:"clubkrtd.zip"
for %%a in ("Club Kart - European Session (2001) (Rev. D)") do set NWDIR=%%~a
call :INTO
exit /b
:"clubk2k3.zip"
for %%a in ("Club Kart - European Session (2003)") do set NWDIR=%%~a
call :INTO
exit /b
:"kingrt66.zip"
for %%a in ("King of Route 66, The") do set NWDIR=%%~a
call :INTO
exit /b
:"soulsurf.zip"
for %%a in ("Soul Surfer") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4cart.zip"
for %%a in ("Virtua Fighter 4 (Cart)") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4evoct.zip"
for %%a in ("Virtua Fighter 4 Evolution") do set NWDIR=%%~a
call :INTO
exit /b
:"vstrik3c.zip"
for %%a in ("Virtua Striker 3 (Rev. C)") do set NWDIR=%%~a
call :INTO
exit /b
:"vstrik3cb.zip"
for %%a in ("Virtua Striker 3 (Rev. B)") do set NWDIR=%%~a
call :INTO
exit /b
:"wldrider.zip"
for %%a in ("Wild Rider") do set NWDIR=%%~a
call :INTO
exit /b
:"beachspi.zip"
for %%a in ("Beach Spikers") do set NWDIR=%%~a
call :INTO
exit /b
:"initd.zip"
for %%a in ("Initial D Arcade Stage") do set NWDIR=%%~a
call :INTO
exit /b
:"initdexp.zip"
for %%a in ("Initial D Arcade Stage (Export)") do set NWDIR=%%~a
call :INTO
exit /b
:"initdv2e.zip"
for %%a in ("Initial D Arcade Stage Ver. 2") do set NWDIR=%%~a
call :INTO
exit /b
:"initdv2jo.zip"
for %%a in ("Initial D Arcade Stage Ver. 2 (Japan)") do set NWDIR=%%~a
call :INTO
exit /b
:"initdv2j.zip"
for %%a in ("Initial D Arcade Stage Ver. 2 (Japan) (Rev. B) (GDS-0026B)") do set NWDIR=%%~a
call :INTO
exit /b
:"initdv3e.zip"
for %%a in ("Initial D Arcade Stage Ver. 3 (Export)") do set NWDIR=%%~a
call :INTO
exit /b
:"initdv3jb.zip"
for %%a in ("Initial D Arcade Stage Ver. 3 (Japan) (Rev. B) (GDS-0032B)") do set NWDIR=%%~a
call :INTO
exit /b
:"initdv3j.zip"
for %%a in ("Initial D Arcade Stage Ver. 3 (Japan)") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4.zip"
for %%a in ("Virtua Fighter 4") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4b.zip"
for %%a in ("Virtua Fighter 4 (Rev. B)") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4c.zip"
for %%a in ("Virtua Fighter 4 (Rev. C)") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4evo.zip"
for %%a in ("Virtua Fighter 4 Evolution") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4evoa.zip"
for %%a in ("Virtua Fighter 4 Evolution (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4tuned.zip"
for %%a in ("Virtua Fighter 4 Final Tuned") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4tuneda.zip"
for %%a in ("Virtua Fighter 4 Final Tuned (Rev. A)") do set NWDIR=%%~a
call :INTO
exit /b
:"vf4tunedd.zip"
for %%a in ("Virtua Fighter 4 Final Tuned (Rev. D)") do set NWDIR=%%~a
call :INTO
exit /b
:"vstrik3.zip"
for %%a in ("Virtua Striker 3") do set NWDIR=%%~a
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
for %%a in ("Virtua Fighter 3") do set NWDIR=%%~a
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
for %%a in ("Scud Race") do set NWDIR=%%~a
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
for %%a in ("Virtua Striker 2 (Step 1.5)") do set NWDIR=%%~a
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
for %%a in ("Virtua Striker 2") do set NWDIR=%%~a
call :INTO
exit /b
:"harley.zip"
for %%a in ("Harley-Davidson and L.A. Riders") do set NWDIR=%%~a
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
for %%a in ("Virtual On 2 - Oratorio Tangram") do set NWDIR=%%~a
call :INTO
exit /b
:"von254g.zip"
for %%a in ("Virtual On 2 - Oratorio Tangram (Ver. 5.4g)") do set NWDIR=%%~a
call :INTO
exit /b
:"fvipers2.zip"
for %%a in ("Fighting Vipers 2") do set NWDIR=%%~a
call :INTO
exit /b
:"vs298.zip"
for %%a in ("Virtua Striker 2 '98") do set NWDIR=%%~a
call :INTO
exit /b
:"vs2v991.zip"
for %%a in ("Virtua Striker 2 '99.1") do set NWDIR=%%~a
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
for %%a in ("Daytona USA 2") do set NWDIR=%%~a
call :INTO
exit /b
:"dayto2pe.zip"
for %%a in ("Daytona USA 2 Power Edition") do set NWDIR=%%~a
call :INTO
exit /b
:"dirtdvls.zip"
for %%a in ("Dirt Devils") do set NWDIR=%%~a
call :INTO
exit /b
:"dirtdvlsa.zip"
for %%a in ("Dirt Devils (Rev. A)") do set NWDIR=%%~a
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
:"usagui.zip"
for %%a in ("Usagi - Yamashiro Mahjong Hen (GDL-0022)") do set NWDIR=%%~a
call :INTO
exit /b
:naomiout