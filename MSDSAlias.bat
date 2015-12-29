:SORTOUT
pushd "%GBG%\%GAM%\%CONS%\%MSDS%"		
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROMC=%%~na
SET ROM=%%~nxa
call :"%%~a"
)
popd

exit /b

:WRITEOUT
echo.cd %BNA:~0,-1%>>RUN.com"
echo.%RNA%>>"RUN.com"
exit /b

:RUN
"%SEVENZIP%" x -y "%ROM%" -o"%FLDN%" && move /y "%ROM%" "%GBG%\%ROMJ%\SORTED ARCHIVES\%ROM%"
pushd "%FLDN%"
for /f "delims=" %%a in ("%EMUCMD%") do (
SET RNA=%%~nxa
set BNA=%%~dpa
call :WRITEOUT
)
"%GBC%\fart.exe" "RUN.com" "%CD%\\" --remove
popd
exit /b

:"Oregon_Trail_The_1990.zip"
for %%a in ("Oregon Trail, The") do set FLDN=%%~a
for %%a in ("oregont\OREGON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Prince_of_Persia_1990.zip"
for %%a in ("Prince of Persia") do set FLDN=%%~a
for %%a in ("Ppersia\PRINCE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wolfenstein_3D_1992.zip"
for %%a in ("Wolfenstein 3D") do set FLDN=%%~a
for %%a in ("Wolf3D\WOLF3D\WOLF3D\WOLF3D.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Oregon_Trail_Deluxe_The_1992.zip"
for %%a in ("Oregon Trail Deluxe, The") do set FLDN=%%~a
for %%a in ("oregontd\OREGON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"SimCity_1989.zip"
for %%a in ("SimCity") do set FLDN=%%~a
for %%a in ("SimCity\SIMCITY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Street_Fighter_II_1996.zip"
for %%a in ("Super Street Fighter II") do set FLDN=%%~a
for %%a in ("SSF2\SSF2\SSF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"4D_Prince_of_Persia_1994.zip"
for %%a in ("4D Prince of Persia") do set FLDN=%%~a
for %%a in ("4DPrince\4D_PRIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pac-Man_1983.zip"
for %%a in ("Pac-Man") do set FLDN=%%~a
for %%a in ("PacMan\PACMAN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stunts_1990.zip"
for %%a in ("Stunts") do set FLDN=%%~a
for %%a in ("Stunts\STUNTS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Disneys_Aladdin_1994.zip"
for %%a in ("Disney's Aladdin") do set FLDN=%%~a
for %%a in ("DisneysA\ALADDIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Prehistorik_2_1993.zip"
for %%a in ("Prehistorik 2") do set FLDN=%%~a
for %%a in ("Prehist2\PRE2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Street_Fighter_II_1992.zip"
for %%a in ("Street Fighter II") do set FLDN=%%~a
for %%a in ("SF2\SF2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lemmings_2_-_The_Tribes_1993.zip"
for %%a in ("Lemmings 2 - The Tribes") do set FLDN=%%~a
for %%a in ("lemm2\L2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dune_2_-_The_Building_of_a_Dynasty_1992.zip"
for %%a in ("Dune 2 - The Building of a Dynasty") do set FLDN=%%~a
for %%a in ("dune2\DUNE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bust-A-Move_1997.zip"
for %%a in ("Bust-A-Move") do set FLDN=%%~a
for %%a in ("bustmov1\BAM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Leisure_Suit_Larry_1_-_Land_of_the_Lounge_Lizards_1987.zip"
for %%a in ("Leisure Suit Larry 1 - Land of the Lounge Lizards") do set FLDN=%%~a
for %%a in ("LSL1\_LSL1.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Donkey_Kong_1983.zip"
for %%a in ("Donkey Kong") do set FLDN=%%~a
for %%a in ("DonkeyKo\DK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ms._Pac-Man_1983.zip"
for %%a in ("Ms. Pac-Man") do set FLDN=%%~a
for %%a in ("MsPacMa\MSPACMAN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Castle_Wolfenstein_1984.zip"
for %%a in ("Castle Wolfenstein") do set FLDN=%%~a
for %%a in ("CastleWo\CW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_the_World_is_Carmen_Sandiego_Enhanced_1989.zip"
for %%a in ("Where in the World is Carmen Sandiego Enhanced") do set FLDN=%%~a
for %%a in ("wwcse\CARMEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Centurion_-_Defender_of_Rome_1990.zip"
for %%a in ("Centurion - Defender of Rome") do set FLDN=%%~a
for %%a in ("centdor\runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Indiana_Jones_and_The_Last_Crusade_1989.zip"
for %%a in ("Indiana Jones and The Last Crusade") do set FLDN=%%~a
for %%a in ("IndyCru\indy256.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Golden_Axe_1990.zip"
for %%a in ("Golden Axe") do set FLDN=%%~a
for %%a in ("GoldenAx\gold.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Doom_-_The_Roguelike_2005.zip"
for %%a in ("Doom - The Roguelike") do set FLDN=%%~a
for %%a in ("doomrogu\doomrl.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Street_Fighter_1988.zip"
for %%a in ("Street Fighter") do set FLDN=%%~a
for %%a in ("SF\SF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Batman_Returns_1993.zip"
for %%a in ("Batman Returns") do set FLDN=%%~a
for %%a in ("batret\BATMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Softporn_II_1985.zip"
for %%a in ("Softporn II") do set FLDN=%%~a
for %%a in ("Softprn2\SFTPORN2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mario_Brothers_VGA_1990.zip"
for %%a in ("Mario Brothers VGA") do set FLDN=%%~a
for %%a in ("MarioBro\MARIO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Scorched_Earth_1991.zip"
for %%a in ("Scorched Earth") do set FLDN=%%~a
for %%a in ("Scorched\SCORCH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Maniac_Mansion_1987.zip"
for %%a in ("Maniac Mansion") do set FLDN=%%~a
for %%a in ("MMansion\MANIAC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Total_Carnage_1994.zip"
for %%a in ("Total Carnage") do set FLDN=%%~a
for %%a in ("TotalCar\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crosscountry_Canada_1991.zip"
for %%a in ("Crosscountry Canada") do set FLDN=%%~a
for %%a in ("Crosscou\CCAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Test_Drive_III_The_Passion_1990.zip"
for %%a in ("Test Drive III The Passion") do set FLDN=%%~a
for %%a in ("TstDriv3\TD3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_the_World_is_Carmen_Sandiego_Deluxe_1990.zip"
for %%a in ("Where in the World is Carmen Sandiego Deluxe") do set FLDN=%%~a
for %%a in ("wwcsd\CARMEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jazz_Jackrabbit_1994.zip"
for %%a in ("Jazz Jackrabbit") do set FLDN=%%~a
for %%a in ("JazzJack\JAZZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Budokan_The_Martial_Spirit_1989.zip"
for %%a in ("Budokan The Martial Spirit") do set FLDN=%%~a
for %%a in ("BudokanT\BUDO.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Disneys_Duck_Tales_-_The_Quest_for_Gold_1990.zip"
for %%a in ("Disney's Duck Tales - The Quest for Gold") do set FLDN=%%~a
for %%a in ("DisneysD\DUCKTALE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Deluxe_Ski_Jump_2000.zip"
for %%a in ("Deluxe Ski Jump") do set FLDN=%%~a
for %%a in ("DeluxeSk\DSJ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Leisure_Suit_Larry_5_-_Passionate_Patti_Does_a_Little_Undercover_Work_1991.zip"
for %%a in ("Leisure Suit Larry 5 - Passionate Patti Does a Little Undercover Work") do set FLDN=%%~a
for %%a in ("LSL5\LSL5.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Duke_it_out_in_D.C._1997.zip"
for %%a in ("Duke it out in D.C.") do set FLDN=%%~a
for %%a in ("Dukeitou\DUKE3D.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Warlords_II_1993.zip"
for %%a in ("Warlords II") do set FLDN=%%~a
for %%a in ("Warlrd2\WARLORD2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"SimAnt_-_The_Electronic_Ant_Colony_1991.zip"
for %%a in ("SimAnt - The Electronic Ant Colony") do set FLDN=%%~a
for %%a in ("simant\SIMANT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Digger_1983_1983.zip"
for %%a in ("Digger") do set FLDN=%%~a
for %%a in ("Digger83\digger.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"3D_Bomber_1998.zip"
for %%a in ("3D Bomber") do set FLDN=%%~a
for %%a in ("3DBomber\BOMB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lode_Runner_1983_1983.zip"
for %%a in ("Lode Runner") do set FLDN=%%~a
for %%a in ("LodeRu83\LODERUN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alley_Cat_1984.zip"
for %%a in ("Alley Cat") do set FLDN=%%~a
for %%a in ("AlleyCat\CAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Master_of_Orion_1993.zip"
for %%a in ("Master of Orion") do set FLDN=%%~a
for %%a in ("mastori\ORION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sex_Vixens_From_Space_1989.zip"
for %%a in ("Sex Vixens From Space") do set FLDN=%%~a
for %%a in ("vixens\SEXVIXEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Wars_1988.zip"
for %%a in ("Star Wars") do set FLDN=%%~a
for %%a in ("StarWars\STARWARS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"SimFarm_1993.zip"
for %%a in ("SimFarm") do set FLDN=%%~a
for %%a in ("SimFarm\SIMFARM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Monopoly_Deluxe_1992.zip"
for %%a in ("Monopoly Deluxe") do set FLDN=%%~a
for %%a in ("MonopDLX\MP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tetris_1986.zip"
for %%a in ("Tetris") do set FLDN=%%~a
for %%a in ("Tetris86\tetris.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cool_World_1992.zip"
for %%a in ("Cool World") do set FLDN=%%~a
for %%a in ("CoolWorl\COOLWRLD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nam_1965-1975_1991.zip"
for %%a in ("'Nam 1965-1975") do set FLDN=%%~a
for %%a in ("nam6575\NAMEGA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Castle_of_Dr._Brain_1991.zip"
for %%a in ("Castle of Dr. Brain") do set FLDN=%%~a
for %%a in ("castleb\BRAIN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"VGA_Miner_1989.zip"
for %%a in ("VGA Miner") do set FLDN=%%~a
for %%a in ("VGAMiner\MINERVGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dragons_Lair_1993_1993.zip"
for %%a in ("Dragon's Lair") do set FLDN=%%~a
for %%a in ("Dlair93\DRAGON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Double_Dragon_1988.zip"
for %%a in ("Double Dragon") do set FLDN=%%~a
for %%a in ("Ddragon\DRAGON.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_the_World_is_Carmen_Sandiego_1985.zip"
for %%a in ("Where in the World is Carmen Sandiego") do set FLDN=%%~a
for %%a in ("wwcs\CARMEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ski_or_Die_1990.zip"
for %%a in ("Ski or Die") do set FLDN=%%~a
for %%a in ("SkiorDie\SKI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Advanced_Tactical_Air_Command_1992_Microprose_Software_Inc.zip"
for %%a in ("Advanced Tactical Air Command") do set FLDN=%%~a
for %%a in ("a.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Back_to_the_Future_Part_III_1991.zip"
for %%a in ("Back to the Future Part III") do set FLDN=%%~a
for %%a in ("BttF3\BF.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"1869_1992.zip"
for %%a in ("1869") do set FLDN=%%~a
for %%a in ("1869\1869.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lotus_-_The_Ultimate_Challenge_1993.zip"
for %%a in ("Lotus - The Ultimate Challenge") do set FLDN=%%~a
for %%a in ("LotusThe\LOTUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"World_Circuit_1992.zip"
for %%a in ("World Circuit") do set FLDN=%%~a
for %%a in ("WorldCir\MPS\GPRIX\MED.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Das_Boot_German_U-Boat_Simulation_1990.zip"
for %%a in ("Das Boot German U-Boat Simulation") do set FLDN=%%~a
for %%a in ("DasBootG\DASBOOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Championship_Manager_93-94_1993.zip"
for %%a in ("Championship Manager 93-94") do set FLDN=%%~a
for %%a in ("chmpmn93\CM.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Strip_Poker_2_Plus_1988.zip"
for %%a in ("Strip Poker 2 Plus") do set FLDN=%%~a
for %%a in ("spoker+\STRIP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conquests_of_the_Longbow_-_The_Legend_of_Robin_Hood_1991.zip"
for %%a in ("Conquests of the Longbow - The Legend of Robin Hood") do set FLDN=%%~a
for %%a in ("longbow\ROBIN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stunt_Driver_1990.zip"
for %%a in ("Stunt Driver") do set FLDN=%%~a
for %%a in ("StuntDri\STUNT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Teenage_Mutant_Ninja_Turtles_-_Manhattan_Missions_1991.zip"
for %%a in ("Teenage Mutant Ninja Turtles - Manhattan Missions") do set FLDN=%%~a
for %%a in ("TMNTMM\T2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Emmanuelle_1989.zip"
for %%a in ("Emmanuelle") do set FLDN=%%~a
for %%a in ("emanuel\EMMA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hobbit_The_1983.zip"
for %%a in ("Hobbit, The") do set FLDN=%%~a
for %%a in ("thobbit\hobbit.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cover_Girl_Strip_Poker_1991.zip"
for %%a in ("Cover Girl Strip Poker") do set FLDN=%%~a
for %%a in ("coversp\STRIP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Maniac_Mansion_Enhanced_1988.zip"
for %%a in ("Maniac Mansion Enhanced") do set FLDN=%%~a
for %%a in ("mansiond\MANIAC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Karateka_1986.zip"
for %%a in ("Karateka") do set FLDN=%%~a
for %%a in ("Karateka\karateka.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"North_and_South_1990.zip"
for %%a in ("North & South") do set FLDN=%%~a
for %%a in ("NorthSo\north.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"3D_Lemmings_Winterland_1995.zip"
for %%a in ("3D Lemmings Winterland") do set FLDN=%%~a
for %%a in ("lemmi3d\L3D.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zak_McKracken_and_the_Alien_Mindbenders_Enhanced_1988.zip"
for %%a in ("Zak McKracken and the Alien Mindbenders Enhanced") do set FLDN=%%~a
for %%a in ("ZakEnh\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"European_Championship_1992_1992.zip"
for %%a in ("European Championship 1992") do set FLDN=%%~a
for %%a in ("European\ENGLISH.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nuclear_War_1989.zip"
for %%a in ("Nuclear War") do set FLDN=%%~a
for %%a in ("NuclearW\nukewar.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Catacomb_3-D_1992.zip"
for %%a in ("Catacomb 3-D") do set FLDN=%%~a
for %%a in ("Cataco3D\CAT3D.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fantasy_Empires_1993.zip"
for %%a in ("Fantasy Empires") do set FLDN=%%~a
for %%a in ("fantempi\FANTASY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pole_Position_1986.zip"
for %%a in ("Pole Position") do set FLDN=%%~a
for %%a in ("PolePosi\DRIVE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bruce_Lee_1987.zip"
for %%a in ("Bruce Lee") do set FLDN=%%~a
for %%a in ("BruceLee\BruceLee.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Girlfriend_Construction_Set_1989.zip"
for %%a in ("Girlfriend Construction Set") do set FLDN=%%~a
for %%a in ("girlcost\G.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bubble_Bobble_1988.zip"
for %%a in ("Bubble Bobble") do set FLDN=%%~a
for %%a in ("BubbBobb\BUBBLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Winter_Games_1986.zip"
for %%a in ("Winter Games") do set FLDN=%%~a
for %%a in ("WinterGa\WINTER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Air_Duel_80_Years_of_Dogfighting_1993.zip"
for %%a in ("Air Duel 80 Years of Dogfighting") do set FLDN=%%~a
for %%a in ("AirDuel8\dog.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Number_Munchers_1990.zip"
for %%a in ("Number Munchers") do set FLDN=%%~a
for %%a in ("NumbMunc\NM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Curse_of_the_Azure_Bonds_1989.zip"
for %%a in ("Curse of the Azure Bonds") do set FLDN=%%~a
for %%a in ("curazure\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Archon_Ultra_1994.zip"
for %%a in ("Archon Ultra") do set FLDN=%%~a
for %%a in ("archonul\ARCHON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Terminator_2_-_Judgment_Day_1991.zip"
for %%a in ("Terminator 2 - Judgment Day") do set FLDN=%%~a
for %%a in ("Terminat\T2.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"BurgerTime_1982.zip"
for %%a in ("BurgerTime") do set FLDN=%%~a
for %%a in ("BurgerTi\BURGER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Leisure_Suit_Larry_1_-_Land_of_the_Lounge_Lizards_VGA_1991.zip"
for %%a in ("Leisure Suit Larry 1 - Land of the Lounge Lizards VGA") do set FLDN=%%~a
for %%a in ("LSL1VGA\LSL1VGA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Titus_the_Fox_-_To_Marrakech_and_Back_1992.zip"
for %%a in ("Titus the Fox - To Marrakech and Back") do set FLDN=%%~a
for %%a in ("Titusthe\FOX.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"NHL_94_1993.zip"
for %%a in ("NHL '94") do set FLDN=%%~a
for %%a in ("NHL94\HOCKEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lemmings_3D_1995.zip"
for %%a in ("Lemmings 3D") do set FLDN=%%~a
for %%a in ("lemm3d\L3D.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hocus_Pocus_1994.zip"
for %%a in ("Hocus Pocus") do set FLDN=%%~a
for %%a in ("HocusPoc\HOCUS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chuck_Yeagers_Advanced_Flight_Trainer_1987.zip"
for %%a in ("Chuck Yeager's Advanced Flight Trainer") do set FLDN=%%~a
for %%a in ("ChukYAFT\AFT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Amazon_Trail_1993.zip"
for %%a in ("Amazon Trail") do set FLDN=%%~a
for %%a in ("amaztrai\AMAZON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ferrari_Formula_One_1989.zip"
for %%a in ("Ferrari Formula One") do set FLDN=%%~a
for %%a in ("FerrariF\FFORM1.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Marios_Game_Gallery_1995.zip"
for %%a in ("Mario's Game Gallery") do set FLDN=%%~a
for %%a in ("mariosgg\mario.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hugos_House_of_Horrors_1990.zip"
for %%a in ("Hugo's House of Horrors") do set FLDN=%%~a
for %%a in ("HugoHous\hhh.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lamborghini_-_American_Challenge_1992.zip"
for %%a in ("Lamborghini - American Challenge") do set FLDN=%%~a
for %%a in ("Lamborgh\DRIVE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"California_Games_II_1990.zip"
for %%a in ("California Games II") do set FLDN=%%~a
for %%a in ("CalGam2\CGII.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zool_1993.zip"
for %%a in ("Zool") do set FLDN=%%~a
for %%a in ("Zool93\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Supaplex_1991.zip"
for %%a in ("Supaplex") do set FLDN=%%~a
for %%a in ("Supaplex\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kings_Bounty_1990.zip"
for %%a in ("King's Bounty") do set FLDN=%%~a
for %%a in ("kingboun\KB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Paperboy_2_1991.zip"
for %%a in ("Paperboy 2") do set FLDN=%%~a
for %%a in ("Paperbo2\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Championship_Manager_1992.zip"
for %%a in ("Championship Manager") do set FLDN=%%~a
for %%a in ("champmn\MANAGER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Championship_Baseball_1986.zip"
for %%a in ("Championship Baseball") do set FLDN=%%~a
for %%a in ("ChampBs\STARTUP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gauntlet_1988.zip"
for %%a in ("Gauntlet") do set FLDN=%%~a
for %%a in ("Gauntlet\GAUNTLET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heretic_-_Shadow_of_the_Serpent_Riders_1996.zip"
for %%a in ("Heretic - Shadow of the Serpent Riders") do set FLDN=%%~a
for %%a in ("HereticS\HERETIC\HERETIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Solvers_Gizmos_and_Gadgets_1993.zip"
for %%a in ("Super Solvers Gizmos and Gadgets") do set FLDN=%%~a
for %%a in ("SSGG\ssg.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jazz_Jackrabbit_-_Holiday_Hare_1995_1995.zip"
for %%a in ("Jazz Jackrabbit - Holiday Hare 1995") do set FLDN=%%~a
for %%a in ("JazzJ95\JAZZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Prehistorik_1991.zip"
for %%a in ("Prehistorik") do set FLDN=%%~a
for %%a in ("Prehisto\HISTORIK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cuntlet_1992.zip"
for %%a in ("Cuntlet") do set FLDN=%%~a
for %%a in ("cuntlet\CUNT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stephen_Kings_-_The_Mist_1985.zip"
for %%a in ("Stephen King's - The Mist") do set FLDN=%%~a
for %%a in ("themist\GAME.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Silent_Service_1985.zip"
for %%a in ("Silent Service") do set FLDN=%%~a
for %%a in ("SilServ\SILENT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"IndyCar_Racing_1993.zip"
for %%a in ("IndyCar Racing") do set FLDN=%%~a
for %%a in ("IndyCarR\INDYCAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moonstone_-_A_Hard_Days_Knight_1992.zip"
for %%a in ("Moonstone - A Hard Days Knight") do set FLDN=%%~a
for %%a in ("moonahdk\MS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tongue_of_the_Fatman_1989.zip"
for %%a in ("Tongue of the Fatman") do set FLDN=%%~a
for %%a in ("Tongueof\FATMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dangerous_Dave_in_the_Deserted_Pirates_Hideout_1990.zip"
for %%a in ("Dangerous Dave in the Deserted Pirate's Hideout") do set FLDN=%%~a
for %%a in ("DangDavD\DAVE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Road_Runner_1989.zip"
for %%a in ("Road Runner") do set FLDN=%%~a
for %%a in ("RoadRunn\road.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rogue_1983.zip"
for %%a in ("Rogue") do set FLDN=%%~a
for %%a in ("rogue\10ROGUE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Micro_Machines_1994.zip"
for %%a in ("Micro Machines") do set FLDN=%%~a
for %%a in ("MicroMac\SM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Neuromancer_1988.zip"
for %%a in ("Neuromancer") do set FLDN=%%~a
for %%a in ("Neuro\neuro.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gunship_2000_CD-ROM_Edition_1993.zip"
for %%a in ("Gunship 2000") do set FLDN=%%~a
for %%a in ("GSHP2KCD\mps\gs2000\GS2000.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moon_Patrol_1983.zip"
for %%a in ("Moon Patrol") do set FLDN=%%~a
for %%a in ("MoonPatr\PATROL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Street_Rod_1989.zip"
for %%a in ("Street Rod") do set FLDN=%%~a
for %%a in ("StrtRods\SR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spy_Hunter_1984.zip"
for %%a in ("Spy Hunter") do set FLDN=%%~a
for %%a in ("shunt84\SPYHUNT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Big_Business_1990.zip"
for %%a in ("Big Business") do set FLDN=%%~a
for %%a in ("bigbusi\BB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Elite_1987.zip"
for %%a in ("Elite") do set FLDN=%%~a
for %%a in ("elite\elite.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wheel_of_Fortune_1987.zip"
for %%a in ("Wheel of Fortune") do set FLDN=%%~a
for %%a in ("WheelF\start.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Caveman_Ugh-Lympics_1989.zip"
for %%a in ("Caveman Ugh-Lympics") do set FLDN=%%~a
for %%a in ("CavemanU\CAVEMAN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mega_Man_1990.zip"
for %%a in ("Mega Man") do set FLDN=%%~a
for %%a in ("MegaMan\MM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wings_of_Fury_1989.zip"
for %%a in ("Wings of Fury") do set FLDN=%%~a
for %%a in ("WingsofF\WINGS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Save_Larisa_1998.zip"
for %%a in ("Save Larisa") do set FLDN=%%~a
for %%a in ("SaveLari\SVLARISA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ford_Simulator_5.0_1994.zip"
for %%a in ("Ford Simulator 5.0") do set FLDN=%%~a
for %%a in ("FordSim5\FORD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Street_Rod_2_The_Next_Generation_1991.zip"
for %%a in ("Street Rod 2 The Next Generation") do set FLDN=%%~a
for %%a in ("StreetRo\SR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"1_Ton_1996.zip"
for %%a in ("1 Ton") do set FLDN=%%~a
for %%a in ("1Ton\1TON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eye_of_the_Beholder_1991.zip"
for %%a in ("Eye of the Beholder") do set FLDN=%%~a
for %%a in ("eob1\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_the_USA_is_Carmen_Sandiego_Deluxe_1994.zip"
for %%a in ("Where in the USA is Carmen Sandiego Deluxe") do set FLDN=%%~a
for %%a in ("wucsd\CARMEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Warlords_1990.zip"
for %%a in ("Warlords") do set FLDN=%%~a
for %%a in ("Warlords\WARLORDS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"F-14_Tomcat_1990.zip"
for %%a in ("F-14 Tomcat") do set FLDN=%%~a
for %%a in ("F-14Tomc\TC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pacific_Strike_1994.zip"
for %%a in ("Pacific Strike") do set FLDN=%%~a
for %%a in ("PacificS\PS\PACIFIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Trek_-_The_Next_Generation_-_Trivia_1990.zip"
for %%a in ("Star Trek - The Next Generation - Trivia") do set FLDN=%%~a
for %%a in ("StarTrek\NGT1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bunny_Bricks_1993.zip"
for %%a in ("Bunny Bricks") do set FLDN=%%~a
for %%a in ("BunnyBri\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"One_Must_Fall_2097_1994.zip"
for %%a in ("One Must Fall 2097") do set FLDN=%%~a
for %%a in ("OneMustF\OMF\OMF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Solvers_Treasure_Mountain_1990.zip"
for %%a in ("Super Solvers Treasure Mountain") do set FLDN=%%~a
for %%a in ("SSTM\SST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"RoboCop_1989.zip"
for %%a in ("RoboCop") do set FLDN=%%~a
for %%a in ("RoboCop\ROBOCOP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lucky_Luke_1997_1997.zip"
for %%a in ("Lucky Luke") do set FLDN=%%~a
for %%a in ("LuckyLuk\LUCKY\LUCKY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arkanoid_II_-_Revenge_of_Doh_1989.zip"
for %%a in ("Arkanoid II - Revenge of Doh") do set FLDN=%%~a
for %%a in ("Arkanoi2\ARK2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Atomix_1990.zip"
for %%a in ("Atomix") do set FLDN=%%~a
for %%a in ("atomix\ATOMIX.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Clash_of_Steel_-_World_War_2_-_Europe_1939-45_1993.zip"
for %%a in ("Clash of Steel - World War 2 - Europe 1939-45") do set FLDN=%%~a
for %%a in ("clashsw2\COS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Games_-_Winter_Challenge_1991.zip"
for %%a in ("The Games - Winter Challenge") do set FLDN=%%~a
for %%a in ("TGameWnC\WINTER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cobra_Mission_1992.zip"
for %%a in ("Cobra Mission") do set FLDN=%%~a
for %%a in ("cobmiss\CM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dig_Dug_1983.zip"
for %%a in ("Dig Dug") do set FLDN=%%~a
for %%a in ("DigDug\Digdug.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"1st_Person_Pinball_1989.zip"
for %%a in ("1st Person Pinball") do set FLDN=%%~a
for %%a in ("1stPerso\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Giana_Sisters_1987.zip"
for %%a in ("Giana Sisters") do set FLDN=%%~a
for %%a in ("giana\GIANA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Indianapolis_500_The_Simulation_1989.zip"
for %%a in ("Indianapolis 500 The Simulation") do set FLDN=%%~a
for %%a in ("Indianap\INDY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Toppler_1990.zip"
for %%a in ("Toppler") do set FLDN=%%~a
for %%a in ("Toppler\perest\PERESTR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Munchers_-_The_Challenge_Continues..._1991.zip"
for %%a in ("Super Munchers - The Challenge Continues...") do set FLDN=%%~a
for %%a in ("SuperMun\SM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crazy_Cars_1987.zip"
for %%a in ("Crazy Cars") do set FLDN=%%~a
for %%a in ("CrazyCar\START.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"SimLife_1992.zip"
for %%a in ("SimLife") do set FLDN=%%~a
for %%a in ("SimLife\SIMLIFE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trolls_1992.zip"
for %%a in ("Trolls") do set FLDN=%%~a
for %%a in ("Trolls\TROLLS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Qbert_1984.zip"
for %%a in ("Qbert") do set FLDN=%%~a
for %%a in ("Qbert\PCQBERT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Starflight_1986.zip"
for %%a in ("Starflight") do set FLDN=%%~a
for %%a in ("starfly\STARFLT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dangerous_Dave_in_the_Haunted_Mansion_1991.zip"
for %%a in ("Dangerous Dave in the Haunted Mansion") do set FLDN=%%~a
for %%a in ("DangDavH\DAVE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"XWing_Fighter_1982.zip"
for %%a in ("XWing Fighter") do set FLDN=%%~a
for %%a in ("XWingFig\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultima_VI_-_The_False_Prophet_1990.zip"
for %%a in ("Ultima VI - The False Prophet") do set FLDN=%%~a
for %%a in ("ultima6\ULTIMA6.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"4x4_Team_1988.zip"
for %%a in ("4x4 Team") do set FLDN=%%~a
for %%a in ("4x4Team\4X4TEAM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bricks_1984.zip"
for %%a in ("Bricks") do set FLDN=%%~a
for %%a in ("Bricks\BRICK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bomber_1993.zip"
for %%a in ("Bomber") do set FLDN=%%~a
for %%a in ("Bomber\BOMBER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"DanDolme.zip"
for %%a in ("DanDolme.zip"
for %%a in ("DanDolme\DAN1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_the_USA_is_Carmen_Sandiego_1986.zip"
for %%a in ("Where in the USA is Carmen Sandiego") do set FLDN=%%~a
for %%a in ("wucs\floppy\CARMEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wheel_of_Fortune_-_New_Third_Edition_1988.zip"
for %%a in ("Wheel of Fortune - New Third Edition") do set FLDN=%%~a
for %%a in ("WheelF3\WHEEL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gunboat_1990.zip"
for %%a in ("Gunboat") do set FLDN=%%~a
for %%a in ("Gunboat\gb.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Empire_Deluxe_1993.zip"
for %%a in ("Empire Deluxe") do set FLDN=%%~a
for %%a in ("empidlx\empire.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Suburban_Commando_1993.zip"
for %%a in ("Suburban Commando") do set FLDN=%%~a
for %%a in ("Suburban\commando.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Racer_1988.zip"
for %%a in ("Space Racer") do set FLDN=%%~a
for %%a in ("SpaceRac\SR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rise_of_the_Triad_-_The_Hunt_Begins_Deluxe_Edition_1995.zip"
for %%a in ("Rise of the Triad - The Hunt Begins") do set FLDN=%%~a
for %%a in ("RotTDLX\ROTT\ROTT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Volfied_1991.zip"
for %%a in ("Volfied") do set FLDN=%%~a
for %%a in ("Volfied\VOLFIED.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Microsoft_Space_Simulator_1994.zip"
for %%a in ("Microsoft Space Simulator") do set FLDN=%%~a
for %%a in ("MSSpace\SPACESIM\SPACESIM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eye_of_the_Beholder_III_-_Assault_on_Myth_Drannor_1993.zip"
for %%a in ("Eye of the Beholder III - Assault on Myth Drannor") do set FLDN=%%~a
for %%a in ("eob3\EYE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Brokeout_1989.zip"
for %%a in ("Brokeout") do set FLDN=%%~a
for %%a in ("Brokeout\BROKEOUT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wheel_of_Fortune_2nd_Edition_1987.zip"
for %%a in ("Wheel of Fortune 2nd Edition") do set FLDN=%%~a
for %%a in ("WheelF2\WHEEL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"American_Gladiators_1992.zip"
for %%a in ("American Gladiators") do set FLDN=%%~a
for %%a in ("AmerGlad\GLAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Museum_Madness_1994.zip"
for %%a in ("Museum Madness") do set FLDN=%%~a
for %%a in ("MuseumMa\MUSEUM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blockout_1989.zip"
for %%a in ("Blockout") do set FLDN=%%~a
for %%a in ("blkout\BL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pinball_2000_1995.zip"
for %%a in ("Pinball 2000") do set FLDN=%%~a
for %%a in ("Pinball2\PB2000\PD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Smurfs_1996.zip"
for %%a in ("The Smurfs") do set FLDN=%%~a
for %%a in ("TheSmurf\SMURFS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Falcon_3.0_1991.zip"
for %%a in ("Falcon 3.0") do set FLDN=%%~a
for %%a in ("Falcon3\falcon3.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_Europe_is_Carmen_Sandiego_1988.zip"
for %%a in ("Where in Europe is Carmen Sandiego") do set FLDN=%%~a
for %%a in ("wecs\CARMEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jill_of_the_Jungle_1992.zip"
for %%a in ("Jill of the Jungle") do set FLDN=%%~a
for %%a in ("JillJung\JILL1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Entity_1994.zip"
for %%a in ("Entity") do set FLDN=%%~a
for %%a in ("Entity\ENTITY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tank_Wars_1986.zip"
for %%a in ("Tank Wars") do set FLDN=%%~a
for %%a in ("TankWars\TANK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chuck_Yeagers_Air_Combat_1991.zip"
for %%a in ("Chuck Yeager's Air Combat") do set FLDN=%%~a
for %%a in ("ChukYAC\YEAGER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"3D_World_Boxing_1992.zip"
for %%a in ("3D World Boxing") do set FLDN=%%~a
for %%a in ("3DWorldB\3DWB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shuttle_The_Space_Flight_Simulator_1992.zip"
for %%a in ("Shuttle The Space Flight Simulator") do set FLDN=%%~a
for %%a in ("ShuttleT\SHUTTLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Rogue_1989.zip"
for %%a in ("Space Rogue") do set FLDN=%%~a
for %%a in ("spacrogu\SR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Death_Knights_of_Krynn_1991.zip"
for %%a in ("Death Knights of Krynn") do set FLDN=%%~a
for %%a in ("dkkrynn\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Planet_of_Lust_1989.zip"
for %%a in ("Planet of Lust") do set FLDN=%%~a
for %%a in ("planlust\PLANETOF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Liero_1999.zip"
for %%a in ("Liero") do set FLDN=%%~a
for %%a in ("Liero\LIERO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Leisure_Suit_Larry_2_-_Goes_looking_for_Love_in_Several_Wrong_Places_1988.zip"
for %%a in ("Leisure Suit Larry 2 - Goes looking for Love in Several Wrong Places") do set FLDN=%%~a
for %%a in ("LSL2\LSL2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Indiana_Jones_and_the_Temple_of_Doom_1989.zip"
for %%a in ("Indiana Jones and the Temple of Doom") do set FLDN=%%~a
for %%a in ("IndiJTD\INDY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Microsoft_Flight_Simulator_v4.0_1989.zip"
for %%a in ("Microsoft Flight Simulator") do set FLDN=%%~a
for %%a in ("MSFlght4\MSFS4\FS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jordan_vs_Bird_-_One_on_One_1988.zip"
for %%a in ("Jordan vs Bird - One on One") do set FLDN=%%~a
for %%a in ("Jordanvs\1ON1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Monty_Pythons_Flying_Circus_1990.zip"
for %%a in ("Monty Python's Flying Circus") do set FLDN=%%~a
for %%a in ("MontyPyt\PEGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Immortal_The_1991.zip"
for %%a in ("Immortal, The") do set FLDN=%%~a
for %%a in ("timmorta\IMMORTAL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_Rampage_1996.zip"
for %%a in ("Alien Rampage") do set FLDN=%%~a
for %%a in ("AlienRam\RAMPAGE\RAMPAGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Panzer_Battles_1990.zip"
for %%a in ("Panzer Battles") do set FLDN=%%~a
for %%a in ("PanzerBa\PZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"LHX_Attack_Chopper_1990.zip"
for %%a in ("LHX Attack Chopper") do set FLDN=%%~a
for %%a in ("LHXAttac\LHX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Test_Drive_II_-_The_Collection_1990.zip"
for %%a in ("Test Drive II - The Collection") do set FLDN=%%~a
for %%a in ("TstDriv2\TD2EGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jazz_Jackrabbit_-_Holiday_Hare_1994_1994.zip"
for %%a in ("Jazz Jackrabbit - Holiday Hare 1994") do set FLDN=%%~a
for %%a in ("JazzJ94\JAZZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Wolf_1989.zip"
for %%a in ("Operation Wolf") do set FLDN=%%~a
for %%a in ("OpWolf\OPWOLF.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Solvers_OutNumbered_1990.zip"
for %%a in ("Super Solvers OutNumbered") do set FLDN=%%~a
for %%a in ("SSOUTN\SSO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Speedball_2_-_Brutal_Deluxe_1992.zip"
for %%a in ("Speedball 2 - Brutal Deluxe") do set FLDN=%%~a
for %%a in ("Speedbl2\SB2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"3_Point_Basketball_1993.zip"
for %%a in ("3 Point Basketball") do set FLDN=%%~a
for %%a in ("3PointBa\BBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_Time_is_Carmen_Sandiego_1989.zip"
for %%a in ("Where in Time is Carmen Sandiego") do set FLDN=%%~a
for %%a in ("wtcs\carmen.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"A.J.s_World_of_Discovery_1992.zip"
for %%a in ("A.J.'s World of Discovery") do set FLDN=%%~a
for %%a in ("AJsWorld\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jumpman_1984.zip"
for %%a in ("Jumpman") do set FLDN=%%~a
for %%a in ("Jumpman\JUMPMAN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Airlift_Rescue_1995.zip"
for %%a in ("Airlift Rescue") do set FLDN=%%~a
for %%a in ("AirliftR\AIRLIFT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xenon_2_-_Megablast_1990.zip"
for %%a in ("Xenon 2 - Megablast") do set FLDN=%%~a
for %%a in ("Xenon2Me\XENON2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pizza_Worm_1994.zip"
for %%a in ("Pizza Worm") do set FLDN=%%~a
for %%a in ("PizzaWor\pworm.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Leather_Goddesses_of_Phobos_2_1992.zip"
for %%a in ("Leather Goddesses of Phobos 2") do set FLDN=%%~a
for %%a in ("leatherg\MP.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chip_N_Dale_Rescue_Rangers_-_The_Adventures_in_Nimnuls_Castle_1990.zip"
for %%a in ("Chip 'N Dale Rescue Rangers - The Adventures in Nimnul's Castle") do set FLDN=%%~a
for %%a in ("ChipNDal\RR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Invaders_1978_1996.zip"
for %%a in ("Invaders 1978") do set FLDN=%%~a
for %%a in ("Invaders\inv78.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tom_and_Jerry_Cat-astrophe_1990.zip"
for %%a in ("Tom & Jerry Cat-astrophe") do set FLDN=%%~a
for %%a in ("catastro\TJ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Turbo_Out_Run_1990.zip"
for %%a in ("Turbo Out Run") do set FLDN=%%~a
for %%a in ("TurboOut\outrun.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Leisure_Suit_Larry_3_-_Passionate_Patti_in_Pursuit_of_the_Pulsating_Pectorals_1989.zip"
for %%a in ("Leisure Suit Larry 3 - Passionate Patti in Pursuit of the Pulsating Pectorals") do set FLDN=%%~a
for %%a in ("LSL3\LSL3.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Body_Blows_1993.zip"
for %%a in ("Body Blows") do set FLDN=%%~a
for %%a in ("BodyBlow\BODYBLOW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Games_-_Summer_Challenge_1992.zip"
for %%a in ("The Games - Summer Challenge") do set FLDN=%%~a
for %%a in ("TGameSmC\SUMMER\SUMMER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mega_Man_3_-_The_Robots_are_Revolting_1992.zip"
for %%a in ("Mega Man 3 - The Robots are Revolting") do set FLDN=%%~a
for %%a in ("MegaMan3\MM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Blues_Brothers_-_Jukebox_Adventure_1993.zip"
for %%a in ("The Blues Brothers - Jukebox Adventure") do set FLDN=%%~a
for %%a in ("BluBroJA\blues.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heimdall_1992.zip"
for %%a in ("Heimdall") do set FLDN=%%~a
for %%a in ("heimdall\HEIMDALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fury_of_the_Furries_1993.zip"
for %%a in ("Fury of the Furries") do set FLDN=%%~a
for %%a in ("Furyofth\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ghosts_N_Goblins_1987.zip"
for %%a in ("Ghosts 'N Goblins") do set FLDN=%%~a
for %%a in ("GhostsNG\GHOST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Captain_Bible_in_the_Dome_of_Darkness_1994.zip"
for %%a in ("Captain Bible in the Dome of Darkness") do set FLDN=%%~a
for %%a in ("capbible\CB\CB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Apache_Strike_1989.zip"
for %%a in ("Apache Strike") do set FLDN=%%~a
for %%a in ("ApacheSt\APACHE\APACHE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rick_Dangerous_1989.zip"
for %%a in ("Rick Dangerous") do set FLDN=%%~a
for %%a in ("RickDang\RICK.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Life_and_Death_2_-_The_Brain_1990.zip"
for %%a in ("Life & Death 2 - The Brain") do set FLDN=%%~a
for %%a in ("landd2\LD2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ninja_Gaiden_1990.zip"
for %%a in ("Ninja Gaiden") do set FLDN=%%~a
for %%a in ("NinjaGai\ninja.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Toobin_1989.zip"
for %%a in ("Toobin'") do set FLDN=%%~a
for %%a in ("Toobin\TOOBIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"President_Elect_-_1988_Edition_1987.zip"
for %%a in ("President Elect - 1988 Edition") do set FLDN=%%~a
for %%a in ("Presiden\PE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Carnage_1993.zip"
for %%a in ("Carnage") do set FLDN=%%~a
for %%a in ("Carnage\CARNAGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"2400_AD_1988.zip"
for %%a in ("2400 AD") do set FLDN=%%~a
for %%a in ("2400ad\2400AD.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizardry_1_Proving_Grounds_Of_The_Mad_Overlord_1981_Sir_Tech.zip"
for %%a in ("Wizardry 1 Proving Grounds Of The Mad Overlord") do set FLDN=%%~a
for %%a in ("wiz1.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"WolfPack_1990.zip"
for %%a in ("WolfPack") do set FLDN=%%~a
for %%a in ("WolfPack\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vikings_-_Fields_of_Conquest_-_Kingdoms_of_England_II_1993.zip"
for %%a in ("Vikings - Fields of Conquest - Kingdoms of England II") do set FLDN=%%~a
for %%a in ("Vikings\VIKINGS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Terminator_1991.zip"
for %%a in ("The Terminator") do set FLDN=%%~a
for %%a in ("TheTermi\TERM\TERM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Marble_Madness_1986.zip"
for %%a in ("Marble Madness") do set FLDN=%%~a
for %%a in ("MarbleMa\MARBLE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jetpack_1993.zip"
for %%a in ("Jetpack") do set FLDN=%%~a
for %%a in ("Jetpack\JETPACK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nitemare-3D_1994.zip"
for %%a in ("Nitemare-3D") do set FLDN=%%~a
for %%a in ("Nitemare\N3D.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Manager_1991.zip"
for %%a in ("The Manager") do set FLDN=%%~a
for %%a in ("TheManag\BMP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Barbarian_1989.zip"
for %%a in ("Barbarian") do set FLDN=%%~a
for %%a in ("Barbaria\BARB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Barbie_Super_Model_1993.zip"
for %%a in ("Barbie Super Model") do set FLDN=%%~a
for %%a in ("BarbieSu\BARBIE\BARBIE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ghostbusters_II_1989.zip"
for %%a in ("Ghostbusters II") do set FLDN=%%~a
for %%a in ("Ghostbu2\gb2.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"SimEarth_-_The_Living_Planet_1990.zip"
for %%a in ("SimEarth - The Living Planet") do set FLDN=%%~a
for %%a in ("simearth\SIMEARTH\SIMEARTH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"PGA_Tour_Golf_1990.zip"
for %%a in ("PGA Tour Golf") do set FLDN=%%~a
for %%a in ("PGATourG\GOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Carrier_Command_1989.zip"
for %%a in ("Carrier Command") do set FLDN=%%~a
for %%a in ("caricomm\CARRIER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Seven_Cities_of_Gold_Commemorative_Edition_1993.zip"
for %%a in ("Seven Cities of Gold") do set FLDN=%%~a
for %%a in ("SevenCit\7COG.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pitfall_1984.zip"
for %%a in ("Pitfall") do set FLDN=%%~a
for %%a in ("Pitfall\PITFALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Indiana_Jones_and_the_Last_Crusade_-_The_Action_Game_1989.zip"
for %%a in ("Indiana Jones and the Last Crusade - The Action Game") do set FLDN=%%~a
for %%a in ("IniJLCA\INDY.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Joust_1983.zip"
for %%a in ("Joust") do set FLDN=%%~a
for %%a in ("Joust\JOUST.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"SimCity_Classic_1994.zip"
for %%a in ("SimCity Classic") do set FLDN=%%~a
for %%a in ("SimCityC\SIMCITY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_the_USA_is_Carmen_Sandiego_Enhanced_1992.zip"
for %%a in ("Where in the USA is Carmen Sandiego Enhanced") do set FLDN=%%~a
for %%a in ("wucse\CARMEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eye_of_the_Beholder_II_-_The_Legend_of_Darkmoon_1991.zip"
for %%a in ("Eye of the Beholder II - The Legend of Darkmoon") do set FLDN=%%~a
for %%a in ("eob2\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"RoboCop_3_1992.zip"
for %%a in ("RoboCop 3") do set FLDN=%%~a
for %%a in ("RoboCop3\ROBO3.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Charlie_the_Duck_1996.zip"
for %%a in ("Charlie the Duck") do set FLDN=%%~a
for %%a in ("Charliet\CHARLIE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hyper_Tank_1999.zip"
for %%a in ("Hyper Tank") do set FLDN=%%~a
for %%a in ("HyperTan\HYTANK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"X-Men_2_-_The_Fall_of_the_Mutants_1991.zip"
for %%a in ("X-Men 2 - The Fall of the Mutants") do set FLDN=%%~a
for %%a in ("xmen2fm\XMEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"WWF_Wrestlemania_1992.zip"
for %%a in ("WWF Wrestlemania") do set FLDN=%%~a
for %%a in ("WWFWrest\WWF\WWF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"donald_ducks_playground_1984_sierra.zip"
for %%a in ("Donald Duck's Playground") do set FLDN=%%~a
for %%a in ("sierra.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shadows_of_Mordor_1987.zip"
for %%a in ("Shadows of Mordor") do set FLDN=%%~a
for %%a in ("somordor\SOM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"sokoban_1984_spectrum_holobyte.zip"
for %%a in ("Sokoban") do set FLDN=%%~a
for %%a in ("skb.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bouncing_Babies_1984.zip"
for %%a in ("Bouncing Babies") do set FLDN=%%~a
for %%a in ("Bouncing\BABY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Oil_Barons_1983.zip"
for %%a in ("Oil Barons") do set FLDN=%%~a
for %%a in ("OilBaron\Disk 1\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pang_1992.zip"
for %%a in ("Pang") do set FLDN=%%~a
for %%a in ("Pang\BALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Secret_Weapons_of_the_Luftwaffe_CD-ROM_1992.zip"
for %%a in ("Secret Weapons of the Luftwaffe") do set FLDN=%%~a
for %%a in ("SecWepCD\SWOTL\sw.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Speed_Racer_in_The_Challenge_of_Racer_X_1992.zip"
for %%a in ("Speed Racer in The Challenge of Racer X") do set FLDN=%%~a
for %%a in ("SpeedRac\SPEED\SR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Microsoft_Flight_Simulator_v3.0_1988.zip"
for %%a in ("Microsoft Flight Simulator") do set FLDN=%%~a
for %%a in ("MSFlght3\floppy\FS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"D-Day_-_America_Invades_1995.zip"
for %%a in ("D-Day - America Invades") do set FLDN=%%~a
for %%a in ("ddayai\INVADE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Striker_1992_1992.zip"
for %%a in ("Striker") do set FLDN=%%~a
for %%a in ("Striker1\striker\STRIKER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Floor_13_1992.zip"
for %%a in ("Floor 13") do set FLDN=%%~a
for %%a in ("floor13\FLOOR13.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"JRR_Tolkiens_War_in_Middle_Earth_1988.zip"
for %%a in ("JRR Tolkien's War in Middle Earth") do set FLDN=%%~a
for %%a in ("jrrtwime\LORD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rampart_1992.zip"
for %%a in ("Rampart") do set FLDN=%%~a
for %%a in ("Rampart\RAMPART.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Burger_Blaster_1988.zip"
for %%a in ("Burger Blaster") do set FLDN=%%~a
for %%a in ("BurgerBl\BURGER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shinobi_1989.zip"
for %%a in ("Shinobi") do set FLDN=%%~a
for %%a in ("Shinobi\SH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tapper_1983.zip"
for %%a in ("Tapper") do set FLDN=%%~a
for %%a in ("Tapper\TAPPER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pipe_Dream_1989.zip"
for %%a in ("Pipe Dream") do set FLDN=%%~a
for %%a in ("PipeDrea\PIPE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Solvers_Midnight_Rescue_1989.zip"
for %%a in ("Super Solvers Midnight Rescue") do set FLDN=%%~a
for %%a in ("SSMR\SSR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ishar_-_Legend_of_the_Fortress_1992.zip"
for %%a in ("Ishar - Legend of the Fortress") do set FLDN=%%~a
for %%a in ("ISHAR1\start.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kick_Off_3_-_European_Challenge_1994.zip"
for %%a in ("Kick Off 3 - European Challenge") do set FLDN=%%~a
for %%a in ("KickOff3\ko3.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hexxagon_1993.zip"
for %%a in ("Hexxagon") do set FLDN=%%~a
for %%a in ("hexxagn\HEXX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blue_Max_-_Aces_of_the_Great_War_1990.zip"
for %%a in ("Blue Max - Aces of the Great War") do set FLDN=%%~a
for %%a in ("bmaxagw\BLUEMAX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grand_Prix_Unlimited_1992.zip"
for %%a in ("Grand Prix Unlimited") do set FLDN=%%~a
for %%a in ("GPrixU\runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Caverns_of_Xaskazien_1995.zip"
for %%a in ("Caverns of Xaskazien") do set FLDN=%%~a
for %%a in ("xask\COX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Action_Fighter_1989.zip"
for %%a in ("Action Fighter") do set FLDN=%%~a
for %%a in ("ActionFi\ACT_EGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Air_Warrior_1992.zip"
for %%a in ("Air Warrior") do set FLDN=%%~a
for %%a in ("AirWarri\AIRWAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Bards_Tale_2_-_The_Destiny_Knight_1988.zip"
for %%a in ("The Bard's Tale 2 - The Destiny Knight") do set FLDN=%%~a
for %%a in ("bardtal2\DK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Motocross_1989.zip"
for %%a in ("Motocross") do set FLDN=%%~a
for %%a in ("Motocros\moto.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cabal_1988.zip"
for %%a in ("Cabal") do set FLDN=%%~a
for %%a in ("Cabal\CABAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stratego_1990.zip"
for %%a in ("Stratego") do set FLDN=%%~a
for %%a in ("Stratego\STRATEGO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xmas_Lemmings_1991.zip"
for %%a in ("Xmas Lemmings") do set FLDN=%%~a
for %%a in ("xmaslem\LEMMINGS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Freddy_Pharkas_Frontier_Pharmacist_1993.zip"
for %%a in ("Freddy Pharkas, Frontier Pharmacist") do set FLDN=%%~a
for %%a in ("fpfp.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Double_Dragon_II_-_The_Revenge_1989.zip"
for %%a in ("Double Dragon II - The Revenge") do set FLDN=%%~a
for %%a in ("Ddragon2\DRAGON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Island_of_Dr._Brain_1992.zip"
for %%a in ("Island of Dr. Brain") do set FLDN=%%~a
for %%a in ("ibrain\SIERRA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"UFO_1989.zip"
for %%a in ("UFO") do set FLDN=%%~a
for %%a in ("UFO\UFO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bionic_Commando_1988.zip"
for %%a in ("Bionic Commando") do set FLDN=%%~a
for %%a in ("BionicCo\BION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Speedball_1988.zip"
for %%a in ("Speedball") do set FLDN=%%~a
for %%a in ("Speedbl\EGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hook_1992.zip"
for %%a in ("Hook") do set FLDN=%%~a
for %%a in ("hook\run.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Laura_Bow_1_-_The_Colonels_Bequest_1989.zip"
for %%a in ("Laura Bow 1 - The Colonel's Bequest") do set FLDN=%%~a
for %%a in ("lbow1\sierra.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Donal_Ducks_Playground_1986.zip"
for %%a in ("Donal Duck's Playground") do set FLDN=%%~a
for %%a in ("dondukpl\START.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ancient_Art_of_War_1984.zip"
for %%a in ("Ancient Art of War") do set FLDN=%%~a
for %%a in ("anciaw\WAR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mixed-Up_Mother_Goose_1991.zip"
for %%a in ("Mixed-Up Mother Goose") do set FLDN=%%~a
for %%a in ("mugoose\MG.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ms_Pac_PC_1995.zip"
for %%a in ("Ms Pac PC") do set FLDN=%%~a
for %%a in ("MsPacPC\MSPAC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Earl_Weaver_Baseball_1987.zip"
for %%a in ("Earl Weaver Baseball") do set FLDN=%%~a
for %%a in ("ErlWeav1\WEAVER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Terminator_-_Future_Shock_1995.zip"
for %%a in ("The Terminator - Future Shock") do set FLDN=%%~a
for %%a in ("TermFS\GAMES\SHOCK\SHOCK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"3D_Pifall_1994.zip"
for %%a in ("3D Pifall") do set FLDN=%%~a
for %%a in ("3dpitfal\3DPIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beyond_Castle_Wolfenstein_1985.zip"
for %%a in ("Beyond Castle Wolfenstein") do set FLDN=%%~a
for %%a in ("BeyondCa\Bcw.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"SimHealth_1994.zip"
for %%a in ("SimHealth") do set FLDN=%%~a
for %%a in ("SimHealt\HEALTH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dalek_Attack_1992.zip"
for %%a in ("Dalek Attack") do set FLDN=%%~a
for %%a in ("DalekAtt\DRWHO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chex_Quest_1996.zip"
for %%a in ("Chex Quest") do set FLDN=%%~a
for %%a in ("ChexQ\chex.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Formula_One_1994.zip"
for %%a in ("Formula One") do set FLDN=%%~a
for %%a in ("FormulaO\f1.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lagaf_-_Les_Aventures_de_Moktar_-_Vol_1_-_La_Zoubida_1991.zip"
for %%a in ("Lagaf - Les Aventures de Moktar - Vol 1 - La Zoubida") do set FLDN=%%~a
for %%a in ("LagafLes\MOKTAR.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"ALF_-_The_First_Adventure_1987.zip"
for %%a in ("ALF - The First Adventure") do set FLDN=%%~a
for %%a in ("ALFTheFi\GAME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Project-X_1994.zip"
for %%a in ("Project-X") do set FLDN=%%~a
for %%a in ("ProjectX\PX.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Digger_1992.zip"
for %%a in ("Digger") do set FLDN=%%~a
for %%a in ("Digger\DIGGER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dungeons_of_Death_1994.zip"
for %%a in ("Dungeons of Death") do set FLDN=%%~a
for %%a in ("dungdeth\DOFD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rampage_1988.zip"
for %%a in ("Rampage") do set FLDN=%%~a
for %%a in ("Rampage\RAMPAGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Buck_Rogers_-_Matrix_Cubed_1992.zip"
for %%a in ("Buck Rogers - Matrix Cubed") do set FLDN=%%~a
for %%a in ("BRmatrix\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Winter_Olympics_-_Lillehammer_94_1993.zip"
for %%a in ("Winter Olympics - Lillehammer '94") do set FLDN=%%~a
for %%a in ("WinterOl\WO94\WO94.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zaxxon_1984.zip"
for %%a in ("Zaxxon") do set FLDN=%%~a
for %%a in ("Zaxxon\ZAXXON.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_Breed_1993.zip"
for %%a in ("Alien Breed") do set FLDN=%%~a
for %%a in ("AlienBre\ALIEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"HardBall_III_1992.zip"
for %%a in ("HardBall III") do set FLDN=%%~a
for %%a in ("HBall3\hardball\HARDBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"F40_Pursuit_Simulator_1989.zip"
for %%a in ("F40 Pursuit Simulator") do set FLDN=%%~a
for %%a in ("F40Pursu\cc2ega.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conflict_1990.zip"
for %%a in ("Conflict") do set FLDN=%%~a
for %%a in ("conflict\Conflict.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"SkyRoads_Xmas_Special_1994.zip"
for %%a in ("SkyRoads Xmas Special") do set FLDN=%%~a
for %%a in ("SkyRdsX\SKYXMAS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Family_Feud_1987.zip"
for %%a in ("Family Feud") do set FLDN=%%~a
for %%a in ("famifeud\MENU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gauntlet_II_1989.zip"
for %%a in ("Gauntlet II") do set FLDN=%%~a
for %%a in ("Gauntle2\gauntlet.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tom_and_Jerry_1993.zip"
for %%a in ("Tom & Jerry") do set FLDN=%%~a
for %%a in ("TomJerry\T&amp;J.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Toyota_Celica_GT_Rally_1992.zip"
for %%a in ("Toyota Celica GT Rally") do set FLDN=%%~a
for %%a in ("ToyotaCe\RALLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Hang-On_1987.zip"
for %%a in ("Super Hang-On") do set FLDN=%%~a
for %%a in ("SuperHan\shangon.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Great_Naval_Battles_Vol_I_-_North_Atlantic_1939-1943_1992.zip"
for %%a in ("Great Naval Battles Vol I - North Atlantic 1939-1943") do set FLDN=%%~a
for %%a in ("gnb1na\GNBNA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Galactic_Conqueror_1988.zip"
for %%a in ("Galactic Conqueror") do set FLDN=%%~a
for %%a in ("galconq\GC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rise_of_the_Dragon_1990.zip"
for %%a in ("Rise of the Dragon") do set FLDN=%%~a
for %%a in ("rdragon\dragon.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_Americas_Past_is_Carmen_Sandiego_1991.zip"
for %%a in ("Where in America's Past is Carmen Sandiego") do set FLDN=%%~a
for %%a in ("wapcs\RUNME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MechWarrior_1989.zip"
for %%a in ("MechWarrior") do set FLDN=%%~a
for %%a in ("mwarrior\MECHWAR\MW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dragon_Wars_1990.zip"
for %%a in ("Dragon Wars") do set FLDN=%%~a
for %%a in ("dragonwa\DRAGON.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Archon_1984.zip"
for %%a in ("Archon") do set FLDN=%%~a
for %%a in ("archon\ARCHON.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zak_McKracken_and_the_Alien_Mindbenders_1988.zip"
for %%a in ("Zak McKracken and the Alien Mindbenders") do set FLDN=%%~a
for %%a in ("Zak\zak.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Fighter_1993.zip"
for %%a in ("Super Fighter") do set FLDN=%%~a
for %%a in ("SuperFig\sf.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"V-Wing_1997.zip"
for %%a in ("V-Wing") do set FLDN=%%~a
for %%a in ("VWing\vwing\VWING.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Once_Upon_a_Forest_1995.zip"
for %%a in ("Once Upon a Forest") do set FLDN=%%~a
for %%a in ("uponfor\OUAF.BAT") do set FLDN=%%~a
for %%a in ("Card_Sharks_1988.zip"
for %%a in ("Card Sharks") do set FLDN=%%~a
for %%a in ("cardshks\Cards.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Impossible_Mission_II_1988.zip"
for %%a in ("Impossible Mission II") do set FLDN=%%~a
for %%a in ("Impossib\IM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Lost_Episodes_of_Doom_1995.zip"
for %%a in ("The Lost Episodes of Doom") do set FLDN=%%~a
for %%a in ("TheLostE\DOOM\JUPITER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tristan_Pinball_1991.zip"
for %%a in ("Tristan Pinball") do set FLDN=%%~a
for %%a in ("TristanP\TRISTAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Empire_-_Wargame_of_the_Century_1987.zip"
for %%a in ("Empire - Wargame of the Century") do set FLDN=%%~a
for %%a in ("empirwc\EMPIRE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spear_of_Destiny_1992.zip"
for %%a in ("Spear of Destiny") do set FLDN=%%~a
for %%a in ("SoD3D\WOLF3D\SOD\SOD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Adventures_of_Captain_Comic_1988.zip"
for %%a in ("The Adventures of Captain Comic") do set FLDN=%%~a
for %%a in ("AdvCapCo\comic.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"X-Men_1989.zip"
for %%a in ("X-Men") do set FLDN=%%~a
for %%a in ("XMen\XMEN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Oils_Well_1990.zip"
for %%a in ("Oil's Well") do set FLDN=%%~a
for %%a in ("OilsWell\OILSWELL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Commando_1986.zip"
for %%a in ("Commando") do set FLDN=%%~a
for %%a in ("Commando\START.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pinball_Dreams_II_1994.zip"
for %%a in ("Pinball Dreams II") do set FLDN=%%~a
for %%a in ("pinblld2\21STCENT\DREAMS2\PD2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Duck_Hunt_1993.zip"
for %%a in ("Duck Hunt") do set FLDN=%%~a
for %%a in ("DuckHunt\duck.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stunt_Track_Racer_1989.zip"
for %%a in ("Stunt Track Racer") do set FLDN=%%~a
for %%a in ("StuntTra\STUNTEGA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"ASCII_DOOM_1999.zip"
for %%a in ("ASCII DOOM") do set FLDN=%%~a
for %%a in ("ASCIIDOO\DOOM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"ABC_Monday_Night_Football_1989.zip"
for %%a in ("ABC Monday Night Football") do set FLDN=%%~a
for %%a in ("ABCMonda\MONDAY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sopwith_1985.zip"
for %%a in ("Sopwith") do set FLDN=%%~a
for %%a in ("Sopwith\SOPWITH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sango_Fighter_2_1995.zip"
for %%a in ("Sango Fighter 2") do set FLDN=%%~a
for %%a in ("SangoFi2\SANGO2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Black_Cauldron_The_1986.zip"
for %%a in ("Black Cauldron, The") do set FLDN=%%~a
for %%a in ("BlakCaul\_bc.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moonwalker_1989.zip"
for %%a in ("Moonwalker") do set FLDN=%%~a
for %%a in ("Moonwalk\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Utopia_-_The_Creation_of_a_Nation_1991.zip"
for %%a in ("Utopia - The Creation of a Nation") do set FLDN=%%~a
for %%a in ("UtoptCoN\UTOPIA\UTOPIA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Secret_Island_of_Dr._Quandary_The_1992.zip"
for %%a in ("Secret Island of Dr. Quandary, The") do set FLDN=%%~a
for %%a in ("quandary\QISLAND.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fellowship_of_the_Ring_The_-_Part_1_1986.zip"
for %%a in ("Fellowship of the Ring, The - Part 1") do set FLDN=%%~a
for %%a in ("fotr1\for1.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"C-Dogs_2000.zip"
for %%a in ("C-Dogs") do set FLDN=%%~a
for %%a in ("CDogs\CDOGS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Classic_Concentration_1988.zip"
for %%a in ("Classic Concentration") do set FLDN=%%~a
for %%a in ("classcon\classic.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Price_is_Right_1990.zip"
for %%a in ("The Price is Right") do set FLDN=%%~a
for %%a in ("ThePrice\PRICE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Defend_the_Alamo_1994.zip"
for %%a in ("Defend the Alamo") do set FLDN=%%~a
for %%a in ("defalamo\DEFTALAM\DTA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gremlins_2_-_The_New_Batch_1990_1990.zip"
for %%a in ("Gremlins 2 - The New Batch") do set FLDN=%%~a
for %%a in ("Grem290\GREMLINS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Burntime_1993.zip"
for %%a in ("Burntime") do set FLDN=%%~a
for %%a in ("burntime\BT.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Bards_Tale_3_-_Thief_Of_Fate_1990.zip"
for %%a in ("The Bard's Tale 3 - Thief Of Fate") do set FLDN=%%~a
for %%a in ("bardtal3\THIEF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Where_in_Space_is_Carmen_Sandiego_1993.zip"
for %%a in ("Where in Space is Carmen Sandiego") do set FLDN=%%~a
for %%a in ("wscs\CARMEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bush_Buck_-_Global_Treasure_Hunter_1991.zip"
for %%a in ("Bush Buck - Global Treasure Hunter") do set FLDN=%%~a
for %%a in ("bushbuck\bushbuck.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dizzy_-_Prince_of_the_Yolkfolk_1993.zip"
for %%a in ("Dizzy - Prince of the Yolkfolk") do set FLDN=%%~a
for %%a in ("DizzyPri\Yolk.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Romance_of_the_Three_Kingdoms_1989.zip"
for %%a in ("Romance of the Three Kingdoms") do set FLDN=%%~a
for %%a in ("Rom3K\MAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stalker_1_-_Path_of_Fire_1994.zip"
for %%a in ("Stalker 1 - Path of Fire") do set FLDN=%%~a
for %%a in ("Stalker1\STALKER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Life_and_Death_1988.zip"
for %%a in ("Life & Death") do set FLDN=%%~a
for %%a in ("landd1\l&amp;d.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mah_Jongg_Solitaire_1987.zip"
for %%a in ("Mah Jongg Solitaire") do set FLDN=%%~a
for %%a in ("mjsoli\MAHJONGG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hoyle_Official_Book_of_Games_-_Volume_1_1989.zip"
for %%a in ("Hoyle Official Book of Games - Volume 1") do set FLDN=%%~a
for %%a in ("hoylebk1\HOYLE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Jetsons_-_The_Computer_Game_1992.zip"
for %%a in ("The Jetsons - The Computer Game") do set FLDN=%%~a
for %%a in ("Jetson92\JETSONS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"ACE_2_1987.zip"
for %%a in ("ACE 2") do set FLDN=%%~a
for %%a in ("ACE2\ACE2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ikari_Warriors_1987.zip"
for %%a in ("Ikari Warriors") do set FLDN=%%~a
for %%a in ("IkariWar\IKARI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blockage_2003.zip"
for %%a in ("Blockage") do set FLDN=%%~a
for %%a in ("Blockage\blockage.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Drug_Wars_1984.zip"
for %%a in ("Drug Wars") do set FLDN=%%~a
for %%a in ("drugwars\drugwars.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Football_Manager_1982.zip"
for %%a in ("Football Manager") do set FLDN=%%~a
for %%a in ("footbama\afm.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stargate_1983.zip"
for %%a in ("Stargate") do set FLDN=%%~a
for %%a in ("Stargate\stargate.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bobby_Fischer_Teaches_Chess_1994.zip"
for %%a in ("Bobby Fischer Teaches Chess") do set FLDN=%%~a
for %%a in ("BobbyFis\BFTC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Aldos_Adventure_1987.zip"
for %%a in ("Aldo's Adventure") do set FLDN=%%~a
for %%a in ("AldosAdv\Aldo.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Giana_Sisters_32k_1998.zip"
for %%a in ("Giana Sisters 32k") do set FLDN=%%~a
for %%a in ("giana98\GIANA32K.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Codename_ICEMAN_1989.zip"
for %%a in ("Codename ICEMAN") do set FLDN=%%~a
for %%a in ("Iceman\sciv.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Waynes_World_1993.zip"
for %%a in ("Waynes World") do set FLDN=%%~a
for %%a in ("wayne\ww.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"James_Pond_2_-_Codename_-_RoboCod_1993.zip"
for %%a in ("James Pond 2 - Codename - RoboCod") do set FLDN=%%~a
for %%a in ("JamesPon\ROBOCOD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zork_I_-_The_Great_Underground_Empire_1980.zip"
for %%a in ("Zork I - The Great Underground Empire") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Car_and_Driver_1992.zip"
for %%a in ("Car & Driver") do set FLDN=%%~a
for %%a in ("CarDrive\MSET.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xenophage_-_Alien_BloodSport_1995.zip"
for %%a in ("Xenophage - Alien BloodSport") do set FLDN=%%~a
for %%a in ("Xenophag\XENO\XPR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Flight_Assignment_Airline_Transport_Pilot_1990.zip"
for %%a in ("Flight Assignment Airline Transport Pilot") do set FLDN=%%~a
for %%a in ("FlightAs\ATP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Classic_Concentration_-_2nd_Edition_1989.zip"
for %%a in ("Classic Concentration - 2nd Edition") do set FLDN=%%~a
for %%a in ("classcn2\classic2.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Castle_1987.zip"
for %%a in ("Dark Castle") do set FLDN=%%~a
for %%a in ("DarkCast\DC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Thexder_1987.zip"
for %%a in ("Thexder") do set FLDN=%%~a
for %%a in ("Thexder\THEXDER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Designasaurus_II_1990.zip"
for %%a in ("Designasaurus II") do set FLDN=%%~a
for %%a in ("Designas\DINO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shadowgate_1987.zip"
for %%a in ("Shadowgate") do set FLDN=%%~a
for %%a in ("SGate\sgate.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Solvers_Challenge_of_the_Ancient_Empires_1990.zip"
for %%a in ("Super Solvers Challenge of the Ancient Empires") do set FLDN=%%~a
for %%a in ("SSCAE\AEPROG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"John_Madden_Football_1989.zip"
for %%a in ("John Madden Football") do set FLDN=%%~a
for %%a in ("Jmadd\MFB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mixed-Up_Mother_Goose_1990.zip"
for %%a in ("Mixed-Up Mother Goose") do set FLDN=%%~a
for %%a in ("mugoose1\sierra.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Farmers_Daughter_The_2002.zip"
for %%a in ("Farmer's Daughter, The") do set FLDN=%%~a
for %%a in ("farmdaut\frotz.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Amazing_Spider-Man_1990.zip"
for %%a in ("The Amazing Spider-Man") do set FLDN=%%~a
for %%a in ("AmzSman\SPIDEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Seal_Team_1993.zip"
for %%a in ("Seal Team") do set FLDN=%%~a
for %%a in ("SealTeam\ST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Top_Gun_1987.zip"
for %%a in ("Top Gun") do set FLDN=%%~a
for %%a in ("TopGun\TOPGUN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ganja_Farmer_1998.zip"
for %%a in ("Ganja Farmer") do set FLDN=%%~a
for %%a in ("GanjaFar\GANJA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Trek_-_The_Rebel_Universe_1988.zip"
for %%a in ("Star Trek - The Rebel Universe") do set FLDN=%%~a
for %%a in ("STrekRU\STARTREK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jill_of_the_Jungle_-_Jill_Saves_the_Prince_1992.zip"
for %%a in ("Jill of the Jungle - Jill Saves the Prince") do set FLDN=%%~a
for %%a in ("JillStP\JILL3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pinball_Dreams_1992.zip"
for %%a in ("Pinball Dreams") do set FLDN=%%~a
for %%a in ("pinblld\21STCENT\DREAMS\PD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Reader_Rabbit_1989.zip"
for %%a in ("Reader Rabbit") do set FLDN=%%~a
for %%a in ("ReadRab\RR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Agent_USA_1984.zip"
for %%a in ("Agent USA") do set FLDN=%%~a
for %%a in ("agentusa\AGENTUSA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conan_-_The_Cimmerian_1991.zip"
for %%a in ("Conan - The Cimmerian") do set FLDN=%%~a
for %%a in ("ConanThe\CONAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Quest_I_-_The_Sarien_Encounter_VGA_1991.zip"
for %%a in ("Space Quest I - The Sarien Encounter VGA") do set FLDN=%%~a
for %%a in ("SQ1VGA\SCIDHUV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Seek_and_Destroy_1996.zip"
for %%a in ("Seek and Destroy") do set FLDN=%%~a
for %%a in ("SeekandD\SEEK\SEEK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Die_Hard_1989.zip"
for %%a in ("Die Hard") do set FLDN=%%~a
for %%a in ("DieHard\DIEHARD.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tank_The_M1A1_Abrams_Battle_Tank_Simulation_1989.zip"
for %%a in ("Tank The M1A1 Abrams Battle Tank Simulation") do set FLDN=%%~a
for %%a in ("TankTheM\TANK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rambo_III_1989.zip"
for %%a in ("Rambo III") do set FLDN=%%~a
for %%a in ("RamboIII\RAMBO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizardry_I_-_Proving_Grounds_of_the_Mad_Overlord_1981.zip"
for %%a in ("Wizardry I - Proving Grounds of the Mad Overlord") do set FLDN=%%~a
for %%a in ("wizar1\WIZ1.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lemonade_Stand_1999.zip"
for %%a in ("Lemonade Stand") do set FLDN=%%~a
for %%a in ("Lemonade\LEMONADE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Acid_Tetris_1998.zip"
for %%a in ("Acid Tetris") do set FLDN=%%~a
for %%a in ("acidtetr\ATET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"World_Karate_Championship_1989.zip"
for %%a in ("World Karate Championship") do set FLDN=%%~a
for %%a in ("WorldKar\WLDKARAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pac-in-Time_1994.zip"
for %%a in ("Pac-in-Time") do set FLDN=%%~a
for %%a in ("Pacin-T\PAC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mine_Bombers_1996.zip"
for %%a in ("Mine Bombers") do set FLDN=%%~a
for %%a in ("MineBomb\MB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lombard_RAC_Rally_1988.zip"
for %%a in ("Lombard RAC Rally") do set FLDN=%%~a
for %%a in ("LombardR\RALLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"When_Two_Worlds_War_1993.zip"
for %%a in ("When Two Worlds War") do set FLDN=%%~a
for %%a in ("WhenTwoW\when.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Baby_Jo_in_-_Going_Home_1991.zip"
for %%a in ("Baby Jo in - Going Home") do set FLDN=%%~a
for %%a in ("BabyJoin\BABYJO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bruce_Lee_Lives_1989.zip"
for %%a in ("Bruce Lee Lives") do set FLDN=%%~a
for %%a in ("BruceLeL\floppy\BRUCE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"WWF_European_Rampage_1992.zip"
for %%a in ("WWF European Rampage") do set FLDN=%%~a
for %%a in ("WWFEurop\WWF.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mickeys_ABC_-_A_Day_at_the_Fair_1992.zip"
for %%a in ("Mickey's ABC - A Day at the Fair") do set FLDN=%%~a
for %%a in ("mickabc\MICKABC\MICKEY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ace_of_Aces_1987.zip"
for %%a in ("Ace of Aces") do set FLDN=%%~a
for %%a in ("AceofAce\ACE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"JetFighter_The_Adventure_1988.zip"
for %%a in ("JetFighter The Adventure") do set FLDN=%%~a
for %%a in ("JFighttA\floppy\JF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Microprose_Pro_Soccer_1989.zip"
for %%a in ("Microprose Pro Soccer") do set FLDN=%%~a
for %%a in ("MicroPS\soccer.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Titanic_1991.zip"
for %%a in ("Titanic") do set FLDN=%%~a
for %%a in ("Titanic\TITVGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eojjeonji_Joheun_Il-i_Saenggil_Geot_Gateun_Jeonyeok_1997.zip"
for %%a in ("Eojjeonji Joheun Il-i Saenggil Geot Gateun Jeonyeok") do set FLDN=%%~a
for %%a in ("Eojjeonj\night\NIGHT.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Superman_-_The_Man_of_Steel_1989.zip"
for %%a in ("Superman - The Man of Steel") do set FLDN=%%~a
for %%a in ("Superman\SUPER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Adventures_of_Tintin_-_Prisoners_of_the_Sun_1997.zip"
for %%a in ("The Adventures of Tintin - Prisoners of the Sun") do set FLDN=%%~a
for %%a in ("AdvTin\TINTIN2\TINTIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Home_Alone_1991.zip"
for %%a in ("Home Alone") do set FLDN=%%~a
for %%a in ("HomeAlon\HA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Narco_Police_1990.zip"
for %%a in ("Narco Police") do set FLDN=%%~a
for %%a in ("NarcoPol\Npolice.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mr._Pibb_1998.zip"
for %%a in ("Mr. Pibb") do set FLDN=%%~a
for %%a in ("MrPibb\PibbGame.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"SideWinder_1988.zip"
for %%a in ("SideWinder") do set FLDN=%%~a
for %%a in ("SideWind\SIDEWIND.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alter_Ego_Male_1986.zip"
for %%a in ("Alter Ego Male") do set FLDN=%%~a
for %%a in ("aegom\alterego.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Paratrooper_1982.zip"
for %%a in ("Paratrooper") do set FLDN=%%~a
for %%a in ("Paratroo\trooper.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"J-Bird_1983.zip"
for %%a in ("J-Bird") do set FLDN=%%~a
for %%a in ("JBird\JBIRD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mr._Boom_0000.zip"
for %%a in ("Mr. Boom") do set FLDN=%%~a
for %%a in ("MrBoom\MRBOOM30.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Air_Bucks_1992.zip"
for %%a in ("Air Bucks") do set FLDN=%%~a
for %%a in ("AirBucks\AIRBUC12.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Knightmare_1992.zip"
for %%a in ("Knightmare") do set FLDN=%%~a
for %%a in ("Knightma\myth.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"AMs_Mini_Golf_3D_1996.zip"
for %%a in ("AM's Mini Golf 3D") do set FLDN=%%~a
for %%a in ("AMsMiniG\MG3D.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Toad_1995.zip"
for %%a in ("Toad") do set FLDN=%%~a
for %%a in ("Toad\TOAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Giana_Sisters_X-Mas_98_1998.zip"
for %%a in ("Giana Sisters X-Mas 98") do set FLDN=%%~a
for %%a in ("gianax\X-MAS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Cycles_-_International_Grand_Prix_Racing_1989.zip"
for %%a in ("The Cycles - International Grand Prix Racing") do set FLDN=%%~a
for %%a in ("TheCycle\GPC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Great_Naval_Battles_Vol_II_-_Guadalcanal_1942-43_1994.zip"
for %%a in ("Great Naval Battles Vol II - Guadalcanal 1942-43") do set FLDN=%%~a
for %%a in ("gnb2g\GNB2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Last_Ninja_2_-_Back_with_a_Vengeance_1990.zip"
for %%a in ("Last Ninja 2 - Back with a Vengeance") do set FLDN=%%~a
for %%a in ("LastNinj\NINJA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"EGATrek_1992.zip"
for %%a in ("EGATrek") do set FLDN=%%~a
for %%a in ("egatrek\EGATREK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Miner_2049er_1983.zip"
for %%a in ("Miner 2049er") do set FLDN=%%~a
for %%a in ("Miner204\MINER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Treehouse_1991.zip"
for %%a in ("The Treehouse") do set FLDN=%%~a
for %%a in ("TheTreeh\treehse.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Manchester_United_Premier_League_Champions_1994.zip"
for %%a in ("Manchester United Premier League Champions") do set FLDN=%%~a
for %%a in ("ManchUPL\MUPLC\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Tetris_1991.zip"
for %%a in ("Super Tetris") do set FLDN=%%~a
for %%a in ("SuperTet\SUPERTET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Legend_of_Faerghail_1990.zip"
for %%a in ("Legend of Faerghail") do set FLDN=%%~a
for %%a in ("legfaer\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bo_Jackson_Baseball_1991.zip"
for %%a in ("Bo Jackson Baseball") do set FLDN=%%~a
for %%a in ("BoJackso\Ball.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mutan_Zone_1988.zip"
for %%a in ("Mutan Zone") do set FLDN=%%~a
for %%a in ("MutanZon\MUTAN_Z.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_1982.zip"
for %%a in ("Alien") do set FLDN=%%~a
for %%a in ("alienif\ALIEN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bumpy_1989.zip"
for %%a in ("Bumpy") do set FLDN=%%~a
for %%a in ("Bumpy\BUMPY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Coaster_1993.zip"
for %%a in ("Coaster") do set FLDN=%%~a
for %%a in ("Coaster\COASTER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sherlock_1991.zip"
for %%a in ("Sherlock") do set FLDN=%%~a
for %%a in ("shlock91\sherlock.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"MiG-29M_Super_Fulcrum_1991.zip"
for %%a in ("MiG-29M Super Fulcrum") do set FLDN=%%~a
for %%a in ("MiG-29MS\MIG29M.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"OverKill_1992_1992.zip"
for %%a in ("OverKill") do set FLDN=%%~a
for %%a in ("Overki92\OVERKILL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gateway_1992.zip"
for %%a in ("Gateway") do set FLDN=%%~a
for %%a in ("gateway\GATE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pong_Kombat_1994.zip"
for %%a in ("Pong Kombat") do set FLDN=%%~a
for %%a in ("PongKomb\PONGKOMB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Popeye_2_1992.zip"
for %%a in ("Popeye 2") do set FLDN=%%~a
for %%a in ("Popeye2\POPEYE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bedlam_2_-_Absolute_Bedlam_1997.zip"
for %%a in ("Bedlam 2 - Absolute Bedlam") do set FLDN=%%~a
for %%a in ("Bedlam2A\bed2\BEDLAM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"God_of_Thunder_1993.zip"
for %%a in ("God of Thunder") do set FLDN=%%~a
for %%a in ("godthund\GOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"War_of_the_Lance_1990.zip"
for %%a in ("War of the Lance") do set FLDN=%%~a
for %%a in ("Warofthe\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Scrabble_-_Deluxe_Edition_1990.zip"
for %%a in ("Scrabble - Deluxe Edition") do set FLDN=%%~a
for %%a in ("Scrabble\SCRABBLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Last_Knight_in_Camelot_1996.zip"
for %%a in ("Last Knight in Camelot") do set FLDN=%%~a
for %%a in ("LastKnig\LKC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Slicks_n_Slide_1993.zip"
for %%a in ("Slicks 'n' Slide") do set FLDN=%%~a
for %%a in ("SlicksnS\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Race_Drivin_1992.zip"
for %%a in ("Race Drivin'") do set FLDN=%%~a
for %%a in ("RaceDriv\RACEVGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Inspector_Gadget_1992.zip"
for %%a in ("Inspector Gadget") do set FLDN=%%~a
for %%a in ("igadget\gadget.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ghengis_Khan_II_-_Clan_of_the_Grey_Wolf_1993.zip"
for %%a in ("Ghengis Khan II - Clan of the Grey Wolf") do set FLDN=%%~a
for %%a in ("ghenkhn2\KOEI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"zork_i_1980.zip"
for %%a in ("msdos_zork_i_1980") do set FLDN=%%~a
for %%a in ("zork1.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hole_in_One_1995.zip"
for %%a in ("Hole in One") do set FLDN=%%~a
for %%a in ("HoleinOn\HOLEIN1\GOLF.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Solvers_Operation_Neptune_1990.zip"
for %%a in ("Super Solvers Operation Neptune") do set FLDN=%%~a
for %%a in ("SSON\OPNEP.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Galacta_-_The_Battle_for_Saturn_1992.zip"
for %%a in ("Galacta - The Battle for Saturn") do set FLDN=%%~a
for %%a in ("GalactaT\GALACTA1.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"10th_Frame_1987.zip"
for %%a in ("10th Frame") do set FLDN=%%~a
for %%a in ("10thFram\BOWL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pinball_Construction_Set_1985.zip"
for %%a in ("Pinball Construction Set") do set FLDN=%%~a
for %%a in ("PinballC\PCS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lakers_versus_Celtics_and_the_NBA_Playoffs_1989.zip"
for %%a in ("Lakers versus Celtics and the NBA Playoffs") do set FLDN=%%~a
for %%a in ("Lakersve\BBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vlak_1993.zip"
for %%a in ("Vlak") do set FLDN=%%~a
for %%a in ("Vlak93\VLAK.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Overdrive_1995.zip"
for %%a in ("Overdrive") do set FLDN=%%~a
for %%a in ("Overdriv\OVER\over.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Civil_War_1983.zip"
for %%a in ("Civil War") do set FLDN=%%~a
for %%a in ("civilwar\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mickeys_Jigsaw_Puzzles_1991.zip"
for %%a in ("Mickey's Jigsaw Puzzles") do set FLDN=%%~a
for %%a in ("MickeysJ\MICKEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Who_Framed_Roger_Rabbit_1988.zip"
for %%a in ("Who Framed Roger Rabbit") do set FLDN=%%~a
for %%a in ("WhoFrame\!START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Fidelity_Chessmaster_2100_1989.zip"
for %%a in ("The Fidelity Chessmaster 2100") do set FLDN=%%~a
for %%a in ("TheFidel\2100.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Air_Traffic_Controller_1985.zip"
for %%a in ("Air Traffic Controller") do set FLDN=%%~a
for %%a in ("AirTraff\ATC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hoyle_Classic_Card_Games_1993.zip"
for %%a in ("Hoyle Classic Card Games") do set FLDN=%%~a
for %%a in ("hoylecc\hoyle.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Home_Alone_2_-_Lost_in_New_York_1992.zip"
for %%a in ("Home Alone 2 - Lost in New York") do set FLDN=%%~a
for %%a in ("HomeAlo2\HA2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beetlejuice_in_-_Skeletons_in_the_Closet_1990.zip"
for %%a in ("Beetlejuice in - Skeletons in the Closet") do set FLDN=%%~a
for %%a in ("Beetleju\BJ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hugo_3_-_Jungle_of_Doom_1992.zip"
for %%a in ("Hugo 3 - Jungle of Doom") do set FLDN=%%~a
for %%a in ("hugo3\HUGO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Convergence_The_1993.zip"
for %%a in ("Dark Convergence, The") do set FLDN=%%~a
for %%a in ("darkconv\DARK.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Double_Dragon_III_-_The_Sacred_Stones_1992.zip"
for %%a in ("Double Dragon III - The Sacred Stones") do set FLDN=%%~a
for %%a in ("Ddragon3\DD3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Games_-_Summer_Edition_1988.zip"
for %%a in ("The Games - Summer Edition") do set FLDN=%%~a
for %%a in ("TGameSmE\thegames.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Major_Stryker_1993.zip"
for %%a in ("Major Stryker") do set FLDN=%%~a
for %%a in ("MajorStr\MAJOR\STRYKER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jet_Set_Willy_1999.zip"
for %%a in ("Jet Set Willy") do set FLDN=%%~a
for %%a in ("JetSetWi\JSW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dino_Wars_1990.zip"
for %%a in ("Dino Wars") do set FLDN=%%~a
for %%a in ("dinowars\DINO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bill_Elliotts_NASCAR_Challenge_1990.zip"
for %%a in ("Bill Elliott's NASCAR Challenge") do set FLDN=%%~a
for %%a in ("BillElli\nascar.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hired_Guns_1993.zip"
for %%a in ("Hired Guns") do set FLDN=%%~a
for %%a in ("hiredgun\HG.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chain_Reaction_1996.zip"
for %%a in ("Chain Reaction") do set FLDN=%%~a
for %%a in ("chainrea\REACTION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mighty_Bombjack_1990.zip"
for %%a in ("Mighty Bombjack") do set FLDN=%%~a
for %%a in ("MightyBo\MBJ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Brutal_-_Paws_of_Fury_1995.zip"
for %%a in ("Brutal - Paws of Fury") do set FLDN=%%~a
for %%a in ("BrutalPa\BRUTAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Knights_of_Legend_1989.zip"
for %%a in ("Knights of Legend") do set FLDN=%%~a
for %%a in ("knitleg\KOL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pitstop_II_1984.zip"
for %%a in ("Pitstop II") do set FLDN=%%~a
for %%a in ("pitstop2\PITSTOP2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eagle_Eye_Mysteries_in_London_1994.zip"
for %%a in ("Eagle Eye Mysteries in London") do set FLDN=%%~a
for %%a in ("eagle2\EEM2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xonix_1984.zip"
for %%a in ("Xonix") do set FLDN=%%~a
for %%a in ("Xonix\XONIX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Soccer_Team_Manager_1994.zip"
for %%a in ("Soccer Team Manager") do set FLDN=%%~a
for %%a in ("SoccerTe\STM\SOCCER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rockstar_1989.zip"
for %%a in ("Rockstar") do set FLDN=%%~a
for %%a in ("rockstar\RS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Harrier_1989.zip"
for %%a in ("Space Harrier") do set FLDN=%%~a
for %%a in ("SpaceHar\harrier.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mixed-Up_Fairy_Tales_1991.zip"
for %%a in ("Mixed-Up Fairy Tales") do set FLDN=%%~a
for %%a in ("mufairy\sierra.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"elvira_ii_the_jaws_of_cerebus_1991.zip"
for %%a in ("Elvira II- The Jaws of Cerberus") do set FLDN=%%~a
for %%a in ("cerberus.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"A-10_Tank_Killer_1989.zip"
for %%a in ("A-10 Tank Killer") do set FLDN=%%~a
for %%a in ("A-10Tank\A10.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Romantic_Encounters_at_the_Dome_1988.zip"
for %%a in ("Romantic Encounters at the Dome") do set FLDN=%%~a
for %%a in ("romdome\DOME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zee_Artillery_1999.zip"
for %%a in ("Zee Artillery") do set FLDN=%%~a
for %%a in ("ZeeArtil\ZART.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"A320_Airbus_Edition_USA_1993.zip"
for %%a in ("A320 Airbus") do set FLDN=%%~a
for %%a in ("A320USA\A320.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Clue_1994.zip"
for %%a in ("The Clue") do set FLDN=%%~a
for %%a in ("theclue\THECLUE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Elvira_2_-_The_Jaws_of_Cerberus_1991.zip"
for %%a in ("Elvira 2 - The Jaws of Cerberus") do set FLDN=%%~a
for %%a in ("elvira2\cerberus.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Disneys_Beauty_and_the_Beast_-_Be_Our_Guest_1992.zip"
for %%a in ("Disney's Beauty and the Beast - Be Our Guest") do set FLDN=%%~a
for %%a in ("DisneysB\beauty.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Billy_The_Kid_Returns_1993.zip"
for %%a in ("Billy The Kid Returns") do set FLDN=%%~a
for %%a in ("BillyThe\KID.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"World_Games_1986.zip"
for %%a in ("World Games") do set FLDN=%%~a
for %%a in ("WorldGam\WORLD.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moria_1992.zip"
for %%a in ("Moria") do set FLDN=%%~a
for %%a in ("moria\umoria.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jr._Pac-Man_1988.zip"
for %%a in ("Jr. Pac-Man") do set FLDN=%%~a
for %%a in ("JrPacMa\JRPACCGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alice_in_Wonderland_1989.zip"
for %%a in ("Alice in Wonderland") do set FLDN=%%~a
for %%a in ("aliceif\AIW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Galaxian_1983.zip"
for %%a in ("Galaxian") do set FLDN=%%~a
for %%a in ("Galaxian\Galaxian.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Defender_of_the_Crown_1987.zip"
for %%a in ("Defender of the Crown") do set FLDN=%%~a
for %%a in ("defcrown\ega\DEFENDER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Will_Harveys_Zany_Golf_1988.zip"
for %%a in ("Will Harvey's Zany Golf") do set FLDN=%%~a
for %%a in ("WillHarv\GOLF.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Aquanoid_1992.zip"
for %%a in ("Aquanoid") do set FLDN=%%~a
for %%a in ("Aquanoid\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Fantastic_Adventures_of_Dizzy_1994.zip"
for %%a in ("The Fantastic Adventures of Dizzy") do set FLDN=%%~a
for %%a in ("TheFanta\PCDIZZY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"D-Generation_1991.zip"
for %%a in ("D-Generation") do set FLDN=%%~a
for %%a in ("dgener\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cadaver_-_The_Payoff_1991.zip"
for %%a in ("Cadaver - The Payoff") do set FLDN=%%~a
for %%a in ("cadavpay\CADAVER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"R.B.I._Baseball_2_1991.zip"
for %%a in ("R.B.I. Baseball 2") do set FLDN=%%~a
for %%a in ("RBIBaseb\EGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"3DCube_1994.zip"
for %%a in ("3DCube") do set FLDN=%%~a
for %%a in ("3DCube\3DCUBE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Premier_Manager_3_1994.zip"
for %%a in ("Premier Manager 3") do set FLDN=%%~a
for %%a in ("PrmMan3\PM3.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lucky_Luke_1987.zip"
for %%a in ("Lucky Luke") do set FLDN=%%~a
for %%a in ("luckluke\LUCKY2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bob_Saget_Killer_2000_1997.zip"
for %%a in ("Bob Saget Killer 2000") do set FLDN=%%~a
for %%a in ("BobSaget\KILLBOB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"snipes_1982_superset_software.zip"
for %%a in ("Snipes") do set FLDN=%%~a
for %%a in ("snipes.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shufflepuck_Cafe_1989.zip"
for %%a in ("Shufflepuck Cafe") do set FLDN=%%~a
for %%a in ("Shufflep\SHUFFLE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heart_of_China_1991.zip"
for %%a in ("Heart of China") do set FLDN=%%~a
for %%a in ("hoc\HOC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"GATO_1984.zip"
for %%a in ("GATO") do set FLDN=%%~a
for %%a in ("GATO\Gato.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Trek_-_First_Contact_1988.zip"
for %%a in ("Star Trek - First Contact") do set FLDN=%%~a
for %%a in ("st1st\ST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chex_Quest_2_1996.zip"
for %%a in ("Chex Quest 2") do set FLDN=%%~a
for %%a in ("ChexQ2\CHEX2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"World_Championship_Soccer_1991.zip"
for %%a in ("World Championship Soccer") do set FLDN=%%~a
for %%a in ("WChamSoc\SOCCER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dungeon_Quest_1985.zip"
for %%a in ("Dungeon Quest") do set FLDN=%%~a
for %%a in ("dquest\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arachnophobia_1991.zip"
for %%a in ("Arachnophobia") do set FLDN=%%~a
for %%a in ("Arachnop\SPIDER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Untima_IX_-_Descension_2003.zip"
for %%a in ("Untima IX - Descension") do set FLDN=%%~a
for %%a in ("untima\Untima9.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Avalon_1998.zip"
for %%a in ("Avalon") do set FLDN=%%~a
for %%a in ("avalon\AVALON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tintin_on_the_Moon_1989.zip"
for %%a in ("Tintin on the Moon") do set FLDN=%%~a
for %%a in ("Tintinon\TATOU.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"PC_Rally_1995.zip"
for %%a in ("PC Rally") do set FLDN=%%~a
for %%a in ("PCRally\RALLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Clonk_1994.zip"
for %%a in ("Clonk") do set FLDN=%%~a
for %%a in ("clonk\CLONK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beverly_Hillbillies_The_1993.zip"
for %%a in ("Beverly Hillbillies, The") do set FLDN=%%~a
for %%a in ("beverly\HB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Williams_Arcade_Classics_1995.zip"
for %%a in ("Williams Arcade Classics") do set FLDN=%%~a
for %%a in ("Warcade\ARCADE\ARCADE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Complete_Chess_System_1993.zip"
for %%a in ("Complete Chess System") do set FLDN=%%~a
for %%a in ("chesssys\CHESS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kampfgruppe_1987.zip"
for %%a in ("Kampfgruppe") do set FLDN=%%~a
for %%a in ("kampgrup\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chickens_1996.zip"
for %%a in ("Chickens") do set FLDN=%%~a
for %%a in ("Chicken\CHICKENS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ski_King_3_1997.zip"
for %%a in ("Ski King 3") do set FLDN=%%~a
for %%a in ("SkiKing3\SKIKING3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Veil_of_Darkness_1993.zip"
for %%a in ("Veil of Darkness") do set FLDN=%%~a
for %%a in ("veildark\VEIL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Deadly_Racer_1994.zip"
for %%a in ("Deadly Racer") do set FLDN=%%~a
for %%a in ("DeadlyRa\RACE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Airlines_1994.zip"
for %%a in ("Airlines") do set FLDN=%%~a
for %%a in ("Airlines\Airlines\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"James_Bond_007_-_A_View_to_Kill_1985.zip"
for %%a in ("James Bond 007 - A View to Kill") do set FLDN=%%~a
for %%a in ("bondkill\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Falcon_A.T._1988.zip"
for %%a in ("Falcon A.T.") do set FLDN=%%~a
for %%a in ("FalconAT\EFALCON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Return_to_Doom_1988.zip"
for %%a in ("Return to Doom") do set FLDN=%%~a
for %%a in ("retdoom\RETURN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Terminator_2_-_Judgement_Day_-_Chess_Wars_1993.zip"
for %%a in ("Terminator 2 - Judgement Day - Chess Wars") do set FLDN=%%~a
for %%a in ("t2chess\CAPSTONE\T2\T2CHESS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Welltris_1989.zip"
for %%a in ("Welltris") do set FLDN=%%~a
for %%a in ("Welltris\welltris.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mixed-Up_Mother_Goose_1987.zip"
for %%a in ("Mixed-Up Mother Goose") do set FLDN=%%~a
for %%a in ("mugoose1\sierra.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Joe_Montana_Football_1990.zip"
for %%a in ("Joe Montana Football") do set FLDN=%%~a
for %%a in ("JoeMonta\montana\MONTANA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hard_Hat_Mack_1984.zip"
for %%a in ("Hard Hat Mack") do set FLDN=%%~a
for %%a in ("HardHatM\HARDHAT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Armor_Alley_1991.zip"
for %%a in ("Armor Alley") do set FLDN=%%~a
for %%a in ("armoall\AA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rex_Nebular_and_the_Cosmic_Gender_Bender_1992.zip"
for %%a in ("Rex Nebular and the Cosmic Gender Bender") do set FLDN=%%~a
for %%a in ("rexneb\rex.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Metal_Mutant_1991.zip"
for %%a in ("Metal Mutant") do set FLDN=%%~a
for %%a in ("MetalMut\METAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spiderman_1984.zip"
for %%a in ("Spiderman") do set FLDN=%%~a
for %%a in ("spiderm\MENU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pipes_1983.zip"
for %%a in ("Pipes") do set FLDN=%%~a
for %%a in ("Pipes83\pipes.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Iron_Lord_1990.zip"
for %%a in ("Iron Lord") do set FLDN=%%~a
for %%a in ("ironlord\IRONLORD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Geisha_1990.zip"
for %%a in ("Geisha") do set FLDN=%%~a
for %%a in ("geisha\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Toffifee_-_Fantasy_Forest_1996.zip"
for %%a in ("Toffifee - Fantasy Forest") do set FLDN=%%~a
for %%a in ("Toffifee\TOFFIFEE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Winter_Challenge_-_World_Class_Competition_1988.zip"
for %%a in ("Winter Challenge - World Class Competition") do set FLDN=%%~a
for %%a in ("WinterCh\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beyond_Zork_-_The_Coconut_of_Quendor_1987.zip"
for %%a in ("Beyond Zork - The Coconut of Quendor") do set FLDN=%%~a
for %%a in ("beyzork\bzork.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"SuperKarts_1995.zip"
for %%a in ("SuperKarts") do set FLDN=%%~a
for %%a in ("SuperKar\KART.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Executive_Suite_1982.zip"
for %%a in ("Executive Suite") do set FLDN=%%~a
for %%a in ("execsui\esuite.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Striker_95_1995.zip"
for %%a in ("Striker '95") do set FLDN=%%~a
for %%a in ("Striker9\STRIKER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Starship_Invasion_1984.zip"
for %%a in ("Starship Invasion") do set FLDN=%%~a
for %%a in ("Starship\STARSHIP.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Brix_1991_1991.zip"
for %%a in ("Brix") do set FLDN=%%~a
for %%a in ("brix91\MOTION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Silverball_1993.zip"
for %%a in ("Silverball") do set FLDN=%%~a
for %%a in ("Silverba\SILVER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arthur_-_The_Quest_for_Excalibur_1989.zip"
for %%a in ("Arthur - The Quest for Excalibur") do set FLDN=%%~a
for %%a in ("arthurqe\ARTHUR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nobunagas_Ambition_II_1989.zip"
for %%a in ("Nobunaga's Ambition II") do set FLDN=%%~a
for %%a in ("NobuAmb2\MAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eagle_Eye_Mysteries_1993.zip"
for %%a in ("Eagle Eye Mysteries") do set FLDN=%%~a
for %%a in ("eagle1\EEM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trojan_1986.zip"
for %%a in ("Trojan") do set FLDN=%%~a
for %%a in ("Trojan\Troj.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Luigi_en_Circusland_1994.zip"
for %%a in ("Luigi en Circusland") do set FLDN=%%~a
for %%a in ("LuigienC\LUIGI2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Apple_Panic_1982.zip"
for %%a in ("Apple Panic") do set FLDN=%%~a
for %%a in ("ApplePan\PANIC.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lords_of_Conquest_1985.zip"
for %%a in ("Lords of Conquest") do set FLDN=%%~a
for %%a in ("lordofcq\LOC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Magic_Pockets_1992.zip"
for %%a in ("Magic Pockets") do set FLDN=%%~a
for %%a in ("MagicPoc\POCKETS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Adventure_Construction_Set_1987.zip"
for %%a in ("Adventure Construction Set") do set FLDN=%%~a
for %%a in ("AdvCons\ACS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"A-Train_1992.zip"
for %%a in ("A-Train") do set FLDN=%%~a
for %%a in ("a-train\ATRAIN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ant_Run_1993.zip"
for %%a in ("Ant Run") do set FLDN=%%~a
for %%a in ("antrun\ANTRUN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Omega_1988.zip"
for %%a in ("Omega") do set FLDN=%%~a
for %%a in ("OmegaAd\OMEGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bumpys_Arcade_Fantasy_1992.zip"
for %%a in ("Bumpy's Arcade Fantasy") do set FLDN=%%~a
for %%a in ("BumpysAr\runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bar_Games_1989.zip"
for %%a in ("Bar Games") do set FLDN=%%~a
for %%a in ("BarGames\BG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grand_Prix_Master_1989.zip"
for %%a in ("Grand Prix Master") do set FLDN=%%~a
for %%a in ("GPMast\DINAMIC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jill_of_the_Jungle_-_Jill_Goes_Underground_1992.zip"
for %%a in ("Jill of the Jungle - Jill Goes Underground") do set FLDN=%%~a
for %%a in ("JillgU\JILL2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Dark_Queen_of_Krynn_1992.zip"
for %%a in ("The Dark Queen of Krynn") do set FLDN=%%~a
for %%a in ("drkqueen\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xi_You_Ji_1994.zip"
for %%a in ("Xi You Ji") do set FLDN=%%~a
for %%a in ("XiYouJi\WEST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alex_Higgins_World_Snooker_1986.zip"
for %%a in ("Alex Higgins' World Snooker") do set FLDN=%%~a
for %%a in ("AlexHigg\SNOOKER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jungle_Hunt_1983.zip"
for %%a in ("Jungle Hunt") do set FLDN=%%~a
for %%a in ("JungleHu\HUNT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"SuperStreetFighterIITurbo_201503.zip"
for %%a in ("Super Street Fighter II Turbo") do set FLDN=%%~a
for %%a in ("SSF2T\SF2TURBO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Transarctica_1993.zip"
for %%a in ("Transarctica") do set FLDN=%%~a
for %%a in ("Transarc\trans\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jimmy_Connors_Pro_Tennis_Tour_1990.zip"
for %%a in ("Jimmy Connors Pro Tennis Tour") do set FLDN=%%~a
for %%a in ("JimmyCon\PTT2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gremlins_2_-_The_New_Batch_1991_1991.zip"
for %%a in ("Gremlins 2 - The New Batch") do set FLDN=%%~a
for %%a in ("Grem291\GREMLINS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Cauldron_1992.zip"
for %%a in ("Super Cauldron") do set FLDN=%%~a
for %%a in ("SuperCau\CAULDRON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"dc5-arff.zip"
for %%a in ("Abort, Retry, Fail?") do set FLDN=%%~a
for %%a in ("ARF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hugo_2_-_Whodunit_1991.zip"
for %%a in ("Hugo 2 - Whodunit") do set FLDN=%%~a
for %%a in ("hugo2\HUGO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Santas_Xmas_Caper_1993.zip"
for %%a in ("Santa's Xmas Caper") do set FLDN=%%~a
for %%a in ("SantasXm\Santa.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Motor_City_1994.zip"
for %%a in ("Motor City") do set FLDN=%%~a
for %%a in ("MotorCit\IDMAS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vinyl_Goddess_from_Mars_1995.zip"
for %%a in ("Vinyl Goddess from Mars") do set FLDN=%%~a
for %%a in ("VinylGod\GODDESS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Championship_Manager_96-97_1996.zip"
for %%a in ("Championship Manager 96-97") do set FLDN=%%~a
for %%a in ("chmpmn96\CM2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"ZELIARD.zip"
for %%a in ("ZELIARD") do set FLDN=%%~a
for %%a in ("ZELIARD\ZELIARD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Isometric_Bomber_1999.zip"
for %%a in ("Isometric Bomber") do set FLDN=%%~a
for %%a in ("Isometri\BOMB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jump_Jet_1992.zip"
for %%a in ("Jump Jet") do set FLDN=%%~a
for %%a in ("JumpJet\FULL.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bolo_Ball_1992.zip"
for %%a in ("Bolo Ball") do set FLDN=%%~a
for %%a in ("boloball\BOLOBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Double_Dare_1988.zip"
for %%a in ("Double Dare") do set FLDN=%%~a
for %%a in ("dubdare\DARE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bio_Menace_1993.zip"
for %%a in ("Bio Menace") do set FLDN=%%~a
for %%a in ("BioMenac\BMENACE1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Druglord_1991.zip"
for %%a in ("Druglord") do set FLDN=%%~a
for %%a in ("druglord\Druglord.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"ABC_Wide_World_of_Sports_Boxing_1991.zip"
for %%a in ("ABC Wide World of Sports Boxing") do set FLDN=%%~a
for %%a in ("ABCWideW\BOX.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultimate_Soccer_Manager_1995.zip"
for %%a in ("Ultimate Soccer Manager") do set FLDN=%%~a
for %%a in ("UltSocM1\USM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Three_Stooges_1987.zip"
for %%a in ("The Three Stooges") do set FLDN=%%~a
for %%a in ("TheThree\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Dark_Heart_of_Uukrul_1989.zip"
for %%a in ("The Dark Heart of Uukrul") do set FLDN=%%~a
for %%a in ("drkhrtuu\UUKRUL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Portal_1986.zip"
for %%a in ("Portal") do set FLDN=%%~a
for %%a in ("portal\PORTAL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Falcon_1987.zip"
for %%a in ("Falcon") do set FLDN=%%~a
for %%a in ("Falcon\FALCON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Captain_Comic_II_-_Fractured_Reality_1990.zip"
for %%a in ("Captain Comic II - Fractured Reality") do set FLDN=%%~a
for %%a in ("CaptainC\FR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arcade_Pool_1994.zip"
for %%a in ("Arcade Pool") do set FLDN=%%~a
for %%a in ("ArcadePo\pool.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pinball_Fantasies_1992.zip"
for %%a in ("Pinball Fantasies") do set FLDN=%%~a
for %%a in ("pinbllf\21STCENT\FANTASY\PF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sorcerian_1990.zip"
for %%a in ("Sorcerian") do set FLDN=%%~a
for %%a in ("sorceria\SIERRA\SORCERIA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bad_Street_Brawler_1987.zip"
for %%a in ("Bad Street Brawler") do set FLDN=%%~a
for %%a in ("BadStree\BAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Allan_Borders_Cricket_1993.zip"
for %%a in ("Allan Border's Cricket") do set FLDN=%%~a
for %%a in ("AllanBor\CRICKET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Horror_Zombies_from_the_Crypt_1990.zip"
for %%a in ("Horror Zombies from the Crypt") do set FLDN=%%~a
for %%a in ("HorrorZo\HZVGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"hexipuzzles_shareware.zip"
for %%a in ("Shareware Game- Hexipuzzles") do set FLDN=%%~a
for %%a in ("HEXIPUZ3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sid_and_Als_Incredible_Toons_1993.zip"
for %%a in ("Sid & Al's Incredible Toons") do set FLDN=%%~a
for %%a in ("SidAls\TOONS\TOONS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"War_in_the_Gulf_1993.zip"
for %%a in ("War in the Gulf") do set FLDN=%%~a
for %%a in ("Warinthe\GULF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"BAT_2_-_The_Koshan_Conspiracy_1992.zip"
for %%a in ("BAT 2 - The Koshan Conspiracy") do set FLDN=%%~a
for %%a in ("KCDflop\BAT2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rockford_-_The_Arcade_Game_1987.zip"
for %%a in ("Rockford - The Arcade Game") do set FLDN=%%~a
for %%a in ("Rockford\ROCKFORD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_Syndrome_1989.zip"
for %%a in ("Alien Syndrome") do set FLDN=%%~a
for %%a in ("AlienSyn\ALIEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Silpheed_1988.zip"
for %%a in ("Silpheed") do set FLDN=%%~a
for %%a in ("Silpheed\SILPHEED.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Knight_Force_1989.zip"
for %%a in ("Knight Force") do set FLDN=%%~a
for %%a in ("KnightFo\KNIGHT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Psycho_1988.zip"
for %%a in ("Psycho") do set FLDN=%%~a
for %%a in ("psychoif\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Noahs_Ark_3-D_1995.zip"
for %%a in ("Super Noah's Ark 3-D") do set FLDN=%%~a
for %%a in ("SuperNoa\NOAH3D.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Triplane_Turmoil_1996.zip"
for %%a in ("Triplane Turmoil") do set FLDN=%%~a
for %%a in ("Triplane\triplane.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Flintstones_-_Dino_-_Lost_in_Bedrock_1990.zip"
for %%a in ("The Flintstones - Dino - Lost in Bedrock") do set FLDN=%%~a
for %%a in ("TheFlint\FRED.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mach_3_1987.zip"
for %%a in ("Mach 3") do set FLDN=%%~a
for %%a in ("Mach3\MACH3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Amnesia_1986.zip"
for %%a in ("Amnesia") do set FLDN=%%~a
for %%a in ("amnesia\amnesia.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Hitchhikers_Guide_to_the_Galaxy_Trivia_Challenge_1990.zip"
for %%a in ("The Hitchhiker's Guide to the Galaxy Trivia Challenge") do set FLDN=%%~a
for %%a in ("TheHitch\QUIZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Solvers_Spellbound_1993.zip"
for %%a in ("Super Solvers Spellbound") do set FLDN=%%~a
for %%a in ("SSSB\ssbprog.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Might_and_Magic_4_-_Couds_of_Xeen_1992.zip"
for %%a in ("Might and Magic 4 - Couds of Xeen") do set FLDN=%%~a
for %%a in ("MM4\XEEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Les_Manley_in_-_Lost_in_LA_1991.zip"
for %%a in ("Les Manley in - Lost in LA") do set FLDN=%%~a
for %%a in ("lmanla\les2.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sopwith_2_1985.zip"
for %%a in ("Sopwith 2") do set FLDN=%%~a
for %%a in ("Sopwith2\SOPWITH2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"In_Search_of_Dr._Riptide_1994.zip"
for %%a in ("In Search of Dr. Riptide") do set FLDN=%%~a
for %%a in ("InSearch\RIPTIDE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conflict_in_Vietnam_1986.zip"
for %%a in ("Conflict in Vietnam") do set FLDN=%%~a
for %%a in ("confv\vietnam.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Europe_-_Path_to_Victory_1939-45_1994.zip"
for %%a in ("Operation Europe - Path to Victory 1939-45") do set FLDN=%%~a
for %%a in ("OpEuroPV\OPEU.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Reach_for_the_Stars_-_The_Conquest_of_the_Galaxy_1986.zip"
for %%a in ("Reach for the Stars - The Conquest of the Galaxy") do set FLDN=%%~a
for %%a in ("Reachfor\RFTS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Balloon_Challenge_1993.zip"
for %%a in ("Balloon Challenge") do set FLDN=%%~a
for %%a in ("ballooch\BALLOONC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Brix_1992.zip"
for %%a in ("Brix") do set FLDN=%%~a
for %%a in ("brix\BRIX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Saboteur_II_1987.zip"
for %%a in ("Saboteur II") do set FLDN=%%~a
for %%a in ("Saboteur\SAB2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sandstorm_1992.zip"
for %%a in ("Sandstorm") do set FLDN=%%~a
for %%a in ("Sandstm\SAND.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MyMan_2000.zip"
for %%a in ("MyMan") do set FLDN=%%~a
for %%a in ("MyMan\myman.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xtrek_1991.zip"
for %%a in ("Xtrek") do set FLDN=%%~a
for %%a in ("xtrek\agil.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lemmings_3_-_All_New_World_of_Lemmings_1994.zip"
for %%a in ("Lemmings 3 - All New World of Lemmings") do set FLDN=%%~a
for %%a in ("lemm3\L3CDGUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"S.T.U.N._Runner_1990.zip"
for %%a in ("S.T.U.N. Runner") do set FLDN=%%~a
for %%a in ("STUNRunn\STUN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"All_New_Family_Feud_1989.zip"
for %%a in ("All New Family Feud") do set FLDN=%%~a
for %%a in ("anfamfeu\FEUD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arcade_Volleyball_1987.zip"
for %%a in ("Arcade Volleyball") do set FLDN=%%~a
for %%a in ("ArcadeVo\AV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Annihilator_Tank_1995.zip"
for %%a in ("Annihilator Tank") do set FLDN=%%~a
for %%a in ("Annihila\AT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Monopoly_1985.zip"
for %%a in ("Monopoly") do set FLDN=%%~a
for %%a in ("Monop85\monopoly.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conquest_1992.zip"
for %%a in ("Conquest") do set FLDN=%%~a
for %%a in ("conqest\CONQUEST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Battleship_1998.zip"
for %%a in ("Battleship") do set FLDN=%%~a
for %%a in ("Battlesh\BATTLESH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tunneler_1991.zip"
for %%a in ("Tunneler") do set FLDN=%%~a
for %%a in ("Tunneler\T.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Fortress_of_Dr._Radiaki_1994.zip"
for %%a in ("The Fortress of Dr. Radiaki") do set FLDN=%%~a
for %%a in ("TheFortr\RADIAKI\RADIAKI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crime_Fighter_1993.zip"
for %%a in ("Crime Fighter") do set FLDN=%%~a
for %%a in ("crimfigt\CRIME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ancient_Art_of_War_at_Sea_1987.zip"
for %%a in ("Ancient Art of War at Sea") do set FLDN=%%~a
for %%a in ("anciaws\WAS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Animal_Quest_1996.zip"
for %%a in ("Animal Quest") do set FLDN=%%~a
for %%a in ("animques\AQ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Politically_Incorrect_Adventures_of_Gewt_Ningrich_1997.zip"
for %%a in ("The Politically Incorrect Adventures of Gewt Ningrich") do set FLDN=%%~a
for %%a in ("ThePolit\GEWT\GEWT.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Steel_Thunder_1989.zip"
for %%a in ("Steel Thunder") do set FLDN=%%~a
for %%a in ("SteelThu\st.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bananoid_1989.zip"
for %%a in ("Bananoid") do set FLDN=%%~a
for %%a in ("Bananoid\BANANOID.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Waterloo_1989.zip"
for %%a in ("Waterloo") do set FLDN=%%~a
for %%a in ("Waterloo\WATERLOO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"QIX_1989.zip"
for %%a in ("QIX") do set FLDN=%%~a
for %%a in ("QIX\QIX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Little_Monk_1995.zip"
for %%a in ("Little Monk") do set FLDN=%%~a
for %%a in ("LtleMonk\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Diamond_Digger_1986.zip"
for %%a in ("Diamond Digger") do set FLDN=%%~a
for %%a in ("DiamondD\DIGGER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Millionaire_-_The_Stock_Market_Simulation_Release_2_1987.zip"
for %%a in ("Millionaire - The Stock Market Simulation") do set FLDN=%%~a
for %%a in ("Milliona\M.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bubble_Pop_1997.zip"
for %%a in ("Bubble Pop") do set FLDN=%%~a
for %%a in ("BubblePo\BUBBLE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stock_Market_-_The_Game_1990.zip"
for %%a in ("Stock Market - The Game") do set FLDN=%%~a
for %%a in ("StockMar\stockm\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crystal_Maze_The_1994.zip"
for %%a in ("Crystal Maze, The") do set FLDN=%%~a
for %%a in ("crysmaze\CMAZE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultima_0_-_Akalabeth_1980.zip"
for %%a in ("Ultima 0 - Akalabeth") do set FLDN=%%~a
for %%a in ("ultima0\AK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Western_Front_-_The_Liberation_of_Europe_1944-1945_1991.zip"
for %%a in ("Western Front - The Liberation of Europe 1944-1945") do set FLDN=%%~a
for %%a in ("WesternF\WF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Uncharted_Waters_1990.zip"
for %%a in ("Uncharted Waters") do set FLDN=%%~a
for %%a in ("UnchWat1\waters\MAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spelljammer_-_Pirates_of_Realmspace_1992.zip"
for %%a in ("Spelljammer - Pirates of Realmspace") do set FLDN=%%~a
for %%a in ("speljamp\sj.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Earl_Weaver_Baseball_II_1991.zip"
for %%a in ("Earl Weaver Baseball II") do set FLDN=%%~a
for %%a in ("ErlWeav2\EWB2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cell_Block_A_1999.zip"
for %%a in ("Cell Block A") do set FLDN=%%~a
for %%a in ("CellBloc\CELL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mad_News_1994.zip"
for %%a in ("Mad News") do set FLDN=%%~a
for %%a in ("madnews\mn.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xatax_1994.zip"
for %%a in ("Xatax") do set FLDN=%%~a
for %%a in ("Xatax\XATAX\XATAX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ancients_1_Deathwatch.zip"
for %%a in ("Ancients 1 Deathwatch.zip"
for %%a in ("Anci1\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Donalds_Alphabet_Chase_1988.zip"
for %%a in ("Donald's Alphabet Chase") do set FLDN=%%~a
for %%a in ("DonaldsA\DONALD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Commanders_II_1985.zip"
for %%a in ("Space Commanders II") do set FLDN=%%~a
for %%a in ("SpaceCo2\INVADER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Castlevania_1990.zip"
for %%a in ("Castlevania") do set FLDN=%%~a
for %%a in ("greatnpb\RUN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Great_Napoleonic_Battles_1991.zip"
for %%a in ("Great Napoleonic Battles") do set FLDN=%%~a
for %%a in ("greatnpb\RUN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Begin_-_A_Tactical_Starship_Simulation_1989.zip"
for %%a in ("Begin - A Tactical Starship Simulation") do set FLDN=%%~a
for %%a in ("begints\begin2.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rolling_Jack_1994.zip"
for %%a in ("Rolling Jack") do set FLDN=%%~a
for %%a in ("RollingJ\RJ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Avoid_the_Noid_1989.zip"
for %%a in ("Avoid the Noid") do set FLDN=%%~a
for %%a in ("Avoidthe\NOID.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sub_Battle_Simulator_1987.zip"
for %%a in ("Sub Battle Simulator") do set FLDN=%%~a
for %%a in ("SubBattl\SUB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Secret_of_the_Silver_Blades_1990.zip"
for %%a in ("Secret of the Silver Blades") do set FLDN=%%~a
for %%a in ("secsilbl\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arcade_Trivia_Quiz_1989.zipcall :RUN
exit /b
:
Arcade Trivia Quiz") do set FLDN=%%~a
for %%a in ("arctriv\TRIVIA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"EcoQuest_2_-_Lost_Secret_of_the_Rainforest_1993.zip"
for %%a in ("EcoQuest 2 - Lost Secret of the Rainforest") do set FLDN=%%~a
for %%a in ("ecoq2\sierra.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Paladin_II_1992.zip"
for %%a in ("Paladin II") do set FLDN=%%~a
for %%a in ("PaladinI\PALADIN2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"See_the_U.S.A._1987.zip"
for %%a in ("See the U.S.A.") do set FLDN=%%~a
for %%a in ("SeetheUS\USA2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Daleks_1985.zip"
for %%a in ("Daleks") do set FLDN=%%~a
for %%a in ("daleks\DALEKS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"World_Tour_Golf_1985.zip"
for %%a in ("World Tour Golf") do set FLDN=%%~a
for %%a in ("WorldTou\GOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Galactix_1992.zip"
for %%a in ("Galactix") do set FLDN=%%~a
for %%a in ("Galactix\GX1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Manhunter_1_-_New_York_1988.zip"
for %%a in ("Manhunter 1 - New York") do set FLDN=%%~a
for %%a in ("MH1\sierra.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dangerous_Daves_Risky_Rescue_1993.zip"
for %%a in ("Dangerous Dave's Risky Rescue") do set FLDN=%%~a
for %%a in ("DangDavR\DAVE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bandit_Kings_of_Ancient_China_1989.zip"
for %%a in ("Bandit Kings of Ancient China") do set FLDN=%%~a
for %%a in ("bandking\MAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jump_n_Bump_1998.zip"
for %%a in ("Jump 'n Bump") do set FLDN=%%~a
for %%a in ("jumpbump\jumpbump.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mind_Castle_1993.zip"
for %%a in ("Mind Castle") do set FLDN=%%~a
for %%a in ("MindCast\WORDWIZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pango_1983.zip"
for %%a in ("Pango") do set FLDN=%%~a
for %%a in ("Pango\pango.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Revenge_of_the_Mutant_Camels_1994.zip"
for %%a in ("Revenge of the Mutant Camels") do set FLDN=%%~a
for %%a in ("RevoMC\REVENGE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_MAX_1992.zip"
for %%a in ("Space MAX") do set FLDN=%%~a
for %%a in ("spacemax\spacemax\SPACEMAX.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kingdoms_of_Germany_1994.zip"
for %%a in ("Kingdoms of Germany") do set FLDN=%%~a
for %%a in ("kinggerm\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wayne_Gretzky_Hockey_3_1992.zip"
for %%a in ("Wayne Gretzky Hockey 3") do set FLDN=%%~a
for %%a in ("WayneGH3\WGH3\WGH3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Adventures_of_Robin_Hood_The_1992.zip"
for %%a in ("Adventures of Robin Hood,
 The") do set FLDN=%%~a
for %%a in ("advrobin\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Network_Q_RAC_Rally_1994.zip"
for %%a in ("Network Q RAC Rally") do set FLDN=%%~a
for %%a in ("NetworkQ\RALLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Offroad_1988.zip"
for %%a in ("Offroad") do set FLDN=%%~a
for %%a in ("Offroad\OFFROAD.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Ski_II_1992.zip"
for %%a in ("Super Ski II") do set FLDN=%%~a
for %%a in ("SperSki2\SUPERSKI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Skunny_-_Back_to_the_Forest_1993.zip"
for %%a in ("Skunny - Back to the Forest") do set FLDN=%%~a
for %%a in ("SkunnyBa\FOREST\FOREST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shooting_Gallery_1990.zip"
for %%a in ("Shooting Gallery") do set FLDN=%%~a
for %%a in ("Shooting\SHOOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Body_Count_1994.zip"
for %%a in ("Operation Body Count") do set FLDN=%%~a
for %%a in ("OpBodyC\BC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stargoose_Warrior_1989.zip"
for %%a in ("Stargoose Warrior") do set FLDN=%%~a
for %%a in ("Stargoos\goose.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fantasy_World_Dizzy_1991.zip"
for %%a in ("Fantasy World Dizzy") do set FLDN=%%~a
for %%a in ("FantasyW\DIZZY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Major_League_Manager_1986.zip"
for %%a in ("Major League Manager") do set FLDN=%%~a
for %%a in ("mlmana\MLM.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bad_Blood_1990.zip"
for %%a in ("Bad Blood") do set FLDN=%%~a
for %%a in ("BadBlood\BADBLOOD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"NFL_Football_1992.zip"
for %%a in ("NFL Football") do set FLDN=%%~a
for %%a in ("NFLFootb\RUNME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Electric_Crayon_Deluxe_-_Teenage_Mutant_Ninja_Turtles_-_World_Tour_1990.zip"
for %%a in ("Electric Crayon Deluxe - Teenage Mutant Ninja Turtles - World Tour") do set FLDN=%%~a
for %%a in ("ElecTMNT\EC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Ultimate_Tapan_Kaikki_1998.zip"
for %%a in ("The Ultimate Tapan Kaikki") do set FLDN=%%~a
for %%a in ("UltTapan\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Microsoft_Decathlon_1982.zip"
for %%a in ("Microsoft Decathlon") do set FLDN=%%~a
for %%a in ("Microsof\DECATHLN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Solitaire_Royale_1987.zip"
for %%a in ("Solitaire Royale") do set FLDN=%%~a
for %%a in ("SoliRoya\SOLIT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Scooters_Magic_Castle_1993.zip"
for %%a in ("Scooter's Magic Castle") do set FLDN=%%~a
for %%a in ("Scooters\SCOOTER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Klax_1990.zip"
for %%a in ("Klax") do set FLDN=%%~a
for %%a in ("klax\klax.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Orbiter_1986.zip"
for %%a in ("Orbiter") do set FLDN=%%~a
for %%a in ("Orbiter\ORBITER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MicroLeague_Baseball_2_1989.zip"
for %%a in ("MicroLeague Baseball 2") do set FLDN=%%~a
for %%a in ("micbbll2\MLB2FIRM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Universal_Military_Simulator_The_1993.zip"
for %%a in ("Universal Military Simulator, The") do set FLDN=%%~a
for %%a in ("ums\UMS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"BCs_Quest_for_Tires_1984.zip"
for %%a in ("BC's Quest for Tires") do set FLDN=%%~a
for %%a in ("BCsQuest\bc.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jetstrike_1994.zip"
for %%a in ("Jetstrike") do set FLDN=%%~a
for %%a in ("Jetstrik\JS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grand_Prix_500_cc_1987.zip"
for %%a in ("Grand Prix 500 cc") do set FLDN=%%~a
for %%a in ("GrandPri\GP500.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Castle_PC_1994.zip"
for %%a in ("Star Castle PC") do set FLDN=%%~a
for %%a in ("StarCast\castlepc.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Color_Lines_1992.zip"
for %%a in ("Color Lines") do set FLDN=%%~a
for %%a in ("cololine\lines.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_adventure_of_Tipi_1997.zip"
for %%a in ("The adventure of Tipi") do set FLDN=%%~a
for %%a in ("AdvTipi\TIPI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Challenge_of_the_Five_Realms_1992.zip"
for %%a in ("Challenge of the Five Realms") do set FLDN=%%~a
for %%a in ("chal5r\C5.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gary_Grigsbys_War_in_Russia_1993.zip"
for %%a in ("Gary Grigsby's War in Russia") do set FLDN=%%~a
for %%a in ("ggrigwr\WIR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chess_1981.zip"
for %%a in ("Chess") do set FLDN=%%~a
for %%a in ("chess81\Chess.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"SU-25_Stormovik_1990.zip"
for %%a in ("SU-25 Stormovik") do set FLDN=%%~a
for %%a in ("SU-25Sto\SU25.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizball_1987.zip"
for %%a in ("Wizball") do set FLDN=%%~a
for %%a in ("Wizball\WIZBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ys_-_The_Vanished_Omens_1989.zip"
for %%a in ("Ys - The Vanished Omens") do set FLDN=%%~a
for %%a in ("yvanome\YS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Transland_1996.zip"
for %%a in ("Transland") do set FLDN=%%~a
for %%a in ("tranland\tl\Tl.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Terror_of_the_Catacombs_1993.zip"
for %%a in ("Terror of the Catacombs") do set FLDN=%%~a
for %%a in ("Terrorof\ter\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hamurabi_1996.zip"
for %%a in ("Hamurabi") do set FLDN=%%~a
for %%a in ("hamurabi\hamurabi.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lethal_Weapon_1992.zip"
for %%a in ("Lethal Weapon") do set FLDN=%%~a
for %%a in ("LethalWe\LETHAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Machiavelli_the_Prince_1995.zip"
for %%a in ("Machiavelli the Prince") do set FLDN=%%~a
for %%a in ("machprin\PRINCE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dont_Go_Alone_1989.zip"
for %%a in ("Don't Go Alone") do set FLDN=%%~a
for %%a in ("dgalone\DGALONE\ALONE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"ATAC_-_The_Secret_War_Against_Drugs_1992.zip"
for %%a in ("ATAC - The Secret War Against Drugs") do set FLDN=%%~a
for %%a in ("atacswad\A.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Astro_Fire_1994.zip"
for %%a in ("Astro Fire") do set FLDN=%%~a
for %%a in ("AstroFir\ASTRO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dr._Ruths_Computer_Game_of_Good_Sex_1986.zip"
for %%a in ("Dr. Ruth's Computer Game of Good Sex") do set FLDN=%%~a
for %%a in ("DrRuthsC\Ruth.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Warriors_of_Legend_1993.zip"
for %%a in ("Warriors of Legend") do set FLDN=%%~a
for %%a in ("warrileg\WOFL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Archer_Macleans_Pool_1992.zip"
for %%a in ("Archer Maclean's Pool") do set FLDN=%%~a
for %%a in ("ArcherMa\POOL256.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Guldkorn_Expressen_1991.zip"
for %%a in ("Guldkorn Expressen") do set FLDN=%%~a
for %%a in ("Guldkorn\OTA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Franko_-_The_Crazy_Revenge_1996.zip"
for %%a in ("Franko - The Crazy Revenge") do set FLDN=%%~a
for %%a in ("FrankoTh\FRANKO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stunt_Island_1992.zip"
for %%a in ("Stunt Island") do set FLDN=%%~a
for %%a in ("StuntIsl\STUNT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Michael_Jordan_in_Flight_1993.zip"
for %%a in ("Michael Jordan in Flight") do set FLDN=%%~a
for %%a in ("MichaelJ\BB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hero_Quest_1992.zip"
for %%a in ("Hero Quest") do set FLDN=%%~a
for %%a in ("heroques\QUEST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Time_Bandit_1988.zip"
for %%a in ("Time Bandit") do set FLDN=%%~a
for %%a in ("TimeBand\BANDIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Legacy_of_the_Ancients_1989.zip"
for %%a in ("Legacy of the Ancients") do set FLDN=%%~a
for %%a in ("legaanci\LEGACY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Geekwad_-_Games_of_the_Galaxy_1993.zip"
for %%a in ("The Geekwad - Games of the Galaxy") do set FLDN=%%~a
for %%a in ("TheGeekw\GEEKWAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Win_Lose_or_Draw_1988.zip"
for %%a in ("Win,
 Lose,
 or Draw") do set FLDN=%%~a
for %%a in ("WinLose\WLD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fire_and_Ice_1993.zip"
for %%a in ("Fire & Ice") do set FLDN=%%~a
for %%a in ("FireIce\FIRE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Castle_Master_1990.zip"
for %%a in ("Castle Master") do set FLDN=%%~a
for %%a in ("CastMa\CASTLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tris_1997.zip"
for %%a in ("Tris") do set FLDN=%%~a
for %%a in ("Tris97\TRIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trantor_the_Last_Stormtrooper_1988.zip"
for %%a in ("Trantor the Last Stormtrooper") do set FLDN=%%~a
for %%a in ("Trantort\TRANTOR2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Doofus_1994.zip"
for %%a in ("Doofus") do set FLDN=%%~a
for %%a in ("Doofus\doofus.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moonbase_1990.zip"
for %%a in ("Moonbase") do set FLDN=%%~a
for %%a in ("Moonbase\MOONBASE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"David_Leadbetters_Greens_1991.zip"
for %%a in ("David Leadbetter's Greens") do set FLDN=%%~a
for %%a in ("DavidLea\MPS\GREENS\GREENS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Go_Simulator_1991.zip"
for %%a in ("Go Simulator") do set FLDN=%%~a
for %%a in ("gosimu\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cool_Spot_1994.zip"
for %%a in ("Cool Spot") do set FLDN=%%~a
for %%a in ("CoolSpot\SPOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mega_Blast_1995.zip"
for %%a in ("Mega Blast") do set FLDN=%%~a
for %%a in ("MegaBlas\MEGABLST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Evasive_Action_1993.zip"
for %%a in ("Evasive Action") do set FLDN=%%~a
for %%a in ("EvasiveA\EACTION\EACTION.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blur_Way_1995.zip"
for %%a in ("Blur Way") do set FLDN=%%~a
for %%a in ("blurway\DESTINY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ishar_2_-_Messengers_of_Doom_1993.zip"
for %%a in ("Ishar 2 - Messengers of Doom") do set FLDN=%%~a
for %%a in ("ISHAR2\start.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Inner_Worlds_1996.zip"
for %%a in ("Inner Worlds") do set FLDN=%%~a
for %%a in ("InnerWor\IW\IW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Livingstone_I_Presume_1986.zip"
for %%a in ("Livingstone, I Presume") do set FLDN=%%~a
for %%a in ("Livingst\LIVING.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Goal_94_1994.zip"
for %%a in ("Goal 94") do set FLDN=%%~a
for %%a in ("Goal94\goal94.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Catacomb_Abyss_1992.zip"
for %%a in ("The Catacomb Abyss") do set FLDN=%%~a
for %%a in ("TheCatac\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Elvira_-_The_Arcade_Game_1991.zip"
for %%a in ("Elvira - The Arcade Game") do set FLDN=%%~a
for %%a in ("ElviraTh\ELVIRA\ELVIRA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sango_Fighter_1993.zip"
for %%a in ("Sango Fighter") do set FLDN=%%~a
for %%a in ("SangoFig\SANGO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Casino_Craps_1992.zip"
for %%a in ("Casino Craps") do set FLDN=%%~a
for %%a in ("cascraps\CRAPS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shogun_1986.zip"
for %%a in ("Shogun") do set FLDN=%%~a
for %%a in ("shogun86\Shogun.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Time_Riders_in_American_History_1992.zip"
for %%a in ("Time Riders in American History") do set FLDN=%%~a
for %%a in ("TimeRide\TR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Larn_1986.zip"
for %%a in ("Larn") do set FLDN=%%~a
for %%a in ("larn\larn.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Day_4_-_Icarus_1994.zip"
for %%a in ("The Day 4 - Icarus") do set FLDN=%%~a
for %%a in ("TheDay4I\ICARUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gold_of_the_Americas_-_The_Conquest_of_the_New_World_1989.zip"
for %%a in ("Gold of the Americas - The Conquest of the New World") do set FLDN=%%~a
for %%a in ("goldamer\start.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Flight_of_the_Intruder_1990.zip"
for %%a in ("Flight of the Intruder") do set FLDN=%%~a
for %%a in ("Flightof\INTRUDER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"E.T._-_No_More_Mr._Nice_Alien_1997.zip"
for %%a in ("E.T. - No More Mr. Nice Alien") do set FLDN=%%~a
for %%a in ("ETNoMore\MA-ET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ninja_Gaiden_II_-_The_Dark_Sword_of_Chaos_1991.zip"
for %%a in ("Ninja Gaiden II - The Dark Sword of Chaos") do set FLDN=%%~a
for %%a in ("NinjaGa2\NINJA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zool_2_1994.zip"
for %%a in ("Zool 2") do set FLDN=%%~a
for %%a in ("Zool2\ZOOL2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Astrotit_1987.zip"
for %%a in ("Astrotit") do set FLDN=%%~a
for %%a in ("Astrotit\ASTROTIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Colony_The_1988.zip"
for %%a in ("Colony, The") do set FLDN=%%~a
for %%a in ("thecolo\COLONY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Congo_Bongo_1984.zip"
for %%a in ("Congo Bongo") do set FLDN=%%~a
for %%a in ("CongoBon\Congo.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Buck_Rogers_-_Planet_of_Zoom_1984.zip"
for %%a in ("Buck Rogers - Planet of Zoom") do set FLDN=%%~a
for %%a in ("BuckRoge\ZOOM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Taco_Bell_-_Tasty_Temple_Challenge_2000.zip"
for %%a in ("Taco Bell - Tasty Temple Challenge") do set FLDN=%%~a
for %%a in ("TacoBell\TACOBELL\Temple.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Games_-_Winter_Edition_1988.zip"
for %%a in ("The Games - Winter Edition") do set FLDN=%%~a
for %%a in ("TGameWnE\GAMES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Speed_Haste_1995.zip"
for %%a in ("Speed Haste") do set FLDN=%%~a
for %%a in ("SpeedHas\_HASTE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Password_1988.zip"
for %%a in ("Super Password") do set FLDN=%%~a
for %%a in ("SuperPas\PASS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"ACE_Air_Combat_Emulator_1986.zip"
for %%a in ("ACE Air Combat Emulator") do set FLDN=%%~a
for %%a in ("ACEAirCo\ACE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Combination_Lock_1992.zip"
for %%a in ("Combination Lock") do set FLDN=%%~a
for %%a in ("Combinat\COMBC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tomahawk_1987.zip"
for %%a in ("Tomahawk") do set FLDN=%%~a
for %%a in ("Tomahawk\Tomahawk.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"ZZT_1991.zip"
for %%a in ("ZZT") do set FLDN=%%~a
for %%a in ("zzt\ZZT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"TV_Sports_-_Basketball_1990.zip"
for %%a in ("TV Sports - Basketball") do set FLDN=%%~a
for %%a in ("TVSBask\BBV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Susan_1988.zip"
for %%a in ("Susan") do set FLDN=%%~a
for %%a in ("susan\SUSAN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Paperboy_1988.zip"
for %%a in ("Paperboy") do set FLDN=%%~a
for %%a in ("Paperboy\PAPERBOY.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tikkasentappopeli_1994.zip"
for %%a in ("Tikkasentappopeli") do set FLDN=%%~a
for %%a in ("Tikkasen\TIKKA1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"3-D_TableSports_1996.zip"
for %%a in ("3-D TableSports") do set FLDN=%%~a
for %%a in ("3-DTable\ts.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mickeys_Space_Adventure_1986.zip"
for %%a in ("Mickey's Space Adventure") do set FLDN=%%~a
for %%a in ("mickeysa\MICKEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Into_the_Eagles_Nest_1987.zip"
for %%a in ("Into the Eagle's Nest") do set FLDN=%%~a
for %%a in ("IntotheE\MAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Phantasie_1987.zip"
for %%a in ("Phantasie") do set FLDN=%%~a
for %%a in ("phantasi\PH.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"HardBall_II_1989.zip"
for %%a in ("HardBall II") do set FLDN=%%~a
for %%a in ("HBall2\HB2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Overkill_1996_1996.zip"
for %%a in ("Overkill") do set FLDN=%%~a
for %%a in ("Overki96\OVERKILL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shanghai_II_-_Dragons_Eye_1990.zip"
for %%a in ("Shanghai II - Dragon's Eye") do set FLDN=%%~a
for %%a in ("Shnghai2\DE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Advanced_Destroyer_Simulator_1990.zip"
for %%a in ("Advanced Destroyer Simulator") do set FLDN=%%~a
for %%a in ("ADVDSim\ADS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Frog_1992.zip"
for %%a in ("Operation Frog") do set FLDN=%%~a
for %%a in ("opfrog\OPFROG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Father_World_1994.zip"
for %%a in ("Father World") do set FLDN=%%~a
for %%a in ("fatherw\FW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Telengard_1985.zip"
for %%a in ("Telengard") do set FLDN=%%~a
for %%a in ("telegard\TELEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Abmis_the_Lion_1996.zip"
for %%a in ("Abmis the Lion") do set FLDN=%%~a
for %%a in ("Abmisthe\ABMIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Out_of_This_World_1991.zip"
for %%a in ("Out of This World") do set FLDN=%%~a
for %%a in ("OutofThi\World.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Trek_-_The_Promethean_Prophecy_1986.zip"
for %%a in ("Star Trek - The Promethean Prophecy") do set FLDN=%%~a
for %%a in ("stprom\ST.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"MicroLeague_Baseball_1991.zip"
for %%a in ("MicroLeague Baseball") do set FLDN=%%~a
for %%a in ("micbbll\MLBB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Sun_-_Shattered_Lands_1993.zip"
for %%a in ("Dark Sun - Shattered Lands") do set FLDN=%%~a
for %%a in ("dsun1\DSUN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Supercars_International_1996.zip"
for %%a in ("Supercars International") do set FLDN=%%~a
for %%a in ("Supercar\SUPACARS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Medieval_Warriors_1991.zip"
for %%a in ("Medieval Warriors") do set FLDN=%%~a
for %%a in ("mediwarr\WARRIORS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Rocketeer_1991.zip"
for %%a in ("The Rocketeer") do set FLDN=%%~a
for %%a in ("TheRocke\ROCKET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hidden_Agenda_1988.zip"
for %%a in ("Hidden Agenda") do set FLDN=%%~a
for %%a in ("hiddagen\AGENDA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Subhunt_1997.zip"
for %%a in ("Subhunt") do set FLDN=%%~a
for %%a in ("Subhunt\SUBHUNT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sopwith_-_The_Authors_Edition_2000.zip"
for %%a in ("Sopwith - The Author's Edition") do set FLDN=%%~a
for %%a in ("SopwithT\sw.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Special_Forces_1992.zip"
for %%a in ("Special Forces") do set FLDN=%%~a
for %%a in ("SpecialF\SPFORCES\FORCES.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Are_We_There_Yet_1991.zip"
for %%a in ("Are We There Yet") do set FLDN=%%~a
for %%a in ("awty\AWTY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Global_Domination_1993.zip"
for %%a in ("Global Domination") do set FLDN=%%~a
for %%a in ("globdomi\GLOBAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"BopN_Wrestle_1986.zip"
for %%a in ("Bop'N Wrestle") do set FLDN=%%~a
for %%a in ("BopNWres\BOP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pharaohs_Revenge_1988.zip"
for %%a in ("Pharaoh's Revenge") do set FLDN=%%~a
for %%a in ("Pharaohs\PR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dave_Goes_Nutz_1993.zip"
for %%a in ("Dave Goes Nutz") do set FLDN=%%~a
for %%a in ("DaveGoes\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Modem_Wars_1988.zip"
for %%a in ("Modem Wars") do set FLDN=%%~a
for %%a in ("ModemWar\WAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Droids_1982.zip"
for %%a in ("Droids") do set FLDN=%%~a
for %%a in ("droids\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trivial_Pursuit_1987.zip"
for %%a in ("Trivial Pursuit") do set FLDN=%%~a
for %%a in ("TrivialP\TP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hoyle_Official_Book_of_Games_-_Volume_3_1991.zip"
for %%a in ("Hoyle Official Book of Games - Volume 3") do set FLDN=%%~a
for %%a in ("hoylebk3\HOYLE3.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Silent_Service_II_1990.zip"
for %%a in ("Silent Service II") do set FLDN=%%~a
for %%a in ("SilServ2\ss2\SS2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lychnis_1994.zip"
for %%a in ("Lychnis") do set FLDN=%%~a
for %%a in ("Lychnis\SB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizardry_V_-_Heart_of_the_Maelstrom_1988.zip"
for %%a in ("Wizardry V - Heart of the Maelstrom") do set FLDN=%%~a
for %%a in ("wizar5\WIZ5.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Alcor_Trivia_Pro_Classic_Star_Trek_Star-Log_I_1992.zip"
for %%a in ("The Alcor Trivia Pro Classic Star Trek") do set FLDN=%%~a
for %%a in ("TheAlcor\AGST1.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snake_Game_1992.zip"
for %%a in ("Snake Game") do set FLDN=%%~a
for %%a in ("SnakeGam\snake.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vroom_1994.zip"
for %%a in ("Vroom") do set FLDN=%%~a
for %%a in ("Vroom\start.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Bards_Tale_1_-_Tales_Of_The_Unknown_1987.zip"
for %%a in ("The Bard's Tale 1 - Tales Of The Unknown") do set FLDN=%%~a
for %%a in ("bardtal1\BARD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"B-1_Nuclear_Bomber_1983.zip"
for %%a in ("B-1 Nuclear Bomber") do set FLDN=%%~a
for %%a in ("B-1Nucle\runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Deja_Vu_2_-_Lost_in_Las_Vegas_1988.zip"
for %%a in ("Deja Vu 2 - Lost in Las Vegas") do set FLDN=%%~a
for %%a in ("DejaVu2\DEJAVUII.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Forgotten_Worlds_1991.zip"
for %%a in ("Forgotten Worlds") do set FLDN=%%~a
for %%a in ("Forgotte\FW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Playroom_1989.zip"
for %%a in ("The Playroom") do set FLDN=%%~a
for %%a in ("ThePlayr\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"MegaTraveller_2_-_Quest_for_the_Ancients_1991.zip"
for %%a in ("MegaTraveller 2 - Quest for the Ancients") do set FLDN=%%~a
for %%a in ("MegaTra2\MT2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Big_Rig_1987.zip"
for %%a in ("Big Rig") do set FLDN=%%~a
for %%a in ("bigrig\BIGRIG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Bugs_Bunny_Hare-Brained_Adventure_1990.zip"
for %%a in ("The Bugs Bunny Hare-Brained Adventure") do set FLDN=%%~a
for %%a in ("TheBugsB\BUGS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Breach_2_1990.zip"
for %%a in ("Breach 2") do set FLDN=%%~a
for %%a in ("breach2\BREACH2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Breakfree_1995.zip"
for %%a in ("Breakfree") do set FLDN=%%~a
for %%a in ("Breakfre\brkfree.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Abandoned_Places_-_A_Time_for_Heroes_1992.zip"
for %%a in ("Abandoned Places - A Time for Heroes") do set FLDN=%%~a
for %%a in ("Abanplac\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Computer_Diplomacy_1984.zip"
for %%a in ("Computer Diplomacy") do set FLDN=%%~a
for %%a in ("compdipl\DIPLO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hoyle_Official_Book_of_Games_-_Volume_2_1990.zip"
for %%a in ("Hoyle Official Book of Games - Volume 2") do set FLDN=%%~a
for %%a in ("hoylebk2\HOYLE2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zork_Zero_-_The_Revenge_of_Megaboz_1988.zip"
for %%a in ("Zork Zero - The Revenge of Megaboz") do set FLDN=%%~a
for %%a in ("zorkzero\zorkzero.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beast_1984.zip"
for %%a in ("Beast") do set FLDN=%%~a
for %%a in ("beast\BEAST.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gary_Grigsbys_Pacific_War_1992.zip"
for %%a in ("Gary Grigsby's Pacific War") do set FLDN=%%~a
for %%a in ("ggrigpw\PW.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"A320_Airbus_Edition_Europa_1992.zip"
for %%a in ("A320 Airbus") do set FLDN=%%~a
for %%a in ("A320EURO\A320.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Udoiana_Raunes_3_-_In_Search_for_Indiana_Jones_4_2003.zip"
for %%a in ("Udoiana Raunes 3 - In Search for Indiana Jones 4") do set FLDN=%%~a
for %%a in ("udoi3\Raunes3.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spellcasting_201_-_The_Sorcerers_Appliance_1991.zip"
for %%a in ("Spellcasting 201 - The Sorcerers Appliance") do set FLDN=%%~a
for %%a in ("sc201\s201.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Angband_1992.zip"
for %%a in ("Angband") do set FLDN=%%~a
for %%a in ("angband\angband.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Krypton_Egg_1994.zip"
for %%a in ("Krypton Egg") do set FLDN=%%~a
for %%a in ("KryptonE\KE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Thomas_the_Tank_Engine_and_Friends_1992.zip"
for %%a in ("Thomas the Tank Engine & Friends") do set FLDN=%%~a
for %%a in ("Thomasth\TOM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Invasion_of_the_Mutant_Space_Bats_of_Doom_1995.zip"
for %%a in ("Invasion of the Mutant Space Bats of Doom") do set FLDN=%%~a
for %%a in ("Invasion\bats.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Timequest_1991.zip"
for %%a in ("Timequest") do set FLDN=%%~a
for %%a in ("tquest\TQ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Plan_9_From_Outer_Space_1992.zip"
for %%a in ("Plan 9 From Outer Space") do set FLDN=%%~a
for %%a in ("plan9\plan9.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Apollo_18_Mission_to_the_Moon_1988.zip"
for %%a in ("Apollo 18 Mission to the Moon") do set FLDN=%%~a
for %%a in ("Apollo18\runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Godfather_-_The_Action_Game_1991.zip"
for %%a in ("The Godfather - The Action Game") do set FLDN=%%~a
for %%a in ("TheGodfa\GOD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultima_IV_-_Quest_of_the_Avatar_1985.zip"
for %%a in ("Ultima IV - Quest of the Avatar") do set FLDN=%%~a
for %%a in ("ultima4\ULTIMA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beethovens_2nd_1993.zip"
for %%a in ("Beethoven's 2nd") do set FLDN=%%~a
for %%a in ("Beethove\BTVN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shadow_Knights_1990.zip"
for %%a in ("Shadow Knights") do set FLDN=%%~a
for %%a in ("ShadowKn\SHADOW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cash_Invaders_2002.zip"
for %%a in ("Cash Invaders") do set FLDN=%%~a
for %%a in ("CashInva\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cisco_Heat_-_All_American_Police_Car_Race_1991.zip"
for %%a in ("Cisco Heat - All American Police Car Race") do set FLDN=%%~a
for %%a in ("CiscoHea\cisco.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bill_and_Teds_Excellent_Adventure_1990.zip"
for %%a in ("Bill & Ted's Excellent Adventure") do set FLDN=%%~a
for %%a in ("billted\BT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Liberty_or_Death_1993.zip"
for %%a in ("Liberty or Death") do set FLDN=%%~a
for %%a in ("libdeath\LIBERTY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Walls_of_Rome_1993.zip"
for %%a in ("Walls of Rome") do set FLDN=%%~a
for %%a in ("WallRome\WALLS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Barbie_1992.zip"
for %%a in ("Barbie") do set FLDN=%%~a
for %%a in ("Barbie\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pee_and_Gity_Special_1994.zip"
for %%a in ("Pee & Gity Special") do set FLDN=%%~a
for %%a in ("PeeGityS\PEE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trigger_1989.zip"
for %%a in ("Trigger") do set FLDN=%%~a
for %%a in ("Trigger\TRIGGER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"M.C._Kids_1992.zip"
for %%a in ("M.C. Kids") do set FLDN=%%~a
for %%a in ("MCKids\MC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Myth_1989.zip"
for %%a in ("Myth") do set FLDN=%%~a
for %%a in ("mythmag\MYTH.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Electric_Crayon_3.1_-_Super_Mario_Bros_and_Friends_-_When_I_Grow_Up_1992.zip"
for %%a in ("Electric Crayon 3.1 - Super Mario Bros & Friends - When I Grow Up") do set FLDN=%%~a
for %%a in ("ElecSMB\EC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Theatre_of_War_1992.zip"
for %%a in ("Theatre of War") do set FLDN=%%~a
for %%a in ("TheaWar\twar.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Uridium_1988.zip"
for %%a in ("Uridium") do set FLDN=%%~a
for %%a in ("Uridium\uridium.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cyrus_1985.zip"
for %%a in ("Cyrus") do set FLDN=%%~a
for %%a in ("Cyrus\CYRUS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Deluxe_Trivial_Pursuit_1992.zip"
for %%a in ("Deluxe Trivial Pursuit") do set FLDN=%%~a
for %%a in ("dlxtrivp\TP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Championship_Manager_2_-_Italian_Leagues_1996.zip"
for %%a in ("Championship Manager 2 - Italian Leagues") do set FLDN=%%~a
for %%a in ("chmpmn2i\CM2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Baron_Baldric_-_A_Grave_Adventure_1993.zip"
for %%a in ("Baron Baldric - A Grave Adventure") do set FLDN=%%~a
for %%a in ("BaronBal\BALDRIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Black_Sect_1993.zip"
for %%a in ("Black Sect") do set FLDN=%%~a
for %%a in ("bsect\BS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Turkeys_1986.zip"
for %%a in ("Tommy's Turkeys") do set FLDN=%%~a
for %%a in ("TommysTu\TURKEYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Risk_1986.zip"
for %%a in ("Risk") do set FLDN=%%~a
for %%a in ("Risk86\RISK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blocks_from_Hell_1993.zip"
for %%a in ("Blocks from Hell") do set FLDN=%%~a
for %%a in ("Blocksfr\BLOCKS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Global_Effect_1992.zip"
for %%a in ("Global Effect") do set FLDN=%%~a
for %%a in ("globeffe\GLOBV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"M.U.D.S._-_Mean_Ugly_Dirty_Sport_1990.zip"
for %%a in ("M.U.D.S. - Mean Ugly Dirty Sport") do set FLDN=%%~a
for %%a in ("MUDS-Mea\MUDS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Goofys_Railway_Express_1991.zip"
for %%a in ("Goofy's Railway Express") do set FLDN=%%~a
for %%a in ("GoofysRa\GOOFY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"LEmpereur_1991.zip"
for %%a in ("L'Empereur") do set FLDN=%%~a
for %%a in ("lemperer\KOEI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"African_Trail_Simulator_1990.zip"
for %%a in ("African Trail Simulator") do set FLDN=%%~a
for %%a in ("AfricanT\AEGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Low_Blow_1990.zip"
for %%a in ("Low Blow") do set FLDN=%%~a
for %%a in ("LowBlow\BOX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"1992tris_1993.zip"
for %%a in ("1992tris") do set FLDN=%%~a
for %%a in ("1993tris\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Christmas_Matchup_1994.zip"
for %%a in ("Christmas Matchup") do set FLDN=%%~a
for %%a in ("chrismat\CHRMAMUP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MasterMind_1989.zip"
for %%a in ("MasterMind") do set FLDN=%%~a
for %%a in ("mastermi\MMIND.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"4th_and_Inches_1988.zip"
for %%a in ("4th & Inches") do set FLDN=%%~a
for %%a in ("4thInche\4TH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sargon_5_-_World_Class_Chess_1991.zip"
for %%a in ("Sargon 5 - World Class Chess") do set FLDN=%%~a
for %%a in ("Sargon5\sargon5.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Janitor_Joe_1984.zip"
for %%a in ("Janitor Joe") do set FLDN=%%~a
for %%a in ("JanitorJ\JUMPJOE2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Meteor_Mission_1995.zip"
for %%a in ("Meteor Mission") do set FLDN=%%~a
for %%a in ("MeteorMi\METEOR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Time_Slaughter_1996.zip"
for %%a in ("Time Slaughter") do set FLDN=%%~a
for %%a in ("TimeSlau\TS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jack_in_the_Dark_1993.zip"
for %%a in ("Jack in the Dark") do set FLDN=%%~a
for %%a in ("AJACK\JACK.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wilson_ProStaff_Golf_1993.zip"
for %%a in ("Wilson ProStaff Golf") do set FLDN=%%~a
for %%a in ("wprostgo\WILSON\GOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gremlins_1984.zip"
for %%a in ("Gremlins") do set FLDN=%%~a
for %%a in ("Gremlins\GREMLINS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Austerlitz_1805_1989.zip"
for %%a in ("Austerlitz 1805") do set FLDN=%%~a
for %%a in ("austerl\1805.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mine_Shaft_1983.zip"
for %%a in ("Mine Shaft") do set FLDN=%%~a
for %%a in ("MineShaf\MINESHAF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Balance_of_the_Planet_1990.zip"
for %%a in ("Balance of the Planet") do set FLDN=%%~a
for %%a in ("Balanceo\BP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MiG-29_Fulcrum_1990.zip"
for %%a in ("MiG-29 Fulcrum") do set FLDN=%%~a
for %%a in ("MiG-29Fu\MIGFLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Die_Hard_2_-_Die_Harder_1992.zip"
for %%a in ("Die Hard 2 - Die Harder") do set FLDN=%%~a
for %%a in ("DieHard2\DIE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fatman_-_The_Caped_Consumer_1994.zip"
for %%a in ("Fatman - The Caped Consumer") do set FLDN=%%~a
for %%a in ("FatmanTh\FATMAN\FATMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kosmonaut_1990.zip"
for %%a in ("Kosmonaut") do set FLDN=%%~a
for %%a in ("Kosmonau\KOSMO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Catacomb_II_1991.zip"
for %%a in ("Catacomb II") do set FLDN=%%~a
for %%a in ("Cataco2\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wild_Streets_1990.zip"
for %%a in ("Wild Streets") do set FLDN=%%~a
for %%a in ("WildStre\WILDEGA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bridge_Master_1992.zip"
for %%a in ("Bridge Master") do set FLDN=%%~a
for %%a in ("bridgems\BR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gravity_Force_1989_1989.zip"
for %%a in ("Gravity Force") do set FLDN=%%~a
for %%a in ("GravFo89\gf.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"PC-Sherlock_-_A_Game_of_Logic_and_Deduction_1996.zip"
for %%a in ("PC-Sherlock - A Game of Logic & Deduction") do set FLDN=%%~a
for %%a in ("PCSherl\SHERLOCK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"I_Play_-_3D_Tennis_1992.zip"
for %%a in ("I Play - 3D Tennis") do set FLDN=%%~a
for %%a in ("IPlay3DT\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crack_of_Doom_The_1989.zip"
for %%a in ("Crack of Doom,
 The") do set FLDN=%%~a
for %%a in ("crakdoom\doom.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conways_Game_of_Life_1996.zip"
for %%a in ("Conway's Game of Life") do set FLDN=%%~a
for %%a in ("conway\LIFE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Computer_Circus_Maximus_1984.zip"
for %%a in ("Computer Circus Maximus") do set FLDN=%%~a
for %%a in ("Computer\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jumpjet_1990.zip"
for %%a in ("Jumpjet") do set FLDN=%%~a
for %%a in ("Jjet\JUMPJET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Premier_Manager_1992.zip"
for %%a in ("Premier Manager") do set FLDN=%%~a
for %%a in ("PremM\pm.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fox_Ranger_1992.zip"
for %%a in ("Fox Ranger") do set FLDN=%%~a
for %%a in ("FoxRange\FR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Exodus_-_Journey_to_the_Promised_Land_1992.zip"
for %%a in ("Exodus - Journey to the Promised Land") do set FLDN=%%~a
for %%a in ("ExodusJo\EXODUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crisis_in_the_Kremlin_1992.zip"
for %%a in ("Crisis in the Kremlin") do set FLDN=%%~a
for %%a in ("crisiskr\CRISIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Goody_1987.zip"
for %%a in ("Goody") do set FLDN=%%~a
for %%a in ("goody\GOODY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Styx_1984.zip"
for %%a in ("Styx") do set FLDN=%%~a
for %%a in ("Styx\styx.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pac_PC_II_1995.zip"
for %%a in ("Pac PC II") do set FLDN=%%~a
for %%a in ("PacPCII\PACPC2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wilderness_-_A_Survival_Adventure_1986.zip"
for %%a in ("Wilderness - A Survival Adventure") do set FLDN=%%~a
for %%a in ("WILD\WILD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Command_1988.zip"
for %%a in ("Star Command") do set FLDN=%%~a
for %%a in ("starcoma\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Asylum_1991.zip"
for %%a in ("Asylum") do set FLDN=%%~a
for %%a in ("asylumif\ASYLUM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beyond_the_Black_Hole_1989.zip"
for %%a in ("Beyond the Black Hole") do set FLDN=%%~a
for %%a in ("beyblkh\BH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"TKO_1989.zip"
for %%a in ("TKO") do set FLDN=%%~a
for %%a in ("TKO\tko\TKO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Commanders_1983.zip"
for %%a in ("Space Commanders") do set FLDN=%%~a
for %%a in ("SpaceCom\SPACECOM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ski_King_2_1997.zip"
for %%a in ("Ski King 2") do set FLDN=%%~a
for %%a in ("SkiKing2\SKIKING2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pinball_Magic_1990.zip"
for %%a in ("Pinball Magic") do set FLDN=%%~a
for %%a in ("PinBMag\pinmagic\PINBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pilgrim_Quest_1991.zip"
for %%a in ("Pilgrim Quest") do set FLDN=%%~a
for %%a in ("PilgrimQ\G.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shadow_of_Yserbius_1993.zip"
for %%a in ("Shadow of Yserbius") do set FLDN=%%~a
for %%a in ("shadyser\yserbius\YSERBIUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mean_Streets_1989.zip"
for %%a in ("Mean Streets") do set FLDN=%%~a
for %%a in ("mstreets\ms.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Solvers_Treasure_Cove_1994.zip"
for %%a in ("Super Solvers Treasure Cove") do set FLDN=%%~a
for %%a in ("SSTC\COVE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zombi_1990.zip"
for %%a in ("Zombi") do set FLDN=%%~a
for %%a in ("zombi\ZOMBI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Game_of_Life_1992.zip"
for %%a in ("The Game of Life") do set FLDN=%%~a
for %%a in ("gamelife\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Battle_of_the_Bulge_-_Tigers_in_the_Snow_1982.zip"
for %%a in ("Battle of the Bulge - Tigers in the Snow") do set FLDN=%%~a
for %%a in ("bbtits\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Perfect_General_1991.zip"
for %%a in ("The Perfect General") do set FLDN=%%~a
for %%a in ("PerfGen\GENERAL\GENERAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cobra_1987.zip"
for %%a in ("Cobra") do set FLDN=%%~a
for %%a in ("Cobra\COBRA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_Breed_-_Tower_Assault_1994.zip"
for %%a in ("Alien Breed - Tower Assault") do set FLDN=%%~a
for %%a in ("AlienBrT\TA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jet_2.0_1987.zip"
for %%a in ("Jet 2.0") do set FLDN=%%~a
for %%a in ("Jet20\JET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Master_Ninja_-_Shadow_Warrior_of_Death_1986.zip"
for %%a in ("Master Ninja - Shadow Warrior of Death") do set FLDN=%%~a
for %%a in ("MasterNi\NINJA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sierra_Championship_Boxing_1985.zip"
for %%a in ("Sierra Championship Boxing") do set FLDN=%%~a
for %%a in ("SierraCh\KO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fuzzys_World_of_Miniature_Space_Golf_1995.zip"
for %%a in ("Fuzzy's World of Miniature Space Golf") do set FLDN=%%~a
for %%a in ("FuzzysWo\FUZZY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rodger_Ramrod_1996.zip"
for %%a in ("Rodger Ramrod") do set FLDN=%%~a
for %%a in ("rodger\RRR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dracula_in_London_1988.zip"
for %%a in ("Dracula in London") do set FLDN=%%~a
for %%a in ("draclond\DRACULA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Flying_Tigers_II_1994.zip"
for %%a in ("Flying Tigers II") do set FLDN=%%~a
for %%a in ("FlyingT2\ftigers2\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Madman_1995.zip"
for %%a in ("Madman") do set FLDN=%%~a
for %%a in ("madman\MADMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Skunny_-_Special_Edition_1995.zip"
for %%a in ("Skunny - Special Edition") do set FLDN=%%~a
for %%a in ("SkunnySp\SKUNNY\SKUNNY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cohort_-_Fighting_for_Rome_1991.zip"
for %%a in ("Cohort - Fighting for Rome") do set FLDN=%%~a
for %%a in ("cohort\COHORT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wayne_Gretzky_Hockey_1989.zip"
for %%a in ("Wayne Gretzky Hockey") do set FLDN=%%~a
for %%a in ("WayneGH1\HOCKEY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Armada_2525_1991.zip"
for %%a in ("Armada 2525") do set FLDN=%%~a
for %%a in ("armada25\2525DE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gonzzalezz_1989.zip"
for %%a in ("Gonzzalezz") do set FLDN=%%~a
for %%a in ("Gonzzale\GONZALEZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ports_of_Call_1989.zip"
for %%a in ("Ports of Call") do set FLDN=%%~a
for %%a in ("PortsofC\POCUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"All-American_College_Football_1991.zip"
for %%a in ("All-American College Football") do set FLDN=%%~a
for %%a in ("All-Amer\ACFGM.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Martian_Memorandum_1991.zip"
for %%a in ("Martian Memorandum") do set FLDN=%%~a
for %%a in ("martianm\mm.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spacewar_1985.zip"
for %%a in ("Spacewar") do set FLDN=%%~a
for %%a in ("Spacwr85\SPACEWAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Typhoon_of_Steel_1991.zip"
for %%a in ("Typhoon of Steel") do set FLDN=%%~a
for %%a in ("Typhoono\TYPHOONE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"ThunderBlade_1989.zip"
for %%a in ("ThunderBlade") do set FLDN=%%~a
for %%a in ("ThunderB\thunder.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Timothy_Learys_Mind_Mirror_1986.zip"
for %%a in ("Timothy Leary's Mind Mirror") do set FLDN=%%~a
for %%a in ("tlminmir\MMIRROR.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Menace_1989.zip"
for %%a in ("Menace") do set FLDN=%%~a
for %%a in ("Menace\MENACE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Knights_of_the_Sky_1990.zip"
for %%a in ("Knights of the Sky") do set FLDN=%%~a
for %%a in ("Knightso\KOTS\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Casino_Games_1982.zip"
for %%a in ("Casino Games") do set FLDN=%%~a
for %%a in ("CasinoGa\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spear_Resurrection_2001.zip"
for %%a in ("Spear Resurrection") do set FLDN=%%~a
for %%a in ("SpearRes\SPEAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Advanced_DOS_Quiz_1991.zip"
for %%a in ("Advanced DOS Quiz") do set FLDN=%%~a
for %%a in ("AdvDQ\ADQ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Clonk_3_-_Radikal_1996.zip"
for %%a in ("Clonk 3 - Radikal") do set FLDN=%%~a
for %%a in ("clonk3\CLONK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"First_Samurai_1992.zip"
for %%a in ("First Samurai") do set FLDN=%%~a
for %%a in ("FirstSam\Samurai\SAMURAI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mickeys_Colors_and_Shapes_1991.zip"
for %%a in ("Mickey's Colors & Shapes") do set FLDN=%%~a
for %%a in ("MickCol\MICKC&amp;S\MICKEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Keef_the_Thief_1989.zip"
for %%a in ("Keef the Thief") do set FLDN=%%~a
for %%a in ("keef\KEEF.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Press_Your_Luck_1988.zip"
for %%a in ("Press Your Luck") do set FLDN=%%~a
for %%a in ("PressYou\PSI_PYLP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chex_Quest_3_1996.zip"
for %%a in ("Chex Quest 3") do set FLDN=%%~a
for %%a in ("ChexQ3\chex1.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Karnov_1987.zip"
for %%a in ("Karnov") do set FLDN=%%~a
for %%a in ("Karnov\KARNOV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Zaxxon_1984.zip"
for %%a in ("Super Zaxxon") do set FLDN=%%~a
for %%a in ("SuperZax\SUPERZAX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Global_Conquest_1992.zip"
for %%a in ("Global Conquest") do set FLDN=%%~a
for %%a in ("globconq\CONQUEST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Murder_on_the_Atlantic_1988.zip"
for %%a in ("Murder on the Atlantic") do set FLDN=%%~a
for %%a in ("murdatla\MURDER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"AntiXonix_1985.zip"
for %%a in ("AntiXonix") do set FLDN=%%~a
for %%a in ("antixoni\ANTIX.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tom_Landry_Strategy_Football_Deluxe_Edition_1993.zip"
for %%a in ("Tom Landry Strategy Football Deluxe Edition") do set FLDN=%%~a
for %%a in ("TlandryD\TLSFDLX\FOOTBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hacker_2_-_The_Doomsday_Papers_1986.zip"
for %%a in ("Hacker 2 - The Doomsday Papers") do set FLDN=%%~a
for %%a in ("hacker2\HACKER2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fahrenheit_451_1984.zip"
for %%a in ("Fahrenheit 451") do set FLDN=%%~a
for %%a in ("fahren\F451.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rollin_1995.zip"
for %%a in ("Rollin") do set FLDN=%%~a
for %%a in ("Rollin\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Tomb_1992.zip"
for %%a in ("The Tomb") do set FLDN=%%~a
for %%a in ("TheTomb\TOMB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"V_for_Victory_-_D-Day_Utah_Beach_1991.zip"
for %%a in ("V for Victory - D-Day Utah Beach") do set FLDN=%%~a
for %%a in ("VVUtahB\v\V4V.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mythos_1990.zip"
for %%a in ("Mythos") do set FLDN=%%~a
for %%a in ("Mythos\MITHOS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hovertank_1991.zip"
for %%a in ("Hovertank") do set FLDN=%%~a
for %%a in ("Hovertan\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Lords_2001.zip"
for %%a in ("Star Lords") do set FLDN=%%~a
for %%a in ("StrLords\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"An_American_Tail_-_Fievel_Goes_West_1993.zip"
for %%a in ("An American Tail - Fievel Goes West") do set FLDN=%%~a
for %%a in ("fievelw\AMTAIL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Igor_-_Objective_Uikokahonia_1994.zip"
for %%a in ("Igor - Objective Uikokahonia") do set FLDN=%%~a
for %%a in ("igor\IGOR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Great_Escape_The_1987.zip"
for %%a in ("Great Escape,
 The") do set FLDN=%%~a
for %%a in ("greatesc\ESCAPE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heroes_of_the_Lance_1989.zip"
for %%a in ("Heroes of the Lance") do set FLDN=%%~a
for %%a in ("herolanc\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Seawolf_1982.zip"
for %%a in ("Seawolf") do set FLDN=%%~a
for %%a in ("Seawolf\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Unnecessary_Roughness_1993.zip"
for %%a in ("Unnecessary Roughness") do set FLDN=%%~a
for %%a in ("Unnecess\unrough\UR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bad_Dudes_1988.zip"
for %%a in ("Bad Dudes") do set FLDN=%%~a
for %%a in ("BadDudes\BADDUDES.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Premier_Manager_2_1993.zip"
for %%a in ("Premier Manager 2") do set FLDN=%%~a
for %%a in ("PrmMan2\pm2.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arnie_2_1993.zip"
for %%a in ("Arnie 2") do set FLDN=%%~a
for %%a in ("Arnie2\ARNIE2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Now_You_See_It_1990.zip"
for %%a in ("Now You See It") do set FLDN=%%~a
for %%a in ("NowYouSe\NYSI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heavy_Metal_1989.zip"
for %%a in ("Heavy Metal") do set FLDN=%%~a
for %%a in ("HeavyMet\metal.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Uninvited_1986.zip"
for %%a in ("Uninvited") do set FLDN=%%~a
for %%a in ("Uninvite\UNINVITE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lost_Adventures_of_Kroz_1990.zip"
for %%a in ("Lost Adventures of Kroz") do set FLDN=%%~a
for %%a in ("LostAdve\LOST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Night_Shift_1990.zip"
for %%a in ("Night Shift") do set FLDN=%%~a
for %%a in ("NightShi\iml.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"High_Rollers_1988.zip"
for %%a in ("High Rollers") do set FLDN=%%~a
for %%a in ("highroll\GAME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hexxagon_2_1993.zip"
for %%a in ("Hexxagon 2") do set FLDN=%%~a
for %%a in ("hexxagn2\HEXX2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mean_18_1986.zip"
for %%a in ("Mean 18") do set FLDN=%%~a
for %%a in ("Mean18\GOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Home_Run_Derby_1995.zip"
for %%a in ("Home Run Derby") do set FLDN=%%~a
for %%a in ("HomeRunD\DERBY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ikari_Warriors_II_-_Victory_Road_1988.zip"
for %%a in ("Ikari Warriors II - Victory Road") do set FLDN=%%~a
for %%a in ("IkariW2\victory.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rings_of_Medusa_1990.zip"
for %%a in ("Rings of Medusa") do set FLDN=%%~a
for %%a in ("RingsofM\ROM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Acheton_1978.zip"
for %%a in ("Acheton") do set FLDN=%%~a
for %%a in ("acheton\ACHETON.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Maze_Wars_1992.zip"
for %%a in ("Maze Wars") do set FLDN=%%~a
for %%a in ("MazeWars\mazewars\MAZEWARS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trauma_1995.zip"
for %%a in ("Trauma") do set FLDN=%%~a
for %%a in ("Trauma\TRAUMA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Summoning_1992.zip"
for %%a in ("The Summoning") do set FLDN=%%~a
for %%a in ("tsummon\SUMMON.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lost_Dutchmans_Gold_1982.zip"
for %%a in ("Lost Dutchman's Gold") do set FLDN=%%~a
for %%a in ("dutcgold\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Winnie_the_Pooh_in_the_Hundred_Acre_Wood_1985.zip"
for %%a in ("Winnie the Pooh in the Hundred Acre Wood") do set FLDN=%%~a
for %%a in ("winnie\Winnie.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Joust_VGA_1990.zip"
for %%a in ("Joust VGA") do set FLDN=%%~a
for %%a in ("JoustVGA\JOUST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snoopys_Game_Club_1992.zip"
for %%a in ("Snoopy's Game Club") do set FLDN=%%~a
for %%a in ("SnoopysG\P.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tony_La_Russas_Ultimate_Baseball_1991.zip"
for %%a in ("Tony La Russa's Ultimate Baseball") do set FLDN=%%~a
for %%a in ("TonyLRUB\ULTIMATE\BB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pirates_of_the_Barbary_Coast_1987.zip"
for %%a in ("Pirates of the Barbary Coast") do set FLDN=%%~a
for %%a in ("Pirateso\GAME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Submarine_Fury_1999.zip"
for %%a in ("Submarine Fury") do set FLDN=%%~a
for %%a in ("SubFury\SUB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Risky_Woods_1992.zip"
for %%a in ("Risky Woods") do set FLDN=%%~a
for %%a in ("RiskyWoo\RISKY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Freaks_1993.zip"
for %%a in ("Freaks") do set FLDN=%%~a
for %%a in ("freaks\fr.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sharkeys_3D_Pool_1990.zip"
for %%a in ("Sharkey's 3D Pool") do set FLDN=%%~a
for %%a in ("Sharkeys\POOL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nicky_Boom_1992.zip"
for %%a in ("Nicky Boom") do set FLDN=%%~a
for %%a in ("NickyBoo\NICKY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Football_Limited_1994.zip"
for %%a in ("Football Limited") do set FLDN=%%~a
for %%a in ("FBLimit\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Circuits_Edge_1990.zip"
for %%a in ("Circuit's Edge") do set FLDN=%%~a
for %%a in ("cedge\edge.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"TwinBlok_1996.zip"
for %%a in ("TwinBlok") do set FLDN=%%~a
for %%a in ("TwinBlok\TWINBLOK\TWINBLOK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kingmaker_1994.zip"
for %%a in ("Kingmaker") do set FLDN=%%~a
for %%a in ("kingmake\KING.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tronic_1996.zip"
for %%a in ("Tronic") do set FLDN=%%~a
for %%a in ("Tronic\TRONIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heroes_of_the_357th_1992.zip"
for %%a in ("Heroes of the 357th") do set FLDN=%%~a
for %%a in ("Heroesof\P51.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Empire_Soccer_94_1994.zip"
for %%a in ("Empire Soccer 94") do set FLDN=%%~a
for %%a in ("EmpireSo\SOCCER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lamers_1992.zip"
for %%a in ("Lamers") do set FLDN=%%~a
for %%a in ("Lamers\LAMERS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pickle_Wars_1994.zip"
for %%a in ("Pickle Wars") do set FLDN=%%~a
for %%a in ("PickleWa\PICKLE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tetris_1987.zip"
for %%a in ("Tetris") do set FLDN=%%~a
for %%a in ("Tetris87\ttetris.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Boulderoid_1994.zip"
for %%a in ("Boulderoid") do set FLDN=%%~a
for %%a in ("bouldoid\BOULDER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Volleyball_Simulator_1988.zip"
for %%a in ("Volleyball Simulator") do set FLDN=%%~a
for %%a in ("Volleyba\VOLLEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Last_Mission_1987.zip"
for %%a in ("The Last Mission") do set FLDN=%%~a
for %%a in ("TheLastM\Lastmiss.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"WW2_Air_Force_Commander_1993.zip"
for %%a in ("WW2 Air Force Commander") do set FLDN=%%~a
for %%a in ("WW2AirFo\AFCWW2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mille_Bornes_1989.zip"
for %%a in ("Mille Bornes") do set FLDN=%%~a
for %%a in ("MilleBor\MILLEBRN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"NCAA_-_Road_to_the_Final_Four_1991.zip"
for %%a in ("NCAA - Road to the Final Four") do set FLDN=%%~a
for %%a in ("NCAARoad\NCAA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizardry_II_-_The_Knight_of_Diamonds_1982.zip"
for %%a in ("Wizardry II - The Knight of Diamonds") do set FLDN=%%~a
for %%a in ("wizar2\WIZ2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gemfire_1992.zip"
for %%a in ("Gemfire") do set FLDN=%%~a
for %%a in ("gemfire\KOEI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lunar_Command_1993.zip"
for %%a in ("Lunar Command") do set FLDN=%%~a
for %%a in ("lunacomm\LC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Patton_vs._Rommel_1987.zip"
for %%a in ("Patton vs. Rommel") do set FLDN=%%~a
for %%a in ("Pattonvs\PVRMAIN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Willow_1988.zip"
for %%a in ("Willow") do set FLDN=%%~a
for %%a in ("Willow\WILLOW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mummies_1986.zip"
for %%a in ("Mummies") do set FLDN=%%~a
for %%a in ("Mummies\MUMMIES.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Viz_-_The_Game_1992.zip"
for %%a in ("Viz - The Game") do set FLDN=%%~a
for %%a in ("viz\VIZ.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Realms_1991.zip"
for %%a in ("Realms") do set FLDN=%%~a
for %%a in ("Realms\REALMS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kurtan_1990.zip"
for %%a in ("Kurtan") do set FLDN=%%~a
for %%a in ("Kurtan\kurtan.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Safe_Opening_Simulator_1993.zip"
for %%a in ("Safe Opening Simulator") do set FLDN=%%~a
for %%a in ("SafeOpen\sos.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tracon_II_1990.zip"
for %%a in ("Tracon II") do set FLDN=%%~a
for %%a in ("TraconII\TRACON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Team_Suzuki_1991.zip"
for %%a in ("Team Suzuki") do set FLDN=%%~a
for %%a in ("TeamSuzu\SUZUKI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sherlock_Holmes_-_Another_Bow_1985.zip"
for %%a in ("Sherlock Holmes - Another Bow") do set FLDN=%%~a
for %%a in ("shab\SHERLOCK.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"SpaceKids_1996.zip"
for %%a in ("SpaceKids") do set FLDN=%%~a
for %%a in ("spackids\SKDEMO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Euro_Soccer_1992.zip"
for %%a in ("Euro Soccer") do set FLDN=%%~a
for %%a in ("EuroSoc\EURO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Another_Lifeless_Planet_and_Me_With_No_Beer_1991.zip"
for %%a in ("Another Lifeless Planet and Me With No Beer") do set FLDN=%%~a
for %%a in ("nobeer\GSCAPE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Meteors_1989.zip"
for %%a in ("Meteors") do set FLDN=%%~a
for %%a in ("Meteors\METEORS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"CRASH_1996.zip"
for %%a in ("CRASH") do set FLDN=%%~a
for %%a in ("CRASH\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nigel_Mansells_World_Championship_1993.zip"
for %%a in ("Nigel Mansell's World Championship") do set FLDN=%%~a
for %%a in ("NigelMan\NMWC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Oxyd_1992.zip"
for %%a in ("Oxyd") do set FLDN=%%~a
for %%a in ("Oxyd92\OXYD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Threat_1995.zip"
for %%a in ("Threat") do set FLDN=%%~a
for %%a in ("Threat\THREAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hannibal_1992.zip"
for %%a in ("Hannibal") do set FLDN=%%~a
for %%a in ("hannibal\HAN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Space_Goblins_1987.zip"
for %%a in ("Tommy's Space Goblins") do set FLDN=%%~a
for %%a in ("TommysSp\TOMMYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Predator_2_1990.zip"
for %%a in ("Predator 2") do set FLDN=%%~a
for %%a in ("Predator\PRED2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Redhooks_Revenge_1993.zip"
for %%a in ("Redhook's Revenge") do set FLDN=%%~a
for %%a in ("Redhook\REDHOOK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Advantage_Tennis_1991.zip"
for %%a in ("Advantage Tennis") do set FLDN=%%~a
for %%a in ("Advantag\TATOU.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rescue_Rover_1991.zip"
for %%a in ("Rescue Rover") do set FLDN=%%~a
for %%a in ("RescueR1\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sensible_Golf_1994.zip"
for %%a in ("Sensible Golf") do set FLDN=%%~a
for %%a in ("SensGolf\golfdos.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Romance_of_the_Three_Kingdoms_II_1990.zip"
for %%a in ("Romance of the Three Kingdoms II") do set FLDN=%%~a
for %%a in ("Rom3K2\KOEI.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Striker_1985_1985.zip"
for %%a in ("Striker") do set FLDN=%%~a
for %%a in ("Strike85\STRKHINS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Discovery_-_In_the_Steps_of_Columbus_1992.zip"
for %%a in ("Discovery - In the Steps of Columbus") do set FLDN=%%~a
for %%a in ("disccolu\DISCOVER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hard_Drivin_1990.zip"
for %%a in ("Hard Drivin'") do set FLDN=%%~a
for %%a in ("HardDriv\HARD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Turoid_1995.zip"
for %%a in ("Turoid") do set FLDN=%%~a
for %%a in ("Turoid\TUROID.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Surf_Ninjas_1994.zip"
for %%a in ("Surf Ninjas") do set FLDN=%%~a
for %%a in ("SurfNinj\SURF.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"James_Clavells_Shogun_1988.zip"
for %%a in ("James Clavell's Shogun") do set FLDN=%%~a
for %%a in ("jcshogun\SHOGUN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rick_Dangerous_2_1990.zip"
for %%a in ("Rick Dangerous 2") do set FLDN=%%~a
for %%a in ("RickDan2\Run.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Drakkhen_1989.zip"
for %%a in ("Drakkhen") do set FLDN=%%~a
for %%a in ("drakkhen\DRAKKHEN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"PT-109_1987.zip"
for %%a in ("PT-109") do set FLDN=%%~a
for %%a in ("PT-109\PT109.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Bards_Tale_Construction_Set_1991.zip"
for %%a in ("The Bard's Tale Construction Set") do set FLDN=%%~a
for %%a in ("bardcons\BTCS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Adventure_in_Serenia_1982.zip"
for %%a in ("Adventure in Serenia") do set FLDN=%%~a
for %%a in ("serenia\SERENIA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Borrowed_Time_1985.zip"
for %%a in ("Borrowed Time") do set FLDN=%%~a
for %%a in ("borrtime\time2die.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"PC-Man_1982.zip"
for %%a in ("PC-Man") do set FLDN=%%~a
for %%a in ("PCMan\PCMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trade_Wars_2002_1990.zip"
for %%a in ("Trade Wars 2002") do set FLDN=%%~a
for %%a in ("TradeWar\install\TW2002.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Airborne_Ranger_1988.zip"
for %%a in ("Airborne Ranger") do set FLDN=%%~a
for %%a in ("Airborne\AR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"World_Class_Leader_Board_1988.zip"
for %%a in ("World Class Leader Board") do set FLDN=%%~a
for %%a in ("WCLB\GOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mass_Destruction_1997.zip"
for %%a in ("Mass Destruction") do set FLDN=%%~a
for %%a in ("massdest\MASSD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"High_Command_-_Europe_1939-45_1992.zip"
for %%a in ("High Command - Europe 1939-45") do set FLDN=%%~a
for %%a in ("highcome\HICOM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Red_Storm_Rising_1989.zip"
for %%a in ("Red Storm Rising") do set FLDN=%%~a
for %%a in ("RedStorm\REDSTORM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nomad_1993.zip"
for %%a in ("Nomad") do set FLDN=%%~a
for %%a in ("Nomad93\NOMAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tactical_Manager_1994.zip"
for %%a in ("Tactical Manager") do set FLDN=%%~a
for %%a in ("TacManag\INTRO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blood_Money_1990.zip"
for %%a in ("Blood Money") do set FLDN=%%~a
for %%a in ("BloodMon\RUNME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crack_Down_1990.zip"
for %%a in ("Crack Down") do set FLDN=%%~a
for %%a in ("CrackDow\CDOWN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Baryon_1995.zip"
for %%a in ("Baryon") do set FLDN=%%~a
for %%a in ("Baryon\BARYON\GO.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Temple_of_Apshai_Trilogy_1982.zip"
for %%a in ("Temple of Apshai Trilogy") do set FLDN=%%~a
for %%a in ("apshai\TRILOGY.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Amaze_1989.zip"
for %%a in ("Amaze") do set FLDN=%%~a
for %%a in ("Amaze\Amaze.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sky_Shark_1989.zip"
for %%a in ("Sky Shark") do set FLDN=%%~a
for %%a in ("SkyShark\SKYSHARK.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Reaping_the_Dungeon_1993.zip"
for %%a in ("Reaping the Dungeon") do set FLDN=%%~a
for %%a in ("reapdung\REAP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultima_V_-_Warriors_of_Destiny_1988.zip"
for %%a in ("Ultima V - Warriors of Destiny") do set FLDN=%%~a
for %%a in ("ultima5\ULTIMA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cartooners_1989.zip"
for %%a in ("Cartooners") do set FLDN=%%~a
for %%a in ("Cartoone\CARTOON.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Il_grande_gioco_di_Tangentopoli_1993.zip"
for %%a in ("Il grande gioco di Tangentopoli") do set FLDN=%%~a
for %%a in ("Ilgrande\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"King_of_Chicago_The_1986.zip"
for %%a in ("King of Chicago, The") do set FLDN=%%~a
for %%a in ("kchicago\CHICAGO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spider_Run_1995.zip"
for %%a in ("Spider Run") do set FLDN=%%~a
for %%a in ("spidrrun\SPIDER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Prohibition_1987.zip"
for %%a in ("Prohibition") do set FLDN=%%~a
for %%a in ("Prohibit\PROHI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shamus_1984.zip"
for %%a in ("Shamus") do set FLDN=%%~a
for %%a in ("Shamus\SHAMUS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Thunderstrike_1990.zip"
for %%a in ("Thunderstrike") do set FLDN=%%~a
for %%a in ("ThunStri\TS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Final_Frontier_1989.zip"
for %%a in ("Final Frontier") do set FLDN=%%~a
for %%a in ("finlfron\Ega.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blox_1991.zip"
for %%a in ("Blox") do set FLDN=%%~a
for %%a in ("blox\BLOX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Inva-taxi_1994.zip"
for %%a in ("Inva-taxi") do set FLDN=%%~a
for %%a in ("Inva-tax\INVATAXI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fast_Food_1989.zip"
for %%a in ("Fast Food") do set FLDN=%%~a
for %%a in ("FastFood\FFOOD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Roadwar_Europe_1987.zip"
for %%a in ("Roadwar Europe") do set FLDN=%%~a
for %%a in ("roadware\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Uno_1991.zip"
for %%a in ("Uno") do set FLDN=%%~a
for %%a in ("Uno91\UNO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tennis_Elbow_1997.zip"
for %%a in ("Tennis Elbow") do set FLDN=%%~a
for %%a in ("TennisEl\tennis\TENNIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crime_Time_1990.zip"
for %%a in ("Crime Time") do set FLDN=%%~a
for %%a in ("crimeti\CRIME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ancient_Art_of_War_in_the_Skies_1992.zip"
for %%a in ("Ancient Art of War in the Skies") do set FLDN=%%~a
for %%a in ("anciawsk\INCME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gateway_2_-_Homeworld_1993.zip"
for %%a in ("Gateway 2 - Homeworld") do set FLDN=%%~a
for %%a in ("gateway2\LEGEND.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Peter_Pan_-_A_Story_Painting_Adventure_1993.zip"
for %%a in ("Peter Pan - A Story Painting Adventure") do set FLDN=%%~a
for %%a in ("PeterPan\PAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MicroLeague_Baseball_IV_1992.zip"
for %%a in ("MicroLeague Baseball IV") do set FLDN=%%~a
for %%a in ("MicroLB4\MLB4\MLB4.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Castle_Ralf_1987.zip"
for %%a in ("Castle Ralf") do set FLDN=%%~a
for %%a in ("castralf\RALF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"4D_Sports_Tennis_1990.zip"
for %%a in ("4D Sports Tennis") do set FLDN=%%~a
for %%a in ("4DSports\TENNIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Betrayal_1990.zip"
for %%a in ("Betrayal") do set FLDN=%%~a
for %%a in ("betrayal\betrayal.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tubes_1993.zip"
for %%a in ("Tubes") do set FLDN=%%~a
for %%a in ("Tubes93\TUBES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"X_Rock_1990.zip"
for %%a in ("X Rock") do set FLDN=%%~a
for %%a in ("XRock90\HXROCK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crusade_in_Europe_1985.zip"
for %%a in ("Crusade in Europe") do set FLDN=%%~a
for %%a in ("cruseuro\CRUSADE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cyril_Cyberpunk_1996.zip"
for %%a in ("Cyril Cyberpunk") do set FLDN=%%~a
for %%a in ("CyrilCyb\cyril\CYRIL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bolo_Adventures_I_1994.zip"
for %%a in ("Bolo Adventures I") do set FLDN=%%~a
for %%a in ("boloadv1\BOLO1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Escape_from_the_Planet_of_the_Robot_Monsters_1990.zip"
for %%a in ("Escape from the Planet of the Robot Monsters") do set FLDN=%%~a
for %%a in ("EscfPoRM\X.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Elevator_1986.zip"
for %%a in ("Elevator") do set FLDN=%%~a
for %%a in ("Elevator\Elevator.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Below_the_Root_1984.zip"
for %%a in ("Below the Root") do set FLDN=%%~a
for %%a in ("btroot\loader.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mike_Ditka_Ultimate_Football_1991.zip"
for %%a in ("Mike Ditka Ultimate Football") do set FLDN=%%~a
for %%a in ("MikeDitk\MDF.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Solo_Flight_1985.zip"
for %%a in ("Solo Flight") do set FLDN=%%~a
for %%a in ("solofly\Solo.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gear_Works_1992.zip"
for %%a in ("Gear Works") do set FLDN=%%~a
for %%a in ("gearwork\GEAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Power_Drift_1990.zip"
for %%a in ("Power Drift") do set FLDN=%%~a
for %%a in ("PowDrive\PD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Magic_Candle_3_1992.zip"
for %%a in ("The Magic Candle 3") do set FLDN=%%~a
for %%a in ("magcand3\MC3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fellowship_of_the_Ring_The_-_Part_2_1986.zip"
for %%a in ("Fellowship of the Ring, The - Part 2") do set FLDN=%%~a
for %%a in ("fotr2\for2.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gettysburg_-_The_Turning_Point_1986.zip"
for %%a in ("Gettysburg - The Turning Point") do set FLDN=%%~a
for %%a in ("gettystp\GTTYSBRG.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tiles_of_the_Dragon_1993.zip"
for %%a in ("Tiles of the Dragon") do set FLDN=%%~a
for %%a in ("tiledrag\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Swiss_Family_Robinson_1984.zip"
for %%a in ("Swiss Family Robinson") do set FLDN=%%~a
for %%a in ("swissfam\runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mushroom_Mania_1987.zip"
for %%a in ("Mushroom Mania") do set FLDN=%%~a
for %%a in ("Mushroom\MANIA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lollypop_1994.zip"
for %%a in ("Lollypop") do set FLDN=%%~a
for %%a in ("Lollypop\LOLLY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Magic_Boy_1993.zip"
for %%a in ("Magic Boy") do set FLDN=%%~a
for %%a in ("MagicBoy\MAGICBOY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"World_at_War_-_Stalingrad_1994.zip"
for %%a in ("World at War - Stalingrad") do set FLDN=%%~a
for %%a in ("WorldatW\STALIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mickeys_Memory_Challenge_1990.zip"
for %%a in ("Mickey's Memory Challenge") do set FLDN=%%~a
for %%a in ("MickeysM\MMC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spiritual_Warfare_1993.zip"
for %%a in ("Spiritual Warfare") do set FLDN=%%~a
for %%a in ("spiriwar\SPIRIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Knight_Games_1988.zip"
for %%a in ("Knight Games") do set FLDN=%%~a
for %%a in ("KnightGa\KG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Twilight_Zone_1988.zip"
for %%a in ("Twilight Zone") do set FLDN=%%~a
for %%a in ("twilzone\TZVGA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dusk_of_the_Gods_1991.zip"
for %%a in ("Dusk of the Gods") do set FLDN=%%~a
for %%a in ("duskgod\DUSK.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Master_Mind_1990.zip"
for %%a in ("Master Mind") do set FLDN=%%~a
for %%a in ("mastmind\master.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jungle_Jack_1995.zip"
for %%a in ("Jungle Jack") do set FLDN=%%~a
for %%a in ("JungleJa\HUGO\HUGO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dungeons_of_Dunjin_The_1991.zip"
for %%a in ("Dungeons of Dunjin,
 The") do set FLDN=%%~a
for %%a in ("dunjin\Dunconf.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fountain_of_Dreams_1990.zip"
for %%a in ("Fountain of Dreams") do set FLDN=%%~a
for %%a in ("foundrea\FOD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nephis_Quest_1990.zip"
for %%a in ("Nephis Quest") do set FLDN=%%~a
for %%a in ("nephi\NQ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Days_of_Thunder_1990.zip"
for %%a in ("Days of Thunder") do set FLDN=%%~a
for %%a in ("DaysofTh\DOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tracon_Air_Traffic_Control_Simulator_1989.zip"
for %%a in ("Tracon Air Traffic Control Simulator") do set FLDN=%%~a
for %%a in ("TraconAi\TRACON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Escape_from_Hell_1990.zip"
for %%a in ("Escape from Hell") do set FLDN=%%~a
for %%a in ("escahell\ESCAPE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"StarMines_1991.zip"
for %%a in ("StarMines") do set FLDN=%%~a
for %%a in ("StarMine\SM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tennis_Cup_2_1992.zip"
for %%a in ("Tennis Cup 2") do set FLDN=%%~a
for %%a in ("TennisC2\T.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Luckys_Casino_Adventure_1993.zip"
for %%a in ("Lucky's Casino Adventure") do set FLDN=%%~a
for %%a in ("luckcadv\LCA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Math_Rescue_1992.zip"
for %%a in ("Math Rescue") do set FLDN=%%~a
for %%a in ("MathResc\MR1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Player_Manager_2_1995.zip"
for %%a in ("Player Manager 2") do set FLDN=%%~a
for %%a in ("PlayerMa\PM2\VGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Realms_of_Chaos_1995.zip"
for %%a in ("Realms of Chaos") do set FLDN=%%~a
for %%a in ("Realmsof\ROC\ROC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arcade_Fruit_Machine_1992.zip"
for %%a in ("Arcade Fruit Machine") do set FLDN=%%~a
for %%a in ("ArcadeFr\ARCADE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"ALFs_Thinking_Skills_1993.zip"
for %%a in ("ALF's Thinking Skills") do set FLDN=%%~a
for %%a in ("ALFsThin\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Night_Bomber_1988.zip"
for %%a in ("Night Bomber") do set FLDN=%%~a
for %%a in ("NightBom\BOMBER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"DragonStrike_1990.zip"
for %%a in ("DragonStrike") do set FLDN=%%~a
for %%a in ("DragonSt\DSTRIKE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dragon_Force_-_Day_3_1993.zip"
for %%a in ("Dragon Force - Day 3") do set FLDN=%%~a
for %%a in ("DragonFo\Day3\DRF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Midwinter_1990.zip"
for %%a in ("Midwinter") do set FLDN=%%~a
for %%a in ("Midwinte\MIDWINTR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MacArthurs_War_-_Battles_for_Korea_1988.zip"
for %%a in ("MacArthur's War - Battles for Korea") do set FLDN=%%~a
for %%a in ("mcawbfk\MAW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Great_Machine_The_2005.zip"
for %%a in ("Great Machine, The") do set FLDN=%%~a
for %%a in ("tgm\TGM.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mega_Phoenix_1992.zip"
for %%a in ("Mega Phoenix") do set FLDN=%%~a
for %%a in ("MegaPhoe\DINAMIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"8088_Othello_1985.zip"
for %%a in ("8088 Othello") do set FLDN=%%~a
for %%a in ("8088\8088.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"MicroLeague_Football_2_1993.zip"
for %%a in ("MicroLeague Football 2") do set FLDN=%%~a
for %%a in ("MicroLF2\MLF2\MLF2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Freddy_Hardest_in_South_Manhattan_1989.zip"
for %%a in ("Freddy Hardest in South Manhattan") do set FLDN=%%~a
for %%a in ("FredHard\FREDDY2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Adventure_XT_2007.zip"
for %%a in ("Adventure XT") do set FLDN=%%~a
for %%a in ("advxt\ADVXT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lightspeed_1990.zip"
for %%a in ("Lightspeed") do set FLDN=%%~a
for %%a in ("Lightspe\LIGHTSPD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Brainies_The_1992.zip"
for %%a in ("Brainies, The") do set FLDN=%%~a
for %%a in ("brainies\VGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kingpin_-_Arcade_Sports_Bowling_1995.zip"
for %%a in ("Kingpin - Arcade Sports Bowling") do set FLDN=%%~a
for %%a in ("KingpinA\GAMES\KINGPIN\KINGPIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nogginknockers_1993.zip"
for %%a in ("Nogginknockers") do set FLDN=%%~a
for %%a in ("Noggink\NOGGIN\NOGGIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Orion_Project_1994.zip"
for %%a in ("The Orion Project") do set FLDN=%%~a
for %%a in ("TheOrion\FATBOY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Aggravation_1991.zip"
for %%a in ("Aggravation") do set FLDN=%%~a
for %%a in ("aggrva\AGGR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Solvers_Teasure_MathStorm_1992.zip"
for %%a in ("Super Solvers Teasure MathStorm") do set FLDN=%%~a
for %%a in ("SSTMS\tmprog.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mini-Putt_1987.zip"
for %%a in ("Mini-Putt") do set FLDN=%%~a
for %%a in ("Mini-Put\MP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Captain_Dynamo_1993.zip"
for %%a in ("Captain Dynamo") do set FLDN=%%~a
for %%a in ("CaptainD\DYNAMO.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Ford_Simulator_1987.zip"
for %%a in ("The Ford Simulator") do set FLDN=%%~a
for %%a in ("TheFordS\FORD.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lock_On_1987.zip"
for %%a in ("Lock On") do set FLDN=%%~a
for %%a in ("LockOn\LOCKON.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Prophecy_1_-_The_Viking_Child_1991.zip"
for %%a in ("Prophecy 1 - The Viking Child") do set FLDN=%%~a
for %%a in ("Prophecy\VC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Megapede_1992.zip"
for %%a in ("Megapede") do set FLDN=%%~a
for %%a in ("Megapede\MEGAPEDE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizkid_-_The_Story_of_Wizball_II_1992.zip"
for %%a in ("Wizkid - The Story of Wizball II") do set FLDN=%%~a
for %%a in ("WizkidTh\WIZKID.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Front_Page_Sports_Baseball_94_1994.zip"
for %%a in ("Front Page Sports Baseball '94") do set FLDN=%%~a
for %%a in ("FPSBas94\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Epic_Baseball_1995.zip"
for %%a in ("Epic Baseball") do set FLDN=%%~a
for %%a in ("epicbase\epicbb.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sherlock_Holmes_-_The_Riddle_of_the_Crown_Jewels_1987.zip"
for %%a in ("Sherlock Holmes - The Riddle of the Crown Jewels") do set FLDN=%%~a
for %%a in ("shrcj\Sherlock.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dino_Hunt_1993.zip"
for %%a in ("Dino Hunt") do set FLDN=%%~a
for %%a in ("DinoHunt\DINO\DINO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Panda_Dodgeball_1993.zip"
for %%a in ("Panda Dodgeball") do set FLDN=%%~a
for %%a in ("PandaDod\DODGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Popo_Car_1994.zip"
for %%a in ("Popo Car") do set FLDN=%%~a
for %%a in ("PopoCar\title.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Over_the_Net_1991.zip"
for %%a in ("Over the Net") do set FLDN=%%~a
for %%a in ("OvertheN\OTN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Soul_Crystal_1992.zip"
for %%a in ("Soul Crystal") do set FLDN=%%~a
for %%a in ("soulcrys\SOUL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Marshmallow_Duel_1997.zip"
for %%a in ("Marshmallow Duel") do set FLDN=%%~a
for %%a in ("Marshmal\MDUEL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hockey_League_Simulator_1989.zip"
for %%a in ("Hockey League Simulator") do set FLDN=%%~a
for %%a in ("hocksim1\LEAGUE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"International_Soccer_Challenge_1990.zip"
for %%a in ("International Soccer Challenge") do set FLDN=%%~a
for %%a in ("IntSocCh\is.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grandmaster_Chess_1993.zip"
for %%a in ("Grandmaster Chess") do set FLDN=%%~a
for %%a in ("grandchs\CHESS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tower_Toppler_1988.zip"
for %%a in ("Tower Toppler") do set FLDN=%%~a
for %%a in ("TowerTop\NEBEGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Metropolis_1987.zip"
for %%a in ("Metropolis") do set FLDN=%%~a
for %%a in ("metropo\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gore_Galore_-_The_Breakout_1995.zip"
for %%a in ("Gore Galore - The Breakout") do set FLDN=%%~a
for %%a in ("goregal\RUNGAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eye_of_Horus_1989.zip"
for %%a in ("Eye of Horus") do set FLDN=%%~a
for %%a in ("EyeofHor\horus.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rocket_Lander_1982.zip"
for %%a in ("Rocket Lander") do set FLDN=%%~a
for %%a in ("RocketLa\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Creepers_1992.zip"
for %%a in ("Creepers") do set FLDN=%%~a
for %%a in ("creeprs\CREEPERS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hostage_Rescue_Mission_1989.zip"
for %%a in ("Hostage Rescue Mission") do set FLDN=%%~a
for %%a in ("HostageR\HOSTAGE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizardry_III_-_Legacy_of_Llylgamyn_1983.zip"
for %%a in ("Wizardry III - Legacy of Llylgamyn") do set FLDN=%%~a
for %%a in ("wizar3\WIZ3.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Soko-Ban_1984.zip"
for %%a in ("Soko-Ban") do set FLDN=%%~a
for %%a in ("SokoBan\SKB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Fleet_II_-_Krellan_Commander_1989.zip"
for %%a in ("Star Fleet II - Krellan Commander") do set FLDN=%%~a
for %%a in ("StarFlt2\SF2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Dude_1994.zip"
for %%a in ("Space Dude") do set FLDN=%%~a
for %%a in ("SpaceDud\DUDE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"NightHunter_1988.zip"
for %%a in ("NightHunter") do set FLDN=%%~a
for %%a in ("NightHun\NIGHT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Imperium_1990.zip"
for %%a in ("Imperium") do set FLDN=%%~a
for %%a in ("imperium\IMP.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spirit_of_Excalibur_1990.zip"
for %%a in ("Spirit of Excalibur") do set FLDN=%%~a
for %%a in ("spirexc\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"20000_Leagues_Under_the_Sea_1988.zip"
for %%a in ("20,
000 Leagues Under the Sea") do set FLDN=%%~a
for %%a in ("20000\loader.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Holiday_Lemmings_1993.zip"
for %%a in ("Holiday Lemmings") do set FLDN=%%~a
for %%a in ("holilemm\1991\VGAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snap_Dragon_1992.zip"
for %%a in ("Snap Dragon") do set FLDN=%%~a
for %%a in ("SnapDrag\SNAPDRGN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizardry_IV_-_The_Return_of_Werdna_1986.zip"
for %%a in ("Wizardry IV - The Return of Werdna") do set FLDN=%%~a
for %%a in ("wizar4\WIZ4.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_Attack_1993.zip"
for %%a in ("Alien Attack") do set FLDN=%%~a
for %%a in ("AlienAtt\aliens.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kings_of_the_Beach_1988.zip"
for %%a in ("Kings of the Beach") do set FLDN=%%~a
for %%a in ("Kingsoft\VBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Times_of_Lore_1988.zip"
for %%a in ("Times of Lore") do set FLDN=%%~a
for %%a in ("timelore\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Taitos_Super_Space_Invaders_1991.zip"
for %%a in ("Taito's Super Space Invaders") do set FLDN=%%~a
for %%a in ("TaitosSu\INVADERS\INVADERS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"NewTrek_1982.zip"
for %%a in ("NewTrek") do set FLDN=%%~a
for %%a in ("NewTrek\NEWTREK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sierras_3-D_Helicopter_Simulator_1987.zip"
for %%a in ("Sierra's 3-D Helicopter Simulator") do set FLDN=%%~a
for %%a in ("Sierras3\HELI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kronolog_-_The_Nazi_Paradox_1993.zip"
for %%a in ("Kronolog - The Nazi Paradox") do set FLDN=%%~a
for %%a in ("kronolog\KRONO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mickeys_Runaway_Zoo_1991.zip"
for %%a in ("Mickey's Runaway Zoo") do set FLDN=%%~a
for %%a in ("MickeysR\MICKEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cyber_Police_1996.zip"
for %%a in ("Cyber Police") do set FLDN=%%~a
for %%a in ("CyberPol\CL\CL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hanks_Quest_-_Victim_of_Society_2002.zip"
for %%a in ("Hank's Quest - Victim of Society") do set FLDN=%%~a
for %%a in ("hankques\HANKQST.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Panza_Kick_Boxing_1990.zip"
for %%a in ("Panza Kick Boxing") do set FLDN=%%~a
for %%a in ("PanzaKic\KICK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Sporting_News_Baseball_1988.zip"
for %%a in ("The Sporting News Baseball") do set FLDN=%%~a
for %%a in ("TheSport\Baseball.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Countdown_1990.zip"
for %%a in ("Countdown") do set FLDN=%%~a
for %%a in ("countdwn\count.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blind_Wars_1992.zip"
for %%a in ("Blind Wars") do set FLDN=%%~a
for %%a in ("blindwar\BLINDWAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"SuperSki_1988.zip"
for %%a in ("SuperSki") do set FLDN=%%~a
for %%a in ("SperSki\SUPERSKI.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizardry_VII_-_Crusaders_of_the_Dark_Servant_1992.zip"
for %%a in ("Wizardry VII - Crusaders of the Dark Servant") do set FLDN=%%~a
for %%a in ("wizar7\DS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pit-Fighter_1991.zip"
for %%a in ("Pit-Fighter") do set FLDN=%%~a
for %%a in ("PitFigh\PIT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Capone_1988.zip"
for %%a in ("Capone") do set FLDN=%%~a
for %%a in ("Capone\CAPONE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Soaring_Simulator_1998.zip"
for %%a in ("The Soaring Simulator") do set FLDN=%%~a
for %%a in ("TheSoari\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Grandest_Fleet_1994.zip"
for %%a in ("The Grandest Fleet") do set FLDN=%%~a
for %%a in ("TheGrand\GFLEET\TGFCDU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Corncob_Deluxe_1994.zip"
for %%a in ("Corncob Deluxe") do set FLDN=%%~a
for %%a in ("CorncobD\CORNCOB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Knights_of_the_Desert_-_The_North_African_Campaign_of_1941-43_1983.zip"
for %%a in ("Knight's of the Desert - The North African Campaign of 1941-43") do set FLDN=%%~a
for %%a in ("kotdnac\RUN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fantastic_Four_1986.zip"
for %%a in ("Fantastic Four") do set FLDN=%%~a
for %%a in ("fanfour\FANTFOUR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Solomons_Key_1988.zip"
for %%a in ("Solomon's Key") do set FLDN=%%~a
for %%a in ("solokey\solomon.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gapper_1986.zip"
for %%a in ("Gapper") do set FLDN=%%~a
for %%a in ("Gapper\GAPPER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Killing_Cloud_1991.zip"
for %%a in ("Killing Cloud") do set FLDN=%%~a
for %%a in ("KillingC\KILLING.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crime_and_Punishment_1984.zip"
for %%a in ("Crime & Punishment") do set FLDN=%%~a
for %%a in ("crimpun\Cap.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"UnReal_World_1994.zip"
for %%a in ("UnReal World") do set FLDN=%%~a
for %%a in ("unrealW\URW280\URW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zeliard_1990.zip"
for %%a in ("Zeliard") do set FLDN=%%~a
for %%a in ("zeliard\ZELIARD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wayne_Gretzky_Hockey_2_1991.zip"
for %%a in ("Wayne Gretzky Hockey 2") do set FLDN=%%~a
for %%a in ("WayneGH2\HOCKEY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"JRR_Tolkiens_Riders_of_Rohan_1991.zip"
for %%a in ("JRR Tolkien's Riders of Rohan") do set FLDN=%%~a
for %%a in ("jrrtror\ROHAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"International_Soccer_1994.zip"
for %%a in ("International Soccer") do set FLDN=%%~a
for %%a in ("IntSoc\is.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Robotron_-_2084_1983.zip"
for %%a in ("Robotron - 2084") do set FLDN=%%~a
for %%a in ("Robotron\ROBOTRON.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Battle_Master_1991.zip"
for %%a in ("Battle Master") do set FLDN=%%~a
for %%a in ("bmaster\BM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Big_Game_Fishing_1991.zip"
for %%a in ("Big Game Fishing") do set FLDN=%%~a
for %%a in ("BigGameF\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fisher-Price_-_Firehouse_Rescue_1988.zip"
for %%a in ("Fisher-Price - Firehouse Rescue") do set FLDN=%%~a
for %%a in ("Fisher-P\FIRE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Infiltrator_1987.zip"
for %%a in ("Infiltrator") do set FLDN=%%~a
for %%a in ("infil1\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Airball_1987.zip"
for %%a in ("Airball") do set FLDN=%%~a
for %%a in ("airball\AIRBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Munsters_1993.zip"
for %%a in ("The Munsters") do set FLDN=%%~a
for %%a in ("TheMunst\MST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Street_Sports_Baseball_1987.zip"
for %%a in ("Street Sports Baseball") do set FLDN=%%~a
for %%a in ("StrtSpBs\BALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Disc_1990.zip"
for %%a in ("Disc") do set FLDN=%%~a
for %%a in ("Disc\DISC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snack_Attack_II_1982.zip"
for %%a in ("Snack Attack II") do set FLDN=%%~a
for %%a in ("SnackAtt\SA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultima_III_-_Exodus_1983.zip"
for %%a in ("Ultima III - Exodus") do set FLDN=%%~a
for %%a in ("ultima3\ultima.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beyond_the_Titanic_1986.zip"
for %%a in ("Beyond the Titanic") do set FLDN=%%~a
for %%a in ("beytitan\BEYOND.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Solitaires_Journey_1992.zip"
for %%a in ("Solitaire's Journey") do set FLDN=%%~a
for %%a in ("solijour\SOLIT\SOLIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Starcross_1982.zip"
for %%a in ("Starcross") do set FLDN=%%~a
for %%a in ("starcros\frotz.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Round_42_1986.zip"
for %%a in ("Round 42") do set FLDN=%%~a
for %%a in ("Round42\ROUND42.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Extreme_Rise_of_the_Triad_1995.zip"
for %%a in ("Extreme Rise of the Triad") do set FLDN=%%~a
for %%a in ("ExtremeR\Rott\EXTREME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moon_Blaster_1990.zip"
for %%a in ("Moon Blaster") do set FLDN=%%~a
for %%a in ("MoonBlas\MB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Destroyer_1987.zip"
for %%a in ("Destroyer") do set FLDN=%%~a
for %%a in ("destro87\DESTROYE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dylan_Dog_-_Gli_Uccisori_1992.zip"
for %%a in ("Dylan Dog - Gli Uccisori") do set FLDN=%%~a
for %%a in ("DylanGli\DYLAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Demon_Stalkers_1988.zip"
for %%a in ("Demon Stalkers") do set FLDN=%%~a
for %%a in ("DemonSta\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Meteors_1986.zip"
for %%a in ("Tommy's Meteors") do set FLDN=%%~a
for %%a in ("TommysMe\METEORS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Station_Oblivion_1988.zip"
for %%a in ("Space Station Oblivion") do set FLDN=%%~a
for %%a in ("SpaceSta\oblivion.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Computer_Stocks_and_Bonds_1982.zip"
for %%a in ("Computer Stocks & Bonds") do set FLDN=%%~a
for %%a in ("compsab\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Aspetra_1996.zip"
for %%a in ("Aspetra") do set FLDN=%%~a
for %%a in ("aspetra\ASPETRA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Paratrooper_II_1999.zip"
for %%a in ("Paratrooper II") do set FLDN=%%~a
for %%a in ("Paratro2\PT22\PARATROE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Willy_The_Worm_1985.zip"
for %%a in ("Willy The Worm") do set FLDN=%%~a
for %%a in ("WilyWorm\WILLY.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Solar_Winds_-_Galaxy_1993.zip"
for %%a in ("Solar Winds - Galaxy") do set FLDN=%%~a
for %%a in ("solarwin\solar1\SOLAR1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Windwalker_1989.zip"
for %%a in ("Windwalker") do set FLDN=%%~a
for %%a in ("windwalk\WIND.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Fortress_1999.zip"
for %%a in ("Space Fortress") do set FLDN=%%~a
for %%a in ("SpaceFor\FORTRESS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ante-Up_at_The_Friday_Night_Poker_Club_1990.zip"
for %%a in ("Ante-Up at The Friday Night Poker Club") do set FLDN=%%~a
for %%a in ("Ante-Upa\FNPC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"3-Demon_1983.zip"
for %%a in ("3-Demon") do set FLDN=%%~a
for %%a in ("3Demon\Demon.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Amazon_1984.zip"
for %%a in ("Amazon") do set FLDN=%%~a
for %%a in ("amazont\AMZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Air_Trax_1983.zip"
for %%a in ("Air Trax") do set FLDN=%%~a
for %%a in ("AirTrax\AirTrax.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Merchant_Prince_1993.zip"
for %%a in ("Merchant Prince") do set FLDN=%%~a
for %%a in ("mercprin\RUNME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Amazon_Snake_1995.zip"
for %%a in ("Amazon Snake") do set FLDN=%%~a
for %%a in ("AmazonSn\AMAZON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Russian_Front_II_-_The_Kursk_Campaign_1990.zip"
for %%a in ("Russian Front II - The Kursk Campaign") do set FLDN=%%~a
for %%a in ("RussianF\R2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MicroLeague_Football_-_The_Coachs_Challenge_Deluxe_Edition_1992.zip"
for %%a in ("MicroLeague Football - The Coach's Challenge") do set FLDN=%%~a
for %%a in ("MicroLea\mlfoot2\FB2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eight_Ball_Deluxe_1993.zip"
for %%a in ("Eight Ball Deluxe") do set FLDN=%%~a
for %%a in ("EightBal\8BALLDLX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Last_Eichhof_1993.zip"
for %%a in ("The Last Eichhof") do set FLDN=%%~a
for %%a in ("TheLastE\BEER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Silverbrothers_1991.zip"
for %%a in ("Super Silverbrothers") do set FLDN=%%~a
for %%a in ("SuperSil\SIBROS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Prince_of_Evil_1993.zip"
for %%a in ("Prince of Evil") do set FLDN=%%~a
for %%a in ("PrinEvil\PLAY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hat_Trick_1987.zip"
for %%a in ("Hat Trick") do set FLDN=%%~a
for %%a in ("HatTrick\HAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Galaxy_Trek_1983.zip"
for %%a in ("Galaxy Trek") do set FLDN=%%~a
for %%a in ("GalaxyTr\TREKRUN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Perditions_Gate_1996.zip"
for %%a in ("Perdition's Gate") do set FLDN=%%~a
for %%a in ("Perditio\DOOM2\DOOM2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Unlimited_Adventures_1993.zip"
for %%a in ("Unlimited Adventures") do set FLDN=%%~a
for %%a in ("unlimadv\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"PacWorm_1982.zip"
for %%a in ("PacWorm") do set FLDN=%%~a
for %%a in ("PacWorm\worm.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fire_and_Forget_1988.zip"
for %%a in ("Fire and Forget") do set FLDN=%%~a
for %%a in ("FireandF\game.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Evolution_1983.zip"
for %%a in ("Evolution") do set FLDN=%%~a
for %%a in ("Evolutio\EVOL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jim_Hensons_Muppet_Adventure_No._1_-_Chaos_at_the_Carnival_1989.zip"
for %%a in ("Jim Henson's Muppet Adventure No. 1 - Chaos at the Carnival") do set FLDN=%%~a
for %%a in ("JimHenso\DUCK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Animal_Math_1986.zip"
for %%a in ("Animal Math") do set FLDN=%%~a
for %%a in ("AnimalMa\ANIMALS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Superstar_Ice_Hockey_1987.zip"
for %%a in ("Superstar Ice Hockey") do set FLDN=%%~a
for %%a in ("SperStaH\HOCKEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"SplayMaster_1996.zip"
for %%a in ("SplayMaster") do set FLDN=%%~a
for %%a in ("SplayMas\SPLAY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mech_Brigade_1987.zip"
for %%a in ("Mech Brigade") do set FLDN=%%~a
for %%a in ("mechbrig\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dino-Sorcerer_1990.zip"
for %%a in ("Dino-Sorcerer") do set FLDN=%%~a
for %%a in ("Dino-Sor\DINO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Radio_Baseball_1986.zip"
for %%a in ("Radio Baseball") do set FLDN=%%~a
for %%a in ("RadioBas\PLAYBALL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chinese_Checkers_1991.zip"
for %%a in ("Chinese Checkers") do set FLDN=%%~a
for %%a in ("chinchek\CHINESE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Skyfox_II_-_The_Cygnus_Conflict_1988.zip"
for %%a in ("Skyfox II - The Cygnus Conflict") do set FLDN=%%~a
for %%a in ("SkyfoxII\skyfox16.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rocket_Ranger_1988.zip"
for %%a in ("Rocket Ranger") do set FLDN=%%~a
for %%a in ("rockrang\EGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Indiana_Jones_in_Revenge_of_the_Ancients_1987.zip"
for %%a in ("Indiana Jones in Revenge of the Ancients") do set FLDN=%%~a
for %%a in ("indyanci\GAME.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hunchback_1988.zip"
for %%a in ("Hunchback") do set FLDN=%%~a
for %%a in ("Hunchbac\I.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chamber_of_the_Sci-Fi_Mutant_Priestess_1989.zip"
for %%a in ("Chamber of the Sci-Fi Mutant Priestess") do set FLDN=%%~a
for %%a in ("Kult\loader.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"50_Mission_Crush_1984.zip"
for %%a in ("50 Mission Crush") do set FLDN=%%~a
for %%a in ("50miss\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rosemary_Wests_House_of_Fortunes_1993.zip"
for %%a in ("Rosemary West's House of Fortunes") do set FLDN=%%~a
for %%a in ("Rosemary\ROSEMARY\ROSE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Les_Manley_in_-_Search_for_the_King_1990.zip"
for %%a in ("Les Manley in - Search for the King") do set FLDN=%%~a
for %%a in ("lmanking\king.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"HacX_1997.zip"
for %%a in ("HacX") do set FLDN=%%~a
for %%a in ("HacX\DOOM2\HACX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"15x15_1996.zip"
for %%a in ("15x15") do set FLDN=%%~a
for %%a in ("15x15\puzzle.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Monsters_of_Murdac_1987.zip"
for %%a in ("Monsters of Murdac") do set FLDN=%%~a
for %%a in ("murdac\MURDAC.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Treasure_Island_1985.zip"
for %%a in ("Treasure Island") do set FLDN=%%~a
for %%a in ("treasil\TRI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Guerrilla_War_1987.zip"
for %%a in ("Guerrilla War") do set FLDN=%%~a
for %%a in ("Guerrill\GUERILLA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Survival_in_New_York_City_1986.zip"
for %%a in ("Survival in New York City") do set FLDN=%%~a
for %%a in ("survnyc\NEWYORK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conquered_Kingdoms_1992.zip"
for %%a in ("Conquered Kingdoms") do set FLDN=%%~a
for %%a in ("conqking\start.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Castle_of_Kroz_1990.zip"
for %%a in ("Castle of Kroz") do set FLDN=%%~a
for %%a in ("castkroz\CASTLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Street_Ball_1993.zip"
for %%a in ("Street Ball") do set FLDN=%%~a
for %%a in ("StreetBa\start.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Sentry_1989.zip"
for %%a in ("The Sentry") do set FLDN=%%~a
for %%a in ("TheSentr\SENTINEL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Last_Half_of_Darkness_1989.zip"
for %%a in ("Last Half of Darkness") do set FLDN=%%~a
for %%a in ("lasthalf\lasthalf.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Battle_of_Antietam_1986.zip"
for %%a in ("Battle of Antietam") do set FLDN=%%~a
for %%a in ("bantietm\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Achipelagos_1989.zip"
for %%a in ("Achipelagos") do set FLDN=%%~a
for %%a in ("archipel\archi.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nyet_1988.zip"
for %%a in ("Nyet") do set FLDN=%%~a
for %%a in ("Nyet\NYET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moebius_-_The_Orb_of_Celestial_Harmony_1987.zip"
for %%a in ("Moebius - The Orb of Celestial Harmony") do set FLDN=%%~a
for %%a in ("moebius\MOEBIUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MicroLink_Yaht_1987.zip"
for %%a in ("MicroLink Yaht") do set FLDN=%%~a
for %%a in ("MLYaht\mlyaht.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Last_Action_Hero_1994.zip"
for %%a in ("Last Action Hero") do set FLDN=%%~a
for %%a in ("LastActi\LASTACT.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pyramids_of_Egypt_1989.zip"
for %%a in ("Pyramids of Egypt") do set FLDN=%%~a
for %%a in ("PyraEgyp\PYRAMIDS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Roboman_1989.zip"
for %%a in ("Roboman") do set FLDN=%%~a
for %%a in ("Roboman\ROBO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Midway_Campaign_1983.zip"
for %%a in ("Midway Campaign") do set FLDN=%%~a
for %%a in ("MidwayCa\midway.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"One-Nil_Soccer_Manager_1992.zip"
for %%a in ("One-Nil Soccer Manager") do set FLDN=%%~a
for %%a in ("One-NilS\run.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"H.U.R.L._1995.zip"
for %%a in ("H.U.R.L.") do set FLDN=%%~a
for %%a in ("HURL\H.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moraffs_World_1991.zip"
for %%a in ("Moraffs World") do set FLDN=%%~a
for %%a in ("morafwor\MW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Planets_Edge_-_The_Point_of_No_Return_1991.zip"
for %%a in ("Planet's Edge - The Point of No Return") do set FLDN=%%~a
for %%a in ("planedge\Pe.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Dam_Busters_1985.zip"
for %%a in ("The Dam Busters") do set FLDN=%%~a
for %%a in ("TheDamBu\damb.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gravity_Force_2000_2000.zip"
for %%a in ("Gravity Force") do set FLDN=%%~a
for %%a in ("GravFo2k\gf.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stick_Fighter_I_1991.zip"
for %%a in ("Stick Fighter I") do set FLDN=%%~a
for %%a in ("StickFi1\SFI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spyder_1983.zip"
for %%a in ("Spyder") do set FLDN=%%~a
for %%a in ("Spyder\AUTO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Pack_Rat_1992.zip"
for %%a in ("The Pack Rat") do set FLDN=%%~a
for %%a in ("ThePackR\PACKRAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Freshwater_Fishing_Simulator_1995.zip"
for %%a in ("Freshwater Fishing Simulator") do set FLDN=%%~a
for %%a in ("Freshwat\FISHING.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rules_of_Engagement_1991.zip"
for %%a in ("Rules of Engagement") do set FLDN=%%~a
for %%a in ("RuleEng1\ROEMAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Veritech_-_Variable_Flight_Simulator_1994.zip"
for %%a in ("Veritech - Variable Flight Simulator") do set FLDN=%%~a
for %%a in ("veritech\VERITECH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hyperspeed_1991.zip"
for %%a in ("Hyperspeed") do set FLDN=%%~a
for %%a in ("Hyperspe\HYPERSPD.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dawn_Raider_1990.zip"
for %%a in ("Dawn Raider") do set FLDN=%%~a
for %%a in ("DawnRaid\DR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arnhem_-_The_Market_Garden_Operation_1988.zip"
for %%a in ("Arnhem - The 'Market Garden' Operation") do set FLDN=%%~a
for %%a in ("arnhem\ARNHEM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eddy_and_Co_1995.zip"
for %%a in ("Eddy & Co") do set FLDN=%%~a
for %%a in ("EddyCo\EISMANN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Baal_1989.zip"
for %%a in ("Baal") do set FLDN=%%~a
for %%a in ("Baal\BAAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Best_of_the_Best_Championship_Karate_1992.zip"
for %%a in ("Best of the Best Championship Karate") do set FLDN=%%~a
for %%a in ("Bestofth\KICK.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sands_of_Fire_1990.zip"
for %%a in ("Sands of Fire") do set FLDN=%%~a
for %%a in ("SandsofF\SOF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tetripz_1998.zip"
for %%a in ("Tetripz") do set FLDN=%%~a
for %%a in ("Tetripz\TETRIPZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Soccer_Game_1989.zip"
for %%a in ("The Soccer Game") do set FLDN=%%~a
for %%a in ("TheSocce\SOCCER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fire_Brigade_-_The_Battle_for_Kiev_1943_1989.zip"
for %%a in ("Fire Brigade - The Battle for Kiev 1943") do set FLDN=%%~a
for %%a in ("firebrig\FB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Elevators_from_Hell_1992.zip"
for %%a in ("Elevators from Hell") do set FLDN=%%~a
for %%a in ("ElevHell\HELL12.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cargo_Bay_Deluxe_1995.zip"
for %%a in ("Cargo Bay Deluxe") do set FLDN=%%~a
for %%a in ("cargodlx\CARGOBAY\CARGO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bubble_Dizzy_1993.zip"
for %%a in ("Bubble Dizzy") do set FLDN=%%~a
for %%a in ("BubbleDi\BUBBLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nova_9_-_Return_of_Gir_Draxon_1991.zip"
for %%a in ("Nova 9 - Return of Gir Draxon") do set FLDN=%%~a
for %%a in ("Nova9Ret\NOVA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Universe_1994.zip"
for %%a in ("Universe") do set FLDN=%%~a
for %%a in ("univcore\UNIVERSE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Return_of_Medusa_1991.zip"
for %%a in ("The Return of Medusa") do set FLDN=%%~a
for %%a in ("tromed\ROM.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"African_Desert_Campaign_1986.zip"
for %%a in ("African Desert Campaign") do set FLDN=%%~a
for %%a in ("afridscp\AFRICA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"L.A._Law_-_The_Computer_Game_1992.zip"
for %%a in ("L.A. Law - The Computer Game") do set FLDN=%%~a
for %%a in ("lalaw\LALAW.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Hammer_1994.zip"
for %%a in ("Star Hammer") do set FLDN=%%~a
for %%a in ("StarHamm\HAMMER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jetman_1991.zip"
for %%a in ("Jetman") do set FLDN=%%~a
for %%a in ("Jetman\JET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"International_Tennis_Open_1994.zip"
for %%a in ("International Tennis Open") do set FLDN=%%~a
for %%a in ("IntTennO\TENA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Advanced_NetWars_1997.zip"
for %%a in ("Advanced NetWars") do set FLDN=%%~a
for %%a in ("ADVNetW\netwars.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Twilight_Treasures_1989.zip"
for %%a in ("Twilight Treasures") do set FLDN=%%~a
for %%a in ("Twilight\twilight.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heros_Heart_1992.zip"
for %%a in ("Hero's Heart") do set FLDN=%%~a
for %%a in ("herohert\HERO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Block-Man_1_1994.zip"
for %%a in ("Block-Man 1") do set FLDN=%%~a
for %%a in ("blkman1\BMAN1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Armada_1989.zip"
for %%a in ("Armada") do set FLDN=%%~a
for %%a in ("armada\ARMADA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Iron_Cross_1994.zip"
for %%a in ("Iron Cross") do set FLDN=%%~a
for %%a in ("ironcros\IC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"5th_Fleet_The_1994.zip"
for %%a in ("5th Fleet, The") do set FLDN=%%~a
for %%a in ("5thflet\FLEET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"UMS_II_-_Nations_at_War_1990.zip"
for %%a in ("UMS II - Nations at War") do set FLDN=%%~a
for %%a in ("UMSIINa\ums2\Umsii.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"African_Raiders-01_1989.zip"
for %%a in ("African Raiders-01") do set FLDN=%%~a
for %%a in ("AfricanR\LOADER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Night_Mission_Pinball_v3.0_1988.zip"
for %%a in ("Night Mission Pinball") do set FLDN=%%~a
for %%a in ("NightMis\PINBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fallen_Angel_1989.zip"
for %%a in ("Fallen Angel") do set FLDN=%%~a
for %%a in ("FallenAn\ANGEL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Power_Drive_1994.zip"
for %%a in ("Power Drive") do set FLDN=%%~a
for %%a in ("PowDrift\PD.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eardis_-_Revolution_Force_1994.zip"
for %%a in ("Eardis - Revolution Force") do set FLDN=%%~a
for %%a in ("eardis\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gladiator_1995.zip"
for %%a in ("Gladiator") do set FLDN=%%~a
for %%a in ("Gladiato\glad\GLAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jesus_of_Nazareth_2005.zip"
for %%a in ("Jesus of Nazareth") do set FLDN=%%~a
for %%a in ("jesonaz\jesus.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Battlestorm_1990.zip"
for %%a in ("Battlestorm") do set FLDN=%%~a
for %%a in ("BStorm\STORM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"MoleZ_1997.zip"
for %%a in ("MoleZ") do set FLDN=%%~a
for %%a in ("MoleZ\MOLEZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kick_Off_2_1990.zip"
for %%a in ("Kick Off 2") do set FLDN=%%~a
for %%a in ("KickOff2\PROG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Framed_1995.zip"
for %%a in ("Framed") do set FLDN=%%~a
for %%a in ("framadv\FRAMED.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pete_Rose_Pennant_Fever_1988.zip"
for %%a in ("Pete Rose Pennant Fever") do set FLDN=%%~a
for %%a in ("PeteRose\EGAROSE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dimos_Quest_1993.zip"
for %%a in ("Dimo's Quest") do set FLDN=%%~a
for %%a in ("dimoques\DIMO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Deep_Space_Operation_Copernicus_1987.zip"
for %%a in ("Deep Space Operation Copernicus") do set FLDN=%%~a
for %%a in ("DeepSpac\DS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"VGA_Sharks_1990.zip"
for %%a in ("VGA Sharks") do set FLDN=%%~a
for %%a in ("VGAShark\VSHARKS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Amulet_of_Yendor_1985.zip"
for %%a in ("Amulet of Yendor") do set FLDN=%%~a
for %%a in ("yendor\AMULET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"F_Godmom_1991.zip"
for %%a in ("F Godmom") do set FLDN=%%~a
for %%a in ("fgodmom\fgodmom.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Slugger_1986.zip"
for %%a in ("The Slugger") do set FLDN=%%~a
for %%a in ("TheSlugg\SLUGGER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizard_of_Oz_1985.zip"
for %%a in ("Wizard of Oz") do set FLDN=%%~a
for %%a in ("wizoz\WOZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Combots_1983.zip"
for %%a in ("Combots") do set FLDN=%%~a
for %%a in ("combots\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tag_Team_Wrestling_1986.zip"
for %%a in ("Tag Team Wrestling") do set FLDN=%%~a
for %%a in ("TagTeamW\TTW.img") do set EMUCMD=%%~a
call :RUN
exit /b
:"Aro_1996.zip"
for %%a in ("Aro") do set FLDN=%%~a
for %%a in ("Aro\ARO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultimate_Cards_1992.zip"
for %%a in ("Ultimate Cards") do set FLDN=%%~a
for %%a in ("UltimCard\UC\UC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_Cabal_1997.zip"
for %%a in ("Alien Cabal") do set FLDN=%%~a
for %%a in ("AlienCab\ACABAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Major_Indoor_Soccer_League_1989.zip"
for %%a in ("Major Indoor Soccer League") do set FLDN=%%~a
for %%a in ("MajorInd\LEAGUE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dragon_Lord_1990.zip"
for %%a in ("Dragon Lord") do set FLDN=%%~a
for %%a in ("dragonlo\DLORD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crystals_of_Arborea_1990.zip"
for %%a in ("Crystals of Arborea") do set FLDN=%%~a
for %%a in ("cryarbor\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Football_1986.zip"
for %%a in ("Football") do set FLDN=%%~a
for %%a in ("football\FOOTBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pocket_Rockets_1989.zip"
for %%a in ("Pocket Rockets") do set FLDN=%%~a
for %%a in ("PocketRo\PR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"3-D_Tic-Tac-Toe_1992.zip"
for %%a in ("3-D Tic-Tac-Toe") do set FLDN=%%~a
for %%a in ("3dttt\3DTT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Protostar_-_War_on_the_Frontier_1993.zip"
for %%a in ("Protostar - War on the Frontier") do set FLDN=%%~a
for %%a in ("protost\proto.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Magic_Candle_2_-_The_Four_and_Forty_1991.zip"
for %%a in ("The Magic Candle 2 - The Four and Forty") do set FLDN=%%~a
for %%a in ("magcand2\MC2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Novatron_1982.zip"
for %%a in ("Novatron") do set FLDN=%%~a
for %%a in ("Novatron\Novatron.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spit_Wad_Willy_1993.zip"
for %%a in ("Spit Wad Willy") do set FLDN=%%~a
for %%a in ("SpitWadW\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stardust_1995.zip"
for %%a in ("Stardust") do set FLDN=%%~a
for %%a in ("StrDst95\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Loader_Larry_1992.zip"
for %%a in ("Loader Larry") do set FLDN=%%~a
for %%a in ("loadlary\LOADLAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultima_II_-_Revenge_of_the_Enchantress_1983.zip"
for %%a in ("Ultima II - Revenge of the Enchantress") do set FLDN=%%~a
for %%a in ("ultima2\ultimaii.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Homey_D_Clown_1993.zip"
for %%a in ("Homey D Clown") do set FLDN=%%~a
for %%a in ("HOMEY\HOMEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pako_1994.zip"
for %%a in ("Pako") do set FLDN=%%~a
for %%a in ("Pako\PAKO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Circuitry_1992.zip"
for %%a in ("Circuitry") do set FLDN=%%~a
for %%a in ("circuity\CIRCUIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Killerball_1991.zip"
for %%a in ("Killerball") do set FLDN=%%~a
for %%a in ("Killerba\KILLER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"D-Day_1992.zip"
for %%a in ("D-Day") do set FLDN=%%~a
for %%a in ("dday\DDAY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cohort_2_1993.zip"
for %%a in ("Cohort 2") do set FLDN=%%~a
for %%a in ("cohort2\COHORT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"On_the_Ball_-_World_Cup_Edition_1993.zip"
for %%a in ("On the Ball - World Cup Edition") do set FLDN=%%~a
for %%a in ("OntheBal\WCE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Brickwar_1987.zip"
for %%a in ("Brickwar") do set FLDN=%%~a
for %%a in ("brickwar\BRICKWAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wurm_1993.zip"
for %%a in ("Wurm") do set FLDN=%%~a
for %%a in ("Wurm\WURM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"FriendlyWare_PC_Introductory_Set_1983.zip"
for %%a in ("FriendlyWare PC Introductory Set") do set FLDN=%%~a
for %%a in ("friend2\AUTO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"7_Colors_1991.zip"
for %%a in ("7 Colors") do set FLDN=%%~a
for %%a in ("7colors\7COLORS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crossfire_1983.zip"
for %%a in ("Crossfire") do set FLDN=%%~a
for %%a in ("Crossfir\CROSSFIR.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Breakline_1994.zip"
for %%a in ("Breakline") do set FLDN=%%~a
for %%a in ("Breaklin\BRKLINE\BL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Golden_Basket_1990.zip"
for %%a in ("Golden Basket") do set FLDN=%%~a
for %%a in ("GoldenBa\BASKET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"XQuest_1994.zip"
for %%a in ("XQuest") do set FLDN=%%~a
for %%a in ("XQuest\XQUEST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Turbo_1987.zip"
for %%a in ("Turbo") do set FLDN=%%~a
for %%a in ("Turbo\TURBO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grailquest_1989.zip"
for %%a in ("Grailquest") do set FLDN=%%~a
for %%a in ("gquest\GQ.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Galactic_Gladiators_1983.zip"
for %%a in ("Galactic Gladiators") do set FLDN=%%~a
for %%a in ("galaglad\GALACTIC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Halls_of_Montezuma_-_A_Battle_History_of_the_United_States_Marine_Corps_1990.zip"
for %%a in ("Halls of Montezuma - A Battle History of the United States Marine Corps") do set FLDN=%%~a
for %%a in ("hallmont\HOM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Manchester_United_The_Double_1995.zip"
for %%a in ("Manchester United The Double") do set FLDN=%%~a
for %%a in ("ManchUtD\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Aquarius_-_An_Aquatic_Experience_2007.zipcall :RUN
exit /b
:
o"Aquarius - An Aquatic Experience") do set FLDN=%%~a
for %%a in ("Aquarius\SCIV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wild_West_World_1992.zip"
for %%a in ("Wild West World") do set FLDN=%%~a
for %%a in ("WildWest\WWW.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"XF5700_Mantis_Experimental_Fighter_1992.zip"
for %%a in ("XF5700 Mantis Experimental Fighter") do set FLDN=%%~a
for %%a in ("XF5700Ma\MANTIS\MANTIS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moon_Bugs_1983.zip"
for %%a in ("Moon Bugs") do set FLDN=%%~a
for %%a in ("MoonBugs\MOONIT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Street_Fighting_Man_1989.zip"
for %%a in ("Street Fighting Man") do set FLDN=%%~a
for %%a in ("StreetFi\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hong_Gildong-jeon_2_1995.zip"
for %%a in ("Hong Gildong-jeon 2") do set FLDN=%%~a
for %%a in ("HongGild\HGJ2\H2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Future_Classics_1990.zip"
for %%a in ("Future Classics") do set FLDN=%%~a
for %%a in ("futclass\A.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Backgammon_1984.zip"
for %%a in ("Backgammon") do set FLDN=%%~a
for %%a in ("backgamm\bgammon.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"M1_Tank_Platoon_1989.zip"
for %%a in ("M1 Tank Platoon") do set FLDN=%%~a
for %%a in ("m1tank\TANK.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Dragon_Sword_1990.zip"
for %%a in ("The Dragon Sword") do set FLDN=%%~a
for %%a in ("dsword\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rendezvous_with_Rama_1984.zip"
for %%a in ("Rendezvous with Rama") do set FLDN=%%~a
for %%a in ("rendrama\RDV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Honeymooners_1988.zip"
for %%a in ("The Honeymooners") do set FLDN=%%~a
for %%a in ("TheHoney\HM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"FaceMaker_1982.zip"
for %%a in ("FaceMaker") do set FLDN=%%~a
for %%a in ("facemak\FMK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trolls_Tale_1984.zip"
for %%a in ("Troll's Tale") do set FLDN=%%~a
for %%a in ("troltale\TROLL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Logo_1990.zip"
for %%a in ("Logo") do set FLDN=%%~a
for %%a in ("logo\LOGO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Powball_1997.zip"
for %%a in ("Powball") do set FLDN=%%~a
for %%a in ("Powball\POWBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nogginknockers_2_1996.zip"
for %%a in ("Nogginknockers 2") do set FLDN=%%~a
for %%a in ("Nogginkn\NOGGIN2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Brutal_Sports_Football_1993.zip"
for %%a in ("Brutal Sports Football") do set FLDN=%%~a
for %%a in ("BrutalSp\NEW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"TRON_-_Light_Cycles_1992.zip"
for %%a in ("TRON - Light Cycles") do set FLDN=%%~a
for %%a in ("TRONLigh\TRON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rambo_-_First_Blood_Part_II_1985.zip"
for %%a in ("Rambo - First Blood Part II") do set FLDN=%%~a
for %%a in ("rambo1st\GAME.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ninja_Rabbits_1993.zip"
for %%a in ("Ninja Rabbits") do set FLDN=%%~a
for %%a in ("NinjaRab\joy.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"United_States_Quiz_1993.zip"
for %%a in ("United States Quiz") do set FLDN=%%~a
for %%a in ("UnitedSt\STATES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Subtrade_-_Return_to_Irata_1992.zip"
for %%a in ("Subtrade - Return to Irata") do set FLDN=%%~a
for %%a in ("Subtrade\SUBTRADE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Airstrike_USA_1990.zip"
for %%a in ("Airstrike USA") do set FLDN=%%~a
for %%a in ("Airstrik\USA1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Serpentine_1982.zip"
for %%a in ("Serpentine") do set FLDN=%%~a
for %%a in ("Serpenti\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Psi-5_Trading_Company_1986.zip"
for %%a in ("Psi-5 Trading Company") do set FLDN=%%~a
for %%a in ("Psi-5Tra\PSI5.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Legend_of_Myra_1993.zip"
for %%a in ("Legend of Myra") do set FLDN=%%~a
for %%a in ("Legendof\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Theme_Park_Mystery_1990.zip"
for %%a in ("Theme Park Mystery") do set FLDN=%%~a
for %%a in ("thempamy\TPARKB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Altered_Destiny_1990.zip"
for %%a in ("Altered Destiny") do set FLDN=%%~a
for %%a in ("ADestiny\ad.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Autobots_1989.zip"
for %%a in ("Autobots") do set FLDN=%%~a
for %%a in ("Autobots\autobots.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Championship_Golf_-_The_Great_Courses_of_the_World_-_Volume_I_Pebble_Beach_1986.zip"
for %%a in ("Championship Golf - The Great Courses of the World - Volume I Pebble Beach") do set FLDN=%%~a
for %%a in ("chamgolf\GOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Laser_Light_1994.zip"
for %%a in ("Laser Light") do set FLDN=%%~a
for %%a in ("laserlit\Ll.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sleuth_-_A_Murder_Mystery_1983.zip"
for %%a in ("Sleuth - A Murder Mystery") do set FLDN=%%~a
for %%a in ("sleuthmu\SLEUTH0.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Corncob_3-D_The_Other_Worlds_Campaign_1992.zip"
for %%a in ("Corncob 3-D The Other Worlds Campaign") do set FLDN=%%~a
for %%a in ("Corncob3\CORNCOB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rodneys_Funscreen_1992.zip"
for %%a in ("Rodney's Funscreen") do set FLDN=%%~a
for %%a in ("RodneysF\RODNEYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ulysses_and_the_Golden_Fleece_1982.zip"
for %%a in ("Ulysses and the Golden Fleece") do set FLDN=%%~a
for %%a in ("ulygold\START.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pea_Shootin_Pete_1994.zip"
for %%a in ("Pea Shootin' Pete") do set FLDN=%%~a
for %%a in ("PeaShoot\PETE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"BarneySplat_1993.zip"
for %%a in ("BarneySplat") do set FLDN=%%~a
for %%a in ("BarneySp\BS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Motorbike_Madness_1988.zip"
for %%a in ("Motorbike Madness") do set FLDN=%%~a
for %%a in ("Motorbik\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snarf_1988.zip"
for %%a in ("Snarf") do set FLDN=%%~a
for %%a in ("Snarf\SNARF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shawl_1986.zip"
for %%a in ("Shawl") do set FLDN=%%~a
for %%a in ("Shawl\SHAWL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Crusader_1994.zip"
for %%a in ("Operation Crusader") do set FLDN=%%~a
for %%a in ("OpCrusad\OpCrusad\CRUSADER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Inside_Trader_The_Authentic_Stock_Trading_Game_1987.zip"
for %%a in ("Inside Trader The Authentic Stock Trading Game") do set FLDN=%%~a
for %%a in ("InsideTr\TRADER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"S-Tetris_1991.zip"
for %%a in ("S-Tetris") do set FLDN=%%~a
for %%a in ("suptris\ST.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Patton_Strikes_Back_-_The_Battle_of_the_Bulge_1991.zip"
for %%a in ("Patton Strikes Back - The Battle of the Bulge") do set FLDN=%%~a
for %%a in ("PattonSt\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rescue_Rover_2_1991.zip"
for %%a in ("Rescue Rover 2") do set FLDN=%%~a
for %%a in ("RescueR2\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Never_Mind_1989.zip"
for %%a in ("Never Mind") do set FLDN=%%~a
for %%a in ("NeverMin\NM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"John_Elways_Quarterback_1988.zip"
for %%a in ("John Elway's Quarterback") do set FLDN=%%~a
for %%a in ("JohnElwa\QBACK.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Ages_1991.zip"
for %%a in ("Dark Ages") do set FLDN=%%~a
for %%a in ("DarkAges\1\DA1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conquest_1983_1983.zip"
for %%a in ("Conquest") do set FLDN=%%~a
for %%a in ("Conquest\CONQUEST.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Roller_Coaster_Rumbler_1990.zip"
for %%a in ("Roller Coaster Rumbler") do set FLDN=%%~a
for %%a in ("RollerCo\ROLLER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Corporation_1991.zip"
for %%a in ("Corporation") do set FLDN=%%~a
for %%a in ("Corporat\CORP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pharaohs_Tomb_1990.zip"
for %%a in ("Pharaoh's Tomb") do set FLDN=%%~a
for %%a in ("PharaohT\PTOMB1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"VC_1983.zip"
for %%a in ("VC") do set FLDN=%%~a
for %%a in ("vc\vc.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Break_Machine_1995.zip"
for %%a in ("Break Machine") do set FLDN=%%~a
for %%a in ("BreakMac\BM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Galactic_Battle_1990.zip"
for %%a in ("Galactic Battle") do set FLDN=%%~a
for %%a in ("GalBatt\GB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dragonworld_1984.zip"
for %%a in ("Dragonworld") do set FLDN=%%~a
for %%a in ("dragworl\DGW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gazza_II_1991.zip"
for %%a in ("Gazza II") do set FLDN=%%~a
for %%a in ("gazza2\GAZZA2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"StarBlade_1990.zip"
for %%a in ("StarBlade") do set FLDN=%%~a
for %%a in ("starbld\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"World_Class_Soccer_1990.zip"
for %%a in ("World Class Soccer") do set FLDN=%%~a
for %%a in ("WCSoc\SOCCER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kid_1996.zip"
for %%a in ("Kid") do set FLDN=%%~a
for %%a in ("Kid\kid.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Return_of_the_Phantom_1993.zip"
for %%a in ("Return of the Phantom") do set FLDN=%%~a
for %%a in ("rphantom\opera.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Champions_of_Zulula_1994.zip"
for %%a in ("Champions of Zulula") do set FLDN=%%~a
for %%a in ("ChampZul\ZULULA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Submarine_1989.zip"
for %%a in ("Submarine") do set FLDN=%%~a
for %%a in ("Submarin\SUB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sinbad_and_the_Throne_of_the_Falcon_1988.zip"
for %%a in ("Sinbad and the Throne of the Falcon") do set FLDN=%%~a
for %%a in ("sinbadtf\SB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eamon_1988.zip"
for %%a in ("Eamon") do set FLDN=%%~a
for %%a in ("EAMONDX\EAMON.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dungeon_of_Shalan_1988.zip"
for %%a in ("Dungeon of Shalan") do set FLDN=%%~a
for %%a in ("dshalan\SHALAN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Denarius_Avaricius_Sextus_1992.zip"
for %%a in ("Denarius Avaricius Sextus") do set FLDN=%%~a
for %%a in ("sextus\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Philosophers_Quest_1982.zip"
for %%a in ("Philosopher's Quest") do set FLDN=%%~a
for %%a in ("philos\PQUEST.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Downhill_Challenge_1989.zip"
for %%a in ("Downhill Challenge") do set FLDN=%%~a
for %%a in ("Downhill\DC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ducks_1998.zip"
for %%a in ("Ducks") do set FLDN=%%~a
for %%a in ("ducks\Ducks.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_Worlds_1989.zip"
for %%a in ("Alien Worlds") do set FLDN=%%~a
for %%a in ("AlienWor\ALIEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kwik_Snax_1993.zip"
for %%a in ("Kwik Snax") do set FLDN=%%~a
for %%a in ("KwikSnax\KWIKSNAX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Skunny_-_In_The_Wild_West_1993.zip"
for %%a in ("Skunny - In The Wild West") do set FLDN=%%~a
for %%a in ("SkunnyIn\WILDWEST\WILDWEST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"BipBop_II_1993.zip"
for %%a in ("BipBop II") do set FLDN=%%~a
for %%a in ("BipBopII\BIPBOP2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conflict_-_Middle_East_1991.zip"
for %%a in ("Conflict - Middle East") do set FLDN=%%~a
for %%a in ("confme\CONFLICT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jet_1985.zip"
for %%a in ("Jet") do set FLDN=%%~a
for %%a in ("Jet\JET.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mega_Math_1992.zip"
for %%a in ("Mega Math") do set FLDN=%%~a
for %%a in ("MegaMath\MEGAMATH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dinosaur_Predators_1996.zip"
for %%a in ("Dinosaur Predators") do set FLDN=%%~a
for %%a in ("dinopred\DP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Traders_1984.zip"
for %%a in ("Star Traders") do set FLDN=%%~a
for %%a in ("StarTrad\trade.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Last_Days_of_Doom_1988.zip"
for %%a in ("Last Days of Doom") do set FLDN=%%~a
for %%a in ("lastdoom\LASTDAYS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sword_of_Honour_1993.zip"
for %%a in ("Sword of Honour") do set FLDN=%%~a
for %%a in ("SwordofH\SOH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Freakin_Funky_Fuzzballs_1990.zip"
for %%a in ("Freakin Funky Fuzzballs") do set FLDN=%%~a
for %%a in ("freakff\FFF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Midway_-_The_Battle_that_Doomed_Japan_1989.zip"
for %%a in ("Midway - The Battle that Doomed Japan") do set FLDN=%%~a
for %%a in ("MidwayT\ACTION.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Rocks_1987.zip"
for %%a in ("Tommy's Rocks") do set FLDN=%%~a
for %%a in ("TommysRo\ROCKS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Deep_Sea_Diver_1991.zip"
for %%a in ("Deep Sea Diver") do set FLDN=%%~a
for %%a in ("deepsead\DIVER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Merlin_Challenge_1993.zip"
for %%a in ("Merlin Challenge") do set FLDN=%%~a
for %%a in ("MerlinCh\merlin.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Onesimus_-_A_Quest_for_Freedom_1992.zip"
for %%a in ("Onesimus - A Quest for Freedom") do set FLDN=%%~a
for %%a in ("Onesimus\ONESIMUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizard_Wars_1988.zip"
for %%a in ("Wizard Wars") do set FLDN=%%~a
for %%a in ("wizawars\WW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beneath_Apple_Manor_1978.zip"
for %%a in ("Beneath Apple Manor") do set FLDN=%%~a
for %%a in ("appman\apple.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"DND_1986.zip"
for %%a in ("DND") do set FLDN=%%~a
for %%a in ("dnd\DND.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rules_of_Engagement_2_1993.zip"
for %%a in ("Rules of Engagement 2") do set FLDN=%%~a
for %%a in ("RuleEng2\ROE2MAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Earthrise_1990.zip"
for %%a in ("Earthrise") do set FLDN=%%~a
for %%a in ("Earthris\EARTHRIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vigilance_on_Talos_V_1996.zip"
for %%a in ("Vigilance on Talos V") do set FLDN=%%~a
for %%a in ("Vigilanc\VIG1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Computer_Underground_1993.zip"
for %%a in ("Computer Underground") do set FLDN=%%~a
for %%a in ("compundr\CU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rock_Man_1994.zip"
for %%a in ("Rock Man") do set FLDN=%%~a
for %%a in ("RockMan\ROCKMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"tyrian2000.zip"
for %%a in ("Tyrian 2000") do set FLDN=%%~a
for %%a in ("tyrian.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"International_Athletics_1992.zip"
for %%a in ("International Athletics") do set FLDN=%%~a
for %%a in ("IntAthl\ATHLETIC.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Izmir_1995.zip"
for %%a in ("Izmir") do set FLDN=%%~a
for %%a in ("Izmir\Izmir\IZMIR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Murder_Club_1991.zip"
for %%a in ("Murder Club") do set FLDN=%%~a
for %%a in ("murdclub\MCLUB.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Seymour_Goes_to_Hollywood_1993.zip"
for %%a in ("Seymour Goes to Hollywood") do set FLDN=%%~a
for %%a in ("SeymourG\SEYMOUR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Jupiter_Jet_1987.zip"
for %%a in ("Tommy's Jupiter Jet") do set FLDN=%%~a
for %%a in ("TommysJu\JJET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Lifts_1986.zip"
for %%a in ("Tommy's Lifts") do set FLDN=%%~a
for %%a in ("TommysLi\LIFTS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Universe_2_1989.zip"
for %%a in ("Universe 2") do set FLDN=%%~a
for %%a in ("univ2\UNIVERS2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Scramble_1990.zip"
for %%a in ("Scramble") do set FLDN=%%~a
for %%a in ("Scramble\scrabble.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Discovering_America_1994.zip"
for %%a in ("Discovering America") do set FLDN=%%~a
for %%a in ("Discover\DISCOVER\DISCOVER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eden_Blues_1987.zip"
for %%a in ("Eden Blues") do set FLDN=%%~a
for %%a in ("edenblue\EDEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crusher_1991.zip"
for %%a in ("Crusher") do set FLDN=%%~a
for %%a in ("crusher\CRUSHER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chagunitzu_1990.zip"
for %%a in ("Chagunitzu") do set FLDN=%%~a
for %%a in ("chagunit\CHAG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Starglider_2_1989.zip"
for %%a in ("Starglider 2") do set FLDN=%%~a
for %%a in ("Strglid2\SG2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rings_of_Medusa_2_1991.zip"
for %%a in ("Rings of Medusa 2") do set FLDN=%%~a
for %%a in ("ROM2\ROM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Strike_Aces_1990.zip"
for %%a in ("Strike Aces") do set FLDN=%%~a
for %%a in ("StrikeAc\STRIKE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blue_Angels_Formation_Flight_Simulation_1989.zip"
for %%a in ("Blue Angels Formation Flight Simulation") do set FLDN=%%~a
for %%a in ("BlueAnge\BA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"AUTS_-_The_Ultimate_Stress_Relief_Game_1995.zip"
for %%a in ("AUTS - The Ultimate Stress Relief Game") do set FLDN=%%~a
for %%a in ("AUTSThe\AUTS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tunnels_and_Trolls_-_Crusaders_of_Khazan_1990.zip"
for %%a in ("Tunnels & Trolls - Crusaders of Khazan") do set FLDN=%%~a
for %%a in ("tunntrol\tnt.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Plague_of_the_Moon_1994.zip"
for %%a in ("Plague of the Moon") do set FLDN=%%~a
for %%a in ("plagmoon\plague.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"States_and_Capitals_1988.zip"
for %%a in ("States and Capitals") do set FLDN=%%~a
for %%a in ("Statesan\QUIZPRES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"James_Bond_007_-_Goldfinger_1986.zip"
for %%a in ("James Bond 007 - Goldfinger") do set FLDN=%%~a
for %%a in ("bondgold\GAME.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Up_n_Down_1987.zip"
for %%a in ("Up 'n Down") do set FLDN=%%~a
for %%a in ("UpnDown\upndown.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Block-Man_2_1995.zip"
for %%a in ("Block-Man 2") do set FLDN=%%~a
for %%a in ("blkman2\BMAN2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chicago_90_1989.zip"
for %%a in ("Chicago 90") do set FLDN=%%~a
for %%a in ("Chicago9\CHICA_35.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Egg_1986.zip"
for %%a in ("Tommy's Egg") do set FLDN=%%~a
for %%a in ("TommysEg\EGG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lala_Prologue_2012.zip"
for %%a in ("Lala Prologue") do set FLDN=%%~a
for %%a in ("lalapro\LALA\LALA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sea_Quest_1992.zip"
for %%a in ("Sea Quest") do set FLDN=%%~a
for %%a in ("SeaQuest\SEAQUEST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Warship_1988.zip"
for %%a in ("Warship") do set FLDN=%%~a
for %%a in ("Warship\WARSHIP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lancelot_1988.zip"
for %%a in ("Lancelot") do set FLDN=%%~a
for %%a in ("lancelot\menu.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bones_-_The_Game_of_the_Haunted_Mansion_1991.zip"
for %%a in ("Bones - The Game of the Haunted Mansion") do set FLDN=%%~a
for %%a in ("boneshm\BONES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cruel_World_1993.zip"
for %%a in ("Cruel World") do set FLDN=%%~a
for %%a in ("CruelWor\CRUEL.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mind_Prober_1984.zip"
for %%a in ("Mind Prober") do set FLDN=%%~a
for %%a in ("MindProb\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sesame_Street_-_Letter-Go-Round_1988.zip"
for %%a in ("Sesame Street - Letter-Go-Round") do set FLDN=%%~a
for %%a in ("SesameL\CTW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Amarillo_Slim_Dealers_Choice_1991.zip"
for %%a in ("Amarillo Slim Dealer's Choice") do set FLDN=%%~a
for %%a in ("Amarillo\poker.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fate_1996.zip"
for %%a in ("Fate") do set FLDN=%%~a
for %%a in ("fatedemo\FATE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Flying_Tigers_1994.zip"
for %%a in ("Flying Tigers") do set FLDN=%%~a
for %%a in ("FlyingTi\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Red_Lightning_1989.zip"
for %%a in ("Red Lightning") do set FLDN=%%~a
for %%a in ("RedLight\RL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vengeance_of_Excalibur_1991.zip"
for %%a in ("Vengeance of Excalibur") do set FLDN=%%~a
for %%a in ("vengexca\VEX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Monster_Math_1983.zip"
for %%a in ("Monster Math") do set FLDN=%%~a
for %%a in ("MonsterM\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Murder_on_the_Zinderneuf_1984.zip"
for %%a in ("Murder on the Zinderneuf") do set FLDN=%%~a
for %%a in ("murdzind\MURDER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hera_-_Sword_of_Rhin_1995.zip"
for %%a in ("Hera - Sword of Rhin") do set FLDN=%%~a
for %%a in ("herasor\HERA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Choy-Lee-Fut_Kung-Fu_Warrior_1990.zip"
for %%a in ("Choy-Lee-Fut Kung-Fu Warrior") do set FLDN=%%~a
for %%a in ("ChoyLee\LEE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Warp_Factor_1982.zip"
for %%a in ("The Warp Factor") do set FLDN=%%~a
for %%a in ("TheWarpF\start.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blade_Warrior_1991.zip"
for %%a in ("Blade Warrior") do set FLDN=%%~a
for %%a in ("BladeWar\BLADE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Elements_1994.zip"
for %%a in ("Elements") do set FLDN=%%~a
for %%a in ("elements\ELEMENTS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ambush_at_Sorinor_1993.zip"
for %%a in ("Ambush at Sorinor") do set FLDN=%%~a
for %%a in ("ambsori\amb.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"NetWars_1993.zip"
for %%a in ("NetWars") do set FLDN=%%~a
for %%a in ("NetWars\NETWARS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Interphase_1989.zip"
for %%a in ("Interphase") do set FLDN=%%~a
for %%a in ("Interpha\INTERPHS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mindshadow_1984.zip"
for %%a in ("Mindshadow") do set FLDN=%%~a
for %%a in ("mindshad\MIND.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sword_of_the_Samurai_1989.zip"
for %%a in ("Sword of the Samurai") do set FLDN=%%~a
for %%a in ("Swordoft\SAMURAI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tunnels_of_Armageddon_1989.zip"
for %%a in ("Tunnels of Armageddon") do set FLDN=%%~a
for %%a in ("Tunnelso\TUNNELS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Galleons_of_Glory_1990.zip"
for %%a in ("Galleons of Glory") do set FLDN=%%~a
for %%a in ("galleon\GALLEONS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nine_Princes_in_Amber_1987.zip"
for %%a in ("Nine Princes in Amber") do set FLDN=%%~a
for %%a in ("9amber\AMB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Prowler_1987.zip"
for %%a in ("Prowler") do set FLDN=%%~a
for %%a in ("Prowler\PROWLER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gary_Grigsbys_Pacific_War_2000.zip"
for %%a in ("Gary Grigsby's Pacific War") do set FLDN=%%~a
for %%a in ("ggrigpwr\Pac.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Puzznic_1990.zip"
for %%a in ("Puzznic") do set FLDN=%%~a
for %%a in ("Puzznic\PUZZNIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tennis_Cup_1990.zip"
for %%a in ("Tennis Cup") do set FLDN=%%~a
for %%a in ("TennisC\TENIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Perry_Mason_-_The_Case_of_the_Mandarin_Murder_1986.zip"
for %%a in ("Perry Mason - The Case of the Mandarin Murder") do set FLDN=%%~a
for %%a in ("pmason\PMN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"First_Expedition_1987.zip"
for %%a in ("First Expedition") do set FLDN=%%~a
for %%a in ("1stexp\EX1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Stompers_1986.zip"
for %%a in ("Tommy's Stompers") do set FLDN=%%~a
for %%a in ("TommysSt\TOMMYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Duracell_-_Run_the_Bunny_1996.zip"
for %%a in ("Duracell - Run the Bunny") do set FLDN=%%~a
for %%a in ("duracell\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Side_Arms_Hyper_Dyne_1987.zip"
for %%a in ("Side Arms Hyper Dyne") do set FLDN=%%~a
for %%a in ("SideArms\SIDEARMS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Diamond_Ball_III_1992.zip"
for %%a in ("Diamond Ball III") do set FLDN=%%~a
for %%a in ("DiamondB\diab3.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ashes_of_Empire_1993.zip"
for %%a in ("Ashes of Empire") do set FLDN=%%~a
for %%a in ("ashempi\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Autocrash_1991.zip"
for %%a in ("Autocrash") do set FLDN=%%~a
for %%a in ("Autocras\AUTO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spirou_1996.zip"
for %%a in ("Spirou") do set FLDN=%%~a
for %%a in ("Spirou\SPIROU\SPIROU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Global_Dilemma_-_Guns_or_Butter_1990.zip"
for %%a in ("The Global Dilemma - Guns or Butter") do set FLDN=%%~a
for %%a in ("TheGloba\GB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Charge_of_the_Light_Brigade_The_1991.zip"
for %%a in ("Charge of the Light Brigade,
 The") do set FLDN=%%~a
for %%a in ("charlb\CLB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Continuum_1990.zip"
for %%a in ("Continuum") do set FLDN=%%~a
for %%a in ("continuu\ALPHA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Highway_Fighter_1994.zip"
for %%a in ("Highway Fighter") do set FLDN=%%~a
for %%a in ("HighwayF\hf.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kentris_1991.zip"
for %%a in ("Kentris") do set FLDN=%%~a
for %%a in ("kentris\KENTRIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Superfly_1994.zip"
for %%a in ("Superfly") do set FLDN=%%~a
for %%a in ("Superfly\FLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Return_to_Kroz_1990.zip"
for %%a in ("Return to Kroz") do set FLDN=%%~a
for %%a in ("Returnto\RETURN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sarge_1989.zip"
for %%a in ("Sarge") do set FLDN=%%~a
for %%a in ("Sarge\SARGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Off_Shore_Warrior_1988.zip"
for %%a in ("Off Shore Warrior") do set FLDN=%%~a
for %%a in ("OffShore\OFF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Austerlitz_1989.zip"
for %%a in ("Austerlitz") do set FLDN=%%~a
for %%a in ("austerli\ALITZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"PC_Pool_1984.zip"
for %%a in ("PC Pool") do set FLDN=%%~a
for %%a in ("pcpool84\PCPOOL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bass_Class_1992.zip"
for %%a in ("Bass Class") do set FLDN=%%~a
for %%a in ("BassClas\BC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Silicon_Dreams_1986.zip"
for %%a in ("Silicon Dreams") do set FLDN=%%~a
for %%a in ("silicond\MENU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Livingstone_Supongo_2_1989.zip"
for %%a in ("Livingstone Supongo 2") do set FLDN=%%~a
for %%a in ("Livings2\LIVIN2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Omar_Sharif_on_Bridge_1991.zip"
for %%a in ("Omar Sharif on Bridge") do set FLDN=%%~a
for %%a in ("OmarShar\BRIDGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Station_Escape_1995.zip"
for %%a in ("Space Station Escape") do set FLDN=%%~a
for %%a in ("SpaceEsc\STATION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gadget_-_Lost_in_Time_1993.zip"
for %%a in ("Gadget - Lost in Time") do set FLDN=%%~a
for %%a in ("GadgetLo\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Firestorm_-_The_Forest_Fire_Simulation_Program_1995.zip"
for %%a in ("Firestorm - The Forest Fire Simulation Program") do set FLDN=%%~a
for %%a in ("firestor\FSSW2K.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vanguard_Ace_-_Vertical_Madness_1997.zip"
for %%a in ("Vanguard Ace - Vertical Madness") do set FLDN=%%~a
for %%a in ("Vanguard\VANGUARD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"In_Search_of_the_Most_Amazing_Thing_1983.zip"
for %%a in ("In Search of the Most Amazing Thing") do set FLDN=%%~a
for %%a in ("ismat\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chickens_2_1998.zip"
for %%a in ("Chickens 2") do set FLDN=%%~a
for %%a in ("Chicken2\CHICKEN2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Flightmare_1984.zip"
for %%a in ("Flightmare") do set FLDN=%%~a
for %%a in ("Flightma\FLIGHT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shanghai_1986.zip"
for %%a in ("Shanghai") do set FLDN=%%~a
for %%a in ("Shnghai\shanghai\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Desert_Rats_-_The_North_Africa_Campaign_1988.zip"
for %%a in ("Desert Rats - The North Africa Campaign") do set FLDN=%%~a
for %%a in ("desrats\Des.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Robot_Rascals_1987.zip"
for %%a in ("Robot Rascals") do set FLDN=%%~a
for %%a in ("RobotRas\RASCALS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dungeons_of_Kairn_1989.zip"
for %%a in ("Dungeons of Kairn") do set FLDN=%%~a
for %%a in ("dkairn\KAIRN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bridge_Olympiad_1994.zip"
for %%a in ("Bridge Olympiad") do set FLDN=%%~a
for %%a in ("bridgoly\BO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"PCBOWL_-_Electron_Lanes_1986.zip"
for %%a in ("PCBOWL - Electron Lanes") do set FLDN=%%~a
for %%a in ("PCBOWL-E\pcbowl.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Roadwar_2000_1987.zip"
for %%a in ("Roadwar 2000") do set FLDN=%%~a
for %%a in ("roadwar\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Micro_Bucks_II_1993.zip"
for %%a in ("Micro Bucks II") do set FLDN=%%~a
for %%a in ("MicroBuc\SLOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Death_Sword_1988.zip"
for %%a in ("Death Sword") do set FLDN=%%~a
for %%a in ("DeathSwo\DS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conflict_-_Korea_the_First_Year_1950-1951_1992.zip"
for %%a in ("Conflict - Korea the First Year 1950-1951") do set FLDN=%%~a
for %%a in ("confkor\README.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trust_and_Betrayal_-_The_Legacy_of_Siboot_1987.zip"
for %%a in ("Trust & Betrayal - The Legacy of Siboot") do set FLDN=%%~a
for %%a in ("t&amp;b\SIBOOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zoop_1995.zip"
for %%a in ("Zoop") do set FLDN=%%~a
for %%a in ("Zoop95\GLOAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Leather_Goddesses_of_Phobos_1986.zip"
for %%a in ("Leather Goddesses of Phobos") do set FLDN=%%~a
for %%a in ("phobos1\leather.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Escape_from_Delirium_1996.zip"
for %%a in ("Escape from Delirium") do set FLDN=%%~a
for %%a in ("delirium\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Magnetik_Tank_1987.zip"
for %%a in ("Magnetik Tank") do set FLDN=%%~a
for %%a in ("Magnetik\mgt.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sherlock_Holmes_-_The_Vatican_Cameos_1986.zip"
for %%a in ("Sherlock Holmes - The Vatican Cameos") do set FLDN=%%~a
for %%a in ("shv\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Funball_1995.zip"
for %%a in ("Funball") do set FLDN=%%~a
for %%a in ("funball\FUNBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crime_Does_Not_Pay_1990.zip"
for %%a in ("Crime Does Not Pay") do set FLDN=%%~a
for %%a in ("CrimeDoe\MAFIA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Catacomb_1990.zip"
for %%a in ("Catacomb") do set FLDN=%%~a
for %%a in ("Catacomb\CATACOMB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Darts_1991_1991.zip"
for %%a in ("Darts") do set FLDN=%%~a
for %%a in ("Darts199\DARTS11.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Le_Fetiche_Maya_1989.zip"
for %%a in ("Le Fetiche Maya") do set FLDN=%%~a
for %%a in ("lefemaya\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spoils_of_War_1991.zip"
for %%a in ("Spoils of War") do set FLDN=%%~a
for %%a in ("Spoilsof\SPOILS\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Block-O-Mania_1989.zip"
for %%a in ("Block-O-Mania") do set FLDN=%%~a
for %%a in ("Block-O-\block.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fast_Break_1988.zip"
for %%a in ("Fast Break") do set FLDN=%%~a
for %%a in ("fastbrek\FB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Megatron_VGA_1993.zip"
for %%a in ("Megatron VGA") do set FLDN=%%~a
for %%a in ("Megatron\MEGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wrecking_Ball_1984.zip"
for %%a in ("Wrecking Ball") do set FLDN=%%~a
for %%a in ("Wrecking\WRECKING.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hammer-Head_1992.zip"
for %%a in ("Hammer-Head") do set FLDN=%%~a
for %%a in ("HammerH\HAMMER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Manchester_United_1990.zip"
for %%a in ("Manchester United") do set FLDN=%%~a
for %%a in ("ManchUn\SOCCER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Seven_Spirits_of_Ra_1987.zip"
for %%a in ("The Seven Spirits of Ra") do set FLDN=%%~a
for %%a in ("sevspira\7spirits.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"QuarterPole_1993.zip"
for %%a in ("QuarterPole") do set FLDN=%%~a
for %%a in ("QuarterP\QPOLE\QPOLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wargame_Construction_Set_1986.zip"
for %%a in ("Wargame Construction Set") do set FLDN=%%~a
for %%a in ("WarCon\WCS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"HappyLand_Adventures_2000.zip"
for %%a in ("HappyLand Adventures") do set FLDN=%%~a
for %%a in ("HappyLan\HAPPY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Infiltrator_II_1988.zip"
for %%a in ("Infiltrator II") do set FLDN=%%~a
for %%a in ("infil2\autoexec.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bombuzal_1989.zip"
for %%a in ("Bombuzal") do set FLDN=%%~a
for %%a in ("bombuzal\BOMBUZAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"David_Wolf_-_Secret_Agent_1989.zip"
for %%a in ("David Wolf - Secret Agent") do set FLDN=%%~a
for %%a in ("DavidWol\agent.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Poke-Man_1982.zip"
for %%a in ("Poke-Man") do set FLDN=%%~a
for %%a in ("PokeMan\CPOKEMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hacker_1985.zip"
for %%a in ("Hacker") do set FLDN=%%~a
for %%a in ("hacker\HACKER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Incunabula_1984.zip"
for %%a in ("Incunabula") do set FLDN=%%~a
for %%a in ("incunab\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"LA_Crackdown_1988.zip"
for %%a in ("LA Crackdown") do set FLDN=%%~a
for %%a in ("lacrack\LC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Abrams_Battle_Tank_1988.zip"
for %%a in ("Abrams Battle Tank") do set FLDN=%%~a
for %%a in ("AbramsBa\ABRAMS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Champions_of_Zulula_-_Elite_Edition_1995.zip"
for %%a in ("Champions of Zulula - Elite Edition") do set FLDN=%%~a
for %%a in ("ChampZuE\ZULULA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"PHM_Pegasus_1988.zip"
for %%a in ("PHM Pegasus") do set FLDN=%%~a
for %%a in ("PHMPegas\PEGASUS\PHM.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Gorilla_Ball_Train_1987.zip"
for %%a in ("Tommy's Gorilla Ball Train") do set FLDN=%%~a
for %%a in ("TomGBTr\GBTRAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Laser_Chess_1994.zip"
for %%a in ("Laser Chess") do set FLDN=%%~a
for %%a in ("laserchs\laser.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tom_and_the_Ghost_1990.zip"
for %%a in ("Tom and the Ghost") do set FLDN=%%~a
for %%a in ("Tomandth\TGHOST.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Lost_Admiral_1991.zip"
for %%a in ("The Lost Admiral") do set FLDN=%%~a
for %%a in ("TheLostA\ATSEA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snooper_Troopers_1982.zip"
for %%a in ("Snooper Troopers") do set FLDN=%%~a
for %%a in ("snoop1\ST1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Legends_of_Murder_-_Volume_1_Stonedale_Castle_1989.zip"
for %%a in ("Legends of Murder - Volume 1 Stonedale Castle") do set FLDN=%%~a
for %%a in ("legom1\STONEDAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Avon_1989.zip"
for %%a in ("Avon") do set FLDN=%%~a
for %%a in ("avonif\AVON.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Captain_Power_and_the_Soldiers_of_the_Future_1988.zip"
for %%a in ("Captain Power and the Soldiers of the Future") do set FLDN=%%~a
for %%a in ("CaptainP\GAME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Worlds_Greatest_Baseball_Game_1984.zip"
for %%a in ("The World's Greatest Baseball Game") do set FLDN=%%~a
for %%a in ("wgbball\BASEBALL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Brudal_Baddle_1994.zip"
for %%a in ("Brudal Baddle") do set FLDN=%%~a
for %%a in ("BrudalBa\BRUDAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"International_Bridge_Contractors_1985.zip"
for %%a in ("International Bridge Contractors") do set FLDN=%%~a
for %%a in ("inbridco\IBC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Origamo_1994.zip"
for %%a in ("Origamo") do set FLDN=%%~a
for %%a in ("Origamo\ORIGAMO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Premiership_1994.zip"
for %%a in ("The Premiership") do set FLDN=%%~a
for %%a in ("theprem\PREMIER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Clone_Invader_1989.zip"
for %%a in ("Clone Invader") do set FLDN=%%~a
for %%a in ("CloneInv\CLONINV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Anti-Ballistic-Missile_1982.zip"
for %%a in ("Anti-Ballistic-Missile") do set FLDN=%%~a
for %%a in ("AntiBal\ABM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Swap_1992.zip"
for %%a in ("Swap") do set FLDN=%%~a
for %%a in ("Swap92\SWAP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vampires_Castle_Adventure_1988.zip"
for %%a in ("Vampire's Castle Adventure") do set FLDN=%%~a
for %%a in ("vampca\VAMPIRE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Awesome_Earl_in_SkateRock_1988.zip"
for %%a in ("Awesome Earl in SkateRock") do set FLDN=%%~a
for %%a in ("AwesomeE\SKATE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Journey_to_the_Center_of_the_Earth_1988.zip"
for %%a in ("Journey to the Center of the Earth") do set FLDN=%%~a
for %%a in ("plagmoon\plague.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Strike_1982.zip"
for %%a in ("Space Strike") do set FLDN=%%~a
for %%a in ("SpaceStr\SPACESTR.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alive_Sharks_1990.zip"
for %%a in ("Alive Sharks") do set FLDN=%%~a
for %%a in ("AliveSha\SHARKS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"ZorkQuest_-_The_Crystal_of_Doom_1989.zip"
for %%a in ("ZorkQuest - The Crystal of Doom") do set FLDN=%%~a
for %%a in ("zqcrys\zq2.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mambo_1989.zip"
for %%a in ("Mambo") do set FLDN=%%~a
for %%a in ("Mambo\MAMBO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Yendorian_Tales_Book1_1994.zip"
for %%a in ("Yendorian Tales Book1") do set FLDN=%%~a
for %%a in ("yendor1\SW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Island_Hopper_1998.zip"
for %%a in ("Island Hopper") do set FLDN=%%~a
for %%a in ("IslandHo\IHOPPER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Scoop_The_1989.zip"
for %%a in ("Scoop, The") do set FLDN=%%~a
for %%a in ("scoop\scoop.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lawn_Mower_1987.zip"
for %%a in ("Lawn Mower") do set FLDN=%%~a
for %%a in ("LawnMowe\LAWN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"P47_Thunderbolt_1990.zip"
for %%a in ("P47 Thunderbolt") do set FLDN=%%~a
for %%a in ("P47Thund\p47.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bluppo_1997.zip"
for %%a in ("Bluppo") do set FLDN=%%~a
for %%a in ("Bluppo\BLUPPO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"International_Open_Golf_Championship_1993.zip"
for %%a in ("International Open Golf Championship") do set FLDN=%%~a
for %%a in ("IntOGC\GOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heirs_to_the_Throne_1992.zip"
for %%a in ("Heirs to the Throne") do set FLDN=%%~a
for %%a in ("heirthro\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Border_Zone_1987.zip"
for %%a in ("Border Zone") do set FLDN=%%~a
for %%a in ("border\borderzo.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gobman_1992.zip"
for %%a in ("Gobman") do set FLDN=%%~a
for %%a in ("Gobman\GOBMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wrath_of_the_Demon_1991.zip"
for %%a in ("Wrath of the Demon") do set FLDN=%%~a
for %%a in ("Wrathoft\WRATH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Klass_of_99_1999.zip"
for %%a in ("Klass of '99") do set FLDN=%%~a
for %%a in ("klass99\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jack_Nicklaus_Greatest_18_Holes_of_Major_Championship_Golf_1988.zip"
for %%a in ("Jack Nicklaus' Greatest 18 Holes of Major Championship Golf") do set FLDN=%%~a
for %%a in ("JackG18\GOLFE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"LineWars_2_1994.zip"
for %%a in ("LineWars 2") do set FLDN=%%~a
for %%a in ("LineWar2\LW2\LW2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quadnet_1998.zip"
for %%a in ("Quadnet") do set FLDN=%%~a
for %%a in ("Quadnet\quadnet.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Harald_fHardtooth_in_The_fight_of_the_clean_teeth_1992.zip"
for %%a in ("Harald Hardtooth in The fight of the clean teeth") do set FLDN=%%~a
for %%a in ("Harald\harald\HARALD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dstroy_1995.zip"
for %%a in ("Dstroy") do set FLDN=%%~a
for %%a in ("Dstroy\DS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Thunderchopper_1989.zip"
for %%a in ("Thunderchopper") do set FLDN=%%~a
for %%a in ("Thunderc\TC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Medieval_Lords_-_Soldier_Kings_of_Europe_1991.zip"
for %%a in ("Medieval Lords - Soldier Kings of Europe") do set FLDN=%%~a
for %%a in ("medilske\LORDS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Designs_II_-_Closing_the_Gate_1991.zip"
for %%a in ("Dark Designs II - Closing the Gate") do set FLDN=%%~a
for %%a in ("darkdes2\DARKDES2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Packrat_1986.zip"
for %%a in ("Tommy's Packrat") do set FLDN=%%~a
for %%a in ("TommysPa\PACKRAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"La_Espada_Sagrada_1990.zip"
for %%a in ("La Espada Sagrada") do set FLDN=%%~a
for %%a in ("LaEspada\ESPADA.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Will_Harveys_Music_Construction_Set_1984.zip"
for %%a in ("Will Harvey's Music Construction Set") do set FLDN=%%~a
for %%a in ("whmcs\MCS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"SpellCraft_-_Aspects_of_Valor_1992.zip"
for %%a in ("SpellCraft - Aspects of Valor") do set FLDN=%%~a
for %%a in ("SpellCra\SC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Slordax_-_The_Unknown_Enemy_1991.zip"
for %%a in ("Slordax - The Unknown Enemy") do set FLDN=%%~a
for %%a in ("SlordaxT\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Drak_1995.zip"
for %%a in ("Drak") do set FLDN=%%~a
for %%a in ("Drak\DRAK.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Free_DC_1991.zip"
for %%a in ("Free DC") do set FLDN=%%~a
for %%a in ("freedc\freedc.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Majik_1990.zip"
for %%a in ("Majik") do set FLDN=%%~a
for %%a in ("Majik\MAJIK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Temple_of_Kroz_1990.zip"
for %%a in ("Temple of Kroz") do set FLDN=%%~a
for %%a in ("Templeof\TEMPLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Battle_Fleet_1991.zip"
for %%a in ("Battle Fleet") do set FLDN=%%~a
for %%a in ("batfleet\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gumboots_Australia_1990.zip"
for %%a in ("Gumboots Australia") do set FLDN=%%~a
for %%a in ("gumboots\BOOTS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ball_Game_The_1991.zip"
for %%a in ("Ball Game, The") do set FLDN=%%~a
for %%a in ("ballgame\BALLGAME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Design_Your_Own_Train_1989.zip"
for %%a in ("Design Your Own Train") do set FLDN=%%~a
for %%a in ("DesignT\DTRAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Scroller_2004.zip"
for %%a in ("Scroller") do set FLDN=%%~a
for %%a in ("Scroller\SCROLLER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stickybear_Town_Builder_1992.zip"
for %%a in ("Stickybear Town Builder") do set FLDN=%%~a
for %%a in ("Stickybe\TOWN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vampyr_-_Talisman_of_Invocation_1990.zip"
for %%a in ("Vampyr - Talisman of Invocation") do set FLDN=%%~a
for %%a in ("vampyrti\VAMPYR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tesserae_1993.zip"
for %%a in ("Tesserae") do set FLDN=%%~a
for %%a in ("Tesserae\T.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sabre_Team_1994.zip"
for %%a in ("Sabre Team") do set FLDN=%%~a
for %%a in ("SabreTea\SABRE\SABRE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cloud_Kingdoms_1990.zip"
for %%a in ("Cloud Kingdoms") do set FLDN=%%~a
for %%a in ("CloudKin\CKEGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blitzkrieg_-_Battle_At_The_Ardennes_1990.zip"
for %%a in ("Blitzkrieg - Battle At The Ardennes") do set FLDN=%%~a
for %%a in ("blitzbaa\BLITZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Axe_of_Rage_1989.zip"
for %%a in ("Axe of Rage") do set FLDN=%%~a
for %%a in ("AxeofRag\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Castle_of_Dr._Malvado_2001.zip"
for %%a in ("The Castle of Dr. Malvado") do set FLDN=%%~a
for %%a in ("TheCastl\malvado.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Action_in_the_North_Atlantic_1989.zip"
for %%a in ("Action in the North Atlantic") do set FLDN=%%~a
for %%a in ("aitna\Action.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Excelsior_Phase_One_-_Lysandia_1993.zip"
for %%a in ("Excelsior Phase One - Lysandia") do set FLDN=%%~a
for %%a in ("excelpol\ex.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Cool_Croc_Twins_1992.zip"
for %%a in ("The Cool Croc Twins") do set FLDN=%%~a
for %%a in ("TheCoolC\MBCC\MAGIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fleet_Sweep_1983.zip"
for %%a in ("Fleet Sweep") do set FLDN=%%~a
for %%a in ("FleetSwe\Fleet.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fruit_Salad_1997.zip"
for %%a in ("Fruit Salad") do set FLDN=%%~a
for %%a in ("fruitsal\fsalad.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Aleshar_-_The_World_of_Ice_1997.zip"
for %%a in ("Aleshar - The World of Ice") do set FLDN=%%~a
for %%a in ("aleshar\ALESHAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Choose_an_Enemy_1991.zip"
for %%a in ("Choose an Enemy") do set FLDN=%%~a
for %%a in ("Choosean\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xenopods_1991.zip"
for %%a in ("Xenopods") do set FLDN=%%~a
for %%a in ("Xenopods\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Legions_1992.zip"
for %%a in ("Star Legions") do set FLDN=%%~a
for %%a in ("StarLegi\SL\SL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tube_1995.zip"
for %%a in ("Tube") do set FLDN=%%~a
for %%a in ("Tube\TUBE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mystery_of_the_Mummy_1991.zip"
for %%a in ("Mystery of the Mummy") do set FLDN=%%~a
for %%a in ("mysmummy\MYSTERY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Rank_Boxing_II_1987.zip"
for %%a in ("Star Rank Boxing II") do set FLDN=%%~a
for %%a in ("StarRank\BOXING.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Half_The_1992.zip"
for %%a in ("Dark Half, The") do set FLDN=%%~a
for %%a in ("darkhalf\ddh.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"S.D.I._1987.zip"
for %%a in ("S.D.I.") do set FLDN=%%~a
for %%a in ("SDI\SDI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spore_1991.zip"
for %%a in ("Spore") do set FLDN=%%~a
for %%a in ("spore91\README.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kobyashi_Naru_1987.zip"
for %%a in ("Kobyashi Naru") do set FLDN=%%~a
for %%a in ("kobynaru\KOBAYASH.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Five-a-Side_Indoor_Soccer_1985.zip"
for %%a in ("Five-a-Side Indoor Soccer") do set FLDN=%%~a
for %%a in ("Five-a-S\5aside.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"ZorkQuest_-_Assault_on_Egreth_Castle_1988.zip"
for %%a in ("ZorkQuest - Assault on Egreth Castle") do set FLDN=%%~a
for %%a in ("zqass\zork.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_IBM_BASIC_Quiz_1989.zip"
for %%a in ("The IBM BASIC Quiz") do set FLDN=%%~a
for %%a in ("TheIBMBA\BASQUIZ.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Jetsons_-_By_George_in_Trouble_Again_1990.zip"
for %%a in ("The Jetsons - By George, in Trouble Again") do set FLDN=%%~a
for %%a in ("Jetson90\JETSONS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Santa_Paravia_and_Fiumaccio_1988.zip"
for %%a in ("Santa Paravia and Fiumaccio") do set FLDN=%%~a
for %%a in ("SantaPar\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Biliardo_2_2001.zip"
for %%a in ("Biliardo 2") do set FLDN=%%~a
for %%a in ("Biliardo\Biliardo.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Legend_of_Saladir_1999.zip"
for %%a in ("Legend of Saladir") do set FLDN=%%~a
for %%a in ("legosala\SALADIR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Troddlers_1993.zip"
for %%a in ("Troddlers") do set FLDN=%%~a
for %%a in ("Troddler\TRODDLER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Math_Rabbit_1986.zip"
for %%a in ("Math Rabbit") do set FLDN=%%~a
for %%a in ("MathRabb\TLC\MR\MRPROG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Demons_Forge_1987.zip"
for %%a in ("Demon's Forge") do set FLDN=%%~a
for %%a in ("demoforg\Forge.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rings_of_the_Magi_-_Grand_Master_Edition_1995.zip"
for %%a in ("Rings of the Magi - Grand Master Edition") do set FLDN=%%~a
for %%a in ("Ringsoft\ROTM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jigsaw_Puzzle_1994.zip"
for %%a in ("Jigsaw Puzzle") do set FLDN=%%~a
for %%a in ("JigsawPu\JIGSAW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Magic_Crayon_1996.zip"
for %%a in ("Magic Crayon") do set FLDN=%%~a
for %%a in ("MagicCra\MC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vectorball_1988.zip"
for %%a in ("Vectorball") do set FLDN=%%~a
for %%a in ("Vectorba\VEC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Team_Yankee_1990.zip"
for %%a in ("Team Yankee") do set FLDN=%%~a
for %%a in ("TeamYank\ty.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Davids_Kong_1984.zip"
for %%a in ("David's Kong") do set FLDN=%%~a
for %%a in ("DavidsKo\davikong.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Armour-Geddon_1992.zip"
for %%a in ("Armour-Geddon") do set FLDN=%%~a
for %%a in ("armogedd\ARMOUR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Final_Conflict_1991.zip"
for %%a in ("The Final Conflict") do set FLDN=%%~a
for %%a in ("TheFinal\finalcon\v.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"L5RC_1998.zip"
for %%a in ("L5RC") do set FLDN=%%~a
for %%a in ("L5RC\L5RC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Side_1988.zip"
for %%a in ("Dark Side") do set FLDN=%%~a
for %%a in ("DarkSide\DARKSIDE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Axia_1998.zip"
for %%a in ("Axia") do set FLDN=%%~a
for %%a in ("Axia\AXIA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Computer_Quiz_1988.zip"
for %%a in ("The Computer Quiz") do set FLDN=%%~a
for %%a in ("TheCompu\play.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Omni-Play_Basketball_1990.zip"
for %%a in ("Omni-Play Basketball") do set FLDN=%%~a
for %%a in ("Omni-Pla\OMNI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"A.G.E._1991.zip"
for %%a in ("A.G.E.") do set FLDN=%%~a
for %%a in ("age2\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ancient_Domains_of_Mystery_1994.zip"
for %%a in ("Ancient Domains of Mystery") do set FLDN=%%~a
for %%a in ("ADOM\ADOM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Braminar_1987.zip"
for %%a in ("Braminar") do set FLDN=%%~a
for %%a in ("braminar\BRAMINAR.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cosmic_Soldier_-_Psychic_War_1989.zip"
for %%a in ("Cosmic Soldier - Psychic War") do set FLDN=%%~a
for %%a in ("cspsywar\PW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"International_Rugby_Challenge_1993.zip"
for %%a in ("International Rugby Challenge") do set FLDN=%%~a
for %%a in ("IntRugCh\RUGBY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Railroad_Empire_1989.zip"
for %%a in ("Railroad Empire") do set FLDN=%%~a
for %%a in ("Railroad\RE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Superbike_Challenge_1987.zip"
for %%a in ("Superbike Challenge") do set FLDN=%%~a
for %%a in ("Superbik\SB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"H20_1996.zip"
for %%a in ("H20") do set FLDN=%%~a
for %%a in ("h2o\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rich_Taubers_Bass_Champ_1991.zip"
for %%a in ("Rich Tauber's Bass Champ") do set FLDN=%%~a
for %%a in ("RichTaub\BASS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Carnage_1996.zip"
for %%a in ("Operation Carnage") do set FLDN=%%~a
for %%a in ("OpCarna\CARNAGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Gorilla_Ball_Gotcha_1987.zip"
for %%a in ("Tommy's Gorilla Ball Gotcha") do set FLDN=%%~a
for %%a in ("TomGBGot\TOMMYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Flames_of_Freedom_1991.zip"
for %%a in ("Flames of Freedom") do set FLDN=%%~a
for %%a in ("flamfree\flames\FLAMES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Punisher_1990.zip"
for %%a in ("The Punisher") do set FLDN=%%~a
for %%a in ("ThePunis\PUNISHER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eco_Phantoms_1990.zip"
for %%a in ("Eco Phantoms") do set FLDN=%%~a
for %%a in ("ecophant\ECO.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"AlphaMan_1995.zip"
for %%a in ("AlphaMan") do set FLDN=%%~a
for %%a in ("alphman\ALPHAMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Savage_1988.zip"
for %%a in ("Savage") do set FLDN=%%~a
for %%a in ("Savage\SAVAGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Charlie_II_2001.zip"
for %%a in ("Charlie II") do set FLDN=%%~a
for %%a in ("CharlieI\ch2dos.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Scud_Atak_1991.zip"
for %%a in ("Scud Atak") do set FLDN=%%~a
for %%a in ("ScudAtak\SCUDA2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pac-Gal_1982.zip"
for %%a in ("Pac-Gal") do set FLDN=%%~a
for %%a in ("PacGal\Pac-gal.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Voodoo_Island_1985.zip"
for %%a in ("Voodoo Island") do set FLDN=%%~a
for %%a in ("voodoois\VOODOO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Terror_in_Christmas_Town_1995.zip"
for %%a in ("Terror in Christmas Town") do set FLDN=%%~a
for %%a in ("terrxmas\XMAS\BEGIN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Electric_Crayon_3.1_-_At_the_Zoo_1992.zip"
for %%a in ("Electric Crayon 3.1 - At the Zoo") do set FLDN=%%~a
for %%a in ("Elec3AtZ\EC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hippys_Quest_1990.zip"
for %%a in ("Hippy's Quest") do set FLDN=%%~a
for %%a in ("hippy\HIPPY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Logical_1991.zip"
for %%a in ("Logical") do set FLDN=%%~a
for %%a in ("logical\LOG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cyberchess_1992.zip"
for %%a in ("Cyberchess") do set FLDN=%%~a
for %%a in ("cybrchss\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"PARAGON_1991.zip"
for %%a in ("PARAGON") do set FLDN=%%~a
for %%a in ("PARAGON\PARAGON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"BananaTron_1989.zip"
for %%a in ("BananaTron") do set FLDN=%%~a
for %%a in ("BananaTr\banatron.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Loopz_1990.zip"
for %%a in ("Loopz") do set FLDN=%%~a
for %%a in ("loopz\LOOPZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nectaris_1995.zip"
for %%a in ("Nectaris") do set FLDN=%%~a
for %%a in ("Nectaris\start.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"One_Step_Beyond_1993.zip"
for %%a in ("One Step Beyond") do set FLDN=%%~a
for %%a in ("OneStepB\ONESTEP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultimate_Soccer_Manager_2_1996.zip"
for %%a in ("Ultimate Soccer Manager 2") do set FLDN=%%~a
for %%a in ("UltSocM2\_USM2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Forbidden_Quest_1983.zip"
for %%a in ("Forbidden Quest") do set FLDN=%%~a
for %%a in ("forbques\FQ96.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Day_of_the_Viper_1989.zip"
for %%a in ("Day of the Viper") do set FLDN=%%~a
for %%a in ("dayviper\VIPER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Paganitzu_1991.zip"
for %%a in ("Paganitzu") do set FLDN=%%~a
for %%a in ("Paganitz\PAGA1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Starflight_2_-_Trade_Routes_of_the_Cloud_Nebula_1989.zip"
for %%a in ("Starflight 2 - Trade Routes of the Cloud Nebula") do set FLDN=%%~a
for %%a in ("starfly2\SF2.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shadow_Sorcerer_1991.zip"
for %%a in ("Shadow Sorcerer") do set FLDN=%%~a
for %%a in ("shadsorc\SS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fire_King_1990.zip"
for %%a in ("Fire King") do set FLDN=%%~a
for %%a in ("fireking\FK.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rodge_Rock_In_Retroactive_1995.zip"
for %%a in ("Rodge Rock In Retroactive") do set FLDN=%%~a
for %%a in ("RodgeRoc\RODGE\RODGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bridge_Hopper_1990.zip"
for %%a in ("Bridge Hopper") do set FLDN=%%~a
for %%a in ("BridgeHo\HOPPER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snaker_1993.zip"
for %%a in ("Snaker") do set FLDN=%%~a
for %%a in ("Snaker\SNAKER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Black_Monday_1987.zip"
for %%a in ("Black Monday") do set FLDN=%%~a
for %%a in ("BlackMon\GAME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultra-Quiz_1992.zip"
for %%a in ("Ultra-Quiz") do set FLDN=%%~a
for %%a in ("Ultra-Qu\QUIZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Astro3D_1997.zip"
for %%a in ("Astro3D") do set FLDN=%%~a
for %%a in ("Astro3D\A3DSW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bert_and_the_Snake_1983.zip"
for %%a in ("Bert and the Snake") do set FLDN=%%~a
for %%a in ("Bertandt\bert.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cosmic_Sheriff_1989.zip"
for %%a in ("Cosmic Sheriff") do set FLDN=%%~a
for %%a in ("CosmicSh\Cosmic.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Electranoid_1995.zip"
for %%a in ("Electranoid") do set FLDN=%%~a
for %%a in ("Electran\ENOID.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tournament_Tennis_1985.zip"
for %%a in ("Tournament Tennis") do set FLDN=%%~a
for %%a in ("Tourname\tennis.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Darkspyre_1990.zip"
for %%a in ("Darkspyre") do set FLDN=%%~a
for %%a in ("dspyre\DARKSPYR.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"PC_Pool_Challenges_1984.zip"
for %%a in ("PC Pool Challenges") do set FLDN=%%~a
for %%a in ("pcpoolch\pool.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Demons_Winter_1988.zip"
for %%a in ("Demons Winter") do set FLDN=%%~a
for %%a in ("demwin\DEMON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conflagration_1993.zip"
for %%a in ("Conflagration") do set FLDN=%%~a
for %%a in ("conflag\CONFLAG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bumble_Plot_1982.zip"
for %%a in ("Bumble Plot") do set FLDN=%%~a
for %%a in ("BumblePl\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Storm_Master_1992.zip"
for %%a in ("Storm Master") do set FLDN=%%~a
for %%a in ("StormMas\STORM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Gorilla_Ball_Babies_1987.zip"
for %%a in ("Tommy's Gorilla Ball Babies") do set FLDN=%%~a
for %%a in ("TomGBBab\GBABIES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bounce_Zone_1990.zip"
for %%a in ("Bounce Zone") do set FLDN=%%~a
for %%a in ("BounceZo\BOUNCEZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"quik_majik_adventure_1991.zip"
for %%a in ("Quik Majik Adventure") do set FLDN=%%~a
for %%a in ("qmajik\MAJIK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Footy_Fanatic_1995.zip"
for %%a in ("Footy Fanatic") do set FLDN=%%~a
for %%a in ("FootyFan\FF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Count_1981.zip"
for %%a in ("The Count") do set FLDN=%%~a
for %%a in ("thecount\frotz.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sol_Negro_1988.zip"
for %%a in ("Sol Negro") do set FLDN=%%~a
for %%a in ("SolNegro\SOL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gulf_Strike_1985.zip"
for %%a in ("Gulf Strike") do set FLDN=%%~a
for %%a in ("gulkstrk\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nahlakh_1994.zip"
for %%a in ("Nahlakh") do set FLDN=%%~a
for %%a in ("nahlakh\N.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Thing_1988.zip"
for %%a in ("The Thing") do set FLDN=%%~a
for %%a in ("thething\THING.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Decision_in_the_Desert_1985.zip"
for %%a in ("Decision in the Desert") do set FLDN=%%~a
for %%a in ("decdes\DESERT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"905_2000.zip"
for %%a in ("905") do set FLDN=%%~a
for %%a in ("905\905.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_Olympics_1994.zip"
for %%a in ("Alien Olympics") do set FLDN=%%~a
for %%a in ("AlienOly\ALIENO\ALIENO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vulcan_-_The_Tunisian_Campaign_1988.zip"
for %%a in ("Vulcan - The Tunisian Campaign") do set FLDN=%%~a
for %%a in ("VulcanT\vulcan\V.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grand_Prix_500_2_1991.zip"
for %%a in ("Grand Prix 500 2") do set FLDN=%%~a
for %%a in ("GPrix52\GPV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jonny_Quest_-_Curse_of_the_Mayan_Warriors_1993.zip"
for %%a in ("Jonny Quest - Curse of the Mayan Warriors") do set FLDN=%%~a
for %%a in ("jquestmw\JONNY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"African_Adventure_1984.zip"
for %%a in ("African Adventure") do set FLDN=%%~a
for %%a in ("afriadv\african.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"visionzip.zip"
for %%a in ("visionzip.zip"
for %%a in ("VISIONAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_ZZT_1992.zip"
for %%a in ("Super ZZT") do set FLDN=%%~a
for %%a in ("superzzt\SUPERZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Oligopoly_1987.zip"
for %%a in ("Oligopoly") do set FLDN=%%~a
for %%a in ("Oligopol\OLIG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nyet_3_-_The_Revenge_of_the_Mutant_Stones_1993.zip"
for %%a in ("Nyet 3 - The Revenge of the Mutant Stones") do set FLDN=%%~a
for %%a in ("Nyet3Th\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crystal_Pixels_1997.zip"
for %%a in ("Crystal Pixels") do set FLDN=%%~a
for %%a in ("CrystalP\CRYXTELS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dick_Tracy_1990.zip"
for %%a in ("Dick Tracy") do set FLDN=%%~a
for %%a in ("DickTrac\EGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Macadam_Bumper_1987.zip"
for %%a in ("Macadam Bumper") do set FLDN=%%~a
for %%a in ("MacadamB\floppy\MACADAM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Attack_1982.zip"
for %%a in ("Attack") do set FLDN=%%~a
for %%a in ("Attack\ATTACK.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pref_Club_1991.zip"
for %%a in ("Pref Club") do set FLDN=%%~a
for %%a in ("PrefClub\PC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Box_Ranger_1992.zip"
for %%a in ("Box Ranger") do set FLDN=%%~a
for %%a in ("boxrang\BR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"White_Death_1990.zip"
for %%a in ("White Death") do set FLDN=%%~a
for %%a in ("whitdeth\WD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Orel_Hershisers_Strike_Zone_1989.zip"
for %%a in ("Orel Hershiser's Strike Zone") do set FLDN=%%~a
for %%a in ("OrelHers\SZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Argo_Checkers_1993.zip"
for %%a in ("Argo Checkers") do set FLDN=%%~a
for %%a in ("argochek\CHECKERS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Atomino_1990.zip"
for %%a in ("Atomino") do set FLDN=%%~a
for %%a in ("atomino\ATOMINO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Gorilla_Ball_Tag_1987.zip"
for %%a in ("Tommy's Gorilla Ball Tag") do set FLDN=%%~a
for %%a in ("TomGBTag\GBTAG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Electro_Man_1992.zip"
for %%a in ("Electro Man") do set FLDN=%%~a
for %%a in ("ElectroM\EM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Graeme_Souness_Soccer_Manager_1992.zip"
for %%a in ("Graeme Souness Soccer Manager") do set FLDN=%%~a
for %%a in ("GraemeSo\PSSM\PSSM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Treasure_Hunt_1982.zip"
for %%a in ("Treasure Hunt") do set FLDN=%%~a
for %%a in ("Treasure\HUNT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mad_Mix_1988.zip"
for %%a in ("Mad Mix") do set FLDN=%%~a
for %%a in ("MadMix\MADMIX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Catch_Em_1989_1989.zip"
for %%a in ("Catch 'Em") do set FLDN=%%~a
for %%a in ("CatchEm9\catchem.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rollo_and_the_Brush_Brothers_1983.zip"
for %%a in ("Rollo and the Brush Brothers") do set FLDN=%%~a
for %%a in ("Rolloand\ROLLO.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Skunny_-_Lost_in_Space_1993.zip"
for %%a in ("Skunny - Lost in Space") do set FLDN=%%~a
for %%a in ("SkunnyLo\LOSTSPAC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Guimo_1997.zip"
for %%a in ("Guimo") do set FLDN=%%~a
for %%a in ("Guimo\GUIMO\GUIMO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Accordion_1990.zip"
for %%a in ("Accordion") do set FLDN=%%~a
for %%a in ("accordi\ACORDION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sobor_1991.zip"
for %%a in ("Sobor") do set FLDN=%%~a
for %%a in ("Sobor\SOBOR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Drake_Snake_and_the_Secret_Crypt_1994.zip"
for %%a in ("Drake Snake and the Secret Crypt") do set FLDN=%%~a
for %%a in ("DrakeSna\DRAKE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Voodoo_Girl_-_Queen_of_the_Darned_2003.zip"
for %%a in ("Voodoo Girl - Queen of the Darned") do set FLDN=%%~a
for %%a in ("vgqod\vg.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Turbo_Cup_1988.zip"
for %%a in ("Turbo Cup") do set FLDN=%%~a
for %%a in ("TurboCup\TURBO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"SkyChase_1990.zip"
for %%a in ("SkyChase") do set FLDN=%%~a
for %%a in ("SkyChase\SKYCHASE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Golden_Eagle_1991.zip"
for %%a in ("Golden Eagle") do set FLDN=%%~a
for %%a in ("GoldenEa\EAGLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kings_Table_-_The_Legend_of_Ragnarok_1993.zip"
for %%a in ("King's Table - The Legend of Ragnarok") do set FLDN=%%~a
for %%a in ("kingtabl\RAGNAROK.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Legend_of_the_Red_Dragon_1992.zip"
for %%a in ("Legend of the Red Dragon") do set FLDN=%%~a
for %%a in ("legord\LORD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Harlem_Globetrotters_1990.zip"
for %%a in ("Harlem Globetrotters") do set FLDN=%%~a
for %%a in ("HarlemGl\HG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dorks_Dreams_1991.zip"
for %%a in ("Dork's Dreams") do set FLDN=%%~a
for %%a in ("DorksDre\DD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trump_Castle_3_1993.zip"
for %%a in ("Trump Castle 3") do set FLDN=%%~a
for %%a in ("TrmpCas3\CAPSTONE\TC3\TRUMP.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Soviet_1990.zip"
for %%a in ("Soviet") do set FLDN=%%~a
for %%a in ("Soviet90\soviet.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alex_the_Alligator_2_2002.zip"
for %%a in ("Alex the Alligator 2") do set FLDN=%%~a
for %%a in ("alexalli\ALEX2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bedlam_1988_1988.zip"
for %%a in ("Bedlam") do set FLDN=%%~a
for %%a in ("Bedlam88\BEDLAM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Magic_Johnsons_Fast_Break_1989.zip"
for %%a in ("Magic Johnson's Fast Break") do set FLDN=%%~a
for %%a in ("MagicJoh\MJ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Spys_Adventures_in_North_America_1987.zip"
for %%a in ("The Spy's Adventures in North America") do set FLDN=%%~a
for %%a in ("TheSpysA\SPY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pac-Maine_1988.zip"
for %%a in ("Pac-Maine") do set FLDN=%%~a
for %%a in ("Pac-Main\UMFK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Queen_of_Hearts_Maze_Game_1982.zip"
for %%a in ("The Queen of Hearts Maze Game") do set FLDN=%%~a
for %%a in ("TheQueen\HEART.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mysterious_Song_2000.zip"
for %%a in ("Mysterious Song") do set FLDN=%%~a
for %%a in ("mystsong\MSONG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blackjack_1984.zip"
for %%a in ("Blackjack") do set FLDN=%%~a
for %%a in ("Blackjac\blackjk2.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Prime_Time_1988.zip"
for %%a in ("Prime Time") do set FLDN=%%~a
for %%a in ("PrimeTim\TVM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"At_the_Carnival_1990.zip"
for %%a in ("At the Carnival") do set FLDN=%%~a
for %%a in ("atcarniv\ATC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"StixWorld_1998.zip"
for %%a in ("StixWorld") do set FLDN=%%~a
for %%a in ("StixWorl\stx.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Laser_Surgeon_The_Microscopic_Mission_1987.zip"
for %%a in ("Laser Surgeon The Microscopic Mission") do set FLDN=%%~a
for %%a in ("LaserSur\MM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Manhunter_2_-_San_Francisco_1989.zip"
for %%a in ("Manhunter 2 - San Francisco") do set FLDN=%%~a
for %%a in ("MH2\sierra.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ford_Simulator_III_1992.zip"
for %%a in ("Ford Simulator III") do set FLDN=%%~a
for %%a in ("FordSim3\FORD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sea_Hunt_1987.zip"
for %%a in ("Sea Hunt") do set FLDN=%%~a
for %%a in ("SeaHunt\SEAHUNT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tour_91_1991.zip"
for %%a in ("Tour 91") do set FLDN=%%~a
for %%a in ("Tour91\TOUR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Virtual_Reality_Studio_1991.zip"
for %%a in ("Virtual Reality Studio") do set FLDN=%%~a
for %%a in ("VRS1\STUDIO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tamper_1988.zip"
for %%a in ("Tamper") do set FLDN=%%~a
for %%a in ("Tamper88\TAMPER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spell_Castle_1986.zip"
for %%a in ("Spell Castle") do set FLDN=%%~a
for %%a in ("SpellCas\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Boxer_Rebellion_1982.zip"
for %%a in ("Boxer Rebellion") do set FLDN=%%~a
for %%a in ("BoxerReb\BOXER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arcade_Bonanza_1987.zip"
for %%a in ("Arcade Bonanza") do set FLDN=%%~a
for %%a in ("ArcadeBo\BOOT.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Khalaan_1990.zip"
for %%a in ("Khalaan") do set FLDN=%%~a
for %%a in ("khalaan\HD.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sea_Dragon_1983.zip"
for %%a in ("Sea Dragon") do set FLDN=%%~a
for %%a in ("SeaDrago\SD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Chamber_1987.zip"
for %%a in ("Star Chamber") do set FLDN=%%~a
for %%a in ("StarCham\starcham.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Solitare_1985.zip"
for %%a in ("Solitare") do set FLDN=%%~a
for %%a in ("Solitare\solitare.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Boston_Bomb_Club_1991.zip"
for %%a in ("Boston Bomb Club") do set FLDN=%%~a
for %%a in ("bostbomb\boston.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Solo_1989.zip"
for %%a in ("Solo") do set FLDN=%%~a
for %%a in ("Solo\SOLO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Obitus_1991.zip"
for %%a in ("Obitus") do set FLDN=%%~a
for %%a in ("obitus\OBITUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Air_Force_Commander_1992.zip"
for %%a in ("Air Force Commander") do set FLDN=%%~a
for %%a in ("airfrcco\AIRFORCE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"A2_-_The_Ultimate_Sequel_To_AUTS_-_The_Ultimate_Stress_Relief_Game_1998.zip"
for %%a in ("A2 - The Ultimate Sequel To AUTS - The Ultimate Stress Relief Game") do set FLDN=%%~a
for %%a in ("A2TheUlt\A2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"BrainBreaker_1991.zip"
for %%a in ("BrainBreaker") do set FLDN=%%~a
for %%a in ("branbrek\BB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xmas_Carnage_1994.zip"
for %%a in ("Xmas Carnage") do set FLDN=%%~a
for %%a in ("XmasCarn\CC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hopy-ONE_1996.zip"
for %%a in ("Hopy-ONE") do set FLDN=%%~a
for %%a in ("HopyONE\HOPY-ONE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grave_Yardage_1989.zip"
for %%a in ("Grave Yardage") do set FLDN=%%~a
for %%a in ("GraveYar\GY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wari_-_The_Ancient_Game_of_Africa_1994.zip"
for %%a in ("Wari - The Ancient Game of Africa") do set FLDN=%%~a
for %%a in ("WariThe\WARI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Strategy_Games_1983.zip"
for %%a in ("Strategy Games") do set FLDN=%%~a
for %%a in ("Strategy\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Anacreon_-_Reconstruction_4021_1987.zip"
for %%a in ("Anacreon - Reconstruction 4021") do set FLDN=%%~a
for %%a in ("anacreon\ANACREON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Conquest_of_Japan_1992.zip"
for %%a in ("Conquest of Japan") do set FLDN=%%~a
for %%a in ("conqestJ\CONQUEST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Last_Half_of_Darkness_II_1992.zip"
for %%a in ("Last Half of Darkness II") do set FLDN=%%~a
for %%a in ("lasthlf2\LASTHALF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Theatre_of_Death_1994.zip"
for %%a in ("Theatre of Death") do set FLDN=%%~a
for %%a in ("TheaDeth\TOD\TOD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Deep_II_-_The_Center_of_the_Earth_1993.zip"
for %%a in ("Deep II - The Center of the Earth") do set FLDN=%%~a
for %%a in ("DeepIITh\DEEP2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Spys_Adventures_in_Europe_1986.zip"
for %%a in ("The Spy's Adventures in Europe") do set FLDN=%%~a
for %%a in ("TheSpysE\spy.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Human_Killing_Machine_1988.zip"
for %%a in ("Human Killing Machine") do set FLDN=%%~a
for %%a in ("HumanKil\HKM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crazy_Cows_1998.zip"
for %%a in ("Crazy Cows") do set FLDN=%%~a
for %%a in ("crazycow\COWS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Carl_Lewis_Challenge_1992.zip"
for %%a in ("The Carl Lewis Challenge") do set FLDN=%%~a
for %%a in ("TheCarlL\CARL.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fire_Fighter_1998.zip"
for %%a in ("Fire Fighter") do set FLDN=%%~a
for %%a in ("firefigh\ff.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Floppy_Discus_1987.zip"
for %%a in ("Tommy's Floppy Discus") do set FLDN=%%~a
for %%a in ("TomFlop\TOMMYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Flipout_1987.zip"
for %%a in ("Tommy's Flipout") do set FLDN=%%~a
for %%a in ("TomFlip\TOMMYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mind_Castle_I_1991.zip"
for %%a in ("Mind Castle I") do set FLDN=%%~a
for %%a in ("mindc1\HELLO.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Panthers_in_the_Shadows_1997.zip"
for %%a in ("Panthers in the Shadows") do set FLDN=%%~a
for %%a in ("Panthers\PANTHERS\PANTHER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alphaman_1992.zip"
for %%a in ("Alphaman") do set FLDN=%%~a
for %%a in ("alphama2\ALPHAMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rolling_Ronny_1991.zip"
for %%a in ("Rolling Ronny") do set FLDN=%%~a
for %%a in ("RollingR\ROLLING.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rollerblade_Racer_1992.zip"
for %%a in ("Rollerblade Racer") do set FLDN=%%~a
for %%a in ("Rollerbl\PCBLADE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hezarin_1981.zip"
for %%a in ("Hezarin") do set FLDN=%%~a
for %%a in ("hezarin\HEZARIN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ed_Chess_1994.zip"
for %%a in ("Ed Chess") do set FLDN=%%~a
for %%a in ("edchess\EDCHESS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"First_Over_Germany_1988.zip"
for %%a in ("First Over Germany") do set FLDN=%%~a
for %%a in ("FirstOve\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zork_II_-_The_Wizard_of_Frobozz_1981.zip"
for %%a in ("Zork II - The Wizard of Frobozz") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rastan_1990.zip"
for %%a in ("Rastan") do set FLDN=%%~a
for %%a in ("Rastan\rastan.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Robot_Odyssey_1985.zip"
for %%a in ("Robot Odyssey") do set FLDN=%%~a
for %%a in ("roboody\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sky_and_Rica_1995.zip"
for %%a in ("Sky & Rica") do set FLDN=%%~a
for %%a in ("SkyRica\S&amp;R.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Las_Vegas_EGA_Casino_Version_2.0_1991.zip"
for %%a in ("The Las Vegas EGA Casino") do set FLDN=%%~a
for %%a in ("TLVCas20\Vegas.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Construction_Bob_in_the_Bouncing_Factory_1993.zip"
for %%a in ("Construction Bob in the Bouncing Factory") do set FLDN=%%~a
for %%a in ("Const\BOB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jinxter_1988.zip"
for %%a in ("Jinxter") do set FLDN=%%~a
for %%a in ("jinxter\JINXTER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"NFL_Pro_League_Football_1991_edition_1991.zip"
for %%a in ("NFL Pro League Football") do set FLDN=%%~a
for %%a in ("NFLPLF91\NFLEGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Big_Bobs_Drive_In_1992.zip"
for %%a in ("Big Bob's Drive In") do set FLDN=%%~a
for %%a in ("BigBobsD\DRIVEIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Novalight_Tetris_1995.zip"
for %%a in ("Novalight Tetris") do set FLDN=%%~a
for %%a in ("Novaligh\TETRIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"TrainBall_1990.zip"
for %%a in ("TrainBall") do set FLDN=%%~a
for %%a in ("TrainBal\TBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"CJs_Elephant_Antics_1993.zip"
for %%a in ("CJ's Elephant Antics") do set FLDN=%%~a
for %%a in ("CJsEleph\CJ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Guy_Spy_and_the_Crystals_of_Armageddon_1992.zip"
for %%a in ("Guy Spy and the Crystals of Armageddon") do set FLDN=%%~a
for %%a in ("GuySpyan\GUYSPY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cybercon_III_1991.zip"
for %%a in ("Cybercon III") do set FLDN=%%~a
for %%a in ("Cybercon\CYBERCON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Joan_of_Arc_-_Siege_and_the_Sword_1989.zip"
for %%a in ("Joan of Arc - Siege and the Sword") do set FLDN=%%~a
for %%a in ("joanarc\JOAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"FAV1_3_shareware.zip"
for %%a in ("Graphics- Faceoff") do set FLDN=%%~a
for %%a in ("RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Frigate_1989.zip"
for %%a in ("Frigate") do set FLDN=%%~a
for %%a in ("frigate\FRIGATE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Aethra_Chronicles_-_Volume_One_-_Celystras_Bane_1994.zip"
for %%a in ("The Aethra Chronicles - Volume One - Celystra's Bane") do set FLDN=%%~a
for %%a in ("aeth1cly\GAME.EX") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dr_Thorps_Mini_Blackjack_1992.zip"
for %%a in ("Dr Thorp's Mini Blackjack") do set FLDN=%%~a
for %%a in ("drthorp\MBJ.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quadrax_1996.zip"
for %%a in ("Quadrax") do set FLDN=%%~a
for %%a in ("Quadrax\QUADRAX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quik_Majik_Adventure_1991.zip"
for %%a in ("Quik Majik Adventure") do set FLDN=%%~a
for %%a in ("qmajik\MAJIK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zarch_1988.zip"
for %%a in ("Zarch") do set FLDN=%%~a
for %%a in ("Zarch\VIRUSEGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Professional_Tennis_Simulator_1990.zip"
for %%a in ("Professional Tennis Simulator") do set FLDN=%%~a
for %%a in ("ProTenSi\TENIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rings_of_Zilfin_1987.zip"
for %%a in ("Rings of Zilfin") do set FLDN=%%~a
for %%a in ("ringzilf\ZILFIN.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Supernova_1987.zip"
for %%a in ("Supernova") do set FLDN=%%~a
for %%a in ("suprnova\nova.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arctic_Adventure_1991.zip"
for %%a in ("Arctic Adventure") do set FLDN=%%~a
for %%a in ("ArcticAd\AA1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zeroth_Zone_1999.zip"
for %%a in ("Zeroth Zone") do set FLDN=%%~a
for %%a in ("ZerothZo\0Z.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"War_Eagles_1989.zip"
for %%a in ("War Eagles") do set FLDN=%%~a
for %%a in ("WarEagle\WE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rubiks_Cube_1982.zip"
for %%a in ("Rubik's Cube") do set FLDN=%%~a
for %%a in ("RubiksC\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Koolah_1991.zip"
for %%a in ("Koolah") do set FLDN=%%~a
for %%a in ("Koolah\KOOLAH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spot_1990.zip"
for %%a in ("Spot") do set FLDN=%%~a
for %%a in ("Spot90\SPOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Gorilla_Balls_1986.zip"
for %%a in ("Tommy's Gorilla Balls") do set FLDN=%%~a
for %%a in ("tomgori\GBALLS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Front_Lines_1994.zip"
for %%a in ("Front Lines") do set FLDN=%%~a
for %%a in ("fronline\FL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crazy_Shot_1989.zip"
for %%a in ("Crazy Shot") do set FLDN=%%~a
for %%a in ("CrazySho\CRAZY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"sn0853b.zip"
for %%a in ("sn0853b.zip"
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wild_Life_1990.zip"
for %%a in ("Wild Life") do set FLDN=%%~a
for %%a in ("WildLife\WILD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Oubliette_1983.zip"
for %%a in ("Oubliette") do set FLDN=%%~a
for %%a in ("oubliet\OUB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Gorilla_Ball_Gauntlet_1987.zip"
for %%a in ("Tommy's Gorilla Ball Gauntlet") do set FLDN=%%~a
for %%a in ("TomGBGau\TOMMYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"T-Zero_1991.zip"
for %%a in ("T-Zero") do set FLDN=%%~a
for %%a in ("tzero\T-ZERO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Countdown_to_Doom_1987.zip"
for %%a in ("Countdown to Doom") do set FLDN=%%~a
for %%a in ("contdoom\DOOM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Expert_School_of_Knowledge_1992.zip"
for %%a in ("Expert School of Knowledge") do set FLDN=%%~a
for %%a in ("ExpertSc\know.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wind_in_the_Willows_1993.zip"
for %%a in ("Wind in the Willows") do set FLDN=%%~a
for %%a in ("windwill\WILLOWS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Worlds_of_Legend_-_Son_of_the_Empire_1992.zip"
for %%a in ("Worlds of Legend - Son of the Empire") do set FLDN=%%~a
for %%a in ("wlsonemp\EMPIRE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Full_Metal_Planete_1990.zip"
for %%a in ("Full Metal Planete") do set FLDN=%%~a
for %%a in ("fullmeta\fmp.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Kof_1991.zip"
for %%a in ("Super Kof") do set FLDN=%%~a
for %%a in ("SuperKof\EMONKEY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spectre_VR_1993.zip"
for %%a in ("Spectre VR") do set FLDN=%%~a
for %%a in ("SpectreV\SVR286.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Aggression_1990.zip"
for %%a in ("Aggression") do set FLDN=%%~a
for %%a in ("aggress\AGGRESS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizard_Warz_1987.zip"
for %%a in ("Wizard Warz") do set FLDN=%%~a
for %%a in ("wizawarz\wiz.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pick_n_Pile_1990.zip"
for %%a in ("Pick 'n Pile") do set FLDN=%%~a
for %%a in ("PicknPi\egavga.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Gorilla_Ball_Ramparts_1986.zip"
for %%a in ("Tommy's Gorilla Ball Ramparts") do set FLDN=%%~a
for %%a in ("TomGBRam\TOMMYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Balloonz_1993.zip"
for %%a in ("Balloonz") do set FLDN=%%~a
for %%a in ("balloonz\BALLOONZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Woods_2_2002.zip"
for %%a in ("Dark Woods 2") do set FLDN=%%~a
for %%a in ("dwoods2\DWOODS2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Murders_in_Space_1990.zip"
for %%a in ("Murders in Space") do set FLDN=%%~a
for %%a in ("murdspac\TATOU.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Desperado_2_1991.zip"
for %%a in ("Desperado 2") do set FLDN=%%~a
for %%a in ("Desperad\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Helious_II_1993.zip"
for %%a in ("Helious II") do set FLDN=%%~a
for %%a in ("helious2\helious2.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Antkill_1992.zip"
for %%a in ("Antkill") do set FLDN=%%~a
for %%a in ("antkill\ANT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bluebush_Chess_1983.zip"
for %%a in ("Bluebush Chess") do set FLDN=%%~a
for %%a in ("bbchess\CHESSC.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Valhalla_1993.zip"
for %%a in ("Valhalla") do set FLDN=%%~a
for %%a in ("valhalla\VALHALLA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Amberstar_1992.zip"
for %%a in ("Amberstar") do set FLDN=%%~a
for %%a in ("ambrstar\AMBERSTA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bad_Machine_1998.zip"
for %%a in ("Bad_Machine") do set FLDN=%%~a
for %%a in ("badmachi\TR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mad_Cow_Man_and_Deep_Fried_Beef_Fat_Boy_1997.zip"
for %%a in ("Mad Cow Man and Deep Fried Beef Fat Boy") do set FLDN=%%~a
for %%a in ("MadCow\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zork_III_-_The_Dungeon_Master_1982.zip"
for %%a in ("Zork III - The Dungeon Master") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"GFL_Championship_Football_1987.zip"
for %%a in ("GFL Championship Football") do set FLDN=%%~a
for %%a in ("GFLChamp\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Monte_Carlo_Baccarat_1991.zip"
for %%a in ("Monte Carlo Baccarat") do set FLDN=%%~a
for %%a in ("MonteCar\BACCARAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Hunt_for_Red_October_1987.zip"
for %%a in ("The Hunt for Red October") do set FLDN=%%~a
for %%a in ("TheHuntf\EGAGAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fourth_Protocol_The_1985.zip"
for %%a in ("Fourth Protocol,
 The") do set FLDN=%%~a
for %%a in ("4thproto\PROTOCOL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bolo_Adventures_III_1996.zip"
for %%a in ("Bolo Adventures III") do set FLDN=%%~a
for %%a in ("boloadv3\BOLO3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nibbles_1991.zip"
for %%a in ("Nibbles") do set FLDN=%%~a
for %%a in ("nibbles\NIBBLES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hellraider_1989.zip"
for %%a in ("Hellraider") do set FLDN=%%~a
for %%a in ("Hellraid\RAIDER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"StarQuest_-_Rescure_at_Rigel_1983.zip"
for %%a in ("StarQuest - Rescure at Rigel") do set FLDN=%%~a
for %%a in ("starqrr\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hammer_Boy_1991.zip"
for %%a in ("Hammer Boy") do set FLDN=%%~a
for %%a in ("HammerBo\DINAMIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Boppin_1994.zip"
for %%a in ("Boppin'") do set FLDN=%%~a
for %%a in ("boppin\BOPPIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Willy_the_Worm_Part_II_-_The_Big_Trip_Home_1987.zip"
for %%a in ("Willy the Worm Part II - The Big Trip Home") do set FLDN=%%~a
for %%a in ("WilyWor2\WILLY2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Computer_Edition_of_Scrabble_The_1989.zip"
for %%a in ("Computer Edition of Scrabble, The") do set FLDN=%%~a
for %%a in ("cescrabb\scrabble.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Four_Crystals_of_Trazere_1992.zip"
for %%a in ("The Four Crystals of Trazere") do set FLDN=%%~a
for %%a in ("4crysTr\TRAZERE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Clonk_APE_1995.zip"
for %%a in ("Clonk APE") do set FLDN=%%~a
for %%a in ("clonkape\CLONK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"CBOOK12_shareware.zip"
for %%a in ("Educational- Coloring Book") do set FLDN=%%~a
for %%a in ("PAINTER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jack_Nicklaus_Golf_and_Course_Design_-_Signature_Edition_1992.zip"
for %%a in ("Jack Nicklaus Golf & Course Design - Signature Edition") do set FLDN=%%~a
for %%a in ("JackGCD\NICKLAUS\GOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kristal_The_1989.zip"
for %%a in ("Kristal, The") do set FLDN=%%~a
for %%a in ("kristal\XTAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Caverns_of_Gink_1985.zip"
for %%a in ("Caverns of Gink") do set FLDN=%%~a
for %%a in ("CaveGink\CAVERNS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MegaDestroyer_Frantis_1991.zip"
for %%a in ("MegaDestroyer Frantis") do set FLDN=%%~a
for %%a in ("MegaDest\Frantis.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Black_Sanctum_The_1984.zip"
for %%a in ("Black Sanctum, The") do set FLDN=%%~a
for %%a in ("blaksanc\SANCTUM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Earth_Invasion_1993.zip"
for %%a in ("Earth Invasion") do set FLDN=%%~a
for %%a in ("EarthInv\EARTHINV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_-_Cleanstreets_1988.zip"
for %%a in ("Operation - Cleanstreets") do set FLDN=%%~a
for %%a in ("OpCleanS\OCS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Leygrefs_Castle_1986.zip"
for %%a in ("Leygref's Castle") do set FLDN=%%~a
for %%a in ("leygcast\LEYGREF.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Purple_Saturn_Day_1989.zip"
for %%a in ("Purple Saturn Day") do set FLDN=%%~a
for %%a in ("PurpleSa\PURPLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Designs_I_-_Grelminars_Staff_1990.zip"
for %%a in ("Dark Designs I - Grelminars Staff") do set FLDN=%%~a
for %%a in ("darkdes1\DARKDES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Highway_Hunter_1995.zip"
for %%a in ("Highway Hunter") do set FLDN=%%~a
for %%a in ("HighwayH\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MOT_1989.zip"
for %%a in ("MOT") do set FLDN=%%~a
for %%a in ("MOT\MOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xerix_1992.zip"
for %%a in ("Xerix") do set FLDN=%%~a
for %%a in ("Xerix\XERIX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_-_Overkill_II_1990.zip"
for %%a in ("Operation - Overkill II") do set FLDN=%%~a
for %%a in ("opover2\OOIIDOOR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Loves_Fiery_Imbroglio_1988.zip"
for %%a in ("Love's Fiery Imbroglio") do set FLDN=%%~a
for %%a in ("lovefire\PINNTALE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tigers_on_the_Prowl_2_1996.zip"
for %%a in ("Tigers on the Prowl 2") do set FLDN=%%~a
for %%a in ("tigprow\TIGERS\TOP.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Corsarios_1989.zip"
for %%a in ("Corsarios") do set FLDN=%%~a
for %%a in ("Corsario\corsario.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"TerraFire_1997.zip"
for %%a in ("TerraFire") do set FLDN=%%~a
for %%a in ("TerraFir\tf.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Satori_1990.zip"
for %%a in ("Satori") do set FLDN=%%~a
for %%a in ("Satori90\SATORI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"In_the_Dead_of_Night_1995.zip"
for %%a in ("In the Dead of Night") do set FLDN=%%~a
for %%a in ("deadnite\DON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Demon_Blue_1992.zip"
for %%a in ("Demon Blue") do set FLDN=%%~a
for %%a in ("DemonBlu\DEMON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Project_Neptune_1989.zip"
for %%a in ("Project Neptune") do set FLDN=%%~a
for %%a in ("ProjectN\NEPTUNE\NEPTUNE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quadralien_1988.zip"
for %%a in ("Quadralien") do set FLDN=%%~a
for %%a in ("Quadrali\QUADR\VGA\QUAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ancients_2_Approaching_Evil.zip"
for %%a in ("Ancients 2 Approaching Evil.zip"
for %%a in ("Anci2\Go.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mind_Castle_II_1991.zip"
for %%a in ("Mind Castle II") do set FLDN=%%~a
for %%a in ("mindc2\HELLO.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Napoleon_in_Russia_-_Borodino_1812_1988.zip"
for %%a in ("Napoleon in Russia - Borodino 1812") do set FLDN=%%~a
for %%a in ("Napoleon\1812.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Al-Qadim_-_the_Genies_Curse_1994.zip"
for %%a in ("Al-Qadim - the Genie's Curse") do set FLDN=%%~a
for %%a in ("alqadim\GENIER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kindercomp_1983.zip"
for %%a in ("Kindercomp") do set FLDN=%%~a
for %%a in ("kindcomp\kinder.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Floatris_1993.zip"
for %%a in ("Floatris") do set FLDN=%%~a
for %%a in ("floatris\FLOATRIS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Palace_1986.zip"
for %%a in ("Tommy's Palace") do set FLDN=%%~a
for %%a in ("tompala\TOMCATS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"NetHack_1987.zip"
for %%a in ("NetHack") do set FLDN=%%~a
for %%a in ("nethack\NETHACK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"RoboMaze_II_-_The_Lobby_1991.zip"
for %%a in ("RoboMaze II - The Lobby") do set FLDN=%%~a
for %%a in ("RoboMaze\RM2.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dungeon_1987.zip"
for %%a in ("Dungeon") do set FLDN=%%~a
for %%a in ("dungeon\DUNGEON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tank_Attack_1988.zip"
for %%a in ("Tank Attack") do set FLDN=%%~a
for %%a in ("tnkattk\EGA\TANK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eracha_1996.zip"
for %%a in ("Eracha") do set FLDN=%%~a
for %%a in ("Eracha\eracha\ERACHA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Virus-Farm_1992.zip"
for %%a in ("Virus-Farm") do set FLDN=%%~a
for %%a in ("Virus-Fa\VIR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Giant_Space_Slug_1990.zip"
for %%a in ("Giant Space Slug") do set FLDN=%%~a
for %%a in ("GiantSpa\slug.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"LineWars_1990.zip"
for %%a in ("LineWars") do set FLDN=%%~a
for %%a in ("LineWars\LINEWARS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Yuppis_Revenge_1988.zip"
for %%a in ("Yuppi's Revenge") do set FLDN=%%~a
for %%a in ("YuppisR\YUPPI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Dust_1988.zip"
for %%a in ("Star Dust") do set FLDN=%%~a
for %%a in ("StrDst88\STARDUST.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Beyond_Columns_1989.zip"
for %%a in ("Beyond Columns") do set FLDN=%%~a
for %%a in ("beycol\beyond.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cyberwars_1992.zip"
for %%a in ("Cyberwars") do set FLDN=%%~a
for %%a in ("Cybwars\CYBER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sand_Storm_-_The_Championship_Version_1992.zip"
for %%a in ("Sand Storm - The Championship Version") do set FLDN=%%~a
for %%a in ("SandStor\sand.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Taking_of_Beverly_Hills_The_1991.zip"
for %%a in ("Taking of Beverly Hills,
 The") do set FLDN=%%~a
for %%a in ("takebevh\BH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"PE_shareware.zip"
for %%a in ("Planet's Edge") do set FLDN=%%~a
for %%a in ("DEMO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Return_to_Pirates_Island_1983.zip"
for %%a in ("Return to Pirate's Island") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sir_AddaLots_Mini_Math_Adventure_1993.zip"
for %%a in ("Sir AddaLot's Mini Math Adventure") do set FLDN=%%~a
for %%a in ("SirAddaL\ADDALOTM\ADDALOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Titan_1989.zip"
for %%a in ("Titan") do set FLDN=%%~a
for %%a in ("Titan89\TITAN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Harley-Davidson_The_Road_to_Sturgis_1989.zip"
for %%a in ("Harley-Davidson The Road to Sturgis") do set FLDN=%%~a
for %%a in ("Harley-D\HG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jang-gi_1991.zip"
for %%a in ("Jang-gi") do set FLDN=%%~a
for %%a in ("janggi\JT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alien_Phobia_1997.zip"
for %%a in ("Alien Phobia") do set FLDN=%%~a
for %%a in ("AlienPho\PHOBIA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Champ_Centiped-em_1997.zip"
for %%a in ("Champ Centiped-em") do set FLDN=%%~a
for %%a in ("ChampCen\CHAMP\CENTIPED\CENTIPED.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rath-Tha_1992.zip"
for %%a in ("Rath-Tha") do set FLDN=%%~a
for %%a in ("RathTha\RATH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"AV8B_Harrier_Assault_1992.zip"
for %%a in ("AV8B Harrier Assault") do set FLDN=%%~a
for %%a in ("av8b\AV8B.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Humbug_1990.zip"
for %%a in ("Humbug") do set FLDN=%%~a
for %%a in ("humbug\HUMBUG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tear_Down_the_Wall_1990.zip"
for %%a in ("Tear Down the Wall") do set FLDN=%%~a
for %%a in ("TearDown\wall.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"ICON_-_The_Quest_for_the_Ring_1984.zip"
for %%a in ("ICON - The Quest for the Ring") do set FLDN=%%~a
for %%a in ("ICONring\Icon.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rome_-_Pathway_to_Power_1993.zip"
for %%a in ("Rome - Pathway to Power") do set FLDN=%%~a
for %%a in ("romepath\ROME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ruins_of_Cawdor.zip"
for %%a in ("Ruins of Cawdor.zip"
for %%a in ("shadyser\cawdor\CAWDOR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vegas_Gambler_1987.zip"
for %%a in ("Vegas Gambler") do set FLDN=%%~a
for %%a in ("VegasGam\Start.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snow_Queen_The_1993.zip"
for %%a in ("Snow Queen, The") do set FLDN=%%~a
for %%a in ("snowquen\QUEEN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bobs_Dragon_Hunt_1992.zip"
for %%a in ("Bob's Dragon Hunt") do set FLDN=%%~a
for %%a in ("bdraghu\BDH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Racter_1984.zip"
for %%a in ("Racter") do set FLDN=%%~a
for %%a in ("racter\RACTER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cervii_1993.zip"
for %%a in ("Cervii") do set FLDN=%%~a
for %%a in ("cervii\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"WWII_-_Battles_of_the_South_Pacific_1993.zip"
for %%a in ("WWII - Battles of the South Pacific") do set FLDN=%%~a
for %%a in ("WWIIBat\WW2!.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Inanimate_Racer_1998.zip"
for %%a in ("Inanimate Racer") do set FLDN=%%~a
for %%a in ("Inanimat\RACER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Escape_from_Markana_1994.zip"
for %%a in ("Escape from Markana") do set FLDN=%%~a
for %%a in ("EscfMark\MARKANA1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Laserwars_1994.zip"
for %%a in ("Laserwars") do set FLDN=%%~a
for %%a in ("laserwar\LASERWAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tetriller_1990.zip"
for %%a in ("Tetriller") do set FLDN=%%~a
for %%a in ("Tetrille\tetrill.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Peach_the_Lobster_1994.zip"
for %%a in ("Peach the Lobster") do set FLDN=%%~a
for %%a in ("Peachthe\peach.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Artura_1989.zip"
for %%a in ("Artura") do set FLDN=%%~a
for %%a in ("Artura\ARTURA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"On_the_Ball_1993.zip"
for %%a in ("On the Ball") do set FLDN=%%~a
for %%a in ("OTB\OTB\OTB.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sea_Rogue_1992.zip"
for %%a in ("Sea Rogue") do set FLDN=%%~a
for %%a in ("SeaRogue\ROGUE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dream_Warrior_1989.zip"
for %%a in ("Dream Warrior") do set FLDN=%%~a
for %%a in ("DreamWar\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Alpine_Encounter_The_1985.zip"
for %%a in ("Alpine Encounter,
 The") do set FLDN=%%~a
for %%a in ("alpine\START.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"S.C.Out_1992.zip"
for %%a in ("S.C.Out") do set FLDN=%%~a
for %%a in ("SCOut\SCOUT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grime_1984.zip"
for %%a in ("Grime") do set FLDN=%%~a
for %%a in ("Grime\GRIME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Misers_House_The_1981.zip"
for %%a in ("Miser's House, The") do set FLDN=%%~a
for %%a in ("miserhou\MISER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Phrase_Master_1990.zip"
for %%a in ("Phrase Master") do set FLDN=%%~a
for %%a in ("PhraseMa\PHRASE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Klondike_Solitaire_1984.zip"
for %%a in ("Klondike Solitaire") do set FLDN=%%~a
for %%a in ("klondike\CARDGAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spectre_1992.zip"
for %%a in ("Spectre") do set FLDN=%%~a
for %%a in ("Spectre\svr.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jesus_Matchup_1994.zip"
for %%a in ("Jesus Matchup") do set FLDN=%%~a
for %%a in ("jesusmu\JESUSMUP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quest__1995.zip"
for %%a in ("Quest ][") do set FLDN=%%~a
for %%a in ("quest2\QUEST2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Silent_Shadow_1988.zip"
for %%a in ("Silent Shadow") do set FLDN=%%~a
for %%a in ("SilentSh\Silent.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Demons_Tomb_-_The_Awakening_1989.zip"
for %%a in ("Demon's Tomb - The Awakening") do set FLDN=%%~a
for %%a in ("demotomb\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Uncles_Casino_1991.zip"
for %%a in ("Uncle's Casino") do set FLDN=%%~a
for %%a in ("UnclesCa\21.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Burps_1993.zip"
for %%a in ("The Burps") do set FLDN=%%~a
for %%a in ("TheBurps\BURP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chesterland_Adventure_1995.zip"
for %%a in ("Chesterland Adventure") do set FLDN=%%~a
for %%a in ("chester\CHESTER1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"In_the_Days_of_Knights_and_Kings_1989.zip"
for %%a in ("In the Days of Knights & Kings") do set FLDN=%%~a
for %%a in ("intokk\KNI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Balance_1993.zip"
for %%a in ("Balance") do set FLDN=%%~a
for %%a in ("Balance\BALANCE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Once_Upon_a_Time_-_Baba_Yaga_1991.zip"
for %%a in ("Once Upon a Time - Baba Yaga") do set FLDN=%%~a
for %%a in ("ouatbaba\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sorcerer_of_Claymorgue_Castle_1984.zip"
for %%a in ("Sorcerer of Claymorgue Castle") do set FLDN=%%~a
for %%a in ("soclayc\GAME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Tracer_Sanction_1984.zip"
for %%a in ("The Tracer Sanction") do set FLDN=%%~a
for %%a in ("tracer\SANCTION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Charlie_Chaplin_1988.zip"
for %%a in ("Charlie Chaplin") do set FLDN=%%~a
for %%a in ("CharlieC\CHARLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eye_of_the_Storm_1993.zip"
for %%a in ("Eye of the Storm") do set FLDN=%%~a
for %%a in ("eyestorm\EOS\EOS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bandit_1986.zip"
for %%a in ("Bandit") do set FLDN=%%~a
for %%a in ("Bandit\BANDIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spaced_1996.zip"
for %%a in ("Spaced") do set FLDN=%%~a
for %%a in ("Spaced\SPACED.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fire_and_Forget_II_1990.zip"
for %%a in ("Fire & Forget II") do set FLDN=%%~a
for %%a in ("FireForg\FF2EGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bazooka_of_the_Red_Dragon_1997.zip"
for %%a in ("Bazooka of the Red Dragon") do set FLDN=%%~a
for %%a in ("BORD\BORD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Oo-Topos_1987.zip"
for %%a in ("Oo-Topos") do set FLDN=%%~a
for %%a in ("topos\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tau_Ceti_1987.zip"
for %%a in ("Tau Ceti") do set FLDN=%%~a
for %%a in ("TauCeti\TAU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bolo_Adventures_II_1992.zip"
for %%a in ("Bolo Adventures II") do set FLDN=%%~a
for %%a in ("boloadv2\BOLO2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cosmic_Crusader_1982.zip"
for %%a in ("Cosmic Crusader") do set FLDN=%%~a
for %%a in ("CosmicCr\COSMIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shard_of_Spring_1986.zip"
for %%a in ("Shard of Spring") do set FLDN=%%~a
for %%a in ("sharspri\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Champion_of_the_Raj_1991.zip"
for %%a in ("Champion of the Raj") do set FLDN=%%~a
for %%a in ("champraj\RAJ.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"CJ_in_the_USA_1993.zip"
for %%a in ("CJ in the USA") do set FLDN=%%~a
for %%a in ("CJintheU\CJUSA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Legends_of_Murder_-_Volume_2_Grey_Haven_1991.zip"
for %%a in ("Legends of Murder - Volume 2 Grey Haven") do set FLDN=%%~a
for %%a in ("legom2\GREYHAVE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Whizz_1994.zip"
for %%a in ("Whizz") do set FLDN=%%~a
for %%a in ("Whizz94\WHIZZ\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hong_Pong_1998.zip"
for %%a in ("Hong Pong") do set FLDN=%%~a
for %%a in ("HongPong\HP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultizurk_1995.zip"
for %%a in ("Ultizurk") do set FLDN=%%~a
for %%a in ("ultizurk\UUB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Flippys_Circus_Coins_1988.zip"
for %%a in ("Flippy's Circus Coins") do set FLDN=%%~a
for %%a in ("FlippysC\CIRCUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hard_Drivin_II_1990.zip"
for %%a in ("Hard Drivin' II") do set FLDN=%%~a
for %%a in ("HDriv2\HD2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Yogi_Bears_Math_Adventures_1990.zip"
for %%a in ("Yogi Bear's Math Adventures") do set FLDN=%%~a
for %%a in ("YogiBear\YOGI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nil_Dieu_Vivant_1989.zip"
for %%a in ("Nil Dieu Vivant") do set FLDN=%%~a
for %%a in ("NilDieuV\PHARAOH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sleeping_Gods_Lie_1989.zip"
for %%a in ("Sleeping GodsLie") do set FLDN=%%~a
for %%a in ("sleepgod\FE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Annas_Gram_1987.zip"
for %%a in ("Anna's Gram") do set FLDN=%%~a
for %%a in ("annagram\ANNAGRM3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Breach_1987.zip"
for %%a in ("Breach") do set FLDN=%%~a
for %%a in ("breach1\BREACH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Goferpop_1991.zip"
for %%a in ("Goferpop") do set FLDN=%%~a
for %%a in ("Goferpop\GOFERPOP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cadaver_1990.zip"
for %%a in ("Cadaver") do set FLDN=%%~a
for %%a in ("cadaver\CAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"FlixMix_1993.zip"
for %%a in ("FlixMix") do set FLDN=%%~a
for %%a in ("flixmix\FLIXMIX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Defender_of_Boston_-_The_Rock_Island_Mystery_1992.zip"
for %%a in ("Defender of Boston - The Rock Island Mystery") do set FLDN=%%~a
for %%a in ("dboston\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spirit_of_Adventure_1991.zip"
for %%a in ("Spirit of Adventure") do set FLDN=%%~a
for %%a in ("spiradv\SOA\SOA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Encyclopedia_of_War_-_Ancient_Battles_1988.zip"
for %%a in ("Encyclopedia of War - Ancient Battles") do set FLDN=%%~a
for %%a in ("eowabat\BATTLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"GBA_Championship_Basketball_-_Two-on-Two_1986.zip"
for %%a in ("GBA Championship Basketball - Two-on-Two") do set FLDN=%%~a
for %%a in ("GBAChamp\GBA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bureaucracy_1987.zip"
for %%a in ("Bureaucracy") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Iznogoud_1987.zip"
for %%a in ("Iznogoud") do set FLDN=%%~a
for %%a in ("iznogoud\IZN1FCGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Game_With_No_Name_1990.zip"
for %%a in ("The Game With No Name") do set FLDN=%%~a
for %%a in ("TheGameW\noname.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jewels_of_Darkness_1986.zip"
for %%a in ("Jewels of Darkness") do set FLDN=%%~a
for %%a in ("jewldark\MENU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ballgame_2_1992.zip"
for %%a in ("Ballgame2") do set FLDN=%%~a
for %%a in ("Bgame2\BALGAME2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MVP_Bridge_1994.zip"
for %%a in ("MVP Bridge") do set FLDN=%%~a
for %%a in ("MVPBridg\BR1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pub_Pool_1987.zip"
for %%a in ("Pub Pool") do set FLDN=%%~a
for %%a in ("PubPool\POOL.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bob_Morane_-_Science_Fiction_1_1987.zip"
for %%a in ("Bob Morane - Science Fiction1") do set FLDN=%%~a
for %%a in ("BobMoran\TATOU.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"England_Championship_Special_1991.zip"
for %%a in ("England Championship Special") do set FLDN=%%~a
for %%a in ("EnglandC\ENGLAND.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shadowforce_1994.zip"
for %%a in ("Shadowforce") do set FLDN=%%~a
for %%a in ("shadfor\SFORCE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Boxzum_1989.zip"
for %%a in ("Boxzum") do set FLDN=%%~a
for %%a in ("Boxzum\BOXZUM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Attack_On_Altair_1983.zip"
for %%a in ("Attack On Altair") do set FLDN=%%~a
for %%a in ("AttackOn\altair.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Othello_1982.zip"
for %%a in ("Othello") do set FLDN=%%~a
for %%a in ("Othell82\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Maze_Mission_Adventure_Game_1991.zip"
for %%a in ("Maze Mission Adventure Game") do set FLDN=%%~a
for %%a in ("mazemag\ADMAZE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Astronomy_Quiz_1988.zip"
for %%a in ("The Astronomy Quiz") do set FLDN=%%~a
for %%a in ("TheAstro\astro.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cybergenic_Ranger_-_Secret_of_the_7th_Planet_1990.zip"
for %%a in ("Cybergenic Ranger - Secret of the 7th Planet") do set FLDN=%%~a
for %%a in ("Cybergen\START.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Encounter_1984.zip"
for %%a in ("Encounter") do set FLDN=%%~a
for %%a in ("Encounte\ENCOUNTE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Centerfold_Squares_1988.zip"
for %%a in ("Centerfold Squares") do set FLDN=%%~a
for %%a in ("centsqr\CFS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Amazing_Adventures_of_ANSI_Dude_1995.zip"
for %%a in ("The Amazing Adventures of ANSI Dude") do set FLDN=%%~a
for %%a in ("AmzANSI\AD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dedale_1986.zip"
for %%a in ("Dedale") do set FLDN=%%~a
for %%a in ("dedale\Dedale.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kaeon_1992.zip"
for %%a in ("Kaeon") do set FLDN=%%~a
for %%a in ("Kaeon\KAEON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vampiric_Tower_2000.zip"
for %%a in ("Vampiric Tower") do set FLDN=%%~a
for %%a in ("vamptow\VTOWER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"PC-Darts_1987.zip"
for %%a in ("PC-Darts") do set FLDN=%%~a
for %%a in ("PCDarts\PCDARTS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Planetfall_1983.zip"
for %%a in ("Planetfall") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Giddy_3_-_The_Retro_Eggsperience_2000.zip"
for %%a in ("Giddy 3 - The Retro Eggsperience") do set FLDN=%%~a
for %%a in ("giddy3\giddy3.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Apples_and_Oranges_1990.zip"
for %%a in ("Apples & Oranges") do set FLDN=%%~a
for %%a in ("apploran\APP&amp;ORG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Final_Crusade_of_Kroz_1990.zip"
for %%a in ("The Final Crusade of Kroz") do set FLDN=%%~a
for %%a in ("TKrozCr\CRUSADE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Othello_1988.zip"
for %%a in ("Othello") do set FLDN=%%~a
for %%a in ("Othell88\OTHELLO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"KOPS_1996.zip"
for %%a in ("KOPS") do set FLDN=%%~a
for %%a in ("KOPS\KOPS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Iljimae-jeon_-_Manpa_Sikjeok-pyeon_1994.zip"
for %%a in ("Iljimae-jeon - Manpa Sikjeok-pyeon") do set FLDN=%%~a
for %%a in ("Iljimae\DANBI\ILZI.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Animated_Memory_Game_1994.zip"
for %%a in ("The Animated Memory Game") do set FLDN=%%~a
for %%a in ("tamg\AMEM.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cunning_Football_1991.zip"
for %%a in ("Cunning Football") do set FLDN=%%~a
for %%a in ("cunnfoot\CFB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Batn_Ball_1995.zip"
for %%a in ("Bat'n Ball") do set FLDN=%%~a
for %%a in ("BatnBall\BAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shiloh_-_Grants_Trial_in_the_West_1987.zip"
for %%a in ("Shiloh - Grant's Trial in the West") do set FLDN=%%~a
for %%a in ("ShilohG\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Astro-Dodge_1982.zip"
for %%a in ("Astro-Dodge") do set FLDN=%%~a
for %%a in ("AstroDo\Dodge.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Talisman_-_Challenging_the_Sands_of_Time_1987.zip"
for %%a in ("Talisman - Challenging the Sands of Time") do set FLDN=%%~a
for %%a in ("talisman\NOVEL.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Nirvana_1989.zip"
for %%a in ("Nirvana") do set FLDN=%%~a
for %%a in ("nirvana\NIRVANA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Death_Bringer_1988.zip"
for %%a in ("Death Bringer") do set FLDN=%%~a
for %%a in ("deatbrin\DB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stellar_Conquest_3_-_Hostile_Takeover_1994.zip"
for %%a in ("Stellar Conquest 3 - Hostile Takeover") do set FLDN=%%~a
for %%a in ("StelCon3\STELCON3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Muzzle_Velocity_1996.zip"
for %%a in ("Muzzle Velocity") do set FLDN=%%~a
for %%a in ("MuzzleVe\run.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ghengis_Khan_1991.zip"
for %%a in ("Ghengis Khan") do set FLDN=%%~a
for %%a in ("ghenkhan\EGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Land_1989.zip"
for %%a in ("The Land") do set FLDN=%%~a
for %%a in ("theland\THELAND.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Skull_Quest_I_-_The_Cyan_Sarcophagus_1993.zip"
for %%a in ("Skull Quest I - The Cyan Sarcophagus") do set FLDN=%%~a
for %%a in ("SkullQ1\SKELETON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Solver_-_The_Bank_Quest_2001.zip"
for %%a in ("Solver - The Bank Quest") do set FLDN=%%~a
for %%a in ("SolverT\solver.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Annals_of_Rome_1988.zip"
for %%a in ("Annals of Rome") do set FLDN=%%~a
for %%a in ("annarome\AOR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dangerous_Streets_1994.zip"
for %%a in ("Dangerous Streets") do set FLDN=%%~a
for %%a in ("Dangerou\DAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Electric_Crayon_3.0_-_Inspector_Gadget_-_Safety_Patrol_1991.zip"
for %%a in ("Electric Crayon 3.0 - Inspector Gadget - Safety Patrol") do set FLDN=%%~a
for %%a in ("ElecIGSP\EC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lost_Crown_of_Queen_Anne_The_1988.zip"
for %%a in ("Lost Crown of Queen Anne,The") do set FLDN=%%~a
for %%a in ("crownqa\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Saga_One_-_Beyond_the_Boundary_1987.zip"
for %%a in ("Star Saga One - Beyond the Boundary") do set FLDN=%%~a
for %%a in ("starsag1\STARSAGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"No_Exit_1990.zip"
for %%a in ("No Exit") do set FLDN=%%~a
for %%a in ("NoExit\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Indenture_1991.zip"
for %%a in ("Indenture") do set FLDN=%%~a
for %%a in ("indent\INDENTUR.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mystery_Master_-_Murder_by_the_Dozen_1983.zip"
for %%a in ("Mystery Master - Murder by the Dozen") do set FLDN=%%~a
for %%a in ("MMMurdD\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jacaranda_Jim_1987.zip"
for %%a in ("JacarandaJim") do set FLDN=%%~a
for %%a in ("jacarand\JIM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sub_Mission_1987.zip"
for %%a in ("Sub Mission") do set FLDN=%%~a
for %%a in ("submiss\autoexec.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Valley_2001.zip"
for %%a in ("The Valley") do set FLDN=%%~a
for %%a in ("tvalley\avalley.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"International_Tennis_1993.zip"
for %%a in ("International Tennis") do set FLDN=%%~a
for %%a in ("IntTenn\TENNIS\NORMAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Malta_Storm_1989.zip"
for %%a in ("Malta Storm") do set FLDN=%%~a
for %%a in ("maltstor\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Angel_Nieto_Pole_500_1990.zip"
for %%a in ("Angel Nieto Pole500") do set FLDN=%%~a
for %%a in ("AngelNie\POLE500.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Beemger_1994.zip"
for %%a in ("Super Beemger") do set FLDN=%%~a
for %%a in ("SuperBee\beemger\BEEMGER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Buzzard_Bait_1983.zip"
for %%a in ("Buzzard Bait") do set FLDN=%%~a
for %%a in ("BuzzardB\BUZZ.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fatal_Challenge_1992.zip"
for %%a in ("Fatal Challenge") do set FLDN=%%~a
for %%a in ("FatalCha\KAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jabbertalky_1982.zip"
for %%a in ("Jabbertalky") do set FLDN=%%~a
for %%a in ("Jabberta\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Space_Vegetable_Corps_1992.zip"
for %%a in ("The Space Vegetable Corps") do set FLDN=%%~a
for %%a in ("TheSpace\JOY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Schoolhouse_1991.zip"
for %%a in ("Schoolhouse") do set FLDN=%%~a
for %%a in ("Schoolho\SCHOOL.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chomps_1983.zip"
for %%a in ("Chomps") do set FLDN=%%~a
for %%a in ("Chomps\CHOMP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Skull_Quest_II_-_The_Vortex_1994.zip"
for %%a in ("Skull Quest II - The Vortex") do set FLDN=%%~a
for %%a in ("SkullQ2\SKULL2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quink_1984.zip"
for %%a in ("Quink") do set FLDN=%%~a
for %%a in ("quink\CBS2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pente_1986.zip"
for %%a in ("Pente") do set FLDN=%%~a
for %%a in ("Pente86\pente.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kamikazi_Alien_1982.zip"
for %%a in ("Kamikazi Alien") do set FLDN=%%~a
for %%a in ("Kamikazi\KAMIZAZE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Exterminator_1983.zip"
for %%a in ("The Exterminator") do set FLDN=%%~a
for %%a in ("TheExter\EXTERM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hellfire_Zone_1995.zip"
for %%a in ("Hellfire Zone") do set FLDN=%%~a
for %%a in ("Hellfire\HELLFIRE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Makers_Matchup_1994.zip"
for %%a in ("Maker's Matchup") do set FLDN=%%~a
for %%a in ("makematc\MAKERMUP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stellar_Crusade_1988.zip"
for %%a in ("Stellar Crusade") do set FLDN=%%~a
for %%a in ("StelCrus\CRUSADE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Orion_Odyssey_-_The_Search_for_the_Magic_Ankh_1991.zip"
for %%a in ("Orion Odyssey - The Search for the Magic Ankh") do set FLDN=%%~a
for %%a in ("OrionOdy\ORION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shard_of_Inovar_1987.zip"
for %%a in ("Shard of Inovar") do set FLDN=%%~a
for %%a in ("sharinov\TRILOGY.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xyphr_1991.zip"
for %%a in ("Xyphr") do set FLDN=%%~a
for %%a in ("Xyphr\XYPHR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Adventures_of_Maddog_Williams_The_1992.zip"
for %%a in ("Adventures of Maddog Williams,
The") do set FLDN=%%~a
for %%a in ("maddogw\MDWVGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Powerdrome_1990.zip"
for %%a in ("Powerdrome") do set FLDN=%%~a
for %%a in ("Powerdro\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Helious_1993.zip"
for %%a in ("Helious") do set FLDN=%%~a
for %%a in ("helious\helious.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mindfighter_1988.zip"
for %%a in ("Mindfighter") do set FLDN=%%~a
for %%a in ("mindfite\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Puzzle_Fun-Pak_1989.zip"
for %%a in ("Puzzle Fun-Pak") do set FLDN=%%~a
for %%a in ("puzzfun\ADV.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Arctic_Moves_1995.zip"
for %%a in ("Arctic Moves") do set FLDN=%%~a
for %%a in ("ArcticMo\ARCTIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Keno_1989.zip"
for %%a in ("Keno") do set FLDN=%%~a
for %%a in ("Keno\KENO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rasterscan_1988.zip"
for %%a in ("Rasterscan") do set FLDN=%%~a
for %%a in ("rastscan\RASTER.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gertrudes_Secrets_1986.zip"
for %%a in ("Gertrude's Secrets") do set FLDN=%%~a
for %%a in ("Gertrude\GERTSEC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Project_Space_Station_1987.zip"
for %%a in ("Project Space Station") do set FLDN=%%~a
for %%a in ("ProjectS\STATION.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moraffs_Stones_1992.zip"
for %%a in ("Moraff's Stones") do set FLDN=%%~a
for %%a in ("MoraSton\stones.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gnafu_1986.zip"
for %%a in ("Gnafu") do set FLDN=%%~a
for %%a in ("Gnafu\gnafu.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Harrier_1990.zip"
for %%a in ("Operation Harrier") do set FLDN=%%~a
for %%a in ("OpHarr\HARRIER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kicks_1989.zip"
for %%a in ("Kicks") do set FLDN=%%~a
for %%a in ("Kicks\KICKS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Steg_the_Slug_1993.zip"
for %%a in ("Steg the Slug") do set FLDN=%%~a
for %%a in ("StegtheS\STEG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Eternal_Adventure_The_1995.zip"
for %%a in ("Eternal Adventure,
The") do set FLDN=%%~a
for %%a in ("eternadv\TEALOCAL.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gemini-2_1986.zip"
for %%a in ("Gemini-2") do set FLDN=%%~a
for %%a in ("Gemini2\GEMINI2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Games_92_-_Espana_1992.zip"
for %%a in ("The Games '92 - Espana") do set FLDN=%%~a
for %%a in ("TGame92\GAMES92.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sea_Search_1984.zip"
for %%a in ("Sea Search") do set FLDN=%%~a
for %%a in ("seaserch\SEASRCH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shuihuzhuan_-_Liangshan_Yingxiong_1997.zip"
for %%a in ("Shuihuzhuan - Liangshan Yingxiong") do set FLDN=%%~a
for %%a in ("Shuihuzh\PLAYVESA.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Advanced_Xoru_1989.zip"
for %%a in ("Advanced Xoru") do set FLDN=%%~a
for %%a in ("advxoru\AXORU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mars_Saga_1988.zip"
for %%a in ("Mars Saga") do set FLDN=%%~a
for %%a in ("marssaga\TITAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Cleaner_1998.zip"
for %%a in ("Operation Cleaner") do set FLDN=%%~a
for %%a in ("OpCleanr\BUILDER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Storm_1987.zip"
for %%a in ("Storm") do set FLDN=%%~a
for %%a in ("Storm87\Storm.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kids_Kards_1990.zip"
for %%a in ("Kid's Kards") do set FLDN=%%~a
for %%a in ("kidskard\KKARDS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Knight_Orc_1987.zip"
for %%a in ("KnightOrc") do set FLDN=%%~a
for %%a in ("korc\menu.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quik_the_Thunder_Rabbit_1994.zip"
for %%a in ("Quik the Thunder Rabbit") do set FLDN=%%~a
for %%a in ("QuiktheT\QUIK\QUIK.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"MAG_1988.zip"
for %%a in ("MAG") do set FLDN=%%~a
for %%a in ("MAG\MAG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Oberon_69_1990.zip"
for %%a in ("Oberon 69") do set FLDN=%%~a
for %%a in ("Oberon69\OBERON.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"WEENIES1_shareware.zip"
for %%a in ("Tommy's Space Weenies") do set FLDN=%%~a
for %%a in ("WEENIES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"FallThru_1990.zip"
for %%a in ("FallThru") do set FLDN=%%~a
for %%a in ("fallthru\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Safari_Guns_1989.zip"
for %%a in ("Safari Guns") do set FLDN=%%~a
for %%a in ("SafariGu\SAFARI.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chess_System_Tal_1997.zip"
for %%a in ("Chess SystemTal") do set FLDN=%%~a
for %%a in ("cstal\ChessR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bridge_Deluxe_2_With_Omar_Sharif_1996.zip"
for %%a in ("Bridge Deluxe 2 With Omar Sharif") do set FLDN=%%~a
for %%a in ("bridgdlx\README.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"StarMines_II_-_Planet_of_the_Mines_1992.zip"
for %%a in ("StarMines II - Planet of the Mines") do set FLDN=%%~a
for %%a in ("StarMin2\sm2.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Perico_Delgado_Maillot_Amarillo_1989.zip"
for %%a in ("Perico Delgado Maillot Amarillo") do set FLDN=%%~a
for %%a in ("perico\PERICO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Earthly_Delights_1984.zip"
for %%a in ("Earthly Delights") do set FLDN=%%~a
for %%a in ("earthdel\start.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ulises_1989.zip"
for %%a in ("Ulises") do set FLDN=%%~a
for %%a in ("Ulises\ULISES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"R.A.M._1990.zip"
for %%a in ("R.A.M.") do set FLDN=%%~a
for %%a in ("RAM\RAM_EGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MegaTraveller_1_-_The_Zhodani_Conspiracy_1990.zip"
for %%a in ("MegaTraveller 1 - The Zhodani Conspiracy") do set FLDN=%%~a
for %%a in ("MegaTra1\TRAV.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pictionary_-_The_Game_of_Quick_Draw_1989.zip"
for %%a in ("Pictionary - The Game of Quick Draw") do set FLDN=%%~a
for %%a in ("Pictiona\PICTION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Portal_The_1988.zip"
for %%a in ("Star Portal,The") do set FLDN=%%~a
for %%a in ("starport\RUN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Street_Sports_Basketball_1987.zip"
for %%a in ("Street Sports Basketball") do set FLDN=%%~a
for %%a in ("StrtSpBa\BBGAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Advanced_Thinking_Skills_1992.zip"
for %%a in ("Advanced Thinking Skills") do set FLDN=%%~a
for %%a in ("AdvTS\TOPRUN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Connex_1992.zip"
for %%a in ("Connex") do set FLDN=%%~a
for %%a in ("connex\CONNEX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snooper_Troopers_Case_2_1982.zip"
for %%a in ("Snooper Troopers Case2") do set FLDN=%%~a
for %%a in ("snoop2\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"I_Damiano_-_The_Wizard_of_Partestrada_1985.zip"
for %%a in ("I, Damiano - The Wizard of Partestrada") do set FLDN=%%~a
for %%a in ("damiano\DAMIANO.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rebel_Charge_at_Chickamauga_1987.zip"
for %%a in ("Rebel Charge at Chickamauga") do set FLDN=%%~a
for %%a in ("RebelCha\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xenocide_1990.zip"
for %%a in ("Xenocide") do set FLDN=%%~a
for %%a in ("Xenocide\XENO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Papus_Odyssey_1993.zip"
for %%a in ("Papu's Odyssey") do set FLDN=%%~a
for %%a in ("papuody\PAPU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spinout_1982.zip"
for %%a in ("Spinout") do set FLDN=%%~a
for %%a in ("Spinout\spin.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ruckus_Roulette_1993.zip"
for %%a in ("Ruckus Roulette") do set FLDN=%%~a
for %%a in ("RuckusRo\ROULETTE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Udoiana_Raunes_2000.zip"
for %%a in ("Udoiana Raunes") do set FLDN=%%~a
for %%a in ("udoi\RAUNES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Serpy_1986.zip"
for %%a in ("Serpy") do set FLDN=%%~a
for %%a in ("Serpy\SERPY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spacewrecked_-_14_Billion_Light_Years_From_Earth_1991.zip"
for %%a in ("Spacewrecked - 14 Billion Light Years From Earth") do set FLDN=%%~a
for %%a in ("spacwrek\JMAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Galactic_Warrior_Rats_1993.zip"
for %%a in ("Galactic Warrior Rats") do set FLDN=%%~a
for %%a in ("GalWR\GWR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Swords_of_Glass_1986.zip"
for %%a in ("Swords of Glass") do set FLDN=%%~a
for %%a in ("sworglas\SWORDS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Usurper_The_-_The_Mines_Of_Qyntarr_1989.zip"
for %%a in ("Usurper,
 The - The Mines Of Qyntarr") do set FLDN=%%~a
for %%a in ("qyntarr\MOQ.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Piranha_1996.zip"
for %%a in ("Piranha") do set FLDN=%%~a
for %%a in ("Piranha\MAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Poogaboo_-_La_Pulga_2_1991.zip"
for %%a in ("Poogaboo - La Pulga2") do set FLDN=%%~a
for %%a in ("Poogaboo\PULGAIIV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Evets_-_The_Ultimate_Adventure_1988.zip"
for %%a in ("Evets - The Ultimate Adventure") do set FLDN=%%~a
for %%a in ("evetsua\EVETS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Letter_Targets_2004.zip"
for %%a in ("Letter Targets") do set FLDN=%%~a
for %%a in ("letttarg\LETTER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Morkin_2_1992.zip"
for %%a in ("Morkin2") do set FLDN=%%~a
for %%a in ("morkin2\MORKIN2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quarky_and_Quaysoos_Turbo_Science_1992.zip"
for %%a in ("Quarky & Quaysoo's Turbo Science") do set FLDN=%%~a
for %%a in ("QuarkyQu\SIERRA\TURBOSCI\TURBOSCI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"International_Sports_Challenge_1992.zip"
for %%a in ("International Sports Challenge") do set FLDN=%%~a
for %%a in ("IntSC\SPORTS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Relix_1993.zip"
for %%a in ("Relix") do set FLDN=%%~a
for %%a in ("relix\RELIX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snoopy_1990.zip"
for %%a in ("Snoopy") do set FLDN=%%~a
for %%a in ("snoopy\SNOOPY.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fooblitzky_1985.zip"
for %%a in ("Fooblitzky") do set FLDN=%%~a
for %%a in ("fooblitz\FOOBLITZ.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sarakon_1991.zip"
for %%a in ("Sarakon") do set FLDN=%%~a
for %%a in ("Sarakon\VGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Egaint_1989.zip"
for %%a in ("Egaint") do set FLDN=%%~a
for %%a in ("Egaint\EGAINT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"ImpArea_1994.zip"
for %%a in ("ImpArea") do set FLDN=%%~a
for %%a in ("ImpArea\IMPAREA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Flight_Light_Plus_1996.zip"
for %%a in ("Flight Light Plus") do set FLDN=%%~a
for %%a in ("FlightLi\FLIGHT\FLIGHT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Venom_1987.zip"
for %%a in ("Venom") do set FLDN=%%~a
for %%a in ("venom87\TRILOGY.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Clydes_Revenge_1995.zip"
for %%a in ("Clyde's Revenge") do set FLDN=%%~a
for %%a in ("clyderev\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Connectris_1996.zip"
for %%a in ("Connectris") do set FLDN=%%~a
for %%a in ("conntris\CNCTRS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rotox_1990.zip"
for %%a in ("Rotox") do set FLDN=%%~a
for %%a in ("Rotox\ROTOX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Netherworld_1990.zip"
for %%a in ("Netherworld") do set FLDN=%%~a
for %%a in ("Netherwo\Nether.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sergueis_Destiny_2001.zip"
for %%a in ("Serguei's Destiny") do set FLDN=%%~a
for %%a in ("serguei\Agi.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"SBREAKER_shareware.zip"
for %%a in ("Space Breaker Defender of the Planet") do set FLDN=%%~a
for %%a in ("RUN.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mission_-_Mainframe_1987.zip"
for %%a in ("Mission - Mainframe") do set FLDN=%%~a
for %%a in ("missmain\MISSION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"House_at_the_Edge_of_Time_The_1990.zip"
for %%a in ("House at the Edge of Time,The") do set FLDN=%%~a
for %%a in ("housedge\HOUSE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shenanigans_1984.zip"
for %%a in ("Shenanigans") do set FLDN=%%~a
for %%a in ("shenanig\SHENAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"NFL_Pro_League_Football_1989.zip"
for %%a in ("NFL Pro League Football") do set FLDN=%%~a
for %%a in ("nflplf89\NFLEGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Diamaze_1990.zip"
for %%a in ("Diamaze") do set FLDN=%%~a
for %%a in ("diamaze\DMAZE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kingdom_of_Hamil_1987.zip"
for %%a in ("Kingdom of Hamil") do set FLDN=%%~a
for %%a in ("kingham\Hamil.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zapem_1982.zip"
for %%a in ("Zap'em") do set FLDN=%%~a
for %%a in ("Zapem\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Magic_Maycabs_1994.zip"
for %%a in ("Magic Maycabs") do set FLDN=%%~a
for %%a in ("MagMayC\MAYCAB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"ORION077_shareware.zip"
for %%a in ("Orion Outreach") do set FLDN=%%~a
for %%a in ("ORION.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"VanSlug_-_X_Mission_1995.zip"
for %%a in ("VanSlug - X Mission") do set FLDN=%%~a
for %%a in ("vanslug\vanslug\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"James_Bond_007_-_The_Stealth_Affair_1990.zip"
for %%a in ("James Bond 007 - The Stealth Affair") do set FLDN=%%~a
for %%a in ("ostealth\bond.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ghost_of_the_Fireflies_2007.zip"
for %%a in ("Ghost of the Fireflies") do set FLDN=%%~a
for %%a in ("ghosfire\FIREFLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gnome_Ranger_1987.zip"
for %%a in ("Gnome Ranger") do set FLDN=%%~a
for %%a in ("gnomer1\AINT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mystery_Mansion_2001.zip"
for %%a in ("Mystery Mansion") do set FLDN=%%~a
for %%a in ("mystmans\MMM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zona_0_1991.zip"
for %%a in ("Zona0") do set FLDN=%%~a
for %%a in ("Zona0\INTRO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Combat_1990.zip"
for %%a in ("Operation Combat") do set FLDN=%%~a
for %%a in ("opcombat\TCOMBAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hole-In-One_Miniature_Golf_1989.zip"
for %%a in ("Hole-In-One Miniature Golf") do set FLDN=%%~a
for %%a in ("HoleN1\VGAGOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Speed_Zone_1988.zip"
for %%a in ("Speed Zone") do set FLDN=%%~a
for %%a in ("SpeedZon\GAME.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Scapeghost_1989.zip"
for %%a in ("Scapeghost") do set FLDN=%%~a
for %%a in ("scapgost\MENU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sirwood_1990.zip"
for %%a in ("Sirwood") do set FLDN=%%~a
for %%a in ("Sirwood\SIRWOOD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Iron_Seed_1994.zip"
for %%a in ("Iron Seed") do set FLDN=%%~a
for %%a in ("ironseed\JOGAR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Final_Orbit_1990.zip"
for %%a in ("Final Orbit") do set FLDN=%%~a
for %%a in ("FinalOrb\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Las_Vegas_EGA_Casino_1987.zip"
for %%a in ("The Las Vegas EGA Casino") do set FLDN=%%~a
for %%a in ("TLVCas\CASINO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Chess_Player_2150_1990.zip"
for %%a in ("Chess Player 2150") do set FLDN=%%~a
for %%a in ("chessp21\CP2150.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Manor_1989.zip"
for %%a in ("Tommy's Manor") do set FLDN=%%~a
for %%a in ("tommano\TOMMANOR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Denomino_1997.zip"
for %%a in ("Denomino") do set FLDN=%%~a
for %%a in ("Denomino\DENODEMO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lord_Avalot_1994.zip"
for %%a in ("Lord Avalot") do set FLDN=%%~a
for %%a in ("avalot\AVALOT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Leisure_Genius_presents_Monopoly_1989.zip"
for %%a in ("Leisure Genius presents Monopoly") do set FLDN=%%~a
for %%a in ("lgpmonop\MONOPOLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Legend_of_the_Red_Dragon_2_-_New_World_1992.zip"
for %%a in ("Legend of the Red Dragon 2 - New World") do set FLDN=%%~a
for %%a in ("legord2\L2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Starball_1986.zip"
for %%a in ("Tommy's Starball") do set FLDN=%%~a
for %%a in ("tomstarb\STARBALL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Learn_to_Add_1987.zip"
for %%a in ("Learn toAdd") do set FLDN=%%~a
for %%a in ("LearntoA\ADD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Clydes_Adventure_1992.zip"
for %%a in ("Clyde's Adventure") do set FLDN=%%~a
for %%a in ("clydadv\CLYDE1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ooze_-_Creepy_Nites_1989.zip"
for %%a in ("Ooze - Creepy Nites") do set FLDN=%%~a
for %%a in ("ooze\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"CHAMP_Kong_1996.zip"
for %%a in ("CHAMP Kong") do set FLDN=%%~a
for %%a in ("CHAMPKon\CHAMP\KONG\KONG.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Fight_of_the_Sumo-Hoppers_1996.zip"
for %%a in ("The Fight of the Sumo-Hoppers") do set FLDN=%%~a
for %%a in ("TheFight\SUMO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cubulus_1991.zip"
for %%a in ("Cubulus") do set FLDN=%%~a
for %%a in ("cubulus\RUNME.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizards_Crown_1985.zip"
for %%a in ("Wizard's Crown") do set FLDN=%%~a
for %%a in ("wizarcro\WC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Funny_Face_1990.zip"
for %%a in ("Funny Face") do set FLDN=%%~a
for %%a in ("FunnyFac\FF2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Forbidden_Castle_1985.zip"
for %%a in ("Forbidden Castle") do set FLDN=%%~a
for %%a in ("forbcast\CASTLE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"E.S.S_Mega_1991.zip"
for %%a in ("E.S.S Mega") do set FLDN=%%~a
for %%a in ("ESSMega\GO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Clockwiser_-_Time_is_Running_Out_1994.zip"
for %%a in ("Clockwiser - Time is RunningOut") do set FLDN=%%~a
for %%a in ("clokwise\clock.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Yendorian_Tales_Book1_-_Chapter_2_1996.zip"
for %%a in ("Yendorian Tales Book1 - Chapter2") do set FLDN=%%~a
for %%a in ("yendor2\ch2.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Secret_Codes_of_C.Y.P.H.E.R._-_Operation_Wildlife_The_1991.zip"
for %%a in ("Secret Codes of C.Y.P.H.E.R. - Operation Wildlife,
The") do set FLDN=%%~a
for %%a in ("sccypher\WILDLIFE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lone_Eagle_-_Colombian_Encounter_1994.zip"
for %%a in ("Lone Eagle - Colombian Encounter") do set FLDN=%%~a
for %%a in ("loneagle\LE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_TunnelMan_1994.zip"
for %%a in ("The TunnelMan") do set FLDN=%%~a
for %%a in ("TheTunne\TUNNEL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rack_Em_1988.zip"
for %%a in ("Rack'Em") do set FLDN=%%~a
for %%a in ("RackEm\POOL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rogue_Clone_1988.zip"
for %%a in ("Rogue Clone") do set FLDN=%%~a
for %%a in ("rogclon\ROGUE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dr_Wongs_Jacks_and_Video_Poker_1992.zip"
for %%a in ("Dr Wong's Jacks & Video Poker") do set FLDN=%%~a
for %%a in ("drwong\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Journey_-_The_Quest_Begins_1988.zip"
for %%a in ("Journey - The Quest Begins") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crazy_Eights_1988.zip"
for %%a in ("Crazy Eights") do set FLDN=%%~a
for %%a in ("crazy8\CRAZY8S.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hoverforce_1990.zip"
for %%a in ("Hoverforce") do set FLDN=%%~a
for %%a in ("Hoverfor\HOVER.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Black_Box_1982.zip"
for %%a in ("BlackBox") do set FLDN=%%~a
for %%a in ("blackbox\Runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"CyberStrike_1994.zip"
for %%a in ("CyberStrike") do set FLDN=%%~a
for %%a in ("CyberStr\CYBER\CS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Fatal_Fumes_1997.zip"
for %%a in ("Fatal Fumes") do set FLDN=%%~a
for %%a in ("FatalFum\PLAY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wibarm_1989.zip"
for %%a in ("Wibarm") do set FLDN=%%~a
for %%a in ("wibarm\diskc\WIBARM.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Storm_Across_Europe_1989.zip"
for %%a in ("Storm Across Europe") do set FLDN=%%~a
for %%a in ("StormAcr\STORM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Breakers_1986.zip"
for %%a in ("Breakers") do set FLDN=%%~a
for %%a in ("breakers\Breakers.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Maxit_1982.zip"
for %%a in ("Maxit") do set FLDN=%%~a
for %%a in ("maxit\MAXIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quadrel_1990.zip"
for %%a in ("Quadrel") do set FLDN=%%~a
for %%a in ("Quadrel\QUADREL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"J_and_Js_Vegas_Pack_-_Black-Jack_1992.zip"
for %%a in ("J & J's Vegas Pack - Black-Jack") do set FLDN=%%~a
for %%a in ("jjvegas\BLKJAKVP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vaxine_1990.zip"
for %%a in ("Vaxine") do set FLDN=%%~a
for %%a in ("Vaxine\VAXINE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Echelon_1988.zip"
for %%a in ("Echelon") do set FLDN=%%~a
for %%a in ("Echelon\ECHELON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Starglider_1986.zip"
for %%a in ("Starglider") do set FLDN=%%~a
for %%a in ("Strglid\SGLIDER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Time_and_Magik_Trilogy_1983.zip"
for %%a in ("Time and Magik Trilogy") do set FLDN=%%~a
for %%a in ("magik\MENU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Passengers_on_the_Wind_1989.zip"
for %%a in ("Passengers on the Wind") do set FLDN=%%~a
for %%a in ("passen1\LPDV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Final_Assault_1988.zip"
for %%a in ("Final Assault") do set FLDN=%%~a
for %%a in ("FinalAss\ASSAULT.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Blob_1986.zip"
for %%a in ("Tommy's Blob") do set FLDN=%%~a
for %%a in ("tomblob\BLOB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Joyous_Rebel_1996.zip"
for %%a in ("Joyous Rebel") do set FLDN=%%~a
for %%a in ("joyrebel\JOYOUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Red_Crystal_-_The_Seven_Secrets_of_Life_1993.zip"
for %%a in ("The Red Crystal - The Seven Secrets of Life") do set FLDN=%%~a
for %%a in ("redcryss\RC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grannys_Place_1983.zip"
for %%a in ("Granny's Place") do set FLDN=%%~a
for %%a in ("granny\GRANNY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ford_Simulator_II_1990.zip"
for %%a in ("Ford Simulator II") do set FLDN=%%~a
for %%a in ("FordSim2\FORD90.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Revelation_1992.zip"
for %%a in ("Revelation") do set FLDN=%%~a
for %%a in ("Revelati\GAME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gamma_Force_in_a_Pit_of_a_Thousand_Screams_1988.zip"
for %%a in ("Gamma Force in a Pit of a Thousand Screams") do set FLDN=%%~a
for %%a in ("gammafo\Gamma.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Quest_of_Kwirks_Castle_1991.zip"
for %%a in ("The Quest of Kwirk's Castle") do set FLDN=%%~a
for %%a in ("tqkwirk\KWIRK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Enet_1987.zip"
for %%a in ("Tommy's Enet") do set FLDN=%%~a
for %%a in ("TommysEn\ENET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Zipman_III_1994.zip"
for %%a in ("ZipmanIII") do set FLDN=%%~a
for %%a in ("ZipmanII\ZM3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"cRIMe_1985.zip"
for %%a in ("cRIMe") do set FLDN=%%~a
for %%a in ("crimeif\CRIME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"CHAMP_Pac-em_1996.zip"
for %%a in ("CHAMP Pac-em") do set FLDN=%%~a
for %%a in ("CHAMPPac\CHAMP\PACEM\PACEM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Windsurf_Willy_1989.zip"
for %%a in ("Windsurf Willy") do set FLDN=%%~a
for %%a in ("Windsurf\WIND.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Once_Upon_A_Time_-_Abracadabra_1991.zip"
for %%a in ("Once Upon A Time - Abracadabra") do set FLDN=%%~a
for %%a in ("ouatabc\GOC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Urthwurm_2002.zip"
for %%a in ("Urthwurm") do set FLDN=%%~a
for %%a in ("Urthwurm\urthwurm.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pulse_1996.zip"
for %%a in ("Pulse") do set FLDN=%%~a
for %%a in ("Pulse96\pulse.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Flagger_1992.zip"
for %%a in ("Flagger") do set FLDN=%%~a
for %%a in ("flagger\FLAGGER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Relentless_Logic_1985.zip"
for %%a in ("Relentless Logic") do set FLDN=%%~a
for %%a in ("Relentle\RLOGIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"VLENGUAS_shareware.zip"
for %%a in ("Educational- Simultaneous Language Translator") do set FLDN=%%~a
for %%a in ("VM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Squares_1989.zip"
for %%a in ("Squares") do set FLDN=%%~a
for %%a in ("Squares\SQUARES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Troika_1991.zip"
for %%a in ("Troika") do set FLDN=%%~a
for %%a in ("Troika91\TROIKA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_One-Armed_Bandit_1986.zip"
for %%a in ("Tommy's One-Armed Bandit") do set FLDN=%%~a
for %%a in ("tom1band\TOMCATS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Hyperdrive_1986.zip"
for %%a in ("Tommy's Hyperdrive") do set FLDN=%%~a
for %%a in ("tomhypdr\HYPER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lane_Mastodon_vs._the_Blubbermen_1988.zip"
for %%a in ("Lane Mastodon vs. the Blubbermen") do set FLDN=%%~a
for %%a in ("lanemast\MASTODON.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Third_Courier_The_1989.zip"
for %%a in ("Third Courier,The") do set FLDN=%%~a
for %%a in ("thirdc\ttc.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Teaching_Tiles_1997.zip"
for %%a in ("Teaching Tiles") do set FLDN=%%~a
for %%a in ("Teaching\TILES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_School_Simulator_-_The_Academy_1987.zip"
for %%a in ("Space School Simulator - The Academy") do set FLDN=%%~a
for %%a in ("SpaceSch\ACAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dotso_1995.zip"
for %%a in ("Dotso") do set FLDN=%%~a
for %%a in ("dotso\DOTSO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dylan_Dog_-_Through_the_Looking_Glass_1992.zip"
for %%a in ("Dylan Dog - Through the Looking Glass") do set FLDN=%%~a
for %%a in ("dylandog\dylan1\MAIN1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Juggles_Butterfly_1983.zip"
for %%a in ("Juggles' Butterfly") do set FLDN=%%~a
for %%a in ("JugglesB\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Infidel_1983.zip"
for %%a in ("Infidel") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Wild_Science_Arcade_1993.zip"
for %%a in ("The Wild Science Arcade") do set FLDN=%%~a
for %%a in ("TheWildS\MAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moptown_Parade_1984.zip"
for %%a in ("Moptown Parade") do set FLDN=%%~a
for %%a in ("MoptownP\AUTOEXEC.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bob_vs_the_Mob_1995.zip"
for %%a in ("Bob vs theMob") do set FLDN=%%~a
for %%a in ("Bobvsthe\BVM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"4_Queens_Computer_Casino_1992.zip"
for %%a in ("4 Queens Computer Casino") do set FLDN=%%~a
for %%a in ("4QueensC\4queens.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Berlin_1948_1989.zip"
for %%a in ("Berlin 1948") do set FLDN=%%~a
for %%a in ("berlin\vgame.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Notrus_1992.zip"
for %%a in ("Notrus") do set FLDN=%%~a
for %%a in ("Notrus92\NOTRUS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ultimuh_MCMLXVII_-_Part_2_of_the_39th_Trilogy_-_The_Quest_for_the_Golden_Amulet_1993.zip"
for %%a in ("Ultimuh MCMLXVII - Part 2 of the 39th Trilogy - The Quest for the Golden Amulet") do set FLDN=%%~a
for %%a in ("Ultimuh\ULTIMUH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xenomorph_1990.zip"
for %%a in ("Xenomorph") do set FLDN=%%~a
for %%a in ("xenomor\xeno.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Snowstrike_1990.zip"
for %%a in ("Snowstrike") do set FLDN=%%~a
for %%a in ("Snowstri\STRIKE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pixel_Puzzler_1990.zip"
for %%a in ("Pixel Puzzler") do set FLDN=%%~a
for %%a in ("pixpuzz\PPMAKER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Magnetic_1993.zip"
for %%a in ("Magnetic") do set FLDN=%%~a
for %%a in ("magnetic\MAGNETIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hotshot_1989.zip"
for %%a in ("Hotshot") do set FLDN=%%~a
for %%a in ("Hotshot\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Volcano_Hunter_1991.zip"
for %%a in ("Volcano Hunter") do set FLDN=%%~a
for %%a in ("VolcanoH\VOLCANO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Starball_1995.zip"
for %%a in ("Starball") do set FLDN=%%~a
for %%a in ("Starball\STAR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tass_Times_in_Tonetown_1986.zip"
for %%a in ("Tass Times in Tonetown") do set FLDN=%%~a
for %%a in ("TassTime\tass.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rocket_Chase_1997.zip"
for %%a in ("Rocket Chase") do set FLDN=%%~a
for %%a in ("RocketCh\RC\RC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"CHAMP_Asterocks_1997.zip"
for %%a in ("CHAMP Asterocks") do set FLDN=%%~a
for %%a in ("CHAMPAst\CHAMP\ASTEROCK\ASTEROCK.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lurking_Horror_The_1987.zip"
for %%a in ("Lurking Horror,
The") do set FLDN=%%~a
for %%a in ("lurkingh\lurking.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Blockbuster_1988.zip"
for %%a in ("Blockbuster") do set FLDN=%%~a
for %%a in ("Blockbus\BB\BUSTER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"G-stones_III_1994.zip"
for %%a in ("G-stonesIII") do set FLDN=%%~a
for %%a in ("Gstones\GEMS3.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Velcro_Mind_1995.zip"
for %%a in ("Velcro Mind") do set FLDN=%%~a
for %%a in ("VelcroMi\VMIND.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sons_of_Liberty_1988.zip"
for %%a in ("Sons of Liberty") do set FLDN=%%~a
for %%a in ("SonsofLi\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MicroLink_Push_Your_Luck_1990.zip"
for %%a in ("MicroLink Push Your Luck") do set FLDN=%%~a
for %%a in ("MLPYL\MLPUSH.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tangled_Tales_1989.zip"
for %%a in ("Tangled Tales") do set FLDN=%%~a
for %%a in ("tangtale\TANGLE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stillhunt_1996.zip"
for %%a in ("Stillhunt") do set FLDN=%%~a
for %%a in ("Stillhun\shunt\SHUNT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bob_Winner_1986.zip"
for %%a in ("Bob Winner") do set FLDN=%%~a
for %%a in ("BobWinne\BOB.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jack_Nicklaus_Unlimited_Golf_and_Course_Design_1990.zip"
for %%a in ("Jack Nicklaus' Unlimited Golf & Course Design") do set FLDN=%%~a
for %%a in ("JackUGCD\GOLF.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Antagony_1995.zip"
for %%a in ("Antagony") do set FLDN=%%~a
for %%a in ("Antagony\ANTAGONY\ANTAGONY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jimmy_Whites_Whirlwind_Snooker_1991.zip"
for %%a in ("Jimmy White's Whirlwind Snooker") do set FLDN=%%~a
for %%a in ("JimmyWhi\JWWS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Marooned_Again_1985.zip"
for %%a in ("Marooned Again") do set FLDN=%%~a
for %%a in ("marooned\MAROONED.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Darker_1995.zip"
for %%a in ("Darker") do set FLDN=%%~a
for %%a in ("Darker\DARKER\X.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Shiftrix_1991.zip"
for %%a in ("Shiftrix") do set FLDN=%%~a
for %%a in ("shiftrix\SHIFTRIX.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Faery_Tale_Adventure_-_Book_1_1989.zip"
for %%a in ("The Faery Tale Adventure - Book1") do set FLDN=%%~a
for %%a in ("farytab\FTE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Worthy_Opponent_1988.zip"
for %%a in ("Worthy Opponent") do set FLDN=%%~a
for %%a in ("WorthyOp\WORTHY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Finagle_1992.zip"
for %%a in ("Finagle") do set FLDN=%%~a
for %%a in ("finagle\FINAGLE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Outer_Ridge_1995.zip"
for %%a in ("Outer Ridge") do set FLDN=%%~a
for %%a in ("OuterRid\OUTRIDGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rescate_En_El_Golfo_1990.zip"
for %%a in ("Rescate En El Golfo") do set FLDN=%%~a
for %%a in ("RescateE\RESCATE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Demoniak_1990.zip"
for %%a in ("Demoniak") do set FLDN=%%~a
for %%a in ("demoniak\PFINAL2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Four_Card_Solitaire_1989.zip"
for %%a in ("Four Card Solitaire") do set FLDN=%%~a
for %%a in ("4cardsol\FOURCARD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"MicroLink_Shut_the_Box_1989.zip"
for %%a in ("MicroLink Shut theBox") do set FLDN=%%~a
for %%a in ("MLStB\MLSHUT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Moses_Matchup_1994.zip"
for %%a in ("Moses Matchup") do set FLDN=%%~a
for %%a in ("MosesMat\MOSESMUP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"PlayMaker_Football_1991.zip"
for %%a in ("PlayMaker Football") do set FLDN=%%~a
for %%a in ("PlayMak1\PMFB.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spy_Snatcher_1988.zip"
for %%a in ("Spy Snatcher") do set FLDN=%%~a
for %%a in ("spysnat\SPY.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Poker_Galore_1992.zip"
for %%a in ("Poker Galore") do set FLDN=%%~a
for %%a in ("PokerGal\PKR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"CHAMP_Galaxia_1996.zip"
for %%a in ("CHAMP Galaxia") do set FLDN=%%~a
for %%a in ("CHGalax\CHAMP\GALAXIA\GALAXIA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Twilights_Ransom_1988.zip"
for %%a in ("Twilight's Ransom") do set FLDN=%%~a
for %%a in ("twilrans\RANSOM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dragon_History_1995.zip"
for %%a in ("Dragon History") do set FLDN=%%~a
for %%a in ("draghist\DH.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spryjinx_1997.zip"
for %%a in ("Spryjinx") do set FLDN=%%~a
for %%a in ("Spryjinx\SPRYJINX.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pyramid_of_Doom_1981.zip"
for %%a in ("Pyramid of Doom") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vegas_Pro_Video_Poker_1989.zip"
for %%a in ("Vegas Pro Video Poker") do set FLDN=%%~a
for %%a in ("VegasPro\GO.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"High_Stakes_by_Dick_Francis_1986.zip"
for %%a in ("High Stakes by Dick Francis") do set FLDN=%%~a
for %%a in ("$takes\START.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Silo_1986.zip"
for %%a in ("Tommy's Silo") do set FLDN=%%~a
for %%a in ("TommysSi\TOMCATS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Trials_of_Odysseus_Kent_2002.zip"
for %%a in ("The Trials of Odysseus Kent") do set FLDN=%%~a
for %%a in ("odykent\Odysseus.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"DRWSM39_shareware.zip"
for %%a in ("Educational- DrawSome") do set FLDN=%%~a
for %%a in ("DRAWSOME.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Birds_of_Prey_1992.zip"
for %%a in ("Birds of Prey") do set FLDN=%%~a
for %%a in ("BirdsofP\BOP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"CHAMP_Ms._Pac-em_1996.zip"
for %%a in ("CHAMP Ms. Pac-em") do set FLDN=%%~a
for %%a in ("CHAMPMsP\CHAMP\MSPACEM\MSPACEM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Krymini_1991.zip"
for %%a in ("Krymini") do set FLDN=%%~a
for %%a in ("krymini\Krymini.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cavequest_1985.zip"
for %%a in ("Cavequest") do set FLDN=%%~a
for %%a in ("caveque\Quest.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"ESCAPADE_shareware.zip"
for %%a in ("Escapade") do set FLDN=%%~a
for %%a in ("ESCMCGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sliders_1991.zip"
for %%a in ("Sliders") do set FLDN=%%~a
for %%a in ("Sliders\S_VGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Trekboer_1985.zip"
for %%a in ("Trekboer") do set FLDN=%%~a
for %%a in ("trekboer\TREKBOER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Billiards_Simulator_1989.zip"
for %%a in ("Billiards Simulator") do set FLDN=%%~a
for %%a in ("Billiard\Go.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ladder_Man_1992.zip"
for %%a in ("LadderMan") do set FLDN=%%~a
for %%a in ("ladderma\1\LADDER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"McMurphys_Mansion_1984.zip"
for %%a in ("McMurphy's Mansion") do set FLDN=%%~a
for %%a in ("mcmurphy\MCMURPHY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wordtris_1992.zip"
for %%a in ("Wordtris") do set FLDN=%%~a
for %%a in ("Wordtris\wordtris.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"RAMSAK_1982.zip"
for %%a in ("RAMSAK") do set FLDN=%%~a
for %%a in ("RAMSAK\Ramsak.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heavy_Water_Jogger_1992.zip"
for %%a in ("Heavy Water Jogger") do set FLDN=%%~a
for %%a in ("HeavyWat\JOGGER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Booly_1991.zip"
for %%a in ("Booly") do set FLDN=%%~a
for %%a in ("booly\BOOLY.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"RockN_Roller_1992.zip"
for %%a in ("Rock'N Roller") do set FLDN=%%~a
for %%a in ("RockNRol\Rock.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Block_Five_1986.zip"
for %%a in ("Block Five") do set FLDN=%%~a
for %%a in ("blkfive\BLOCK5.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Quest_for_the_Time-Bird_1989.zip"
for %%a in ("Quest for the Time-Bird") do set FLDN=%%~a
for %%a in ("timebird\Tatou.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"Yendorian_Tales_-_The_Tyrants_of_Thaine_1997.zip"
for %%a in ("Yendorian Tales - The Tyrants of Thaine") do set FLDN=%%~a
for %%a in ("yendor3\SW.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"PCUSADEM_shareware.zip"
for %%a in ("PC USA (demo)") do set FLDN=%%~a
for %%a in ("DEMO.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Voodoo_Castle_1981.zip"
for %%a in ("Voodoo Castle") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"FourSide_1990.zip"
for %%a in ("FourSide") do set FLDN=%%~a
for %%a in ("fourside\FOURSIDE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mindbender_1990.zip"
for %%a in ("Mindbender") do set FLDN=%%~a
for %%a in ("Mindbend\MAGIC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mind-Roll_1988.zip"
for %%a in ("Mind-Roll") do set FLDN=%%~a
for %%a in ("MindRol\MINDROLL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ariva_1992.zip"
for %%a in ("Ariva") do set FLDN=%%~a
for %%a in ("ariva\ARIVA44.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sherman_M4_1989.zip"
for %%a in ("Sherman M4") do set FLDN=%%~a
for %%a in ("ShermanM\SHERMAN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Final_Soul_1995.zip"
for %%a in ("Final Soul") do set FLDN=%%~a
for %%a in ("finlsoul\FINALV4.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Traders_-_The_Intergalactic_Trading_Game_1992.zip"
for %%a in ("Traders - The Intergalactic Trading Game") do set FLDN=%%~a
for %%a in ("Traders\TRADERS.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wishbringer_1985.zip"
for %%a in ("Wishbringer") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Gnome_Ranger_II_-_Ingrids_Back_1988.zip"
for %%a in ("Gnome Ranger II - Ingrid's Back") do set FLDN=%%~a
for %%a in ("gnomer2\MENU.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Astro-Grover_1987.zip"
for %%a in ("Astro-Grover") do set FLDN=%%~a
for %%a in ("Astro-Gr\CTW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ball_Race_1988.zip"
for %%a in ("Ball Race") do set FLDN=%%~a
for %%a in ("ballrace\BALLS10.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Aeronautics_Quiz_MK_2_1991.zip"
for %%a in ("The Aeronautics Quiz MK2") do set FLDN=%%~a
for %%a in ("TheAeron\AEROQUIZ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Omnicron_Conspiracy_1989.zip"
for %%a in ("Omnicron Conspiracy") do set FLDN=%%~a
for %%a in ("omnicron\OMNICRON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mazzembly_1997_1996.zip"
for %%a in ("Mazzembly 1997") do set FLDN=%%~a
for %%a in ("mazzem\MAZM97.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jai_Alai_1991.zip"
for %%a in ("Jai Alai") do set FLDN=%%~a
for %%a in ("jaialai\JAI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wibbling_Wilf_1991.zip"
for %%a in ("Wibbling Wilf") do set FLDN=%%~a
for %%a in ("Wibbling\WILF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"bugfry_shareware.zip"
for %%a in ("BugFry") do set FLDN=%%~a
for %%a in ("BUGFRY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crossbow_1989.zip"
for %%a in ("Crossbow") do set FLDN=%%~a
for %%a in ("Crossbow\CBOW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ten_Nights_of_Killing_and_Mayhem_at_F.J.B._II_1996.zip"
for %%a in ("Ten Nights of Killing and Mayhem at F.J.B. II") do set FLDN=%%~a
for %%a in ("tennitki\tnosound.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Jammer_1986.zip"
for %%a in ("Tommy's Jammer") do set FLDN=%%~a
for %%a in ("TommysJa\TOMCATS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pyramid_Power_1986.zip"
for %%a in ("Pyramid Power") do set FLDN=%%~a
for %%a in ("PyramidP\PYRAMID.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"PCPC0892_shareware.zip"
for %%a in ("Educational- PCPC") do set FLDN=%%~a
for %%a in ("PCPC.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"GEDIT20_shareware.zip"
for %%a in ("Gedit") do set FLDN=%%~a
for %%a in ("GEDIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"World_Class_Rugby_1992.zip"
for %%a in ("World Class Rugby") do set FLDN=%%~a
for %%a in ("WCRug\RUGBY\RE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Landing_Party_1989.zip"
for %%a in ("Landing Party") do set FLDN=%%~a
for %%a in ("landpart\LPARTY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Caverns_of_Kroz_1989.zip"
for %%a in ("Caverns of Kroz") do set FLDN=%%~a
for %%a in ("CaveKroz\CAVERNS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Obliterator_1989.zip"
for %%a in ("Obliterator") do set FLDN=%%~a
for %%a in ("Oblitera\OBLIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Lords_of_Doom_1990.zip"
for %%a in ("Lords of Doom") do set FLDN=%%~a
for %%a in ("LoDoom\STARBYTE\DOOM\DOOM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Heat_Wave_-_Offshore_Superboat_Racing_1990.zip"
for %%a in ("Heat Wave - Offshore Superboat Racing") do set FLDN=%%~a
for %%a in ("heatwave\PBOAT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"DJ_Puffs_Volcanic_Capers_1992.zip"
for %%a in ("DJ Puff's Volcanic Capers") do set FLDN=%%~a
for %%a in ("DJPuffsV\DJ.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Super_Plumber_1996.zip"
for %%a in ("Super Plumber") do set FLDN=%%~a
for %%a in ("SuperPlu\SPLUM.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Return_of_the_Mutant_Space_Bats_of_Doom_1995.zip"
for %%a in ("Return of the Mutant Space Bats of Doom") do set FLDN=%%~a
for %%a in ("Returnof\RETURN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Anchorhead_1998.zip"
for %%a in ("Anchorhead") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Universe_3_1990.zip"
for %%a in ("Universe3") do set FLDN=%%~a
for %%a in ("univ3\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Scavengers_of_the_Mutant_World_1988.zip"
for %%a in ("Scavengers of the Mutant World") do set FLDN=%%~a
for %%a in ("scavmutw\SCAVENGE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Treehouse_Truants_1994.zip"
for %%a in ("Treehouse Truants") do set FLDN=%%~a
for %%a in ("treetrua\THT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Grand_Slam_Bridge_II_1992.zip"
for %%a in ("Grand Slam Bridge II") do set FLDN=%%~a
for %%a in ("grandslm\BRIDGE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bullys_Sporting_Darts_1993.zip"
for %%a in ("Bully's Sporting Darts") do set FLDN=%%~a
for %%a in ("BullysSp\BLY.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Mystery_Fun_House_1981.zip"
for %%a in ("Mystery Fun House") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Plundered_Hearts_1987.zip"
for %%a in ("Plundered Hearts") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Star_Saga_Two_-_The_Clathren_Menace_1989.zip"
for %%a in ("Star Saga Two - The Clathren Menace") do set FLDN=%%~a
for %%a in ("starsag2\STARSAGA.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Space_Spirals_1988.zip"
for %%a in ("Space Spirals") do set FLDN=%%~a
for %%a in ("SpaceSpi\SSPIRALS.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Suspended_1982.zip"
for %%a in ("Suspended") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Davidic_Matchup_1994.zip"
for %%a in ("Davidic Matchup") do set FLDN=%%~a
for %%a in ("davidic\DAVIDMUP.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Kingdom_Without_End_2001.zip"
for %%a in ("Kingdom WithoutEnd") do set FLDN=%%~a
for %%a in ("kwoend\TRCOLOR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"ER_MAY93_shareware.zip"
for %%a in ("Educational- Electronic Review Magazine") do set FLDN=%%~a
for %%a in ("OHREAD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Crystal_Ball_1988.zip"
for %%a in ("Crystal Ball") do set FLDN=%%~a
for %%a in ("CrystalB\CRYSTAL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Time_Race_1990.zip"
for %%a in ("Time Race") do set FLDN=%%~a
for %%a in ("TimeRace\TIMERACE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Guardians_of_Infinity_-_To_Save_Kennedy_1988.zip"
for %%a in ("Guardians of Infinity - To Save Kennedy") do set FLDN=%%~a
for %%a in ("guardken\KSHOW.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"NY_Warriors_1991.zip"
for %%a in ("NY Warriors") do set FLDN=%%~a
for %%a in ("NYWarrio\RUNME.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Bubble_Crack_1995.zip"
for %%a in ("Bubble Crack") do set FLDN=%%~a
for %%a in ("bublcrk\BUSTMOVE.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wembley_Rugby_League_1996.zip"
for %%a in ("Wembley Rugby League") do set FLDN=%%~a
for %%a in ("WembleyR\RL\R.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Turn_It_1990.zip"
for %%a in ("Turn It") do set FLDN=%%~a
for %%a in ("TurnIt90\TURNIT.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wraith_1995.zip"
for %%a in ("Wraith") do set FLDN=%%~a
for %%a in ("wraith95\UU2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Hollywords_1992.zip"
for %%a in ("Tommy's Hollywords") do set FLDN=%%~a
for %%a in ("TommysHo\TOMCATS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Pure_Wargame_1995.zip"
for %%a in ("The Pure Wargame") do set FLDN=%%~a
for %%a in ("ThePureW\AIRBORN\AIR.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Xixit_1995.zip"
for %%a in ("Xixit") do set FLDN=%%~a
for %%a in ("Xixit95\XIXIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Universe_1987.zip"
for %%a in ("Universe") do set FLDN=%%~a
for %%a in ("univ1\flight.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Locomotion_1992.zip"
for %%a in ("Locomotion") do set FLDN=%%~a
for %%a in ("locomoti\start.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wizards_Lair_1988.zip"
for %%a in ("Wizard's Lair") do set FLDN=%%~a
for %%a in ("wizalair\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Jetset_1982.zip"
for %%a in ("Jetset") do set FLDN=%%~a
for %%a in ("Jetset\JETSET.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Dark_Convergence_II_The_1994.zip"
for %%a in ("Dark Convergence II,
The") do set FLDN=%%~a
for %%a in ("drkconv2\DC2PT1.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"CHAMP_Galagon_1997.zip"
for %%a in ("CHAMP Galagon") do set FLDN=%%~a
for %%a in ("CHGalag\CHAMP\GALAGON\GALAGON.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wild_Wheels_1990.zip"
for %%a in ("Wild Wheels") do set FLDN=%%~a
for %%a in ("wildwls\WILD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vegas_Bandit_1994.zip"
for %%a in ("Vegas Bandit") do set FLDN=%%~a
for %%a in ("VegasBan\VEGAS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Varicella_1999.zip"
for %%a in ("Varicella") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Skweek_1989.zip"
for %%a in ("Skweek") do set FLDN=%%~a
for %%a in ("Skweek\Skweek.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hogbear_1989.zip"
for %%a in ("Hogbear") do set FLDN=%%~a
for %%a in ("hogbear\HOGBEAR2.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Piso_Zero_1991.zip"
for %%a in ("Piso Zero") do set FLDN=%%~a
for %%a in ("PisoZero\Piso0.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"CHAMP_Invaders_1997.zip"
for %%a in ("CHAMP Invaders") do set FLDN=%%~a
for %%a in ("CHAMPInv\CHAMP\INVADERS\INVADERS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Cyberbykes_-_Shadow_Racer_VR_1995.zip"
for %%a in ("Cyberbykes - Shadow Racer VR") do set FLDN=%%~a
for %%a in ("Cyberbyk\CYBER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hermits_Secret_The_1982.zip"
for %%a in ("Hermit's Secret,The") do set FLDN=%%~a
for %%a in ("hermsec\HERMIT.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Hurdles_1994.zip"
for %%a in ("Hurdles") do set FLDN=%%~a
for %%a in ("Hurdles\HURDLES.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Seastalker_1984.zip"
for %%a in ("Seastalker") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"VariTale_1987.zip"
for %%a in ("VariTale") do set FLDN=%%~a
for %%a in ("varitale\VARITALE.COM") do set EMUCMD=%%~a
call :RUN
exit /b
:"Paragliding_1991.zip"
for %%a in ("Paragliding") do set FLDN=%%~a
for %%a in ("Paraglid\PARAV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ralph_Bossons_High_Seas_1988.zip"
for %%a in ("Ralph Bosson's High Seas") do set FLDN=%%~a
for %%a in ("RalphBos\HS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Ballyhoo_1986.zip"
for %%a in ("Ballyhoo") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Pyramid_Solitaire_1991.zip"
for %%a in ("Pyramid Solitaire") do set FLDN=%%~a
for %%a in ("PyramidS\PYRAMID.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Strange_Odyssey_1981.zip"
for %%a in ("Strange Odyssey") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Vacation_Gone_Awry_2002.zip"
for %%a in ("Vacation Gone Awry") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Thud_Ridge_American_Aces_in_Nam_1988.zip"
for %%a in ("Thud Ridge American Aces in 'Nam") do set FLDN=%%~a
for %%a in ("ThudRidg\THUD.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Operation_Market_Garden_-_Drive_on_Arnhem_September_1944_1985.zip"
for %%a in ("Operation Market Garden - Drive on Arnhem, September 1944") do set FLDN=%%~a
for %%a in ("OpMarkG\MMAIN.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Spellbreaker_1985.zip"
for %%a in ("Spellbreaker") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Second_Front_-_Germany_Turns_East_1990.zip"
for %%a in ("Second Front - Germany Turns East") do set FLDN=%%~a
for %%a in ("SecondFr\START.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Witness_The_1983.zip"
for %%a in ("Witness,The") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Poko_Memorial_18th_Hole_Miniature_Golf_1987.zip"
for %%a in ("Poko Memorial 18th Hole Miniature Golf") do set FLDN=%%~a
for %%a in ("PokoMemo\MGOLF.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Wreckers_1992.zip"
for %%a in ("Wreckers") do set FLDN=%%~a
for %%a in ("Wreckers\WV.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Rescue_of_Lorri_in_Lorrinitron_1991.zip"
for %%a in ("The Rescue of Lorri in Lorrinitron") do set FLDN=%%~a
for %%a in ("resclori\LORRI.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Suspect_1984.zip"
for %%a in ("Suspect") do set FLDN=%%~a
for %%a in ("runme.bat") do set EMUCMD=%%~a
call :RUN
exit /b
:"Skidoo_1989.zip"
for %%a in ("Skidoo") do set FLDN=%%~a
for %%a in ("Skidoo\LOADER.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Light_Corridor_1990.zip"
for %%a in ("The Light Corridor") do set FLDN=%%~a
for %%a in ("TheLight\tatoue.com") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_American_Challenge_A_Sailing_Simulation_1986.zip"
for %%a in ("The American Challenge A Sailing Simulation") do set FLDN=%%~a
for %%a in ("TheAmeri\SAIL.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Sorcerer_Lord_1988.zip"
for %%a in ("Sorcerer Lord") do set FLDN=%%~a
for %%a in ("Sorcerer\SOR_LOR.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"Tommys_Nyet_1989.zip"
for %%a in ("Tommy's Nyet") do set FLDN=%%~a
for %%a in ("tomnyet\TOMMYS.EXE") do set EMUCMD=%%~a
call :RUN
exit /b
:"The_Kingdom_of_Syree_1992.zip"
for %%a in ("The Kingdom of Syree") do set FLDN=%%~a
for %%a in ("kingsyre\SYREE.BAT") do set EMUCMD=%%~a
call :RUN
exit /b
:"Stack_Up_1993.zip"
for %%a in ("Stack Up") do set FLDN=%%~a
for %%a in ("StackUp\stackup.exe") do set EMUCMD=%%~a
call :RUN
exit /b
:"Rick_Daviss_World_Trophy_Soccer_1989.zip"
for %%a in ("Rick Davis's World Trophy Soccer") do set FLDN=%%~a
for %%a in ("RickDavi\ega.exe"


