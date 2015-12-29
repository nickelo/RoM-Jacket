goto :SORTOUT

:SORTOUT
cd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/l/a "*.zip" "*.bin"') do (
SET ROM=%%~nxa
call :"%%~na"
)
exit /b

:"007shitou"
for %%a in ("007 Shitou - The Duel (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"12in1"
for %%a in ("12 in 1") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"13mahjan"
for %%a in ("13 Ma Jiang - 98 Mei Shao Nu Pian (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"16tongnk"
for %%a in ("16 Ton (Jpn, Game no Kandume MegaCD Rip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"16ton"
for %%a in ("16 Ton (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"16zhan"
for %%a in ("16 Zhang Ma Jiang (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"2020bbj"
for %%a in ("2020 Toshi Super Baseball (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"3in1fl"
for %%a in ("3 in 1 Flashback - World Champ. Soccer - Tecmo World Cup 92 (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"3in1ro"
for %%a in ("3 in 1 Road Rash - Ms. Pac-Man - Block Out (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"3ninja"
for %%a in ("3 Ninjas Kick Back (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"4in1pb"
for %%a in ("4 in 1 (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"6pak"
for %%a in ("6-Pak (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"688atsub"
for %%a in ("688 Attack Sub (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bugslife"
for %%a in ("A Bug's Life") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bugslifea"
for %%a in ("A Bug's Life (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dinotale"
for %%a in ("A Dinosaur's Tale (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aresshmd"
for %%a in ("A Ressha de Ikou MD - Take the 'A' Train (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aaharima"
for %%a in ("Aa Harimanada (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aaahhrm"
for %%a in ("AAAHH!!! Real Monsters (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aaahhrmu"
for %%a in ("AAAHH!!! Real Monsters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"action52"
for %%a in ("Action 52 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"action52a"
for %%a in ("Action 52 (USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ar"
for %%a in ("Action Replay (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"addfamv"
for %%a in ("Addams Family Values (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advdaisn"
for %%a in ("Advanced Daisenryaku - Deutsch Dengeki Sakusen (Jpn, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"adveboy"
for %%a in ("Adventurous Boy - Mao Xian Xiao Zi (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aeroblst"
for %%a in ("Aero Blasters - Trouble Specialty Raid Unit (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aero"
for %%a in ("Aero the Acro-Bat (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aerop"
for %%a in ("Aero the Acro-Bat (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aerou"
for %%a in ("Aero the Acro-Bat (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aero2"
for %%a in ("Aero the Acro-Bat 2 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aero2u"
for %%a in ("Aero the Acro-Bat 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aerobiz"
for %%a in ("Aerobiz (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aerobizs"
for %%a in ("Aerobiz Supersonic (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aburner2"
for %%a in ("After Burner II (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aburner2j"
for %%a in ("After Burner II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"airbustr"
for %%a in ("Air Buster - Trouble Specialty Raid Unit (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"airdiverj"
for %%a in ("Air Diver (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"airdiver"
for %%a in ("Air Diver (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"airmanag"
for %%a in ("Air Management - Oozora ni Kakeru (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"airmang2"
for %%a in ("Air Management II - Koukuuou o Mezase (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"akumajo"
for %%a in ("Akumajou Dracula - Vampire Killer (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aladdin2"
for %%a in ("Aladdin II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alexkiddk"
for %%a in ("Alex Kidd - Cheongong Maseong (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alexkidd1"
for %%a in ("Alex Kidd in the Enchanted Castle (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alexkidd"
for %%a in ("Alex Kidd in the Enchanted Castle (Euro, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alexkiddj"
for %%a in ("Alex Kidd in the Enchanted Castle (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alexkiddu"
for %%a in ("Alex Kidd in the Enchanted Castle (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aliensol"
for %%a in ("Alien Soldier (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aliensolj"
for %%a in ("Alien Soldier (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"astorm"
for %%a in ("Alien Storm (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alien3a"
for %%a in ("Alien3 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alien3"
for %%a in ("Alien3 (Euro, USA, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alisiad"
for %%a in ("Alisia Dragoon (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alisiadj"
for %%a in ("Alisia Dragoon (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"alisiadu"
for %%a in ("Alisia Dragoon (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"altbeast"
for %%a in ("Altered Beast (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"amerglad"
for %%a in ("American Gladiators (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"agassi"
for %%a in ("Andre Agassi Tennis (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"agassiu"
for %%a in ("Andre Agassi Tennis (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"agassiup"
for %%a in ("Andre Agassi Tennis (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"animania"
for %%a in ("Animaniacs (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"animaniau"
for %%a in ("Animaniacs (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"anotherw"
for %%a in ("Another World (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"genchohi"
for %%a in ("Aoki Ookami to Shiroki Meshika - Genchou Hishi (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aqrenk"
for %%a in ("Aq Renkan Awa (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"arcadecl"
for %%a in ("Arcade Classics (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"archrivl"
for %%a in ("Arch Rivals (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"arcusj"
for %%a in ("Arcus Odyssey (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"arcus"
for %%a in ("Arcus Odyssey (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"arnoldp"
for %%a in ("Arnold Palmer Tournament Golf (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"arrow"
for %%a in ("Arrow Flash (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"arrow1"
for %%a in ("Arrow Flash (World, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"artalive"
for %%a in ("Art Alive (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aof"
for %%a in ("Art of Fighting (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aofp"
for %%a in ("Art of Fighting (Prototype, 19940711)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aofu"
for %%a in ("Art of Fighting (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"arttool"
for %%a in ("Art Tool") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"leynos"
for %%a in ("Assault Suit Leynos (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"astergre"
for %%a in ("Asterix and the Great Rescue (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"astergreu"
for %%a in ("Asterix and the Great Rescue (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"asterpg"
for %%a in ("Asterix and the Power of the Gods (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"asterpgp"
for %%a in ("Asterix and the Power of the Gods (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atomroboj"
for %%a in ("Atomic Robo-Kid (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atomrobo"
for %%a in ("Atomic Robo-Kid (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atomrun"
for %%a in ("Atomic Runner (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atomrunu"
for %%a in ("Atomic Runner (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atptour"
for %%a in ("ATP Tour (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atptourp7"
for %%a in ("ATP Tour Championship Tennis (Prototype, 19940509)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atptourp6"
for %%a in ("ATP Tour Championship Tennis (Prototype, 19940719)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atptourp5"
for %%a in ("ATP Tour Championship Tennis (Prototype, 19940723)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atptourp4"
for %%a in ("ATP Tour Championship Tennis (Prototype, 19940802)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atptourp3"
for %%a in ("ATP Tour Championship Tennis (Prototype, 19940805)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atptourp2"
for %%a in ("ATP Tour Championship Tennis (Prototype, 19940808)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atptourp1"
for %%a in ("ATP Tour Championship Tennis (Prototype, 19940908)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"atptouru"
for %%a in ("ATP Tour Championship Tennis (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"austrarl"
for %%a in ("Australian Rugby League (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"avatar"
for %%a in ("Avatar (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"awepossm"
for %%a in ("Awesome Possum (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"awepossmp"
for %%a in ("Awesome Possum (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aworg"
for %%a in ("Aworg (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"awspro"
for %%a in ("AWS Pro Moves Soccer (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smgp2"
for %%a in ("Ayrton Senna's Super Monaco GP II (Euro, Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smgp2u"
for %%a in ("Ayrton Senna's Super Monaco GP II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bob"
for %%a in ("B.O.B. (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bobp"
for %%a in ("B.O.B. (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"babyboom1"
for %%a in ("Baby Boom (Prototype, 19940603)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"babyboom2"
for %%a in ("Baby Boom (Prototype, 19940606)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"babyboom"
for %%a in ("Baby Boom (Prototype, 19940811)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"babyd"
for %%a in ("Baby's Day Out (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"babydo"
for %%a in ("Baby's Day Out (USA, Prototype, Earlier)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"backtof3"
for %%a in ("Back to the Future Part III (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"backtof3u"
for %%a in ("Back to the Future Part III (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"badomen"
for %%a in ("Bad Omen (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bahamuts"
for %%a in ("Bahamut Senki (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"balljack"
for %%a in ("Ball Jacks (Euro, Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ballz3d"
for %%a in ("Ballz 3D (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"barbiesm"
for %%a in ("Barbie Super Model (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"barbvac"
for %%a in ("Barbie Vacation Adventure (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bk2p"
for %%a in ("Bare Knuckle II (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bk3"
for %%a in ("Bare Knuckle III (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bk3p"
for %%a in ("Bare Knuckle III (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"barkley"
for %%a in ("Barkley Shut Up and Jam! (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"barkley2"
for %%a in ("Barkley Shut Up and Jam! 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"barkley2p"
for %%a in ("Barkley Shut Up and Jam! 2 (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"barney"
for %%a in ("Barney's Hide ^& Seek Game (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"barver"
for %%a in ("Barver Battle Saga - Tai Kong Zhan Shi (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bassmc"
for %%a in ("BASS Masters Classic (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bassmpro"
for %%a in ("BASS Masters Classic - Pro Edition (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"batman"
for %%a in ("Batman (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"batmanj"
for %%a in ("Batman (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"batmanu"
for %%a in ("Batman (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"batmanrj"
for %%a in ("Batman - Revenge of the Joker (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"batmanf"
for %%a in ("Batman Forever (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"batmanrn"
for %%a in ("Batman Returns (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"battlyui"
for %%a in ("Battle Golfer Yui (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"btlmania"
for %%a in ("Battle Mania (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"btlmanid"
for %%a in ("Battle Mania Daiginjou (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"battlesq"
for %%a in ("Battle Squadron (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"battlems"
for %%a in ("Battlemaster (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"btech"
for %%a in ("BattleTech (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"btoadsdd"
for %%a in ("Battletoads ^& Double Dragon - The Ultimate Team (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"btoads"
for %%a in ("Battletoads (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beastwj"
for %%a in ("Beast Warriors (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beastw"
for %%a in ("Beast Wrestler (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beastbal"
for %%a in ("Beastball (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beavis"
for %%a in ("Beavis and Butt-Head (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beavisu"
for %%a in ("Beavis and Butt-Head (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beavisup"
for %%a in ("Beavis and Butt-Head (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bestofp"
for %%a in ("Best of the Best - Championship Karate (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bestof"
for %%a in ("Best of the Best - Championship Karate (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beyoasis"
for %%a in ("Beyond Oasis (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beyondzt"
for %%a in ("Beyond Zero Tolerance (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bibleadv"
for %%a in ("Bible Adventures (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"billwlsh"
for %%a in ("Bill Walsh College Football (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"billwl95"
for %%a in ("Bill Walsh College Football 95 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bimini"
for %%a in ("Bimini Run (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"biohazrb"
for %%a in ("Bio Hazard Battle (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"biohazrbp"
for %%a in ("Bio Hazard Battle (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sailormn"
for %%a in ("Bishoujo Senshi Sailor Moon (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bladeven"
for %%a in ("Blades of Vengeance (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bmaster2"
for %%a in ("Blaster Master 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bmaster2p"
for %%a in ("Blaster Master 2 (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"blockb"
for %%a in ("Blockbuster World Video Game Championship II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"blockout"
for %%a in ("Blockout (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bloodsht"
for %%a in ("Bloodshot ~ Battle Frenzy (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bluealma"
for %%a in ("Blue Almanac (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bodyco"
for %%a in ("Body Count (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bodycop"
for %%a in ("Body Count (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bodycop5"
for %%a in ("Body Count (Prototype, 19940127)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bodycop4"
for %%a in ("Body Count (Prototype, 19940208)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bodycop3"
for %%a in ("Body Count (Prototype, 19940303)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bodycop2"
for %%a in ("Body Count (Prototype, 19940308)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bodycop1"
for %%a in ("Body Count (Prototype, 19940309)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bnzabros1"
for %%a in ("Bonanza Bros. (Euro, Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bnzabros"
for %%a in ("Bonanza Bros. (Euro, Jpn, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bnzabrosu"
for %%a in ("Bonanza Bros. (USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bonkers"
for %%a in ("Bonkers (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bonkersp5"
for %%a in ("Bonkers (Prototype, 19940328)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bonkersp4"
for %%a in ("Bonkers (Prototype, 19940503)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bonkersp3"
for %%a in ("Bonkers (Prototype, 19941004)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bonkersp2"
for %%a in ("Bonkers (Prototype, 19941025)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bonkersp1"
for %%a in ("Bonkers (Prototype, 19941029)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"booger"
for %%a in ("Boogerman - A Pick and Flick Adventure (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"boogeru"
for %%a in ("Boogerman - A Pick and Flick Adventure (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"boogie"
for %%a in ("Boogie Woogie Bowling (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"boxinglg"
for %%a in ("Boxing Legends of the Ring (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bsteam3"
for %%a in ("Boy Soccer Team III (Jpn, Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dracula"
for %%a in ("Bram Stoker's Dracula (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"draculau"
for %%a in ("Bram Stoker's Dracula (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bretth"
for %%a in ("Brett Hull Hockey '95 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"brianlar1"
for %%a in ("Brian Lara Cricket (Euro, 199503)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"brianlar"
for %%a in ("Brian Lara Cricket (Euro, 199506)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"brianl96a"
for %%a in ("Brian Lara Cricket 96 (Euro, 199603)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"brianl96"
for %%a in ("Brian Lara Cricket 96 (Euro, 199604)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"brutal"
for %%a in ("Brutal - Paws of Fury (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"brutalu"
for %%a in ("Brutal - Paws of Fury (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bubba"
for %%a in ("Bubba'n'Stix (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bubbab"
for %%a in ("Bubba'n'Stix (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bubbau"
for %%a in ("Bubba'n'Stix (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bubble"
for %%a in ("Bubble and Squeak (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bubbleu"
for %%a in ("Bubble and Squeak (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bubsy2"
for %%a in ("Bubsy II (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bubsy"
for %%a in ("Bubsy in Claws Encounters of the Furred Kind (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"buckrog"
for %%a in ("Buck Rogers - Countdown to Doomsday (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"budokan"
for %%a in ("Budokan - The Martial Spirit (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"budokanu"
for %%a in ("Budokan - The Martial Spirit (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bugsbun"
for %%a in ("Bugs Bunny in Double Trouble (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bugsbunu"
for %%a in ("Bugs Bunny in Double Trouble (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bullvsbl"
for %%a in ("Bulls versus Blazers and the NBA Playoffs (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bullvsla"
for %%a in ("Bulls Vs Lakers and the NBA Playoffs (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"burnforc"
for %%a in ("Burning Force (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"burnforcj"
for %%a in ("Burning Force (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"burnforcu"
for %%a in ("Burning Force (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cadash"
for %%a in ("Cadash (USA, Asia, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"caesar"
for %%a in ("Caesar no Yabou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"caesar2"
for %%a in ("Caesar no Yabou II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"caesars"
for %%a in ("Caesars Palace (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"calripkn"
for %%a in ("Cal Ripken Jr. Baseball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cal50"
for %%a in ("Cal.50 - Caliber Fifty (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"calgames"
for %%a in ("California Games (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cfodder"
for %%a in ("Cannon Fodder (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"havoc"
for %%a in ("Capt'n Havoc (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"captaven"
for %%a in ("Captain America and the Avengers (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"captavenu"
for %%a in ("Captain America and the Avengers (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"captavenup"
for %%a in ("Captain America and the Avengers (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"captplan"
for %%a in ("Captain Planet and the Planeteers (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"captplanu"
for %%a in ("Captain Planet and the Planeteers (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"castlillj"
for %%a in ("Castle of Illusion - Fushigi no Oshiro Daibouken (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"castlill"
for %%a in ("Castle of Illusion Starring Mickey Mouse (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cvaniau"
for %%a in ("Castlevania - Bloodlines (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cvania"
for %%a in ("Castlevania - The New Generation (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cvaniap"
for %%a in ("Castlevania - The New Generation (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"centur"
for %%a in ("Centurion - Defender of Rome (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chakan"
for %%a in ("Chakan (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kidchamj"
for %%a in ("Chameleon Kid (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"champwcs"
for %%a in ("Champions World Class Soccer (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"champbwl"
for %%a in ("Championship Bowling (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"champool"
for %%a in ("Championship Pool (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cproam"
for %%a in ("Championship Pro-Am (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cjfuweng"
for %%a in ("Chao Ji Da Fu Weng (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chasehq2"
for %%a in ("Chase H.Q. II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chavez2"
for %%a in ("Chavez II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cheese"
for %%a in ("Cheese Cat-Astrophe Starring Speedy Gonzales (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chelnov"
for %%a in ("Chelnov (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chess"
for %%a in ("Chess") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chester"
for %%a in ("Chester Cheetah - Too Cool to Fool (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chesterw"
for %%a in ("Chester Cheetah - Wild Wild Quest (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chichi"
for %%a in ("Chi Chi's Pro Challenge Golf (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chibim"
for %%a in ("Chibi Maruko-chan - Wakuwaku Shopping (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chiki"
for %%a in ("Chiki Chiki Boys (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chikij"
for %%a in ("Chiki Chiki Boys (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chinesec"
for %%a in ("Chinese Chess") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chinf3"
for %%a in ("Chinese Fighter III (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chinf3a"
for %%a in ("Chinese Fighter III (Chi, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"miracle9"
for %%a in ("Chou Kyuukai Miracle Nine (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dinolandj"
for %%a in ("Chou Touryuu Retsuden - Dino Land (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chuckrck"
for %%a in ("Chuck Rock (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chuckrcku"
for %%a in ("Chuck Rock (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chukrck2j"
for %%a in ("Chuck Rock II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chukrck2"
for %%a in ("Chuck Rock II - Son of Chuck (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chukrck2u"
for %%a in ("Chuck Rock II - Son of Chuck (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chukrck2up"
for %%a in ("Chuck Rock II - Son of Chuck (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chucks"
for %%a in ("Chuck's Excellent Art Tool Animator (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"classicc"
for %%a in ("Classic Collection (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"clayfght"
for %%a in ("Clay Fighter (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"clayfghtu"
for %%a in ("Clay Fighter (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cliffh"
for %%a in ("Cliffhanger (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cliffhp"
for %%a in ("Cliffhanger (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cliffhu"
for %%a in ("Cliffhanger (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"clue"
for %%a in ("Clue (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"coachk"
for %%a in ("Coach K College Basketball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"colleg96"
for %%a in ("College Football USA 96 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"colleg97"
for %%a in ("College Football USA 97 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp19"
for %%a in ("College Football's National Championship (Prototype, 19940413)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp18"
for %%a in ("College Football's National Championship (Prototype, 19940418)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp17"
for %%a in ("College Football's National Championship (Prototype, 19940419)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp16"
for %%a in ("College Football's National Championship (Prototype, 19940429)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnp15"
for %%a in ("College Football's National Championship (Prototype, 19940503)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnp14"
for %%a in ("College Football's National Championship (Prototype, 19940506)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnp13"
for %%a in ("College Football's National Championship (Prototype, 19940511-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnp12"
for %%a in ("College Football's National Championship (Prototype, 19940517-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnp11"
for %%a in ("College Football's National Championship (Prototype, 19940520)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnp10"
for %%a in ("College Football's National Championship (Prototype, 19940525)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnp09"
for %%a in ("College Football's National Championship (Prototype, 19940531)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp08"
for %%a in ("College Football's National Championship (Prototype, 19940601)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp07"
for %%a in ("College Football's National Championship (Prototype, 19940603)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp06"
for %%a in ("College Football's National Championship (Prototype, 19940607)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp05"
for %%a in ("College Football's National Championship (Prototype, 19940608)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp04"
for %%a in ("College Football's National Championship (Prototype, 19940614)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collncp03"
for %%a in ("College Football's National Championship (Prototype, 19940615)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnp02"
for %%a in ("College Football's National Championship (Prototype, 19940618)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnp01"
for %%a in ("College Football's National Championship (Prototype, 19940620)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnc"
for %%a in ("College Football's National Championship (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collnc2"
for %%a in ("College Football's National Championship II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"collslam"
for %%a in ("College Slam (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"columns1"
for %%a in ("Columns (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"columns"
for %%a in ("Columns (World, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"columns3"
for %%a in ("Columns III - Revenge of Columns (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"columns3j"
for %%a in ("Columns III - Taiketsu! Columns World (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"combat"
for %%a in ("Combat Aces (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"combatca"
for %%a in ("Combat Cars (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comix"
for %%a in ("Comix Zone (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixp"
for %%a in ("Comix Zone (Euro, Prototype, 19950628)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixj"
for %%a in ("Comix Zone (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixkp"
for %%a in ("Comix Zone (Kor, Prototype, 19950609)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup10"
for %%a in ("Comix Zone (Prototype, 19950526)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup09"
for %%a in ("Comix Zone (Prototype, 19950530)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup05"
for %%a in ("Comix Zone (Prototype, 19950601)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup08"
for %%a in ("Comix Zone (Prototype, 19950601-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup07"
for %%a in ("Comix Zone (Prototype, 19950601-C)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup06"
for %%a in ("Comix Zone (Prototype, 19950601-D)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup03"
for %%a in ("Comix Zone (Prototype, 19950602)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup04"
for %%a in ("Comix Zone (Prototype, 19950602-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup02"
for %%a in ("Comix Zone (Prototype, 19950603)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup01"
for %%a in ("Comix Zone (Prototype, 19950712)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixsc"
for %%a in ("Comix Zone (Sega Channel, Prototype, 19950612)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixu"
for %%a in ("Comix Zone (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"comixup"
for %%a in ("Comix Zone (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"commconq"
for %%a in ("Command ^& Conquer (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"commands"
for %%a in ("Commandos (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"congo"
for %%a in ("Congo (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"contra"
for %%a in ("Contra - Hard Corps (USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"contraj"
for %%a in ("Contra - The Hard Corps (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"coolspot"
for %%a in ("Cool Spot (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"coolspotj"
for %%a in ("Cool Spot (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"coolspotu"
for %%a in ("Cool Spot (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"coolspotup"
for %%a in ("Cool Spot (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"corporat"
for %%a in ("Corporation (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cosmic"
for %%a in ("Cosmic Spacehead (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cstrike"
for %%a in ("Counter Strike (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crkdown1"
for %%a in ("Crack Down (Euro, Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crkdown"
for %%a in ("Crack Down (Euro, Jpn, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crkdownu"
for %%a in ("Crack Down (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crash"
for %%a in ("Crash Bandicoot (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crayon"
for %%a in ("Crayon Shin-chan - Arashi o Yobu Enji (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xfire"
for %%a in ("Cross Fire (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crudeb"
for %%a in ("Crude Buster (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crueball"
for %%a in ("Crue Ball (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crueballj"
for %%a in ("Crue Ball (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crusader"
for %%a in ("Crusader of Centy (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crying"
for %%a in ("Crying - Aseimei Sensou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp15"
for %%a in ("Crystal's Pony Tale (Prototype, 19940511)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp14"
for %%a in ("Crystal's Pony Tale (Prototype, 19940519)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp13"
for %%a in ("Crystal's Pony Tale (Prototype, 19940526)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp12"
for %%a in ("Crystal's Pony Tale (Prototype, 19940601)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp11"
for %%a in ("Crystal's Pony Tale (Prototype, 19940606)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp10"
for %%a in ("Crystal's Pony Tale (Prototype, 19940610)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp09"
for %%a in ("Crystal's Pony Tale (Prototype, 19940623)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp08"
for %%a in ("Crystal's Pony Tale (Prototype, 19940628)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp07"
for %%a in ("Crystal's Pony Tale (Prototype, 19940630)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp06"
for %%a in ("Crystal's Pony Tale (Prototype, 19940701)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp05"
for %%a in ("Crystal's Pony Tale (Prototype, 19940702)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp04"
for %%a in ("Crystal's Pony Tale (Prototype, 19940703)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp02"
for %%a in ("Crystal's Pony Tale (Prototype, 19940712)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp03"
for %%a in ("Crystal's Pony Tale (Prototype, 19940712-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlptp01"
for %%a in ("Crystal's Pony Tale (Prototype, 19940713)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crystlpt"
for %%a in ("Crystal's Pony Tale (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"curse"
for %%a in ("Curse (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cutiesuz"
for %%a in ("Cutie Suzuki no Ringside Angel (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cutthr"
for %%a in ("CutThroat Island (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eswatj"
for %%a in ("Cyber Police ESWAT (Jpn, Rev. 0)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cybercop"
for %%a in ("Cyber-Cop (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cyberbal"
for %%a in ("CyberBall (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cyborgj"
for %%a in ("Cyborg Justice (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cyborgjp"
for %%a in ("Cyborg Justice (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daffy"
for %%a in ("Daffy Duck in Hollywood (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daffyp"
for %%a in ("Daffy Duck in Hollywood (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dahnamk"
for %%a in ("Dahna (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dahnam"
for %%a in ("Dahna Megami Tanjou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daimakai"
for %%a in ("Dai Makaimura (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daikokai"
for %%a in ("Daikoukai Jidai (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daikok2"
for %%a in ("Daikoukai Jidai II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dangseed"
for %%a in ("Dangerous Seed (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"darius2"
for %%a in ("Darius II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"darkcast"
for %%a in ("Dark Castle (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"darwin"
for %%a in ("Darwin 4081 (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dashdes"
for %%a in ("Dashin' Desperadoes (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dashdesp1"
for %%a in ("Dashin' Desperadoes (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dashdesp2"
for %%a in ("Dashin' Desperadoes (USA, Prototype, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"amaznten"
for %%a in ("David Crane's Amazing Tennis (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"drscj"
for %%a in ("David Robinson Basketball (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"drsc"
for %%a in ("David Robinson's Supreme Court (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daviscp2a"
for %%a in ("Davis Cup II (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daviscupa"
for %%a in ("Davis Cup World Tour (Euro, USA, 199306)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daviscup"
for %%a in ("Davis Cup World Tour (Euro, USA, 199307)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"daviscp2"
for %%a in ("Davis Cup World Tour Tennis 2 (Prototype 1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dazexmas"
for %%a in ("Daze Before Christmas (Oceania)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dazexmasp"
for %%a in ("Daze Before Christmas (Oceania, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"deadlymv"
for %%a in ("Deadly Moves (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"deathcal"
for %%a in ("Death Caliber (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"deathdl"
for %%a in ("Death Duel (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"decapatt"
for %%a in ("DecapAttack (Euro, USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"deerhunt"
for %%a in ("Deer Hunter (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"demoman"
for %%a in ("Demolition Man (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"demomanp"
for %%a in ("Demolition Man (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdem"
for %%a in ("Desert Demolition (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdemp9"
for %%a in ("Desert Demolition (Prototype, 19941206)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdemp8"
for %%a in ("Desert Demolition (Prototype, 19941208)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdemp6"
for %%a in ("Desert Demolition (Prototype, 19941212)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdemp7"
for %%a in ("Desert Demolition (Prototype, 19941212-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdemp5"
for %%a in ("Desert Demolition (Prototype, 19941213)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdemp4"
for %%a in ("Desert Demolition (Prototype, 19941214)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdemp3"
for %%a in ("Desert Demolition (Prototype, 19941215)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdemp2"
for %%a in ("Desert Demolition (Prototype, 19941216)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"desrtdemp1"
for %%a in ("Desert Demolition (Prototype, 19941219)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dstrike"
for %%a in ("Desert Strike (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dstrikej"
for %%a in ("Desert Strike (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"devlcrsh"
for %%a in ("Devil Crash MD (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"devilish"
for %%a in ("Devilish - The Next Possession (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"diablo"
for %%a in ("Diablo (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dialqo"
for %%a in ("Dial Q o Mawase! (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dicktr"
for %%a in ("Dick Tracy (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dickvitl"
for %%a in ("Dick Vitale's 'Awesome, Baby!' College Hoops (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dinodini"
for %%a in ("Dino Dini's Soccer (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dinoland"
for %%a in ("Dino Land (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dinohirep3"
for %%a in ("Dinosaurs for Hire (Prototype, 19930426)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dinohirep2"
for %%a in ("Dinosaurs for Hire (Prototype, 19930427)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dinohirep1"
for %%a in ("Dinosaurs for Hire (Prototype, 19930502)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dinohire"
for %%a in ("Dinosaurs for Hire (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aladdin"
for %%a in ("Disney's Aladdin (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aladdinj"
for %%a in ("Disney's Aladdin (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aladdinu"
for %%a in ("Disney's Aladdin (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aladdinup"
for %%a in ("Disney's Aladdin (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ariel"
for %%a in ("Disney's Ariel the Little Mermaid (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beauty"
for %%a in ("Disney's Beauty and the Beast - Belle's Quest (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beautyrb"
for %%a in ("Disney's Beauty and the Beast - Roar of the Beast (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jungle"
for %%a in ("Disney's The Jungle Book (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jungleu"
for %%a in ("Disney's The Jungle Book (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"divine"
for %%a in ("Divine Sealing (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"djboy"
for %%a in ("DJ Boy (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"djboyj"
for %%a in ("DJ Boy (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"djboyu"
for %%a in ("DJ Boy (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"domino"
for %%a in ("Domino") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dominus"
for %%a in ("Dominus (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mauimall"
for %%a in ("Donald in Maui Mallard (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dongguri"
for %%a in ("Dong Gu Ri Te Chi Jak Jeon (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"doomtrop"
for %%a in ("Doom Troopers - The Mutant Chronicles (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"doraemon"
for %%a in ("Doraemon - Yume Dorobou to 7-nin no Gozans (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"doublecl"
for %%a in ("Double Clutch (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddragon"
for %%a in ("Double Dragon (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddragon3"
for %%a in ("Double Dragon 3 - The Arcade Game (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddragon2"
for %%a in ("Double Dragon II - The Revenge (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddragon5"
for %%a in ("Double Dragon V - The Shadow Falls (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddribble"
for %%a in ("Double Dribble - The Playoff Edition (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"drrobotn"
for %%a in ("Dr. Robotnik's Mean Bean Machine (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"drrobotnu"
for %%a in ("Dr. Robotnik's Mean Bean Machine (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"drrobotn1"
for %%a in ("Dr. Robotnik's Mean Bean Machine (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dragon"
for %%a in ("Dragon - The Bruce Lee Story (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dragonu"
for %%a in ("Dragon - The Bruce Lee Story (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dbz"
for %%a in ("Dragon Ball Z - Buyuu Retsuden (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dbzf"
for %%a in ("Dragon Ball Z - L'Appel du Destin (Fra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dslayed"
for %%a in ("Dragon Slayer - Eiyuu Densetsu (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dslayed2"
for %%a in ("Dragon Slayer - Eiyuu Densetsu II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shangh3"
for %%a in ("Dragon's Eye Plus - Shanghai III (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dfury"
for %%a in ("Dragon's Fury (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dlair"
for %%a in ("Dragon's Lair (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dragnrev"
for %%a in ("Dragon's Revenge (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dragnrevj"
for %%a in ("Dragon's Revenge (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dukenk3d"
for %%a in ("Duke Nukem 3D (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dukenk3da"
for %%a in ("Duke Nukem 3D (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"duneu"
for %%a in ("Dune - The Battle for Arrakis (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dune2"
for %%a in ("Dune II - Battle for Arrakis (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dune2g"
for %%a in ("Dune II - Kampf um den Wustenplaneten (Ger)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddwares"
for %%a in ("Dungeons ^& Dragons - Warriors of the Eternal Sun (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dynabr"
for %%a in ("Dyna Brothers (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dynabr2"
for %%a in ("Dyna Brothers 2 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dynabr2sp"
for %%a in ("Dyna Brothers 2 - Sega Channel Special (Jpn, Sega Channel)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dynduke1"
for %%a in ("Dynamite Duke (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dynduke"
for %%a in ("Dynamite Duke (World, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dhead"
for %%a in ("Dynamite Headdy (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dheadj"
for %%a in ("Dynamite Headdy (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dheadjp"
for %%a in ("Dynamite Headdy (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dheadp3"
for %%a in ("Dynamite Headdy (Prototype, 19940614-CABEZA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dheadp2"
for %%a in ("Dynamite Headdy (Prototype, 19940616)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dheadp1"
for %%a in ("Dynamite Headdy (Prototype, 19940622)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dynoblaz"
for %%a in ("Dyno Blaze (Early Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eahockey"
for %%a in ("EA Hockey (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eahockeyj"
for %%a in ("EA Hockey (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"easports"
for %%a in ("EA Sports Double Header (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"earnest"
for %%a in ("Earnest Evans (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"earthdef"
for %%a in ("Earth Defense (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ejim"
for %%a in ("Earthworm Jim (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ejimu"
for %%a in ("Earthworm Jim (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ejim2"
for %%a in ("Earthworm Jim 2 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ejim2u"
for %%a in ("Earthworm Jim 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ecco2"
for %%a in ("Ecco - The Tides of Time (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ecco2px11"
for %%a in ("Ecco - The Tides of Time (Prototype X11, 19940413)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ecco2p"
for %%a in ("Ecco - The Tides of Time (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ecco2p2"
for %%a in ("Ecco - The Tides of Time (Prototype, 19940429)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ecco2p1"
for %%a in ("Ecco - The Tides of Time (Prototype, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ecco2u"
for %%a in ("Ecco - The Tides of Time (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eccojr"
for %%a in ("Ecco Jr. (USA, Oceania, 199502)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eccojr1"
for %%a in ("Ecco Jr. (USA, Oceania, 199503)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ecco"
for %%a in ("Ecco the Dolphin (Euro, USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eccoj"
for %%a in ("Ecco the Dolphin (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ecco2j"
for %%a in ("Ecco the Dolphin II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"elvientj"
for %%a in ("El Viento (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"elvient"
for %%a in ("El Viento (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"elemastj"
for %%a in ("Elemental Master (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"elemast"
for %%a in ("Elemental Master (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"elimdown"
for %%a in ("Eliminate Down (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"elit95"
for %%a in ("Elitserien 95 (Swe)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"elit96"
for %%a in ("Elitserien 96 (Swe)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"empirest"
for %%a in ("Empire of Steel (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"espnbb"
for %%a in ("ESPN Baseball Tonight (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"espnhn"
for %%a in ("ESPN National Hockey Night (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"espnhnp"
for %%a in ("ESPN National Hockey Night (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"espnsped"
for %%a in ("ESPN Speedworld (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"espnspedp"
for %%a in ("ESPN Speedworld (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"espnnfl"
for %%a in ("ESPN Sunday Night NFL (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"espnnflp"
for %%a in ("ESPN Sunday Night NFL (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eswat"
for %%a in ("ESWAT - City Under Siege (Euro, USA, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eternalc"
for %%a in ("Eternal Champions (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eternalcb"
for %%a in ("Eternal Champions (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eternalcj"
for %%a in ("Eternal Champions (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eternalcjp"
for %%a in ("Eternal Champions (Jpn, Prototype, 19931117)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eternalcu"
for %%a in ("Eternal Champions (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"eurosens"
for %%a in ("Europa Sensen (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"euroclub"
for %%a in ("European Club Soccer (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"evander"
for %%a in ("Evander Holyfield's 'Real Deal' Boxing (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"exmutant"
for %%a in ("Ex-Mutants (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"exranza"
for %%a in ("Ex-Ranza (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"exranzap"
for %%a in ("Ex-Ranza (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"exile"
for %%a in ("Exile (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"exilej"
for %%a in ("Exile - Toki no Hazama e (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"exosquad"
for %%a in ("Exo Squad (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"exosquadu"
for %%a in ("Exo Squad (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"exosquadup"
for %%a in ("Exo Squad (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"exodus"
for %%a in ("Exodus - Journey to the Promised Land (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f117"
for %%a in ("F-117 Night Storm (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f117j"
for %%a in ("F-117 Stealth - Operation Night Storm (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f15se2"
for %%a in ("F-15 Strike Eagle II (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f15se2u"
for %%a in ("F-15 Strike Eagle II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f15se2up"
for %%a in ("F-15 Strike Eagle II (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f22a"
for %%a in ("F-22 Interceptor (Euro, USA, 199109)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f22"
for %%a in ("F-22 Interceptor (Euro, USA, 199206)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f22p"
for %%a in ("F-22 Interceptor (Euro, USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f22j"
for %%a in ("F-22 Interceptor (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1"
for %%a in ("F1 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1wc"
for %%a in ("F1 - World Championship Edition (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1wcp"
for %%a in ("F1 - World Championship Edition (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1circus"
for %%a in ("F1 Circus MD (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"famfeud"
for %%a in ("Family Feud (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fantasia1"
for %%a in ("Fantasia (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fantasia"
for %%a in ("Fantasia (World, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fantdizz"
for %%a in ("Fantastic Dizzy (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fantdizz1"
for %%a in ("Fantastic Dizzy (Euro, USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fastest1"
for %%a in ("Fastest 1 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fatfury"
for %%a in ("Fatal Fury (Euro, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fatfuryu"
for %%a in ("Fatal Fury (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fatfury2"
for %%a in ("Fatal Fury 2 (USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fatallab"
for %%a in ("Fatal Labyrinth (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fatalrew"
for %%a in ("Fatal Rewind (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fatman"
for %%a in ("Fatman (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fengkuan"
for %%a in ("Feng Kuang Tao Hua Yuan (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fengshen"
for %%a in ("Feng Shen Ying Jie Chuan (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fengshena"
for %%a in ("Feng Shen Ying Jie Zhuan (Chi, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ferias"
for %%a in ("Ferias Frustradas do Pica-Pau (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ferrari"
for %%a in ("Ferrari Grand Prix Challenge (Euro, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ferrarip"
for %%a in ("Ferrari Grand Prix Challenge (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ferrariu"
for %%a in ("Ferrari Grand Prix Challenge (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"feverpit"
for %%a in ("Fever Pitch Soccer (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fidodido"
for %%a in ("Fido Dido (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa2k3"
for %%a in ("FIFA 2003 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa97"
for %%a in ("FIFA 97 Gold Edition (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa98"
for %%a in ("FIFA 98 - Road to World Cup (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa"
for %%a in ("FIFA International Soccer (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa2k"
for %%a in ("FIFA Soccer 2000 Gold Edition (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa95"
for %%a in ("FIFA Soccer 95 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa95k"
for %%a in ("FIFA Soccer 95 (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa96"
for %%a in ("FIFA Soccer 96 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa99"
for %%a in ("FIFA Soccer 99 (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa2k10"
for %%a in ("FIFA World Cup - South Africa 2010 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fifa2k2"
for %%a in ("FIFA World Cup 2002 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fightmj"
for %%a in ("Fighting Masters (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fightm"
for %%a in ("Fighting Masters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"finalb"
for %%a in ("Final Blow (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fzone"
for %%a in ("Final Zone (USA) ~ FZ Senki Axis (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nemo"
for %%a in ("Finding Nemo (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"firemust"
for %%a in ("Fire Mustang (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fireshrk"
for %%a in ("Fire Shark (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fireshrku"
for %%a in ("Fire Shark (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fireshrku1"
for %%a in ("Fire Shark (USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flashp"
for %%a in ("Flash Point (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flashb"
for %%a in ("Flashback (Euro, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flashbj"
for %%a in ("Flashback (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flashbu"
for %%a in ("Flashback - The Quest for Identity (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flashbu1"
for %%a in ("Flashback - The Quest for Identity (USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flicky"
for %%a in ("Flicky (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flink"
for %%a in ("Flink (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flux"
for %%a in ("Flux (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"foreman"
for %%a in ("Foreman for Real (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"forgottn1"
for %%a in ("Forgotten Worlds (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"forgottn"
for %%a in ("Forgotten Worlds (World, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"formula1"
for %%a in ("Formula One (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"fastfur5"
for %%a in ("Forsazh 5 Bystraya ~ Fast and the Furious 5 Quick (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bighurt"
for %%a in ("Frank Thomas Big Hurt Baseball (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"frogger"
for %%a in ("Frogger (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"slamdunk"
for %%a in ("From TV Animation Slam Dunk - Kyougou Makkou Taiketsu! (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"funngame"
for %%a in ("Fun 'N Games (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"funngameu"
for %%a in ("Fun 'N' Games (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"funcar"
for %%a in ("Fun Car Rally (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"funnywld"
for %%a in ("Funny World ^& Balloon Boy (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nadia"
for %%a in ("Fushigi no Umi no Nadia (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"futbol"
for %%a in ("Futbol Argentino 98 - Pasion de Multitudes (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gloc"
for %%a in ("G-LOC Air Battle (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"glocp"
for %%a in ("G-LOC Air Battle (World, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gadget"
for %%a in ("Gadget Twins (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gaiares"
for %%a in ("Gaiares (Jpn, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gground"
for %%a in ("Gain Ground (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gground1"
for %%a in ("Gain Ground (World, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"galahad"
for %%a in ("Galahad (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gforce2a"
for %%a in ("Galaxy Force II (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gforce2"
for %%a in ("Galaxy Force II (World, Rev. B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gamblerj"
for %%a in ("Gambler Jikochuushinha - Katayama Masayuki no Mahjong Doujou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ggenie1"
for %%a in ("Game Genie (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ggenie"
for %%a in ("Game Genie (Euro, USA, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gamenko"
for %%a in ("Game no Kandume Otokuyou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gameto"
for %%a in ("Game Toshokan (Jpn, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"garfield"
for %%a in ("Garfield - Caught in the Act (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gargoyle"
for %%a in ("Gargoyles (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"garou"
for %%a in ("Garou Densetsu - Shukumei no Tatakai (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"garou2"
for %%a in ("Garou Densetsu 2 - Aratanaru Tatakai (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sbtank"
for %%a in ("Garry Kitchen's Super Battletank - War in the Gulf (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gauntlt4j"
for %%a in ("Gauntlet (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gauntlt4a"
for %%a in ("Gauntlet IV (Euro, USA, 199308)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gauntlt4"
for %%a in ("Gauntlet IV (Euro, USA, 199309)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gemfire"
for %%a in ("Gemfire (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gems"
for %%a in ("GEMS v2.8") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"genchaos"
for %%a in ("General Chaos (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"genchaosj"
for %%a in ("General Chaos Daikonsen (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"genelost"
for %%a in ("Generations Lost (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"genghis2"
for %%a in ("Genghis Khan II - Clan of the Gray Wolf (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"georgeko"
for %%a in ("George Foreman's KO Boxing (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"georgekou"
for %%a in ("George Foreman's KO Boxing (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ghostbst1"
for %%a in ("Ghostbusters (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ghostbst"
for %%a in ("Ghostbusters (World, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ghouls1"
for %%a in ("Ghouls'n Ghosts (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ghouls"
for %%a in ("Ghouls'n Ghosts (Euro, USA, Kor, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gleylanc"
for %%a in ("GleyLancer (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"globglad"
for %%a in ("Global Gladiators (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gods"
for %%a in ("Gods (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"godsj"
for %%a in ("Gods (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"godsu"
for %%a in ("Gods (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"godsup"
for %%a in ("Gods (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"golden10"
for %%a in ("Golden 10 in 1") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"goldnaxe1"
for %%a in ("Golden Axe (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"goldnaxe"
for %%a in ("Golden Axe (World, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"goldnax2"
for %%a in ("Golden Axe II (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"goldnax2p"
for %%a in ("Golden Axe II (World, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"goldnax3"
for %%a in ("Golden Axe III (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"goofy"
for %%a in ("Goofy's Hysterical History Tour (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gouketsu"
for %%a in ("Gouketsuji Ichizoku (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gt5"
for %%a in ("Gran Turismo 5 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"granada1"
for %%a in ("Granada (Jpn, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"granada"
for %%a in ("Granada (Jpn, USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"grandslj"
for %%a in ("GrandSlam - The Tennis Tournament '92 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"grandsl"
for %%a in ("GrandSlam - The Tennis Tournament (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"greatcirj"
for %%a in ("Great Circus Mystery - Mickey to Minnie Magical Adventure 2 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ghw"
for %%a in ("Greatest Heavyweights (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ghwj"
for %%a in ("Greatest Heavyweights (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ghwu"
for %%a in ("Greatest Heavyweights (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"greendog"
for %%a in ("Greendog - The Beached Surfer Dude! (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"grindst"
for %%a in ("Grind Stormer (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"growl"
for %%a in ("Growl (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gunship"
for %%a in ("Gunship (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gunstar"
for %%a in ("Gunstar Heroes (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gunstarj"
for %%a in ("Gunstar Heroes (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gunstarjs"
for %%a in ("Gunstar Heroes (Jpn, Sample)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gunstaru"
for %%a in ("Gunstar Heroes (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gynoug"
for %%a in ("Gynoug (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gynougj"
for %%a in ("Gynoug (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"harddriv"
for %%a in ("Hard Drivin' (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hardbl94"
for %%a in ("HardBall '94 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hardbl95"
for %%a in ("HardBall '95 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hardbal3"
for %%a in ("HardBall III (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hardball"
for %%a in ("HardBall! (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hpotter"
for %%a in ("Harry Potter (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hpotter2"
for %%a in ("Harry Potter and the Chamber of Secrets (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"haunting"
for %%a in ("Haunting Starring Polterguy (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"headon"
for %%a in ("Head-On Soccer (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"heavynov"
for %%a in ("Heavy Nova (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hvyunit"
for %%a in ("Heavy Unit - Mega Drive Special (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"heitao"
for %%a in ("Hei Tao 2 - Super Big 2 (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hellfire"
for %%a in ("Hellfire (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hellfirej"
for %%a in ("Hellfire (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hellfireu"
for %%a in ("Hellfire (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hercules"
for %%a in ("Hercules") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"herculs2"
for %%a in ("Hercules 2") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"herzog"
for %%a in ("Herzog Zwei (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"herzogj"
for %%a in ("Herzog Zwei (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"havocu"
for %%a in ("High Seas Havoc (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hitice"
for %%a in ("Hit the Ice (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hokuto"
for %%a in ("Hokuto no Ken - Shin Seikimatsu Kyuuseishu Densetsu (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"homea"
for %%a in ("Home Alone (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"homeap"
for %%a in ("Home Alone (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"homea2"
for %%a in ("Home Alone 2 - Lost in New York (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ddanpei"
for %%a in ("Honoo no Toukyuuji - Dodge Danpei (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hook"
for %%a in ("Hook (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"huamul"
for %%a in ("Hua Mu Lan - Mulan (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"huanle"
for %%a in ("Huan Le Tao Qi Shu - Smart Mouse (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hurrican"
for %%a in ("Hurricanes (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hyokkohj"
for %%a in ("Hyokkori Hyoutan Jima - Daitouryou o Mezase! (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hyperdnk"
for %%a in ("Hyper Dunk (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hyperdnkj"
for %%a in ("Hyper Dunk - The Playoff Edition (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hyperdnkjp"
for %%a in ("Hyper Dunk - The Playoff Edition (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hypermgnk"
for %%a in ("Hyper Marbles (Jpn, Game no Kandume MegaCD Rip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hyperm"
for %%a in ("Hyper Marbles (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"iceage"
for %%a in ("Ice Age (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"iceage3"
for %%a in ("Ice Age 3 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"iceage4"
for %%a in ("Ice Age 4 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dokidokignk"
for %%a in ("Ikazuse! Koi no Doki Doki Penguin Land MD (Jpn, Game no Kandume MegaCD Rip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dokidoki"
for %%a in ("Ikazuse! Koi no Doki Doki Penguin Land MD (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"imgitt"
for %%a in ("IMG International Tour Tennis (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"indycrus"
for %%a in ("Indiana Jones and the Last Crusade (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"indycrusu"
for %%a in ("Indiana Jones and the Last Crusade (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"insectxj"
for %%a in ("Insector X (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"insectx"
for %%a in ("Insector X (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instchp9"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (Prototype, 19931228)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instchp8"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (Prototype, 19940101)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instchp7"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (Prototype, 19940103)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instchp6"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (Prototype, 19940126)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instchp5"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (Prototype, 19940127)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instchp4"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (Prototype, 19940923-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instchp3"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (Prototype, 19941228-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instchp2"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (Prototype, 19941229)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instch"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"instchp1"
for %%a in ("Instruments of Chaos Starring Young Indiana Jones (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"intrugby"
for %%a in ("International Rugby (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"issdx"
for %%a in ("International Superstar Soccer Deluxe (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"iraqwar"
for %%a in ("Iraq War 2003") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ishido"
for %%a in ("Ishido - The Way of Stones (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"itcame"
for %%a in ("It Came from the Desert (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"izzyqst"
for %%a in ("Izzy's Quest for the Olympic Rings (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jlcs"
for %%a in ("J. League Champion Soccer (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jlpsa"
for %%a in ("J. League Pro Striker (Jpn, v1.0)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jlps"
for %%a in ("J. League Pro Striker (Jpn, v1.3)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jlps2"
for %%a in ("J. League Pro Striker 2 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jlpsp"
for %%a in ("J. League Pro Striker Perfect (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nicklaus"
for %%a in ("Jack Nicklaus' Power Challenge Golf (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jbdougko"
for %%a in ("James 'Buster' Douglas Knockout Boxing (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jb007"
for %%a in ("James Bond 007 - The Duel (Euro, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jb007u"
for %%a in ("James Bond 007 - The Duel (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jpond"
for %%a in ("James Pond - Underwater Agent (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jpond3"
for %%a in ("James Pond 3 - Operation Starfish (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"robocod"
for %%a in ("James Pond II - Codename RoboCod (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"robocodj"
for %%a in ("James Pond II - Codename RoboCod (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jammit"
for %%a in ("Jammit (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"janout"
for %%a in ("Janou Touryuumon (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jantei"
for %%a in ("Jantei Monogatari (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"draxos"
for %%a in ("Jashin Draxos (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jellyboy"
for %%a in ("Jelly Boy (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jennifct"
for %%a in ("Jennifer Capriati Tennis (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jeopardy"
for %%a in ("Jeopardy! (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jeopardd"
for %%a in ("Jeopardy! Deluxe (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jeopards"
for %%a in ("Jeopardy! Sports Edition (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pigskinf"
for %%a in ("Jerry Glanville's Pigskin Footbrawl (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jewelms"
for %%a in ("Jewel Master (Euro, USA, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jewelmsj"
for %%a in ("Jewel Master (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jimpower"
for %%a in ("Jim Power - The Arcade Game (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jimmywws"
for %%a in ("Jimmy White's Whirlwind Snooker (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jiujim"
for %%a in ("Jiu Ji Ma Jiang II - Ye Yan Bian (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"joemac"
for %%a in ("Joe ^& Mac (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"joemont"
for %%a in ("Joe Montana Football (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"joemont2a"
for %%a in ("Joe Montana II Sports Talk Football (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"joemont2"
for %%a in ("Joe Montana II Sports Talk Football (World, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madden92"
for %%a in ("John Madden Football '92 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madden93"
for %%a in ("John Madden Football '93 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madd93ce"
for %%a in ("John Madden Football '93 - Championship Edition (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madden"
for %%a in ("John Madden Football (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"maddenj"
for %%a in ("John Madden Football - Pro Football (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jordanb1"
for %%a in ("Jordan Vs Bird (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jordanb"
for %%a in ("Jordan Vs Bird (Euro, USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jordanbj"
for %%a in ("Jordan Vs Bird - One on One (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"joshua"
for %%a in ("Joshua ^& The Battle of Jericho (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jdreddp1"
for %%a in ("Judge Dredd (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jdreddp2"
for %%a in ("Judge Dredd (USA, Prototype, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jdredd"
for %%a in ("Judge Dredd (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"junction"
for %%a in ("Junction (Jpn, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jstrike"
for %%a in ("Jungle Strike (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jstrikep"
for %%a in ("Jungle Strike (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jstrikej"
for %%a in ("Jungle Strike - Uketsugareta Kyouki (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"junker"
for %%a in ("Junker's High (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jpark"
for %%a in ("Jurassic Park (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkj"
for %%a in ("Jurassic Park (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparku"
for %%a in ("Jurassic Park (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkup"
for %%a in ("Jurassic Park (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkre"
for %%a in ("Jurassic Park - Rampage Edition (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkrep9"
for %%a in ("Jurassic Park - Rampage Edition (Prototype, 19940620)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkrep8"
for %%a in ("Jurassic Park - Rampage Edition (Prototype, 19940622)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkrep7"
for %%a in ("Jurassic Park - Rampage Edition (Prototype, 19940630)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkrep6"
for %%a in ("Jurassic Park - Rampage Edition (Prototype, 19940708)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkrep5"
for %%a in ("Jurassic Park - Rampage Edition (Prototype, 19940713)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkrep4"
for %%a in ("Jurassic Park - Rampage Edition (Prototype, 19940714)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkrep3"
for %%a in ("Jurassic Park - Rampage Edition (Prototype, 19940715)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkrep2"
for %%a in ("Jurassic Park - Rampage Edition (Prototype, 19940717)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jparkrep1"
for %%a in ("Jurassic Park - Rampage Edition (Prototype, 19940718)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"jleague"
for %%a in ("Justice League Task Force (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"juuouki1"
for %%a in ("Juuouki (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"juuouki"
for %%a in ("Juuouki (Jpn, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kof2k"
for %%a in ("K. O. F. 2000") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kagekij"
for %%a in ("Ka-Ge-Ki (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kageki"
for %%a in ("Ka-Ge-Ki - Fists of Steel (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kawasaki"
for %%a in ("Kawasaki Superbike Challenge (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kawasakip"
for %%a in ("Kawasaki Superbike Challenge (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kickoff3"
for %%a in ("Kick Off 3 - European Challenge (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kidcham"
for %%a in ("Kid Chameleon (Euro, Korea, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"patlabor"
for %%a in ("Kidou Keisatsu Patlabor - 98-shiki Kidou Seyo! (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kotm"
for %%a in ("King of the Monsters (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kotmj"
for %%a in ("King of the Monsters (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kotmu"
for %%a in ("King of the Monsters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kotm2"
for %%a in ("King of the Monsters 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kingsalj"
for %%a in ("King Salmon (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kingsal"
for %%a in ("King Salmon - The Big Catch (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kingsbty"
for %%a in ("King's Bounty - The Conqueror's Quest (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kishiden"
for %%a in ("Kishi Densetsu (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kissshot"
for %%a in ("Kiss Shot (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"klax"
for %%a in ("Klax (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"klaxj"
for %%a in ("Klax (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"knucklp"
for %%a in ("Knuckles in Sonic 2 (Prototype 0524, 19940527, 10.46)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kolobok"
for %%a in ("Kolobok ~ Pyramid (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"koteteik"
for %%a in ("Koutetsu Teikoku (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"krusty1"
for %%a in ("Krusty's Super Fun House (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"krusty"
for %%a in ("Krusty's Super Fun House (Euro, USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kujaku"
for %%a in ("Kujaku Ou 2 - Geneijou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kfpanda2"
for %%a in ("Kung Fu Panda 2 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kuuga"
for %%a in ("Kuuga - Operation Code 'Vapor Trail' (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kuzyaeo"
for %%a in ("Kuzya - Ekologiya V Opasnosti (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kuzyamd"
for %%a in ("Kuzya - V Mire Dinozavrov (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kyukaidk"
for %%a in ("Kyuukai Douchuuki (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ktiger"
for %%a in ("Kyuukyoku Tiger (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"larussa"
for %%a in ("La Russa Baseball 95 (USA, Oceania)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lakers"
for %%a in ("Lakers versus Celtics and the NBA Playoffs (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"landstlku"
for %%a in ("Landstalker (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"landstlkup"
for %%a in ("Landstalker (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"landstlkg"
for %%a in ("Landstalker - Die Schatze von Konig Nolo (Ger)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"landstlkj"
for %%a in ("Landstalker - Koutei no Zaihou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"landstlkf"
for %%a in ("Landstalker - Le Tresor du Roi Nole (Fra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"landstlk"
for %%a in ("Landstalker - The Treasures of King Nole (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"langriss"
for %%a in ("Langrisser (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"langris2b"
for %%a in ("Langrisser II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"langris2a"
for %%a in ("Langrisser II (Jpn, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"langris2"
for %%a in ("Langrisser II (Jpn, v1.2)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lastact"
for %%a in ("Last Action Hero (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lastbtle"
for %%a in ("Last Battle (Euro, USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lemmings"
for %%a in ("Lemmings (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lemmingsju1"
for %%a in ("Lemmings (Jpn, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lemmingsju"
for %%a in ("Lemmings (Jpn, USA, Kor, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lemming2"
for %%a in ("Lemmings 2 - The Tribes (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lemming2u"
for %%a in ("Lemmings 2 - The Tribes (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lethalen"
for %%a in ("Lethal Enforcers (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lethalenj"
for %%a in ("Lethal Enforcers (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lethalenu"
for %%a in ("Lethal Enforcers (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"le2"
for %%a in ("Lethal Enforcers II - Gun Fighters (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"le2u"
for %%a in ("Lethal Enforcers II - Gun Fighters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lhx"
for %%a in ("LHX Attack Chopper (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lhxj"
for %%a in ("LHX Attack Chopper (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"liberty"
for %%a in ("Liberty or Death (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lightc"
for %%a in ("Light Crusader (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lightcj"
for %%a in ("Light Crusader (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lightck"
for %%a in ("Light Crusader (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lightcp"
for %%a in ("Light Crusader (Prototype, 19950608)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lightcu"
for %%a in ("Light Crusader (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lightfor"
for %%a in ("Lightening Force - Quest for the Darkstar (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"supmagic"
for %%a in ("Linghuan Daoshi Super Magician (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lionkin3a"
for %%a in ("Lion King 3 (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lobo"
for %%a in ("Lobo (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"long"
for %%a in ("Long (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lordmon"
for %%a in ("Lord Monarch - Tokoton Sentou Densetsu (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lotrgs"
for %%a in ("Lord of the Rings (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lotr"
for %%a in ("Lord of the Rings (Rus, Hack of Stormlord)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lotus2"
for %%a in ("Lotus II (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lotus2p"
for %%a in ("Lotus II (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lotust"
for %%a in ("Lotus Turbo Challenge (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"m1abrams"
for %%a in ("M-1 Abrams Battle Tank (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"majian"
for %%a in ("Ma Jiang Qing Ren - Ji Ma Jiang Zhi (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"majiana"
for %%a in ("Ma Jiang Qing Ren - Ji Ma Jiang Zhi (Chi, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"maqiao"
for %%a in ("Ma Qiao E Mo Ta - Devilish Mahjong Tower (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madagopp"
for %%a in ("Madagascar - Operatsiya Pingvin (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madagsc3"
for %%a in ("Madagascar 3 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madden94"
for %%a in ("Madden NFL '94 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madden95"
for %%a in ("Madden NFL 95 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madden96"
for %%a in ("Madden NFL 96 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madden97"
for %%a in ("Madden NFL 97 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madden98"
for %%a in ("Madden NFL 98 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"madoumon"
for %%a in ("Madou Monogatari I (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mafia"
for %%a in ("Mafia (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mbubble"
for %%a in ("Magic Bubble (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"magichat"
for %%a in ("Magical Hat no Buttobi Turbo! Daibouken (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mtaruru"
for %%a in ("Magical Taruruuto-kun (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"magist16"
for %%a in ("Magistr 16 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mahjongc"
for %%a in ("Mahjong Cop Ryuu - Shiro Ookami no Yabou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mamono"
for %%a in ("Mamono Hunter Youko - Dai 7 no Keishou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"maouren"
for %%a in ("Maou Renjishi (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"marble"
for %%a in ("Marble Madness (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"andretti"
for %%a in ("Mario Andretti Racing (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mariolh"
for %%a in ("Mario Lemieux Hockey (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"marko"
for %%a in ("Marko's Magic Football (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"markop"
for %%a in ("Marko's Magic Football (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"markou"
for %%a in ("Marko's Magic Football (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"marsup"
for %%a in ("Marsupilami (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"marsupu"
for %%a in ("Marsupilami (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"marvlandj"
for %%a in ("Marvel Land (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"marvland"
for %%a in ("Marvel Land (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"franken"
for %%a in ("Mary Shelley's Frankenstein (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mastermj"
for %%a in ("Master of Monsters (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"masterm"
for %%a in ("Master of Monsters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mweapon"
for %%a in ("Master of Weapon (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"maten"
for %%a in ("Maten no Soumetsu (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mathblst"
for %%a in ("Math Blaster - Episode 1 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mazinsaga"
for %%a in ("Mazin Saga (Asia)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mazinsagj"
for %%a in ("Mazin Saga (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mazinsagu"
for %%a in ("Mazin Saga - Mutant Fighter (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mazinwar"
for %%a in ("Mazin Wars (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mcdonald"
for %%a in ("McDonald's Treasure Land Adventure (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mcdonaldj"
for %%a in ("McDonald's Treasure Land Adventure (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mcdonaldjp"
for %%a in ("McDonald's Treasure Land Adventure (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mcdonaldu"
for %%a in ("McDonald's Treasure Land Adventure (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"medalc"
for %%a in ("Medal City (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaan"
for %%a in ("Mega Anser (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megabomb"
for %%a in ("Mega Bomberman (Euro, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megabombu"
for %%a in ("Mega Bomberman (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megabm8"
for %%a in ("Mega Bomberman - 8 Player Demo") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaga10"
for %%a in ("Mega Games 10 (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaga2"
for %%a in ("Mega Games 2 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaga3"
for %%a in ("Mega Games 3 (Euro, Asia)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaga61"
for %%a in ("Mega Games 6 Vol. 1 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaga62"
for %%a in ("Mega Games 6 Vol. 2 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaga63"
for %%a in ("Mega Games 6 Vol. 3 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaga1"
for %%a in ("Mega Games I (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaman"
for %%a in ("Mega Man - The Wily Wars (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaswiv"
for %%a in ("Mega SWIV (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaswivb"
for %%a in ("Mega SWIV (Euro, Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaturr"
for %%a in ("Mega Turrican (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaturru"
for %%a in ("Mega Turrican (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megalo1"
for %%a in ("Mega-Lo-Mania (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megalo"
for %%a in ("Mega-Lo-Mania (Euro, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megalof"
for %%a in ("Mega-Lo-Mania (Fra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megaloj"
for %%a in ("Mega-Lo-Mania (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megamind"
for %%a in ("MegaMind (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"meganet"
for %%a in ("MegaNet (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megapanl"
for %%a in ("MegaPanel (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"megatrax"
for %%a in ("MegaTrax (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"menacer"
for %%a in ("Menacer 6-Game Cartridge (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"menghu"
for %%a in ("Meng Huan Shui Guo Pan - 777 Casino (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mercs"
for %%a in ("Mercs (Euro, USA) ~ Senjou no Ookami II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"metalf"
for %%a in ("Metal Fangs (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mgs"
for %%a in ("Metal Gear Solid (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mwalk1"
for %%a in ("Michael Jackson's Moonwalker (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mwalk"
for %%a in ("Michael Jackson's Moonwalker (World, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mickmack"
for %%a in ("Mick ^& Mack as the Global Gladiators (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mickmackp"
for %%a in ("Mick ^& Mack as the Global Gladiators (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmania"
for %%a in ("Mickey Mania - The Timeless Adventures of Mickey Mouse (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmaniaj"
for %%a in ("Mickey Mania - The Timeless Adventures of Mickey Mouse (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmaniau"
for %%a in ("Mickey Mania - The Timeless Adventures of Mickey Mouse (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmaniaup"
for %%a in ("Mickey Mania - The Timeless Adventures of Mickey Mouse (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mickeyuc"
for %%a in ("Mickey's Ultimate Challenge (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"micromacc"
for %%a in ("Micro Machines (Can)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"micromac"
for %%a in ("Micro Machines (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"micromacb"
for %%a in ("Micro Machines (Euro, USA, Alt 2)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"micromaca"
for %%a in ("Micro Machines (Euro, USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"micromc2"
for %%a in ("Micro Machines 2 - Turbo Tournament (Euro, J-Cart)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"micromc2a"
for %%a in ("Micro Machines 2 - Turbo Tournament (Euro, J-Cart, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"micromm"
for %%a in ("Micro Machines Military (Euro, J-Cart)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"microm96a"
for %%a in ("Micro Machines Turbo Tournament 96 (Euro, J-Cart)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"microm96"
for %%a in ("Micro Machines Turbo Tournament 96 (Euro, v1.1, J-Cart)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"midresj"
for %%a in ("Midnight Resistance (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"midres"
for %%a in ("Midnight Resistance (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"midwaygh"
for %%a in ("Midway Presents Arcade's Greatest Hits (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mig29"
for %%a in ("Mig-29 Fighter Pilot (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mig29j"
for %%a in ("Mig-29 Fighter Pilot (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mig29u"
for %%a in ("Mig-29 Fighter Pilot (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mightmag"
for %%a in ("Might and Magic - Gates to Another World (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mightmg3"
for %%a in ("Might and Magic III - Isles of Terra (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmpr"
for %%a in ("Mighty Morphin Power Rangers (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprp6"
for %%a in ("Mighty Morphin Power Rangers (Prototype, 19940708)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprp5"
for %%a in ("Mighty Morphin Power Rangers (Prototype, 19940718)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprp4"
for %%a in ("Mighty Morphin Power Rangers (Prototype, 19940804)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprp3"
for %%a in ("Mighty Morphin Power Rangers (Prototype, 19940808)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprp2"
for %%a in ("Mighty Morphin Power Rangers (Prototype, 19940809)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprp1"
for %%a in ("Mighty Morphin Power Rangers (Prototype, 19940810)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmpru"
for %%a in ("Mighty Morphin Power Rangers (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprfe"
for %%a in ("Mighty Morphin Power Rangers - The Fighting Edition (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprtm"
for %%a in ("Mighty Morphin Power Rangers - The Movie (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprtmp4"
for %%a in ("Mighty Morphin Power Rangers - The Movie (Prototype, 19950713)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprtmp3"
for %%a in ("Mighty Morphin Power Rangers - The Movie (Prototype, 19950717)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprtmp2"
for %%a in ("Mighty Morphin Power Rangers - The Movie (Prototype, 19950722)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprtmp1"
for %%a in ("Mighty Morphin Power Rangers - The Movie (Prototype, 19950724)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mmprtmu"
for %%a in ("Mighty Morphin Power Rangers - The Movie (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ditkapf"
for %%a in ("Mike Ditka Power Football (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ditkapf1"
for %%a in ("Mike Ditka Power Football (Euro, USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"traysiaj"
for %%a in ("Minato no Traysia (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"minnesot"
for %%a in ("Minnesota Fats - Pool Legend (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mk5mor"
for %%a in ("MK 5 - Mortal Combat - SubZero") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mk5mor1"
for %%a in ("MK 5 - Mortal Combat - SubZero (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mlbpa"
for %%a in ("MLBPA Baseball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"monopoly"
for %%a in ("Monopoly (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"monopolyp"
for %%a in ("Monopoly (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mworld4"
for %%a in ("Monster World IV (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"monstinc"
for %%a in ("Monsters, Inc. (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mka"
for %%a in ("Mortal Kombat (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mk"
for %%a in ("Mortal Kombat (World, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mk3"
for %%a in ("Mortal Kombat 3 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mk3u"
for %%a in ("Mortal Kombat 3 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mk2"
for %%a in ("Mortal Kombat II (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mrnutz"
for %%a in ("Mr. Nutz (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mspacman"
for %%a in ("Ms. Pac-Man (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mspacmanpir"
for %%a in ("Ms. Pac-Man (Pirate, Ripped from Golden 10 in 1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"valisj"
for %%a in ("Mugen Senshi Valis (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"muhammad"
for %%a in ("Muhammad Ali Heavyweight Boxing (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"muhammadu"
for %%a in ("Muhammad Ali Heavyweight Boxing (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"muhammadup"
for %%a in ("Muhammad Ali Heavyweight Boxing (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"musha"
for %%a in ("MUSHA - Metallic Uniframe Super Hybrid Armor (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mushaj"
for %%a in ("Musha Aleste - Full Metal Fighter Ellinor (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mlfootb"
for %%a in ("Mutant League Football (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mlfootbj"
for %%a in ("Mutant League Football (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mlhockey"
for %%a in ("Mutant League Hockey (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mystdefa"
for %%a in ("Mystic Defender (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mystdef"
for %%a in ("Mystic Defender (Euro, USA, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mysticf"
for %%a in ("Mystical Fighter (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nakaf1gp"
for %%a in ("Nakajima Satoru Kanshuu F1 Grand Prix (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"f1heromd"
for %%a in ("Nakajima Satoru Kanshuu F1 Hero MD (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nakaf1sl"
for %%a in ("Nakajima Satoru Kanshuu F1 Super License (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smasters"
for %%a in ("Naomichi Ozaki no Super Masters (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"narnia3"
for %%a in ("Narnia 3 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"naruto"
for %%a in ("Naruto (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nba2k"
for %%a in ("NBA 2000 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nba2k5"
for %%a in ("NBA 2005 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95"
for %%a in ("NBA Action '95 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p25"
for %%a in ("NBA Action '95 (Prototype, 19941118)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p24"
for %%a in ("NBA Action '95 (Prototype, 19941123-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p23"
for %%a in ("NBA Action '95 (Prototype, 19941202-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p22"
for %%a in ("NBA Action '95 (Prototype, 19941209)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p21"
for %%a in ("NBA Action '95 (Prototype, 19941215)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p20"
for %%a in ("NBA Action '95 (Prototype, 19941222-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p19"
for %%a in ("NBA Action '95 (Prototype, 19941224-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p18"
for %%a in ("NBA Action '95 (Prototype, 19941229)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p17"
for %%a in ("NBA Action '95 (Prototype, 19941230)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p16"
for %%a in ("NBA Action '95 (Prototype, 19941231)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p15"
for %%a in ("NBA Action '95 (Prototype, 19950103)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p14"
for %%a in ("NBA Action '95 (Prototype, 19950108)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p13"
for %%a in ("NBA Action '95 (Prototype, 19950112)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p12"
for %%a in ("NBA Action '95 (Prototype, 19950115-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p11"
for %%a in ("NBA Action '95 (Prototype, 19950121)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p10"
for %%a in ("NBA Action '95 (Prototype, 19950122-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p09"
for %%a in ("NBA Action '95 (Prototype, 19950124-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p08"
for %%a in ("NBA Action '95 (Prototype, 19950127-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p07"
for %%a in ("NBA Action '95 (Prototype, 19950127-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p05"
for %%a in ("NBA Action '95 (Prototype, 19950128)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p06"
for %%a in ("NBA Action '95 (Prototype, 19950128-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p04"
for %%a in ("NBA Action '95 (Prototype, 19950130)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p02"
for %%a in ("NBA Action '95 (Prototype, 19950201)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p03"
for %%a in ("NBA Action '95 (Prototype, 19950201, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact95p01"
for %%a in ("NBA Action '95 (Prototype, 19950202)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaactp3"
for %%a in ("NBA Action (Prototype, 19940104)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaactp2"
for %%a in ("NBA Action (Prototype, 19940116)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaactp1"
for %%a in ("NBA Action (Prototype, 19940127, broken - C08 missing)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaact"
for %%a in ("NBA Action (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaallst"
for %%a in ("NBA All-Star Challenge (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbahang"
for %%a in ("NBA Hang Time (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbahangu"
for %%a in ("NBA Hang Time (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbajam1"
for %%a in ("NBA Jam (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbajam"
for %%a in ("NBA Jam (Euro, USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbajamj"
for %%a in ("NBA Jam (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbajamte"
for %%a in ("NBA Jam Tournament Edition (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbajamtef"
for %%a in ("NBA Jam Tournament Edition (World, 2002 Fix Release)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaliv95"
for %%a in ("NBA Live 95 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaliv95k"
for %%a in ("NBA Live 95 (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaliv96"
for %%a in ("NBA Live 96 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaliv97"
for %%a in ("NBA Live 97 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbaliv98"
for %%a in ("NBA Live 98 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bullvsblj"
for %%a in ("NBA Playoffs - Bulls Vs Blazers (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bullvsblj1"
for %%a in ("NBA Playoffs - Bulls Vs Blazers (Jpn, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbapro94"
for %%a in ("NBA Pro Basketball '94 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bullvslaj"
for %%a in ("NBA Pro Basketball - Bulls Vs Lakers (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbashow"
for %%a in ("NBA Showdown '94 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nbashowp"
for %%a in ("NBA Showdown '94 (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ncaabask"
for %%a in ("NCAA Final Four Basketball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ncaafoot"
for %%a in ("NCAA Football (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfsu"
for %%a in ("Need for Speed Undercover (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"neksoccr"
for %%a in ("Nekketsu Koukou Dodgeball Bu - Soccer Hen MD (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"n3dgdevi"
for %%a in ("New 3D Golf Simulation - Devil's Course (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"n3dgaugu"
for %%a in ("New 3D Golf Simulation - Harukanaru Augusta (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"n3dgpebb"
for %%a in ("New 3D Golf Simulation - Pebble Beach no Hatou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"n3dgwaia"
for %%a in ("New 3D Golf Simulation - Waialae no Kiseki (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"newhoriz"
for %%a in ("New Horizons (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"newmanh"
for %%a in ("Newman Haas IndyCar Featuring Nigel Mansell ~ Nigel Mansell Indy Car (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95"
for %%a in ("NFL '95 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p21"
for %%a in ("NFL '95 (Prototype, 19940801)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p20"
for %%a in ("NFL '95 (Prototype, 19940805)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p19"
for %%a in ("NFL '95 (Prototype, 19940810)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p18"
for %%a in ("NFL '95 (Prototype, 19940812)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p17"
for %%a in ("NFL '95 (Prototype, 19940812, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p15"
for %%a in ("NFL '95 (Prototype, 19940817)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p16"
for %%a in ("NFL '95 (Prototype, 19940817-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p14"
for %%a in ("NFL '95 (Prototype, 19940822)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p13"
for %%a in ("NFL '95 (Prototype, 19940830)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p12"
for %%a in ("NFL '95 (Prototype, 19940831)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p11"
for %%a in ("NFL '95 (Prototype, 19940901)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p10"
for %%a in ("NFL '95 (Prototype, 19940902)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p09"
for %%a in ("NFL '95 (Prototype, 19940904)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p07"
for %%a in ("NFL '95 (Prototype, 19940905)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p08"
for %%a in ("NFL '95 (Prototype, 19940905-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p06"
for %%a in ("NFL '95 (Prototype, 19940906)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p05"
for %%a in ("NFL '95 (Prototype, 19940907)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p04"
for %%a in ("NFL '95 (Prototype, 19940908)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p03"
for %%a in ("NFL '95 (Prototype, 19940909)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p01"
for %%a in ("NFL '95 (Prototype, 19940911)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl95p02"
for %%a in ("NFL '95 (Prototype, 19940911-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl98"
for %%a in ("NFL 98 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl94j"
for %%a in ("NFL Football '94 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nfl94"
for %%a in ("NFL Football '94 Starring Joe Montana (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nflqb"
for %%a in ("NFL Quarterback Club (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nflqb96"
for %%a in ("NFL Quarterback Club 96 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nflsport"
for %%a in ("NFL Sports Talk Football '93 Starring Joe Montana (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhktaidr"
for %%a in ("NHK Taiga Drama - Taiheiki (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhl94"
for %%a in ("NHL '94 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhl95"
for %%a in ("NHL 95 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhl96"
for %%a in ("NHL 96 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhl97"
for %%a in ("NHL 97 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhl98"
for %%a in ("NHL 98 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp16"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19940914)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp15"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19940929)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp14"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941001)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp13"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941021)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp12"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941107)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp11"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941109)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp10"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941119)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp09"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941121)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp08"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941122)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp07"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941123)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp06"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941127)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp05"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941128)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp04"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941129)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp02"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941201)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp03"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941201-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlasp01"
for %%a in ("NHL All-Star Hockey '95 (Prototype, 19941202)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlas"
for %%a in ("NHL All-Star Hockey '95 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhl"
for %%a in ("NHL Hockey (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlpa2k3"
for %%a in ("NHLPA 2003 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlpa93a"
for %%a in ("NHLPA Hockey 93 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nhlpa93"
for %%a in ("NHLPA Hockey 93 (Euro, USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mansell"
for %%a in ("Nigel Mansell's World Championship Racing (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mansellu"
for %%a in ("Nigel Mansell's World Championship Racing (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ncirc"
for %%a in ("Nightmare Circus (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ncirc1"
for %%a in ("Nightmare Circus (Bra, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ncircp"
for %%a in ("Nightmare Circus (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nikkan"
for %%a in ("Nikkan Sports Pro Yakyuu Van (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ninjab"
for %%a in ("Ninja Burai Densetsu (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ngaiden"
for %%a in ("Ninja Gaiden (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"noescape"
for %%a in ("No Escape (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nobubufu"
for %%a in ("Nobunaga no Yabou - Bushou Fuuunroku (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nobuhao"
for %%a in ("Nobunaga no Yabou - Haouden (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nobuzenk"
for %%a in ("Nobunaga no Yabou - Zenkokuban (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"nobuamb"
for %%a in ("Nobunaga's Ambition (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"normys"
for %%a in ("Normy's Beach Babe-O-Rama (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"olympgld"
for %%a in ("Olympic Gold (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"olympgldj"
for %%a in ("Olympic Gold (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"olympgldu"
for %%a in ("Olympic Gold (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"olympgldu1"
for %%a in ("Olympic Gold (USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"olympsum"
for %%a in ("Olympic Summer Games (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ondal"
for %%a in ("On Dal Jang Goon (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"onslau"
for %%a in ("Onslaught (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"opeurope"
for %%a in ("Operation Europe - Path to Victory 1939-45 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"osomatsu"
for %%a in ("Osomatsu-kun Hachamecha Gekijou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ootwp"
for %%a in ("Out of this World (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ootw"
for %%a in ("Out of This World (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outlandr"
for %%a in ("Outlander (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outlandru"
for %%a in ("Outlander (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outrun"
for %%a in ("OutRun (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outrunj"
for %%a in ("OutRun (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outr2019"
for %%a in ("OutRun 2019 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outr2019j"
for %%a in ("OutRun 2019 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outr2019u"
for %%a in ("OutRun 2019 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"outr2019up"
for %%a in ("OutRun 2019 (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"orunnersj"
for %%a in ("OutRunners (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"orunners"
for %%a in ("OutRunners (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pto"
for %%a in ("P.T.O. - Pacific Theater of Operations (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pacattak"
for %%a in ("Pac-Attack (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pacman"
for %%a in ("Pac-Man 2 - The New Adventures (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pacmania"
for %%a in ("Pac-Mania (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pachinko"
for %%a in ("Pachinko Kuunyan (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"paddlegnk"
for %%a in ("Paddle Fighter (Jpn, Game no Kandume MegaCD Rip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"paddle"
for %%a in ("Paddle Fighter (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pcotton"
for %%a in ("Panorama Cotton (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"paperboy"
for %%a in ("Paperboy (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"paperboyj"
for %%a in ("Paperboy (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"paperbo2"
for %%a in ("Paperboy 2 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"partyq"
for %%a in ("Party Quiz Mega Q (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"patriley"
for %%a in ("Pat Riley Basketball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pebble"
for %%a in ("Pebble Beach Golf Links (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pebbleu"
for %%a in ("Pebble Beach Golf Links (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pele"
for %%a in ("Pele! (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pele2"
for %%a in ("Pele's World Tournament Soccer (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ppengo"
for %%a in ("Pepenga Pengo (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"psampras"
for %%a in ("Pete Sampras Tennis (Euro, USA, J-Cart)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"psampras2"
for %%a in ("Pete Sampras Tennis (Euro, USA, J-Cart, Alt 2)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"psampras1"
for %%a in ("Pete Sampras Tennis (Euro, USA, J-Cart, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pgaeuro"
for %%a in ("PGA European Tour (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pga96"
for %%a in ("PGA Tour 96 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pgaa"
for %%a in ("PGA Tour Golf (Euro, USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pga"
for %%a in ("PGA Tour Golf (Euro, USA, v1.2)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pga2a"
for %%a in ("PGA Tour Golf II (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pga2"
for %%a in ("PGA Tour Golf II (Euro, USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pga2j"
for %%a in ("PGA Tour Golf II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pga3"
for %%a in ("PGA Tour Golf III (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar4j"
for %%a in ("Phantasy Star - Sennenki no Owari ni (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar2br"
for %%a in ("Phantasy Star II (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar2a"
for %%a in ("Phantasy Star II (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar2"
for %%a in ("Phantasy Star II (Euro, USA, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ps2aa"
for %%a in ("Phantasy Star II - Amia's Adventure (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ps2ab"
for %%a in ("Phantasy Star II - Anne's Adventure (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ps2ac"
for %%a in ("Phantasy Star II - Huey's Adventure (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar2j"
for %%a in ("Phantasy Star II - Kaerazaru Toki no Owari ni (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ps2ad"
for %%a in ("Phantasy Star II - Kinds's Adventure (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ps2ae"
for %%a in ("Phantasy Star II - Nei's Adventure (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ps2af"
for %%a in ("Phantasy Star II - Rudger's Adventure (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ps2ag"
for %%a in ("Phantasy Star II - Shilka's Adventure (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ps2ah"
for %%a in ("Phantasy Star II - Yushis's Adventure (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar3br"
for %%a in ("Phantasy Star III - Generations of Doom (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar3"
for %%a in ("Phantasy Star III - Generations of Doom (Euro, USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar3j"
for %%a in ("Phantasy Star III - Toki no Keishousha (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar4p5"
for %%a in ("Phantasy Star IV (Prototype, 19940530)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar4p4"
for %%a in ("Phantasy Star IV (Prototype, 19940608)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar4p3"
for %%a in ("Phantasy Star IV (Prototype, 19940815)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar4p2"
for %%a in ("Phantasy Star IV (Prototype, 19941027)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar4p1"
for %%a in ("Phantasy Star IV (Prototype, 19941107)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pstar4"
for %%a in ("Phantasy Star IV (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"phantom"
for %%a in ("Phantom 2040 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"phantomu"
for %%a in ("Phantom 2040 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"phelios"
for %%a in ("Phelios (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pheliosj"
for %%a in ("Phelios (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pheliosu"
for %%a in ("Phelios (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pink"
for %%a in ("Pink Goes to Hollywood (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pinkp"
for %%a in ("Pink Goes to Hollywood (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pinoc"
for %%a in ("Pinocchio (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pinocu"
for %%a in ("Pinocchio (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pcarib"
for %%a in ("Pirates of the Caribbean (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pirates"
for %%a in ("Pirates! Gold (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"piratesp"
for %%a in ("Pirates! Gold (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pcarib2"
for %%a in ("Piraty Karibskogo Morya - Na Strannyh Beregah ~ Pirates of the Caribbean - On Stranger Tides (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pitfight1"
for %%a in ("Pit-Fighter (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pitfight"
for %%a in ("Pit-Fighter (World, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pitfall"
for %%a in ("Pitfall - The Mayan Adventure (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pitfallu"
for %%a in ("Pitfall - The Mayan Adventure (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pocahont"
for %%a in ("Pocahontas (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pocahontu"
for %%a in ("Pocahontas (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pokecd"
for %%a in ("Pokemon Crazy Drummer") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pokestad"
for %%a in ("Pokemon Stadium") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"populous"
for %%a in ("Populous (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"populousj"
for %%a in ("Populous (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"populousu"
for %%a in ("Populous (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"powerath"
for %%a in ("Power Athlete (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pdrive"
for %%a in ("Power Drive (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pmonger"
for %%a in ("Power Monger (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pmongerj"
for %%a in ("Power Monger (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"powrball"
for %%a in ("Powerball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"predatr2"
for %%a in ("Predator 2 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"premierm"
for %%a in ("Premier Manager (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"premrm97"
for %%a in ("Premier Manager 97 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"primal"
for %%a in ("Primal Rage (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"primetim"
for %%a in ("Prime Time NFL Starring Deion Sanders (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ppersia"
for %%a in ("Prince of Persia (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ppersiap"
for %%a in ("Prince of Persia (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ppersiap1"
for %%a in ("Prince of Persia (Prototype, Earlier)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ppersiau"
for %%a in ("Prince of Persia (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ppersia2"
for %%a in ("Prince of Persia 2 - The Shadow and the Flame (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"par"
for %%a in ("Pro Action Replay (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"par2"
for %%a in ("Pro Action Replay 2 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"par2a"
for %%a in ("Pro Action Replay 2 (Euro, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"proqb"
for %%a in ("Pro Quarterback (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"prostrfs"
for %%a in ("Pro Striker Final Stage (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"proyakyu"
for %%a in ("Pro Yakyuu Super League '91 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"probot"
for %%a in ("Probotector (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"psyoblad"
for %%a in ("Psy-O-Blade (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"psycho1"
for %%a in ("Psycho Pinball (Euro, 199409)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"psycho"
for %%a in ("Psycho Pinball (Euro, 199410)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"puggsy"
for %%a in ("Puggsy (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"puggsyp"
for %%a in ("Puggsy (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"puggsyu"
for %%a in ("Puggsy (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pulseman"
for %%a in ("Pulseman (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"puttergnk"
for %%a in ("Putter Golf (Jpn, Game no Kandume MegaCD Rip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"putter"
for %%a in ("Putter Golf (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"puyopuyo"
for %%a in ("Puyo Puyo (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"puyopuy2a"
for %%a in ("Puyo Puyo 2 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"puyopuy2"
for %%a in ("Puyo Puyo 2 (Jpn, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ichir"
for %%a in ("Puzzle ^& Action - Ichidant-R (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tantr"
for %%a in ("Puzzle ^& Action - Tant-R (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pyramidgnk"
for %%a in ("Pyramid Magic (Jpn, Game no Kandume MegaCD Rip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pyramid"
for %%a in ("Pyramid Magic (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pyramid2"
for %%a in ("Pyramid Magic II (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pyramid3"
for %%a in ("Pyramid Magic III (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pyramids"
for %%a in ("Pyramid Magic Special (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"quacksht"
for %%a in ("QuackShot Starring Donald Duck ~ QuackShot - Guruzia Ou no Hihou (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"quacksht1"
for %%a in ("QuackShot Starring Donald Duck ~ QuackShot - Guruzia Ou no Hihou (World, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"quadchal"
for %%a in ("Quad Challenge (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"qpoker"
for %%a in ("Queen of Poker Club (Tw)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rbibb93"
for %%a in ("R.B.I. Baseball '93 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rbibb94"
for %%a in ("R.B.I. Baseball '94 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rbibb3"
for %%a in ("R.B.I. Baseball 3 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rbibb4j"
for %%a in ("R.B.I. Baseball 4 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rbibb4p"
for %%a in ("R.B.I. Baseball 4 (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rbibb4"
for %%a in ("R.B.I. Baseball 4 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"racedriv"
for %%a in ("Race Drivin' (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"radicasf"
for %%a in ("Radica - Street Fighter Pack (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"radicav1"
for %%a in ("Radica - Volume 1 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"radrex"
for %%a in ("Radical Rex (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"radrexu"
for %%a in ("Radical Rex (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ragnacenk"
for %%a in ("Ragnacenty (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"raiden"
for %%a in ("Raiden Trad (USA) ~ Raiden Densetsu (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rbisland"
for %%a in ("Rainbow Islands Extra (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rambo3a"
for %%a in ("Rambo III (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rambo3"
for %%a in ("Rambo III (World, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rampartj"
for %%a in ("Rampart (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rampart"
for %%a in ("Rampart (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rangerx"
for %%a in ("Ranger-X (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rangerxu"
for %%a in ("Ranger-X (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ransei"
for %%a in ("Ransei no Hasha (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rastan2j"
for %%a in ("Rastan Saga II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rastan2"
for %%a in ("Rastan Saga II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"redzone"
for %%a in ("Red Zone (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"renthero"
for %%a in ("Rent a Hero (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"resq"
for %%a in ("Resq (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"revx"
for %%a in ("Revolution X (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rhl2k7"
for %%a in ("RHL 2007 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rsbtp7"
for %%a in ("Richard Scarry's Busytown (Prototype, 19940721)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rsbtp6"
for %%a in ("Richard Scarry's Busytown (Prototype, 19940809)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rsbtp5"
for %%a in ("Richard Scarry's Busytown (Prototype, 19940815)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rsbtp4"
for %%a in ("Richard Scarry's Busytown (Prototype, 19940816-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rsbtp3"
for %%a in ("Richard Scarry's Busytown (Prototype, 19940817)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rsbtp2"
for %%a in ("Richard Scarry's Busytown (Prototype, 19940825)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rsbtp1"
for %%a in ("Richard Scarry's Busytown (Prototype, 19940826)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rsbt"
for %%a in ("Richard Scarry's BusyTown (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"riddle"
for %%a in ("Riddle Wired (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ringspow"
for %%a in ("Rings of Power (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"riserobo"
for %%a in ("Rise of the Robots (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"risk"
for %%a in ("Risk (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"riskyw"
for %%a in ("Risky Woods (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ristar1"
for %%a in ("Ristar (Euro, USA, 199408)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ristar"
for %%a in ("Ristar (Euro, USA, 199409)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ristarp4"
for %%a in ("Ristar (Prototype, 19940701)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ristarp3"
for %%a in ("Ristar (Prototype, 19940718)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ristarp2"
for %%a in ("Ristar (Prototype, 19940812)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ristarp1"
for %%a in ("Ristar (Prototype, 19940826)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ristarj"
for %%a in ("Ristar - The Shooting Star (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rrash3"
for %%a in ("Road 3 Rash (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rrash3p"
for %%a in ("Road 3 Rash (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"roadrash"
for %%a in ("Road Rash (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rrash2a"
for %%a in ("Road Rash II (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rrash2"
for %%a in ("Road Rash II (Euro, USA, v1.2)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rrash2j"
for %%a in ("Road Rash II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"roadblstj"
for %%a in ("RoadBlasters (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"roadblst"
for %%a in ("RoadBlasters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"robocop3"
for %%a in ("RoboCop 3 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"roboterm"
for %%a in ("RoboCop versus The Terminator (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"robotermj"
for %%a in ("RoboCop versus The Terminator (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"robotermp"
for %%a in ("RoboCop versus The Terminator (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"robotermp1"
for %%a in ("Robocop Versus The Terminator (Prototype, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"robotermu"
for %%a in ("RoboCop versus The Terminator (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"robotb"
for %%a in ("Robot Battler (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"robotw"
for %%a in ("Robot Wreckage (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rnrracin"
for %%a in ("Rock n' Roll Racing (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rnrracinu"
for %%a in ("Rock n' Roll Racing (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rocket"
for %%a in ("Rocket Knight Adventures (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rocketj"
for %%a in ("Rocket Knight Adventures (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rocketu"
for %%a in ("Rocket Knight Adventures (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rockman"
for %%a in ("Rockman Mega World (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rockman1"
for %%a in ("Rockman Mega World (Jpn, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rockmnx3"
for %%a in ("Rockman X3") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mvpbb"
for %%a in ("Roger Clements MVP Baseball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rthun2"
for %%a in ("Rolling Thunder 2 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rthun2j"
for %%a in ("Rolling Thunder 2 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rthun2u"
for %%a in ("Rolling Thunder 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rthun3"
for %%a in ("Rolling Thunder 3 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rolo"
for %%a in ("Rolo to the Rescue (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"roman3k2"
for %%a in ("Romance of the Three Kingdoms II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"roman3k3"
for %%a in ("Romance of the Three Kingdoms III - Dragon of Destiny (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dinho98"
for %%a in ("Ronaldinho 98 (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"royalbld"
for %%a in ("Royal Blood (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rugbyw"
for %%a in ("Rugby World Cup 1995 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"runark"
for %%a in ("Runark (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ryukoken"
for %%a in ("Ryuuko no Ken (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"manover"
for %%a in ("S.S. Lucifer - Man Overboard! (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sagaia"
for %%a in ("Sagaia (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sswordj"
for %%a in ("Saint Sword (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ssword"
for %%a in ("Saint Sword (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"samesame"
for %%a in ("Same! Same! Same! (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sampra96"
for %%a in ("Sampras Tennis 96 (Euro, J-Cart)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"samsho"
for %%a in ("Samurai Shodown (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"samshou"
for %%a in ("Samurai Shodown (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"samspir"
for %%a in ("Samurai Spirits (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sanguo"
for %%a in ("San Guo Zhi Lie Zhuan - Luan Shi Qun Ying (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sanguo5"
for %%a in ("San Guo Zhi V (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sansan"
for %%a in ("San San (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sangoku2"
for %%a in ("Sangokushi II (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sangoku3"
for %%a in ("Sangokushi III (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sangoret"
for %%a in ("Sangokushi Retsuden - Ransei no Eiyuutachi (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"slammast"
for %%a in ("Saturday Night Slammasters (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"slammastu"
for %%a in ("Saturday Night Slammasters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp06"
for %%a in ("Scholastic's The Magic School Bus (Prototype, 19950331)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp05"
for %%a in ("Scholastic's The Magic School Bus (Prototype, 19950411)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp04"
for %%a in ("Scholastic's The Magic School Bus (Prototype, 19950421)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp03"
for %%a in ("Scholastic's The Magic School Bus (Prototype, 19950425)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp02"
for %%a in ("Scholastic's The Magic School Bus (Prototype, 19950428)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp01"
for %%a in ("Scholastic's The Magic School Bus (Prototype, 19950505)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msb"
for %%a in ("Scholastic's The Magic School Bus (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"scooby"
for %%a in ("Scooby-Doo Mystery (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"scrabble"
for %%a in ("Scrabble (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sdvalis"
for %%a in ("SD Valis (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"seaquest"
for %%a in ("SeaQuest DSV (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"seaquestu"
for %%a in ("SeaQuest DSV (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"seconds"
for %%a in ("Second Samurai (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"segachnla"
for %%a in ("Sega Channel (General Instrument) (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"segachnl"
for %%a in ("Sega Channel (Scientific Atlanta) (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"segachd"
for %%a in ("Sega Channel Demo (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"segasp"
for %%a in ("Sega Sports 1 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"segatop"
for %%a in ("Sega Top Five (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sensible"
for %%a in ("Sensible Soccer (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sensiblep"
for %%a in ("Sensible Soccer (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sensibie"
for %%a in ("Sensible Soccer - International Edition (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sesame"
for %%a in ("Sesame Street Counting Cafe (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"opensea"
for %%a in ("Sezon Ohoty (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"opensea3"
for %%a in ("Sezon Ohoty 3 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shadow"
for %%a in ("Shadow Blasters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shdancer"
for %%a in ("Shadow Dancer - The Secret of Shinobi (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beast"
for %%a in ("Shadow of the Beast (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beastj"
for %%a in ("Shadow of the Beast - Mashou no Okite (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"beast2"
for %%a in ("Shadow of the Beast II (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shadowrnj"
for %%a in ("Shadowrun (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shadowrnp4"
for %%a in ("Shadowrun (Prototype, 19931228)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shadowrnp3"
for %%a in ("Shadowrun (Prototype, 19931231)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shadowrnp1"
for %%a in ("Shadowrun (Prototype, 19940125)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shadowrnp2"
for %%a in ("Shadowrun (Prototype, 19940125-C)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shadowrn"
for %%a in ("Shadowrun (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shanewar"
for %%a in ("Shane Warne Cricket (Aus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shangh2"
for %%a in ("Shanghai II - Dragon's Eye (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shangh2p"
for %%a in ("Shanghai II - Dragon's Eye (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shangh2p1"
for %%a in ("Shanghai II - Dragon's Eye (USA, Prototype, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shaqfu"
for %%a in ("Shaq Fu (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shijie"
for %%a in ("Shi Jie Zhi Bang Zheng Ba Zhan - World Pro Baseball 94 (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"labdeathgnk"
for %%a in ("Shi no Meikyuu - Labyrinth of Death (Jpn, Game no Kandume MegaCD Rip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"labdeath"
for %%a in ("Shi no Meikyuu - Labyrinth of Death (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lionkin3"
for %%a in ("Shi Zi Wang 3 - The Lion King 3") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lionkin2"
for %%a in ("Shi Zi Wang II - The Lion King II") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lionkin2a"
for %%a in ("Shi Zi Wang II - The Lion King II (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sokoban"
for %%a in ("Shijou Saidai no Soukoban (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shikinjo"
for %%a in ("Shikinjoh (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ragnacen"
for %%a in ("Shin Souseiki Ragnacenty (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ragnacenp"
for %%a in ("Shin Souseiki Ragnacenty (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shindarkj"
for %%a in ("Shining and the Darkness (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinfrce"
for %%a in ("Shining Force (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinfrcep"
for %%a in ("Shining Force (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinfrcej"
for %%a in ("Shining Force - Kamigami no Isan (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinfrc2"
for %%a in ("Shining Force II (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinfrc2p2"
for %%a in ("Shining Force II (Prototype, 19940404)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinfrc2p1"
for %%a in ("Shining Force II (Prototype, 19940607)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinfrc2u"
for %%a in ("Shining Force II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinfrc2j"
for %%a in ("Shining Force II - Koe no Fuuin (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shindarkbr"
for %%a in ("Shining in the Darkness (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shindark"
for %%a in ("Shining in the Darkness (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinobi3"
for %%a in ("Shinobi III - Return of the Ninja Master (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shinobi3u"
for %%a in ("Shinobi III - Return of the Ninja Master (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ship"
for %%a in ("Ship (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shiten"
for %%a in ("Shiten Myouou (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shougi"
for %%a in ("Shougi no Hoshi (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shoveit"
for %%a in ("Shove It! ...The Warehouse Game (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sdmilhao"
for %%a in ("Show do Milhao (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sdmilha2"
for %%a in ("Show do Milhao Volume 2 (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sdmilha2a"
for %%a in ("Show do Milhao Volume 2 (Bra, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shrek"
for %%a in ("Shrek (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shrek2"
for %%a in ("Shrek 2 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shuihu"
for %%a in ("Shui Hu - Feng Yun Zhuan (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shuihuzh"
for %%a in ("Shui Hu Zhuan (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shuramon"
for %%a in ("Shura no Mon (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sidepock"
for %%a in ("Side Pocket (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sidepockj"
for %%a in ("Side Pocket (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sidepocku"
for %%a in ("Side Pocket (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skelkrew"
for %%a in ("Skeleton Krew (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skelkrewu"
for %%a in ("Skeleton Krew (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skitchin"
for %%a in ("Skitchin (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"slamshaq"
for %%a in ("Slam - Shaq vs. the Legends (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"slapfigh"
for %%a in ("Slap Fight MD (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"slaughtr"
for %%a in ("Slaughter Sport (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"slimewj"
for %%a in ("Slime World (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"snakernr"
for %%a in ("Snake Rattle n' Roll (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"snezkoro"
for %%a in ("Snezhnaya Koroleva (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"snowbros"
for %%a in ("Snow Bros. - Nick ^& Tom (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"socket"
for %%a in ("Socket (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soldeace"
for %%a in ("Sol-Deace (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soldfort"
for %%a in ("Soldiers of Fortune (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soleil"
for %%a in ("Soleil (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soleilf"
for %%a in ("Soleil (Fra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soleilg"
for %%a in ("Soleil (Ger)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soleils"
for %%a in ("Soleil (Spa)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp12"
for %%a in ("Sonic ^& Knuckles (Prototype 0525, 19940525, 15.28)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp11"
for %%a in ("Sonic ^& Knuckles (Prototype 0606, 19940605, 22.25, S2K chip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp10"
for %%a in ("Sonic ^& Knuckles (Prototype 0606, 19940606, 10.02)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp09"
for %%a in ("Sonic ^& Knuckles (Prototype 0608, 19940608, 03.35, S2K chip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp08"
for %%a in ("Sonic ^& Knuckles (Prototype 0608, 19940608, 05.03)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp07"
for %%a in ("Sonic ^& Knuckles (Prototype 0610, 19940610, 03.11, S2K chip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp06"
for %%a in ("Sonic ^& Knuckles (Prototype 0610, 19940610, 07.49)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp05"
for %%a in ("Sonic ^& Knuckles (Prototype 0612, 19940612, 18.18, S2K chip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp04"
for %%a in ("Sonic ^& Knuckles (Prototype 0612, 19940612, 18.27)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp02"
for %%a in ("Sonic ^& Knuckles (Prototype 0618, 19940618, 09.15)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp03"
for %%a in ("Sonic ^& Knuckles (Prototype 0618, 19940618, 9.07, S2K chip)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skp01"
for %%a in ("Sonic ^& Knuckles (Prototype 0619, 19940619, 08.18)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sk"
for %%a in ("Sonic ^& Knuckles (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sks1"
for %%a in ("Sonic ^& Knuckles + Sonic the Hedgehog (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sks2"
for %%a in ("Sonic ^& Knuckles + Sonic the Hedgehog 2 (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sks3"
for %%a in ("Sonic ^& Knuckles + Sonic the Hedgehog 3 (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3c"
for %%a in ("Sonic 3C (Prototype 0408, 19940408, 17.29)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3ca"
for %%a in ("Sonic 3C (Prototype 0517, 19940517, 17.08)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3d"
for %%a in ("Sonic 3D - Flickies' Island (Euro) ~ Sonic 3D Blast (USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3dp8"
for %%a in ("Sonic 3D Blast (Prototype 73, 19960703, 13.58)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3dp7"
for %%a in ("Sonic 3D Blast (Prototype 814, 19960815, 07.55)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3dp6"
for %%a in ("Sonic 3D Blast (Prototype 819, 19960819, 19.49)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3dp5"
for %%a in ("Sonic 3D Blast (Prototype 825, 19960826, 15.46)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3dp4"
for %%a in ("Sonic 3D Blast (Prototype 830, 19960831, 08.19)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3dp3"
for %%a in ("Sonic 3D Blast (Prototype 831, 19960903, 10.07)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3dp2"
for %%a in ("Sonic 3D Blast (Prototype 94, 19960904, 12.01)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3dp1"
for %%a in ("Sonic 3D Blast (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soniccmp"
for %%a in ("Sonic Compilation (Euro) ~ Sonic Classics (USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soniccmp1"
for %%a in ("Sonic Compilation (Euro, Earlier)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"scrack"
for %%a in ("Sonic Crackers (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonicer"
for %%a in ("Sonic Eraser (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonicjam"
for %%a in ("Sonic Jam 6") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonicjam2"
for %%a in ("Sonic Jam 6 (Alt 2)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonicjam1"
for %%a in ("Sonic Jam 6 (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sspin"
for %%a in ("Sonic Spinball (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sspinj"
for %%a in ("Sonic Spinball (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sspinp"
for %%a in ("Sonic Spinball (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sspinu"
for %%a in ("Sonic Spinball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sspinua"
for %%a in ("Sonic Spinball (USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic"
for %%a in ("Sonic the Hedgehog (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonicj"
for %%a in ("Sonic the Hedgehog (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonicpir"
for %%a in ("Sonic the Hedgehog (Pirate, Ripped from Golden 10 in 1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2p8"
for %%a in ("Sonic the Hedgehog 2 (Beta 4, 19920918, 16.26)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2p7"
for %%a in ("Sonic the Hedgehog 2 (Beta 5, 19920921, 12.06)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2p6"
for %%a in ("Sonic the Hedgehog 2 (Beta 6, 19920922, 18.47)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2p5"
for %%a in ("Sonic the Hedgehog 2 (Beta 6, 19920922, 19.42)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2p4"
for %%a in ("Sonic the Hedgehog 2 (Beta 7, 19920924, 09.26)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2p3"
for %%a in ("Sonic the Hedgehog 2 (Beta 8, 19920924, 19.27)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2p2"
for %%a in ("Sonic the Hedgehog 2 (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2a"
for %%a in ("Sonic the Hedgehog 2 (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2p1"
for %%a in ("Sonic the Hedgehog 2 (World, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2b"
for %%a in ("Sonic the Hedgehog 2 (World, Rev. 01a)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2"
for %%a in ("Sonic the Hedgehog 2 (World, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic2c"
for %%a in ("Sonic the Hedgehog 2 (World, Rev. SC02)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3"
for %%a in ("Sonic the Hedgehog 3 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3j"
for %%a in ("Sonic the Hedgehog 3 (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3pir"
for %%a in ("Sonic the Hedgehog 3 (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sonic3u"
for %%a in ("Sonic the Hedgehog 3 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sorcerkj"
for %%a in ("Sorcer Kingdom (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sorcerk1"
for %%a in ("Sorcerer's Kingdom (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sorcerk"
for %%a in ("Sorcerer's Kingdom (USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sorcer"
for %%a in ("Sorcerian (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soulblad"
for %%a in ("Soul Blade") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"soulblada"
for %%a in ("Soul Blade (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"souledge"
for %%a in ("Soul Edge vs Samurai Spirits (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"souledgea"
for %%a in ("Soul Edge vs Samurai Spirits (Pirate, Cracked)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sndtool"
for %%a in ("Sound Tool v2.2") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spacebob"
for %%a in ("Space Funky B.O.B. (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sharrierj"
for %%a in ("Space Harrier II (Jpn, Launch Cart)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sharrier"
for %%a in ("Space Harrier II (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sinv90"
for %%a in ("Space Invaders 90 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sinv91"
for %%a in ("Space Invaders 91 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sparkstr"
for %%a in ("Sparkster (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sparkstru"
for %%a in ("Sparkster (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sparkstrj"
for %%a in ("Sparkster - Rocket Knight Adventures 2 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"speedbl2"
for %%a in ("Speedball 2 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"speedbl2j"
for %%a in ("Speedball 2 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"speedbl2u"
for %%a in ("Speedball 2 - Brutal Deluxe (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spidmaxc"
for %%a in ("Spider-Man ^& Venom - Maximum Carnage (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spidermn"
for %%a in ("Spider-Man (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spidermnp1"
for %%a in ("Spider-Man (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spidermnp2"
for %%a in ("Spider-Man (USA, Prototype, Earlier)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spidxmen"
for %%a in ("Spider-Man and X-Men - Arcade's Revenge (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spidking"
for %%a in ("Spider-Man vs. the Kingpin (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spiritwf"
for %%a in ("Spiritual Warfare (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spirou"
for %%a in ("Spirou (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"splatth2"
for %%a in ("Splatterhouse 2 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"splatth2u"
for %%a in ("Splatterhouse 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"splatth3"
for %%a in ("Splatterhouse 3 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"splatth2j"
for %%a in ("Splatterhouse Part 2 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"splatth3j"
for %%a in ("Splatterhouse Part 3 (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sportg"
for %%a in ("Sport Games (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sporttbb"
for %%a in ("Sports Talk Baseball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spotgo"
for %%a in ("Spot Goes to Hollywood (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"spotgou"
for %%a in ("Spot Goes to Hollywood (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"squirrel"
for %%a in ("Squirrel King (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"starctrl"
for %%a in ("Star Control (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"starcr"
for %%a in ("Star Cruiser (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"stds9"
for %%a in ("Star Trek - Deep Space Nine - Crossroads of Time (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"stds9u"
for %%a in ("Star Trek - Deep Space Nine - Crossroads of Time (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sttngd"
for %%a in ("Star Trek - The Next Generation - Echoes from the Past (Prototype, 19940103)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sttnge"
for %%a in ("Star Trek - The Next Generation - Echoes from the Past (Prototype, 19940110)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sttngf"
for %%a in ("Star Trek - The Next Generation - Echoes from the Past (Prototype, 19940118)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sttngg"
for %%a in ("Star Trek - The Next Generation - Echoes from the Past (Prototype, 19940125)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sttngb"
for %%a in ("Star Trek - The Next Generation - Echoes from the Past (Prototype, 19941228)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sttngc"
for %%a in ("Star Trek - The Next Generation - Echoes from the Past (Prototype, 19941229)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sttnga"
for %%a in ("Star Trek - The Next Generation - Echoes from the Past (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sttng"
for %%a in ("Star Trek - The Next Generation - Echoes from the Past (USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"starwars"
for %%a in ("Star Wars (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"starjedi"
for %%a in ("Star Wars Jedi (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"starfl1"
for %%a in ("Starflight (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"starfl"
for %%a in ("Starflight (Euro, USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"stargatep"
for %%a in ("Stargate (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"stargate"
for %%a in ("Stargate (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"steelemp"
for %%a in ("Steel Empire (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"steeltal"
for %%a in ("Steel Talons (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"steeltalj"
for %%a in ("Steel Talons (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"steeltalp"
for %%a in ("Steel Talons (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"stonprot"
for %%a in ("Stone Protectors (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"strmlordj"
for %%a in ("Stormlord (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"strmlord"
for %%a in ("Stormlord (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sf2"
for %%a in ("Street Fighter II' - Special Champion Edition (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sf2u"
for %%a in ("Street Fighter II' - Special Champion Edition (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sf2j"
for %%a in ("Street Fighter II' Plus (Jpn, Asia, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sf2pir"
for %%a in ("Street Fighter II' Turbo (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sracer"
for %%a in ("Street Racer (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ssmart"
for %%a in ("Street Smart (Jpn, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sora"
for %%a in ("Streets of Rage (Euro, USA) ~ Bare Knuckle - Ikari no Tetsuken (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor"
for %%a in ("Streets of Rage (Euro, USA, Rev. A) ~ Bare Knuckle - Ikari no Tetsuken (Jpn, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor2u"
for %%a in ("Streets of Rage 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3"
for %%a in ("Streets of Rage 3 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3p5"
for %%a in ("Streets of Rage 3 (Euro, Prototype, 19940412)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3p4"
for %%a in ("Streets of Rage 3 (Euro, Prototype, 19940413)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3p3"
for %%a in ("Streets of Rage 3 (Euro, Prototype, 19940415)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3p2"
for %%a in ("Streets of Rage 3 (Euro, Prototype, 19940420)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3p1"
for %%a in ("Streets of Rage 3 (Euro, Prototype, 19940425)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3k"
for %%a in ("Streets of Rage 3 (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up10"
for %%a in ("Streets of Rage 3 (Prototype, 19940308)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up09"
for %%a in ("Streets of Rage 3 (Prototype, 19940317)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up08"
for %%a in ("Streets of Rage 3 (Prototype, 19940318)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up07"
for %%a in ("Streets of Rage 3 (Prototype, 19940328)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up06"
for %%a in ("Streets of Rage 3 (Prototype, 19940401)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up05"
for %%a in ("Streets of Rage 3 (Prototype, 19940404)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up04"
for %%a in ("Streets of Rage 3 (Prototype, 19940408)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up03"
for %%a in ("Streets of Rage 3 (Prototype, 19940411)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up02"
for %%a in ("Streets of Rage 3 (Prototype, 19940412)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3up01"
for %%a in ("Streets of Rage 3 (Prototype, 19940413)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor3u"
for %%a in ("Streets of Rage 3 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sor2"
for %%a in ("Streets of Rage II (Euro) ~ Bare Knuckle II - Shitou e no Chingonka (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"strider"
for %%a in ("Strider (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"striderj"
for %%a in ("Strider Hiryuu (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"strider2"
for %%a in ("Strider II (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"strider2u"
for %%a in ("Strider Returns - Journey from Darkness (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"striker"
for %%a in ("Striker (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"strikerp"
for %%a in ("Striker (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"subterr"
for %%a in ("SubTerrania (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"subterrj"
for %%a in ("SubTerrania (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"subterrp1"
for %%a in ("SubTerrania (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"subterrp3"
for %%a in ("SubTerrania (Prototype, 19940202)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"subterrp2"
for %%a in ("SubTerrania (Prototype, Earlier)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"subterru"
for %%a in ("SubTerrania (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"summer"
for %%a in ("Summer Challenge (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ssriders"
for %%a in ("Sunset Riders (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ssridersu"
for %%a in ("Sunset Riders (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"s15in1"
for %%a in ("Super 15 in 1 (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"s19in1"
for %%a in ("Super 19 in 1 (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"superair"
for %%a in ("Super Airwolf (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"2020bb"
for %%a in ("Super Baseball 2020 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sbship"
for %%a in ("Super Battleship (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"suprbubl"
for %%a in ("Super Bubble Bobble (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"supdaisn"
for %%a in ("Super Daisenryaku (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sdkong99"
for %%a in ("Super Donkey Kong 99 (Protected)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sdkong99a"
for %%a in ("Super Donkey Kong 99 (Unprotected)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sfzone"
for %%a in ("Super Fantasy Zone (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sfzonej"
for %%a in ("Super Fantasy Zone (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"superhq"
for %%a in ("Super H.Q. (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shangon1"
for %%a in ("Super Hang-On (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shangon"
for %%a in ("Super Hang-On (World, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"shimpact"
for %%a in ("Super High Impact (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"suphydl"
for %%a in ("Super Hydlide (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"suphydlj"
for %%a in ("Super Hydlide (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"suphydlu"
for %%a in ("Super Hydlide (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skickoff"
for %%a in ("Super Kick Off (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"skkong99"
for %%a in ("Super King Kong 99") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"suprleag"
for %%a in ("Super League (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"suprleagj"
for %%a in ("Super League (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smario2a"
for %%a in ("Super Mario 2 (Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smario2"
for %%a in ("Super Mario 2 1998") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smb"
for %%a in ("Super Mario Bros.") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smbbc"
for %%a in ("Super Mario Bros. + Battle City (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smw"
for %%a in ("Super Mario World") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smwa"
for %%a in ("Super Mario World (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smgpa"
for %%a in ("Super Monaco GP (Euro, Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smgp"
for %%a in ("Super Monaco GP (Euro, Jpn, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smgpj"
for %%a in ("Super Monaco GP (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smgpu"
for %%a in ("Super Monaco GP (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"superoff"
for %%a in ("Super Off Road (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"srealbas"
for %%a in ("Super Real Basketball (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"srealbasj"
for %%a in ("Super Real Basketball (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"srobowrs"
for %%a in ("Super Robot Wars (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sskid"
for %%a in ("Super Skidmarks (Euro, J-Cart)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sskidp"
for %%a in ("Super Skidmarks (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ssmashtv"
for %%a in ("Super Smash TV (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ssf2"
for %%a in ("Super Street Fighter II - The New Challengers (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ssf2j"
for %%a in ("Super Street Fighter II - The New Challengers (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ssf2u"
for %%a in ("Super Street Fighter II - The New Challengers (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"stbladj"
for %%a in ("Super Thunder Blade (Jpn, Launch Cart)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"stblad"
for %%a in ("Super Thunder Blade (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"svolleyj"
for %%a in ("Super Volley Ball (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"svolley"
for %%a in ("Super Volley Ball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"svolley1"
for %%a in ("Super Volley Ball (USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"supermanu"
for %%a in ("Superman (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"supermanp"
for %%a in ("Superman (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"superman"
for %%a in ("Superman - The Man of Steel (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"surging"
for %%a in ("Surging Aura (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"swamp"
for %%a in ("Swamp Thing (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"swordsod"
for %%a in ("Sword of Sodan (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"swordsodj"
for %%a in ("Sword of Sodan (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vermil"
for %%a in ("Sword of Vermilion (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sydvalis"
for %%a in ("Syd of Valis (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sylvestr"
for %%a in ("Sylvester ^& Tweety in Cagey Capers (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"sylvestru"
for %%a in ("Sylvester and Tweety in Cagey Capers (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"syndicat"
for %%a in ("Syndicate (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"term2"
for %%a in ("T2 - Terminator 2 - Judgment Day (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"t2ag"
for %%a in ("T2 - The Arcade Game (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"t2agj"
for %%a in ("T2 - The Arcade Game (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"t2agp"
for %%a in ("T2 - The Arcade Game (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"t3ag"
for %%a in ("T3 - The Arcade Game (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cars"
for %%a in ("Tachki (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"cars2"
for %%a in ("Tachki 2 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"taikoris"
for %%a in ("Taikou Risshiden (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"taiwan"
for %%a in ("Taiwan Daheng (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"talespin"
for %%a in ("TaleSpin (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"talmit"
for %%a in ("Talmit's Adventure (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tank2011"
for %%a in ("Tanki 2011 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"trgearth"
for %%a in ("Target Earth (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"taskfhexj"
for %%a in ("Task Force Harrier EX (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"taskfhex"
for %%a in ("Task Force Harrier EX (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmars"
for %%a in ("Taz in Escape from Mars (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp11"
for %%a in ("Taz in Escape from Mars (Prototype, 19940309)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp10"
for %%a in ("Taz in Escape from Mars (Prototype, 19940418)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp09"
for %%a in ("Taz in Escape from Mars (Prototype, 19940509)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp08"
for %%a in ("Taz in Escape from Mars (Prototype, 19940518)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp07"
for %%a in ("Taz in Escape from Mars (Prototype, 19940523)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp06"
for %%a in ("Taz in Escape from Mars (Prototype, 19940602)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp05"
for %%a in ("Taz in Escape from Mars (Prototype, 19940607)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp04"
for %%a in ("Taz in Escape from Mars (Prototype, 19940610)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp03"
for %%a in ("Taz in Escape from Mars (Prototype, 19940614)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp02"
for %%a in ("Taz in Escape from Mars (Prototype, 19940618-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsp01"
for %%a in ("Taz in Escape from Mars (Prototype, 19940620)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmarsu"
for %%a in ("Taz in Escape from Mars (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tazmania"
for %%a in ("Taz-Mania (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tc2000"
for %%a in ("TC 2000 (Arg)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"technocl"
for %%a in ("Techno Clash (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tcop"
for %%a in ("Technocop (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmocup"
for %%a in ("Tecmo Cup (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmobb"
for %%a in ("Tecmo Super Baseball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmosbwj"
for %%a in ("Tecmo Super Bowl (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmosbwa"
for %%a in ("Tecmo Super Bowl (USA, 199309)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmosbw"
for %%a in ("Tecmo Super Bowl (USA, 199310)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmosb2"
for %%a in ("Tecmo Super Bowl II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmosb2j"
for %%a in ("Tecmo Super Bowl II - Special Edition (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmosb3"
for %%a in ("Tecmo Super Bowl III - Final Edition (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmohck"
for %%a in ("Tecmo Super Hockey (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmonbaj"
for %%a in ("Tecmo Super NBA Basketball (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmonba"
for %%a in ("Tecmo Super NBA Basketball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmow92"
for %%a in ("Tecmo World Cup '92 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tecmowc"
for %%a in ("Tecmo World Cup (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"teddyboy"
for %%a in ("Teddy Boy Blues (Jpn, SegaNet)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tmhtsh"
for %%a in ("Teenage Mutant Hero Turtles - The Hyperstone Heist (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tmhttf"
for %%a in ("Teenage Mutant Hero Turtles - Tournament Fighters (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tmntshj"
for %%a in ("Teenage Mutant Ninja Turtles - Return of the Shredder (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tmnthh"
for %%a in ("Teenage Mutant Ninja Turtles - The Hyperstone Heist (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tmnttfj"
for %%a in ("Teenage Mutant Ninja Turtles - Tournament Fighters (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tmnttfu"
for %%a in ("Teenage Mutant Ninja Turtles - Tournament Fighters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"teiketsu"
for %%a in ("Teitoku no Ketsudan (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tekkn3sp"
for %%a in ("Tekken 3 Special") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"telmah"
for %%a in ("Tel-Tel Mahjong (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"telsta"
for %%a in ("Tel-Tel Stadium (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"telebr"
for %%a in ("Telebradesco Residencia (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"td2"
for %%a in ("Test Drive II - The Duel (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tetris"
for %%a in ("Tetris (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tetris1"
for %%a in ("Tetris (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"addfam"
for %%a in ("The Addams Family (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"addfamp1"
for %%a in ("The Addams Family (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"addfamp2"
for %%a in ("The Addams Family (USA, Prototype, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatr"
for %%a in ("The Adventures of Batman ^& Robin (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp12"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950406)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp11"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950410)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp10"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950411)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp09"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950418)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp08"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950419)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp07"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950421)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp06"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950422)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp05"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950424)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp04"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950426)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp03"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950427)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp02"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950428)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatrp01"
for %%a in ("The Adventures of Batman ^& Robin (Prototype, 19950501)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"advbatru"
for %%a in ("The Adventures of Batman ^& Robin (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mightmax"
for %%a in ("The Adventures of Mighty Max (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mightmaxu"
for %%a in ("The Adventures of Mighty Max (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"rockybw"
for %%a in ("The Adventures of Rocky and Bullwinkle and Friends (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"aquagame"
for %%a in ("The Aquatic Games Starring James Pond and the Aquabats (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"redcliff"
for %%a in ("The Battle of Red Cliffs - Romance of the Three Kingdoms") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"redcliffa"
for %%a in ("The Battle of Red Cliffs - Romance of the Three Kingdoms (Fixed)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp20"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940323)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp19"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940428)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp18"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940429)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp17"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940506)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp16"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940511)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp15"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940517)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp14"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940519)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp13"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940523)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp12"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940526)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp11"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940530)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp10"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940602)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp09"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940610)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp08"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940709)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp07"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940716)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp06"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940720)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp05"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940801)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp04"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940802)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp03"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940803)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp02"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940805)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berensp01"
for %%a in ("The Berenstain Bears' Camping Adventure (Prototype, 19940808)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"berens"
for %%a in ("The Berenstain Bears' Camping Adventure (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chaoseng"
for %%a in ("The Chaos Engine (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"chaosen2"
for %%a in ("The Chaos Engine 2 (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"deathret"
for %%a in ("The Death and Return of Superman (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"disneycl"
for %%a in ("The Disney Collection - Mickey and Donald (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"faerytal"
for %%a in ("The Faery Tale Adventure (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flint"
for %%a in ("The Flintstones (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flintj"
for %%a in ("The Flintstones (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"flintu"
for %%a in ("The Flintstones (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"mickeycm"
for %%a in ("The Great Circus Mystery Starring Mickey ^& Minnie (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"waldo"
for %%a in ("The Great Waldo Search (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"humans"
for %%a in ("The Humans (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hybridf"
for %%a in ("The Hybrid Front (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hybridfp"
for %%a in ("The Hybrid Front (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"immortal"
for %%a in ("The Immortal (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crashdum"
for %%a in ("The Incredible Crash Dummies (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"crashdump"
for %%a in ("The Incredible Crash Dummies (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"hulk"
for %%a in ("The Incredible Hulk (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"incredib"
for %%a in ("The Incredibles (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"itchy"
for %%a in ("The Itchy and Scratchy Game (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kickbox"
for %%a in ("The Kick Boxing (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"killshow"
for %%a in ("The Killing Game Show (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kof98"
for %%a in ("The King of Fighters '98") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kof98a"
for %%a in ("The King of Fighters '98 (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kof99a"
for %%a in ("The King of Fighters '99") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kof99"
for %%a in ("The King of Fighters 99") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lawnmowr"
for %%a in ("The Lawnmower Man (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lionking"
for %%a in ("The Lion King (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lionkin3b"
for %%a in ("The Lion King 3 (Alt 2)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lostvik"
for %%a in ("The Lost Vikings (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lostvikp"
for %%a in ("The Lost Vikings (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lostviku"
for %%a in ("The Lost Vikings (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"lostwrld"
for %%a in ("The Lost World - Jurassic Park (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp12"
for %%a in ("The Magic School Bus (Prototype, 19950112)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp11"
for %%a in ("The Magic School Bus (Prototype, 19950202)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp10"
for %%a in ("The Magic School Bus (Prototype, 19950217)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp09"
for %%a in ("The Magic School Bus (Prototype, 19950307)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp08"
for %%a in ("The Magic School Bus (Prototype, 19950314)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"msbp07"
for %%a in ("The Magic School Bus (Prototype, 19950327)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"miraclep"
for %%a in ("The Miracle Piano Teaching System (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tnzs"
for %%a in ("The New Zealand Story (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ooze"
for %%a in ("The Ooze (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"oozep01"
for %%a in ("The Ooze (Euro, Prototype, 19950728)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"oozeju"
for %%a in ("The Ooze (Jpn, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"oozep05"
for %%a in ("The Ooze (Prototype 104, 19950622)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"oozep04"
for %%a in ("The Ooze (Prototype 112, 19950626)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"oozep07"
for %%a in ("The Ooze (Prototype, 19950615)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"oozep06"
for %%a in ("The Ooze (Prototype, 19950619)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"oozep02"
for %%a in ("The Ooze (Prototype, 19950629)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"oozep03"
for %%a in ("The Ooze (Prototype, 19950629-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ottifant"
for %%a in ("The Ottifants (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ottifantg"
for %%a in ("The Ottifants (Ger, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pagemstr"
for %%a in ("The Pagemaster (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pagemstru"
for %%a in ("The Pagemaster (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"pagemstrup"
for %%a in ("The Pagemaster (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"piratedw1"
for %%a in ("The Pirates of Dark Water (Euro, USA, May 1994)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"piratedw"
for %%a in ("The Pirates of Dark Water (USA, January 1994)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"punisher"
for %%a in ("The Punisher (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"punisheru"
for %%a in ("The Punisher (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"renstim"
for %%a in ("The Ren ^& Stimpy Show Presents Stimpy's Invention (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"renstimu"
for %%a in ("The Ren ^& Stimpy Show Presents Stimpy's Invention (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"renstimup"
for %%a in ("The Ren ^& Stimpy Show Presents Stimpy's Invention (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"revshin2"
for %%a in ("The Revenge of Shinobi (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"revshin1"
for %%a in ("The Revenge of Shinobi (Euro, USA, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"revshin"
for %%a in ("The Revenge of Shinobi (Euro, USA, Rev. B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bartvssm1"
for %%a in ("The Simpsons - Bart Vs The Space Mutants (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bartvssm"
for %%a in ("The Simpsons - Bart Vs The Space Mutants (Euro, USA, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"bartnigh"
for %%a in ("The Simpsons - Bart's Nightmare (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smurfs"
for %%a in ("The Smurfs (Euro, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"smurfstw"
for %%a in ("The Smurfs Travel the World (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thor"
for %%a in ("The Story of Thor (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thorg"
for %%a in ("The Story of Thor (Ger)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thorjp"
for %%a in ("The Story of Thor (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thork"
for %%a in ("The Story of Thor (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thorp3"
for %%a in ("The Story of Thor (Prototype, 19941004)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thorp2"
for %%a in ("The Story of Thor (Prototype, 19941017)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thorp1"
for %%a in ("The Story of Thor (Prototype, 19941101)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thors"
for %%a in ("The Story of Thor (Spa)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thorf"
for %%a in ("The Story of Thor - A Successor of The Light (Fra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thorj"
for %%a in ("The Story of Thor - Hikari o Tsugumono (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"supshin"
for %%a in ("The Super Shinobi (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"supshin2"
for %%a in ("The Super Shinobi II (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"supshin2p1"
for %%a in ("The Super Shinobi II (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"supshin2p2"
for %%a in ("The Super Shinobi II (Jpn, Prototype, Earlier)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"termintr"
for %%a in ("The Terminator (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"termintru"
for %%a in ("The Terminator (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tick"
for %%a in ("The Tick (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"youngind"
for %%a in ("The Young Indiana Jones Chronicles (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"themeprk"
for %%a in ("Theme Park (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"thomas"
for %%a in ("Thomas the Tank Engine ^& Friends (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tf2"
for %%a in ("Thunder Force II (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tf2j"
for %%a in ("Thunder Force II MD (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tf3"
for %%a in ("Thunder Force III (Jpn, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tf4"
for %%a in ("Thunder Force IV (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tf4j"
for %%a in ("Thunder Force IV (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tfoxj"
for %%a in ("Thunder Fox (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tfox"
for %%a in ("Thunder Fox (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tpwres"
for %%a in ("Thunder Pro Wrestling Retsuden (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"timedom"
for %%a in ("Time Dominator 1st (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"timekill"
for %%a in ("Time Killers (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"timekillu"
for %%a in ("Time Killers (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tinhead"
for %%a in ("TinHead (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tintin"
for %%a in ("Tintin au Tibet (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ttoonbhtk"
for %%a in ("Tiny Toon Adventures (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ttacme"
for %%a in ("Tiny Toon Adventures - Acme All-Stars (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ttacmeu"
for %%a in ("Tiny Toon Adventures - Acme All-Stars (USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ttoonbht"
for %%a in ("Tiny Toon Adventures - Buster's Hidden Treasure (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ttoonbhtu"
for %%a in ("Tiny Toon Adventures - Buster's Hidden Treasure (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ttoon3"
for %%a in ("Tiny Toon Adventures 3 (Tw, Cracked)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tnnbass"
for %%a in ("TNN Bass Tournament of Champions (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tnnout"
for %%a in ("TNN Outdoors Bass Tournament '96 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"slimew"
for %%a in ("Todd's Adventures in Slime World (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toejam1"
for %%a in ("Toe Jam ^& Earl (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toejam"
for %%a in ("Toe Jam ^& Earl (World, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tje2g"
for %%a in ("Toe Jam ^& Earl in Panic auf Funkotron (Ger)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tje2"
for %%a in ("Toe Jam ^& Earl in Panic on Funkotron (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tje2j"
for %%a in ("Toe Jam ^& Earl in Panic on Funkotron (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tje2u"
for %%a in ("Toe Jam ^& Earl in Panic on Funkotron (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toki1"
for %%a in ("Toki - Going Ape Spit ~ JuJu Densetsu (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toki"
for %%a in ("Toki - Going Ape Spit ~ JuJu Densetsu (World, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tomjerry"
for %%a in ("Tom and Jerry - Frantic Antics (USA, 1993)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tomjerry1"
for %%a in ("Tom and Jerry - Frantic Antics (USA, 1994)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tommylb"
for %%a in ("Tommy Lasorda Baseball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tonylrb"
for %%a in ("Tony La Russa Baseball (USA, Oceania)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"topfight"
for %%a in ("Top Fighter 2000 MK VIII") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"topf2k5"
for %%a in ("Top Fighter 2005") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"topgear2"
for %%a in ("Top Gear 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"topgolf"
for %%a in ("Top Pro Golf (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"topgolf2"
for %%a in ("Top Pro Golf 2 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"totlfoot"
for %%a in ("Total Football (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toughman"
for %%a in ("Toughman Contest (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"kingcol"
for %%a in ("Tougiou King Colossus (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toxicc"
for %%a in ("Toxic Crusaders (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toystory"
for %%a in ("Toy Story (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toystoryu"
for %%a in ("Toy Story (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"toys"
for %%a in ("Toys (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"trampoli"
for %%a in ("Trampoline Terror! (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"transf3"
for %%a in ("Transformers 3 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"traysia"
for %%a in ("Traysia (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tplay96"
for %%a in ("Triple Play '96 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tplaygld"
for %%a in ("Triple Play Gold (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tplayglda"
for %%a in ("Triple Play Gold (USA, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"troubsht"
for %%a in ("Trouble Shooter (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"troyaik"
for %%a in ("Troy Aikman NFL Football (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"truco96"
for %%a in ("Truco '96 (Arg)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"truelies"
for %%a in ("True Lies (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"truxton"
for %%a in ("Truxton (Euro, USA) ~ Tatsujin (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tunshi1"
for %%a in ("Tun Shi Tian Di III (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tunshi"
for %%a in ("Tun Shi Tian Di III (China, Simple Chinese)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"turboout"
for %%a in ("Turbo OutRun (Euro, Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"turmamon"
for %%a in ("Turma da Mônica na Terra dos Monstros (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"turrican"
for %%a in ("Turrican (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"twincobr"
for %%a in ("Twin Cobra (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"twinhawk"
for %%a in ("Twin Hawk (Euro) ~ Daisenpuu (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"twinklet"
for %%a in ("Twinkle Tale (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"twistedf"
for %%a in ("Twisted Flipper (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"twocrude"
for %%a in ("Two Crude Dudes (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"twocrudeu"
for %%a in ("Two Crude Dudes (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"twotribe"
for %%a in ("Two Tribes - Populous II (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"tyrant"
for %%a in ("Tyrants - Fight through Time (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"gomora"
for %%a in ("Uchuu Senkan Gomora (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"umk3"
for %%a in ("Ultimate Mortal Kombat 3 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"umk3u"
for %%a in ("Ultimate Mortal Kombat 3 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ultqix"
for %%a in ("Ultimate Qix (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ultsoccr"
for %%a in ("Ultimate Soccer (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ultsoccrp"
for %%a in ("Ultimate Soccer (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ultraman"
for %%a in ("Ultraman (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"unchartd"
for %%a in ("Uncharted Waters (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"undead"
for %%a in ("Undead Line (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"univsold"
for %%a in ("Universal Soldier (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"unknown2"
for %%a in ("Unknown Game 2 (Rockman-related)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"unnecess"
for %%a in ("Unnecessary Roughness 95 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ustrike"
for %%a in ("Urban Strike (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"teamusa"
for %%a in ("USA Basketball World Challenge (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"dreamteam"
for %%a in ("USA Basketball World Challenge (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"uzukeo"
for %%a in ("Uzu Keobukseon (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vfive"
for %%a in ("V-Five (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"valis"
for %%a in ("Valis (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"valis3j"
for %%a in ("Valis III (Jpn, Rev. A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"valis3"
for %%a in ("Valis III (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vaportr"
for %%a in ("Vapor Trail (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecman"
for %%a in ("Vectorman (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecmanp1"
for %%a in ("Vectorman (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecmanp3"
for %%a in ("Vectorman (Prototype, 19950724)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecmanp2"
for %%a in ("Vectorman (Prototype, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecman2p1"
for %%a in ("Vectorman 2 (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecman2p6"
for %%a in ("Vectorman 2 (Prototype, 19960815)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecman2p5"
for %%a in ("Vectorman 2 (Prototype, 19960816)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecman2p4"
for %%a in ("Vectorman 2 (Prototype, 19960819)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecman2p3"
for %%a in ("Vectorman 2 (Prototype, 19960826)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecman2p2"
for %%a in ("Vectorman 2 (Prototype, 19960827)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vecman2"
for %%a in ("Vectorman 2 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"venom"
for %%a in ("Venom ^& Spider-Man - Separation Anxiety (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vermilj"
for %%a in ("Vermilion (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"verytex"
for %%a in ("Verytex (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"viewpoin"
for %%a in ("Viewpoint (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"viewpoinp"
for %%a in ("Viewpoint (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vf2"
for %%a in ("Virtua Fighter 2 (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vf2k"
for %%a in ("Virtua Fighter 2 (Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vf2p5"
for %%a in ("Virtua Fighter 2 (Prototype, 19960819)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vf2p4"
for %%a in ("Virtua Fighter 2 (Prototype, 19960830)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vf2p3"
for %%a in ("Virtua Fighter 2 (Prototype, 19960913)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vf2p2"
for %%a in ("Virtua Fighter 2 (Prototype, 19960920)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vf2p1"
for %%a in ("Virtua Fighter 2 (Prototype, 19960927)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vf2tek"
for %%a in ("Virtua Fighter 2 vs Tekken 2") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vbart"
for %%a in ("Virtual Bart (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vpinball"
for %%a in ("Virtual Pinball (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vixen357"
for %%a in ("Vixen 357 (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"virak"
for %%a in ("Voina Irak (Pirate)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"volfied"
for %%a in ("Volfied (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"vrtroop"
for %%a in ("VR Troopers (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wackyrac"
for %%a in ("Wacky Races (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wworldsp3"
for %%a in ("Wacky Worlds (Prototype, 19940808)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wworldsp2"
for %%a in ("Wacky Worlds (Prototype, 19940817)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wworldsp1"
for %%a in ("Wacky Worlds (Prototype, 19940819)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wworlds"
for %%a in ("Wacky Worlds (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"waniwani"
for %%a in ("Wani Wani World (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wardner"
for %%a in ("Wardner (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wardnerj"
for %%a in ("Wardner no Mori Special (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wario3"
for %%a in ("Wario Land 3 (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"warlock"
for %%a in ("Warlock (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"warlockp"
for %%a in ("Warlock (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"warpsped"
for %%a in ("Warpspeed (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"warrior"
for %%a in ("Warrior of Rome (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"warrior2"
for %%a in ("Warrior of Rome II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"warsong"
for %%a in ("Warsong (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"waterwld"
for %%a in ("WaterWorld (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wayneg"
for %%a in ("Wayne Gretzky and the NHLPA All-Stars (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"waynewld"
for %%a in ("Wayne's World (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"weaponld"
for %%a in ("Weaponlord (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whacacri"
for %%a in ("Whac-a-Critter (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wheelfor"
for %%a in ("Wheel of Fortune (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wworldb"
for %%a in ("Where in the World Is Carmen Sandiego (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wworld"
for %%a in ("Where in the World Is Carmen Sandiego (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wtimeb"
for %%a in ("Where in Time Is Carmen Sandiego (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wtime"
for %%a in ("Where in Time Is Carmen Sandiego (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whiprush"
for %%a in ("Whip Rush (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whiprushj"
for %%a in ("Whip Rush - Wakusei Voltegas no Nazo (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wildsnak"
for %%a in ("Wild Snake (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"williams"
for %%a in ("Williams Arcade's Greatest Hits (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wimbled"
for %%a in ("Wimbledon Championship Tennis (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wimbledj"
for %%a in ("Wimbledon Championship Tennis (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wimbledu"
for %%a in ("Wimbledon Championship Tennis (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wimbledup"
for %%a in ("Wimbledon Championship Tennis (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wingswor"
for %%a in ("Wings of Wor (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wintc1"
for %%a in ("Winter Challenge (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wintc"
for %%a in ("Winter Challenge (Euro, USA, Rev. 1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wintcp"
for %%a in ("Winter Challenge (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wintolu"
for %%a in ("Winter Olympic Games (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wintol"
for %%a in ("Winter Olympics (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wintolj"
for %%a in ("Winter Olympics (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"winx3d"
for %%a in ("Winx 3D Volshebnoe Priklyuchenie (Rus)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wiznlizu"
for %%a in ("Wiz'n'Liz (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wiznliz"
for %%a in ("Wiz'n'Liz - The Frantic Wabbit Wescue (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"immortalj"
for %%a in ("Wizard of the Immortal (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wolfchld"
for %%a in ("Wolfchild (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wolverin"
for %%a in ("Wolverine - Adamantium Rage (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wboy3"
for %%a in ("Wonder Boy III - Monster Lair (Euro) ~ Monster Lair (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wboymw"
for %%a in ("Wonder Boy in Monster World (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wboy5"
for %%a in ("Wonder Boy V - Monster World III (Jpn, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wondlib"
for %%a in ("Wonder Library (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcsb"
for %%a in ("World Championship Soccer (USA) ~ World Cup Soccer (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs"
for %%a in ("World Championship Soccer (USA, Rev. B) ~ World Cup Soccer (Jpn, Rev. B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcsa"
for %%a in ("World Championship Soccer (USA, v1.2) ~ World Cup Soccer (Jpn, v1.2)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2"
for %%a in ("World Championship Soccer II (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p19"
for %%a in ("World Championship Soccer II (Prototype G, 19940222)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p17"
for %%a in ("World Championship Soccer II (Prototype J, 19940228)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p16"
for %%a in ("World Championship Soccer II (Prototype N, 19940303)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p15"
for %%a in ("World Championship Soccer II (Prototype O, 19940303)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p14"
for %%a in ("World Championship Soccer II (Prototype P, 19940304)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p12"
for %%a in ("World Championship Soccer II (Prototype R, 19940309)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p11"
for %%a in ("World Championship Soccer II (Prototype U, 19940314)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p10"
for %%a in ("World Championship Soccer II (Prototype Y, 19940318)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p18"
for %%a in ("World Championship Soccer II (Prototype, 19940223)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p13"
for %%a in ("World Championship Soccer II (Prototype, 19940309)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p09"
for %%a in ("World Championship Soccer II (Prototype, 19940323)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p08"
for %%a in ("World Championship Soccer II (Prototype, 19940324)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p07"
for %%a in ("World Championship Soccer II (Prototype, 19940325)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p06"
for %%a in ("World Championship Soccer II (Prototype, 19940326)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p05"
for %%a in ("World Championship Soccer II (Prototype, 19940327)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p03"
for %%a in ("World Championship Soccer II (Prototype, 19940329)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p04"
for %%a in ("World Championship Soccer II (Prototype, 19940329-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2p02"
for %%a in ("World Championship Soccer II (Prototype, 19940330)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2u"
for %%a in ("World Championship Soccer II (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcs2up"
for %%a in ("World Championship Soccer II (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wclead"
for %%a in ("World Class Leaderboard Golf (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcleadu"
for %%a in ("World Class Leaderboard Golf (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcup90"
for %%a in ("World Cup Italia '90 (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wcup94"
for %%a in ("World Cup USA 94 (Euro, USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp01"
for %%a in ("World Heroes (Euro, Prototype, 19940331)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp02"
for %%a in ("World Heroes (Euro, Prototype, 19940331-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whj"
for %%a in ("World Heroes (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whjp5"
for %%a in ("World Heroes (Jpn, Prototype, 19940330)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whjp4"
for %%a in ("World Heroes (Jpn, Prototype, 19940408)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whjp3"
for %%a in ("World Heroes (Jpn, Prototype, 19940415)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whjp1"
for %%a in ("World Heroes (Jpn, Prototype, 19940420, broken - C05 missing)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whjp2"
for %%a in ("World Heroes (Jpn, Prototype, 19940420-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wh"
for %%a in ("World Heroes (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp13"
for %%a in ("World Heroes (USA, Prototype, 19940223)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp12"
for %%a in ("World Heroes (USA, Prototype, 19940303)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp11"
for %%a in ("World Heroes (USA, Prototype, 19940307)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp10"
for %%a in ("World Heroes (USA, Prototype, 19940309)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp09"
for %%a in ("World Heroes (USA, Prototype, 19940315)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp08"
for %%a in ("World Heroes (USA, Prototype, 19940316)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp07"
for %%a in ("World Heroes (USA, Prototype, 19940318)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp06"
for %%a in ("World Heroes (USA, Prototype, 19940322, broken - C07 missing)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp05"
for %%a in ("World Heroes (USA, Prototype, 19940323)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp04"
for %%a in ("World Heroes (USA, Prototype, 19940324)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"whp03"
for %%a in ("World Heroes (USA, Prototype, 19940330)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"worldillj"
for %%a in ("World of Illusion - Fushigi na Magic Box (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"worldilljp"
for %%a in ("World of Illusion - Fushigi na Magic Box (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"worldill"
for %%a in ("World of Illusion Starring Mickey Mouse and Donald Duck (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"worldillu"
for %%a in ("World of Illusion Starring Mickey Mouse and Donald Duck (USA, Kor)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p23"
for %%a in ("World Series Baseball '95 (Prototype, 19941208)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p22"
for %%a in ("World Series Baseball '95 (Prototype, 19941214)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p21"
for %%a in ("World Series Baseball '95 (Prototype, 19941228-SB)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p20"
for %%a in ("World Series Baseball '95 (Prototype, 19950101-TST)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p19"
for %%a in ("World Series Baseball '95 (Prototype, 19950103-TST)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p18"
for %%a in ("World Series Baseball '95 (Prototype, 19950105)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p17"
for %%a in ("World Series Baseball '95 (Prototype, 19950109-TST)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p16"
for %%a in ("World Series Baseball '95 (Prototype, 19950110)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p15"
for %%a in ("World Series Baseball '95 (Prototype, 19950114-RM)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p14"
for %%a in ("World Series Baseball '95 (Prototype, 19950116)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p13"
for %%a in ("World Series Baseball '95 (Prototype, 19950118-RM)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p12"
for %%a in ("World Series Baseball '95 (Prototype, 19950120)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p11"
for %%a in ("World Series Baseball '95 (Prototype, 19950125)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p10"
for %%a in ("World Series Baseball '95 (Prototype, 19950130)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p09"
for %%a in ("World Series Baseball '95 (Prototype, 19950202)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p08"
for %%a in ("World Series Baseball '95 (Prototype, 19950203)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p07"
for %%a in ("World Series Baseball '95 (Prototype, 19950207)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p05"
for %%a in ("World Series Baseball '95 (Prototype, 19950209)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p06"
for %%a in ("World Series Baseball '95 (Prototype, 19950209-B)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p04"
for %%a in ("World Series Baseball '95 (Prototype, 19950211)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p03"
for %%a in ("World Series Baseball '95 (Prototype, 19950212)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p02"
for %%a in ("World Series Baseball '95 (Prototype, 19950213)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95p01"
for %%a in ("World Series Baseball '95 (Prototype, 19950214)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb95"
for %%a in ("World Series Baseball '95 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb96"
for %%a in ("World Series Baseball '96 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb98"
for %%a in ("World Series Baseball '98 (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp10"
for %%a in ("World Series Baseball (Prototype, 19931001)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp09"
for %%a in ("World Series Baseball (Prototype, 19931222)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp08"
for %%a in ("World Series Baseball (Prototype, 19931226)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp07"
for %%a in ("World Series Baseball (Prototype, 19931229)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp06"
for %%a in ("World Series Baseball (Prototype, 19940103)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp05"
for %%a in ("World Series Baseball (Prototype, 19940106)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp04"
for %%a in ("World Series Baseball (Prototype, 19940116)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp03"
for %%a in ("World Series Baseball (Prototype, 19940218)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp02"
for %%a in ("World Series Baseball (Prototype, 19940304)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsbp01"
for %%a in ("World Series Baseball (Prototype, 19940527)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wsb"
for %%a in ("World Series Baseball (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"worldts"
for %%a in ("World Trophy Soccer (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"worms"
for %%a in ("Worms (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wormsp"
for %%a in ("Worms (Euro, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wrestwar"
for %%a in ("Wrestle War (Euro, Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wrestwarp"
for %%a in ("Wrestle War (Jpn, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wrstball"
for %%a in ("Wrestleball (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wukong"
for %%a in ("Wu Kong Wai Zhuan (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wwfraw"
for %%a in ("WWF Raw (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wwfroyal"
for %%a in ("WWF Royal Rumble (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wwfsup"
for %%a in ("WWF Super WrestleMania (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wwfag"
for %%a in ("WWF WrestleMania - The Arcade Game (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"wwfaga"
for %%a in ("WWF WrestleMania - The Arcade Game (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen"
for %%a in ("X-Men (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmenu"
for %%a in ("X-Men (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2"
for %%a in ("X-Men 2 - Clone Wars (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p19"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19940506)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p18"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19940510)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p17"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941018)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p16"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941117)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p15"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941123)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p14"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941128)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p13"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941130)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p12"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941202)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p11"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941203)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p10"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941206)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p09"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941207)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p08"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941208)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p07"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941209)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p06"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941210)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p04"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941211)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p05"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941211-A)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p03"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941214)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p02"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941215)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xmen2p01"
for %%a in ("X-Men 2 - Clone Wars (Prototype, 19941216)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xpertp"
for %%a in ("X-perts (Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xpert"
for %%a in ("X-perts (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xdrxda"
for %%a in ("XDR - X Dazedly Ray (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xenon2"
for %%a in ("Xenon 2 - Megablast (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xiaomo"
for %%a in ("Xiao Monv - Magic Girl (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xinqig"
for %%a in ("Xin Qi Gai Wang Zi (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"xinqig1"
for %%a in ("Xin Qi Gai Wang Zi (Chi, Alt)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"yasech"
for %%a in ("Ya Se Chuan Shuo (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"yangji"
for %%a in ("Yang Jia Jiang - Yang Warrior Family (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"yogibear"
for %%a in ("Yogi Bear's Cartoon Capers (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ys3j"
for %%a in ("Ys - Wanderers from Ys (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"ys3"
for %%a in ("Ys III (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"yuyusf"
for %%a in ("Yu Yu Hakusho - Makyou Toitsusen (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"yuyusfb"
for %%a in ("Yu Yu Hakusho - Sunset Fighters (Bra)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"yuyug"
for %%a in ("Yu Yu Hakusho Gaiden (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zanyasha"
for %%a in ("Zan Yasha Enbukyoku (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zanygolf1"
for %%a in ("Zany Golf (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zanygolf"
for %%a in ("Zany Golf (Euro, USA, v1.1)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zero"
for %%a in ("Zero the Kamikaze Squirrel (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zerou"
for %%a in ("Zero the Kamikaze Squirrel (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zerotol"
for %%a in ("Zero Tolerance (Euro, USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zerowing"
for %%a in ("Zero Wing (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zerowingj"
for %%a in ("Zero Wing (Jpn)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zhuogu"
for %%a in ("Zhuo Gui Da Shi - Ghost Hunter (Chi)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zombhigh"
for %%a in ("Zombie High (USA, Prototype)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zombies"
for %%a in ("Zombies (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zombiesu"
for %%a in ("Zombies Ate My Neighbors (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zool"
for %%a in ("Zool - Ninja of the 'Nth' Dimension (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zoolu"
for %%a in ("Zool - Ninja of the 'Nth' Dimension (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zoom"
for %%a in ("Zoom! (World)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zoop"
for %%a in ("Zoop (Euro)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zoopu"
for %%a in ("Zoop (USA)") do set NWDIR=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
exit /b
:"zouzou"
for %%a in ("Zou! Zou! Zou! Rescue Daisakusen (Jpn)") do set NWDIR=%%~mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%"
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NWDIR%"
move /y "%ROM%" "%NWDIR%":
exit /b
