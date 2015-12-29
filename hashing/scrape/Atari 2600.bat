goto :"%ROMFNM%"
exit /b


:"atari2600pitfall1983ccec813"
:"Pitfall"
for /f "%FLDSWTCH%" %%a in ("Pitfall") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pitfall_1983_cce_c-813/atari_2600_pitfall_1983_cce_c-813_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39696-pitfall-atari-2600-screenshot-title-screen-starting-the-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39697-pitfall-atari-2600-screenshot-use-ropes-to-swing-over-bottomless.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39698-pitfall-atari-2600-screenshot-ah-some-treasure.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39699-pitfall-atari-2600-screenshot-swinging-over-some-alligators.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5317-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19558-pitfall-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/5317-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/5317-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/5317-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/5317.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600frogger1982parkerbrothersedenglishdavid"
:"Frogger"
for /f "%FLDSWTCH%" %%a in ("Frogger") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_frogger_1982_parker_brothers_ed_english_david_lamkins_pb5300/atari_2600_frogger_1982_parker_brothers_ed_english_david_lamkins_pb5300_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40458-frogger-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40459-frogger-atari-2600-screenshot-the-game-in-black-and-white-mode.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167302-frogger-atari-2600-screenshot-game-in-progress-starpath-supercharger.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1369-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19786-frogger-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/1369-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/1369-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/1369-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/1369.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600riverraid1982activisioncarolshawax"
:"RiverRaid"
for /f "%FLDSWTCH%" %%a in ("River Raid") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_river_raid_1982_activision_carol_shaw_ax-020_ax-020-04/atari_2600_river_raid_1982_activision_carol_shaw_ax-020_ax-020-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39833-river-raid-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39834-river-raid-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39835-river-raid-atari-2600-screenshot-the-river-divides.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39836-river-raid-atari-2600-screenshot-shooting-planes-in-a-narrow.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1365-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19722-river-raid-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/1365.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600custersrevenge1982mystiqueamericanmultipleindustries"
:"CustersRevenge"
for /f "%FLDSWTCH%" %%a in ("Custer's Revenge") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_custers_revenge_1982_mystique_-_american_multiple_industries_joel_h._m/atari_2600_custers_revenge_1982_mystique_-_american_multiple_industries_joel_h._m_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39833-river-raid-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39834-river-raid-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39835-river-raid-atari-2600-screenshot-the-river-divides.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39836-river-raid-atari-2600-screenshot-shooting-planes-in-a-narrow.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20026-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19722-river-raid-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600adventuresoftron"
:"AdventuresOfTron"
for /f "%FLDSWTCH%" %%a in ("Adventures Of Tron") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_adventures_of_tron/atari_2600_adventures_of_tron_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/76983-adventures-of-tron-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/76984-adventures-of-tron-atari-2600-screenshot-collect-the-bits-and.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/76985-adventures-of-tron-atari-2600-screenshot-enemies-increase-in.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/76986-adventures-of-tron-atari-2600-screenshot-level-complete-warping.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/10859-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/10859-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600starwarstheempirestrikesback1982"
:"StarWarsTheEmpireStrikesBack"
for /f "%FLDSWTCH%" %%a in ("Star Wars - The Empire Strikes Back") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_star_wars_-_the_empire_strikes_back_1982_parker_brothers_rex_bradford_/atari_2600_star_wars_-_the_empire_strikes_back_1982_parker_brothers_rex_bradford__screenshot.gif") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/42269-star-wars-the-empire-strikes-back-atari-2600-screenshot-a-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/42270-star-wars-the-empire-strikes-back-atari-2600-screenshot-walkers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/42271-star-wars-the-empire-strikes-back-atari-2600-screenshot-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2959-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20770-star-wars-the-empire-strikes-back-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/2959-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/2959-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/2959.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600enduro1983activisionlarrymillerax026"
:"Enduro"
for /f "%FLDSWTCH%" %%a in ("Enduro") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_enduro_1983_activision_larry_miller_ax-026_ax-026-04/atari_2600_enduro_1983_activision_larry_miller_ax-026_ax-026-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57174-enduro-atari-2600-screenshot-title-screen-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57175-enduro-atari-2600-screenshot-beginning-a-race.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57176-enduro-atari-2600-screenshot-be-careful-when-the-road-turns.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57177-enduro-atari-2600-screenshot-the-sun-begins-to-set.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/8357-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/129284-enduro-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600starwarsthearcadegame0405"
:"StarWarsTheArcadeGame"
for /f "%FLDSWTCH%" %%a in ("Star Wars - The Arcade Game") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_star_wars_-_the_arcade_game_04-05-1984_parker_brothers_wilfredo_willy_/atari_2600_star_wars_-_the_arcade_game_04-05-1984_parker_brothers_wilfredo_willy__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44253-star-wars-jedi-arena-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44254-star-wars-jedi-arena-atari-2600-screenshot-block-laser-bolts.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44255-star-wars-jedi-arena-atari-2600-screenshot-try-to-blast-your.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28592-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21668-star-wars-jedi-arena-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600choppercommand1982activisionbobwhiteheadax"
:"ChopperCommand"
for /f "%FLDSWTCH%" %%a in ("Chopper Command") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_chopper_command_1982_activision_bob_whitehead_ax-015_ax-015-04/atari_2600_chopper_command_1982_activision_bob_whitehead_ax-015_ax-015-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43378-chopper-command-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43379-chopper-command-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43380-chopper-command-atari-2600-screenshot-firing-at-enemy-aircraft.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43381-chopper-command-atari-2600-screenshot-the-game-in-black-and.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7612-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21224-chopper-command-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600boxing1983ccec861"
:"Boxing"
for /f "%FLDSWTCH%" %%a in ("Boxing") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_boxing_1983_cce_c-861/atari_2600_boxing_1983_cce_c-861_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57180-boxing-atari-2600-screenshot-setting-game-options.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57181-boxing-atari-2600-screenshot-a-fight-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57182-boxing-atari-2600-screenshot-and-black-is-ahead-18-9.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57183-boxing-atari-2600-screenshot-the-game-in-black-and-white-mode.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7945-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/7945-1.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/7945.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600pitfalliilostcaverns1983activisiondavid"
:"PitfallIILostCaverns"
for /f "%FLDSWTCH%" %%a in ("Pitfall II - Lost Caverns") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pitfall_ii_-_lost_caverns_1983_activision_david_crane_ab-035-04/atari_2600_pitfall_ii_-_lost_caverns_1983_activision_david_crane_ab-035-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39871-pitfall-ii-lost-caverns-atari-2600-screenshot-the-starting.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39872-pitfall-ii-lost-caverns-atari-2600-screenshot-an-underground.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39873-pitfall-ii-lost-caverns-atari-2600-screenshot-watch-out-for.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39874-pitfall-ii-lost-caverns-atari-2600-screenshot-some-treasure.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17529-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19534-pitfall-ii-lost-caverns-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari26003dghostattack1983amigamichael"
:"3DGhostAttack"
for /f "%FLDSWTCH%" %%a in ("3-D Ghost Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_3-d_ghost_attack_1983_amiga_michael_k._glass_jerry_lawson_prototype/atari_2600_3-d_ghost_attack_1983_amiga_michael_k._glass_jerry_lawson_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44256-demon-attack-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44257-demon-attack-atari-2600-screenshot-fighting-the-attacking-demons.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44258-demon-attack-atari-2600-screenshot-demons-attacking-you-with.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44259-demon-attack-atari-2600-screenshot-some-demons-will-split-into.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21671-demon-attack-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21672-demon-attack-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600alien20thcenturyfox"
:"Alien"
for /f "%FLDSWTCH%" %%a in ("Alien") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_alien_20th_century_fox/atari_2600_alien_20th_century_fox_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167807-alien-atari-2600-screenshot-game-start-the-screen-is-full.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167808-alien-atari-2600-screenshot-i-grabbed-a-pulsar-so-i-can-kill.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167810-alien-atari-2600-screenshot-there-is-a-bonus-item-i-can-get.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167811-alien-atari-2600-screenshot-i-need-to-cross-the-area-to-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19020-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260880-alien-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600halo2600"
:"Halo2600"
for /f "%FLDSWTCH%" %%a in ("Halo 2600") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_halo_2600/atari_2600_halo_2600_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167807-alien-atari-2600-screenshot-game-start-the-screen-is-full.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167808-alien-atari-2600-screenshot-i-grabbed-a-pulsar-so-i-can-kill.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167810-alien-atari-2600-screenshot-there-is-a-bonus-item-i-can-get.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167811-alien-atari-2600-screenshot-i-need-to-cross-the-area-to-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/24954-1.png") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260880-alien-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600hero1984activisionjohn"
:"Hero"
for /f "%FLDSWTCH%" %%a in ("H.e.r.o.") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_h.e.r.o._1984_activision_john_van_ryzin_az-036-04/atari_2600_h.e.r.o._1984_activision_john_van_ryzin_az-036-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48131-h-e-r-o-atari-2600-screenshot-title-screen-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48132-h-e-r-o-atari-2600-screenshot-watch-out-for-dangerous-creatures.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48133-h-e-r-o-atari-2600-screenshot-located-a-trapped-miner.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48134-h-e-r-o-atari-2600-screenshot-blowing-up-a-wall-with-dynamite.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56846-h-e-r-o-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56847-h-e-r-o-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600californiagames1988epyxstevenabaker"
:"CaliforniaGames"
for /f "%FLDSWTCH%" %%a in ("California Games") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_california_games_1988_epyx_steven_a._baker_peter_engelbrite_80561-0028/atari_2600_california_games_1988_epyx_steven_a._baker_peter_engelbrite_80561-0028_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39876-california-games-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39877-california-games-atari-2600-screenshot-choose-a-sponser.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39878-california-games-atari-2600-screenshot-the-footbag-event.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39879-california-games-atari-2600-screenshot-the-half-pipe.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5300-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19729-california-games-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/5300-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"atari2600baseball"
:"Baseball"
for /f "%FLDSWTCH%" %%a in ("Baseball") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_baseball/atari_2600_baseball_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85608-basketball-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85609-basketball-atari-2600-screenshot-taking-a-shot-at-the-basket.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85610-basketball-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28704-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36868-basketball-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spyhunterdualcontrolmodule1984sega"
:"SpyHunter"
for /f "%FLDSWTCH%" %%a in ("Spy Hunter") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_spy_hunter_dual_control_module_1984_sega_jeff_lorenz_-_bally_midway_01/atari_2600_spy_hunter_dual_control_module_1984_sega_jeff_lorenz_-_bally_midway_01_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44577-spy-hunter-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44574-spy-hunter-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44575-spy-hunter-atari-2600-screenshot-the-weapons-van-is-on-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44576-spy-hunter-atari-2600-screenshot-driving-the-boat.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22182-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21819-spy-hunter-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600zaxxon1982coleco2454"
:"Zaxxon"
for /f "%FLDSWTCH%" %%a in ("Zaxxon") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_zaxxon_1982_coleco_2454/atari_2600_zaxxon_1982_coleco_2454_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40465-zaxxon-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40466-zaxxon-atari-2600-screenshot-a-wall-approaching-on-the-horizon.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40467-zaxxon-atari-2600-screenshot-uh-oh-a-crash.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40468-zaxxon-atari-2600-screenshot-flying-through-outer-space.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/15077-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/38041-zaxxon-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600burgertime1983mnetworkpatricialewisdu"
:"Burgertime"
for /f "%FLDSWTCH%" %%a in ("Burgertime") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_burgertime_1983_m_network_patricia_lewis_du_long_ron_surratt_-_intv_mt/atari_2600_burgertime_1983_m_network_patricia_lewis_du_long_ron_surratt_-_intv_mt.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43860-burgertime-atari-2600-screenshot-gameplay-on-the-first-level.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43861-burgertime-atari-2600-screenshot-creating-burgers-on-the-second.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7610-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/7610-1.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/7610-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/7610.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600tennis1983ccec8584k"
:"Tennis"
for /f "%FLDSWTCH%" %%a in ("Tennis") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tennis_1983_cce_c-858_4k/atari_2600_tennis_1983_cce_c-858_4k_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50805-tennis-atari-2600-screenshot-getting-ready-to-serve.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50806-tennis-atari-2600-screenshot-a-volley-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50807-tennis-atari-2600-screenshot-the-game-in-black-and-white-mode.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22202-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25463-tennis-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600ghostbusters1985activisiondavidcranedankitchen"
:"Ghostbusters"
for /f "%FLDSWTCH%" %%a in ("Ghostbusters") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_ghostbusters_1985_activision_david_crane_dan_kitchen_az-108-04/atari_2600_ghostbusters_1985_activision_david_crane_dan_kitchen_az-108-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40605-ghostbusters-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40608-ghostbusters-atari-2600-screenshot-purchase-ghost-busting-equipment.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40611-ghostbusters-atari-2600-screenshot-the-map-of-the-city.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40612-ghostbusters-atari-2600-screenshot-driving-to-the-scene-of.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1292-2.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19977-ghostbusters-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/1292-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/1292-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/1292-2.jpg") do SET FAN2ART=%%~a
set GTART=1
exit /b

:"atari2600doubledragon1989activisiondankitchenak"
:"DoubleDragon"
for /f "%FLDSWTCH%" %%a in ("Double Dragon") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_double_dragon_1989_activision_dan_kitchen_ak-050-04/atari_2600_double_dragon_1989_activision_dan_kitchen_ak-050-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45576-double-dragon-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45577-double-dragon-atari-2600-screenshot-the-first-fight-of-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45578-double-dragon-atari-2600-screenshot-this-guy-has-a-baseball.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45580-double-dragon-atari-2600-screenshot-a-fight-in-progress.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/10878-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19670-double-dragon-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/10878-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/10878-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/10878.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600starwarsreturnofthejedideath"
:"StarWarsReturnOfTheJediDeath"
for /f "%FLDSWTCH%" %%a in ("Star Wars - Return Of The Jedi - Death Star Battle") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_star_wars_-_return_of_the_jedi_-_death_star_battle_revenge_of_the_jedi/atari_2600_star_wars_-_return_of_the_jedi_-_death_star_battle_revenge_of_the_jedi_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22471-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39654-star-wars-return-of-the-jedi-death-star-battle-atari-2600-screenshot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39655-star-wars-return-of-the-jedi-death-star-battle-atari-2600-screenshot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39656-star-wars-return-of-the-jedi-death-star-battle-atari-2600-screenshot.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22471-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/119985-star-wars-return-of-the-jedi-death-star-battle-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600barnstorming"
:"Barnstorming"
for /f "%FLDSWTCH%" %%a in ("Barnstorming") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_barnstorming/atari_2600_barnstorming_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53738-barnstorming-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53739-barnstorming-atari-2600-screenshot-try-to-fly-through-the-barns.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53740-barnstorming-atari-2600-screenshot-avoid-the-windmills-and.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53741-barnstorming-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7944-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36960-barnstorming-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600chucknorrissuperkicks1983xonoxktel"
:"ChuckNorrisSuperkicks"
for /f "%FLDSWTCH%" %%a in ("Chuck Norris Superkicks") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_chuck_norris_superkicks_1983_xonox_-_k-tel_software_robert_weatherby_6/atari_2600_chuck_norris_superkicks_1983_xonox_-_k-tel_software_robert_weatherby_6_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92411-chuck-norris-superkicks-atari-2600-screenshot-startup-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92412-chuck-norris-superkicks-atari-2600-screenshot-which-path-should.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92413-chuck-norris-superkicks-atari-2600-screenshot-you-get-a-closeup.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92414-chuck-norris-superkicks-atari-2600-screenshot-different-enemies.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/51218-chuck-norris-superkicks-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/51219-chuck-norris-superkicks-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600commando1988activisionmikeriedelak043"
:"Commando"
for /f "%FLDSWTCH%" %%a in ("Commando") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_commando_1988_activision_mike_riedel_ak-043-04/atari_2600_commando_1988_activision_mike_riedel_ak-043-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45567-commando-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45568-commando-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45569-commando-atari-2600-screenshot-watch-out-for-that-guy-behind.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45570-commando-atari-2600-screenshot-under-attack.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/206-2.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19673-commando-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/206-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/206.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600pimballakavideopinball1983ccec"
:"Pimball"
for /f "%FLDSWTCH%" %%a in ("Pimball") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pimball_aka_video_pinball_1983_cce_c-856/atari_2600_pimball_aka_video_pinball_1983_cce_c-856_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39696-pitfall-atari-2600-screenshot-title-screen-starting-the-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39697-pitfall-atari-2600-screenshot-use-ropes-to-swing-over-bottomless.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39698-pitfall-atari-2600-screenshot-ah-some-treasure.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39699-pitfall-atari-2600-screenshot-swinging-over-some-alligators.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19558-pitfall-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/53302-pitfall-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600dragonfirecheese1982imagicbobsmith720020"
:"Dragonfire"
for /f "%FLDSWTCH%" %%a in ("Dragonfire") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_dragonfire_cheese_1982_imagic_bob_smith_720020-1a_ia3611_ia3611c/atari_2600_dragonfire_cheese_1982_imagic_bob_smith_720020-1a_ia3611_ia3611c_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43610-dragonfire-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43611-dragonfire-atari-2600-screenshot-dodge-dragonfire-when-crossing.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43612-dragonfire-atari-2600-screenshot-collecting-treasures.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43613-dragonfire-atari-2600-screenshot-each-level-is-a-different.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22153-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21292-dragonfire-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600activisiondecathlonthe1983activisiondavidcrane"
:"ActivisionDecathlon"
for /f "%FLDSWTCH%" %%a in ("Activision Decathlon") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_activision_decathlon_the_1983_activision_david_crane_ag-930-04_az-030/atari_2600_activision_decathlon_the_1983_activision_david_crane_ag-930-04_az-030_screenshot.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56791-the-activision-decathlon-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56792-the-activision-decathlon-atari-2600-screenshot-the-different.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56793-the-activision-decathlon-atari-2600-screenshot-the-shot-put.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56794-the-activision-decathlon-atari-2600-screenshot-jumping-over.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9245-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56844-the-activision-decathlon-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/9245.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600ateamtheprototype050884"
:"ATeamThe"
for /f "%FLDSWTCH%" %%a in ("A-Team, The") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_a-team_the_prototype_05-08-84/atari_2600_a-team_the_prototype_05-08-84_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56791-the-activision-decathlon-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56792-the-activision-decathlon-atari-2600-screenshot-the-different.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56793-the-activision-decathlon-atari-2600-screenshot-the-shot-put.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56794-the-activision-decathlon-atari-2600-screenshot-jumping-over.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56844-the-activision-decathlon-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/28289-the-activision-decathlon-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600xman1983universalgamexcorporationalan"
:"Xman"
for /f "%FLDSWTCH%" %%a in ("X-man") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_x-man_1983_universal_gamex_corporation_alan_roberts_h.k._poon_gx-001/atari_2600_x-man_1983_universal_gamex_corporation_alan_roberts_h.k._poon_gx-001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196216-x-man-atari-2600-screenshot-intro-showing-the-woman.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196217-x-man-atari-2600-screenshot-intro-showing-the-x-man.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196218-x-man-atari-2600-screenshot-intro-showing-the-crab.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196219-x-man-atari-2600-screenshot-intro-showing-the-scissors.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600megamaniaaspacenightmare1982activisionsteve"
:"MegamaniaASpaceNightmare"
for /f "%FLDSWTCH%" %%a in ("Megamania - A Space Nightmare") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_megamania_-_a_space_nightmare_1982_activision_steve_cartwright_ax-017_/atari_2600_megamania_-_a_space_nightmare_1982_activision_steve_cartwright_ax-017__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196216-x-man-atari-2600-screenshot-intro-showing-the-woman.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196217-x-man-atari-2600-screenshot-intro-showing-the-x-man.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196218-x-man-atari-2600-screenshot-intro-showing-the-crab.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196219-x-man-atari-2600-screenshot-intro-showing-the-scissors.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19862-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600spiderman1982parkerbrothersdavidlamkins"
:"Spiderman"
for /f "%FLDSWTCH%" %%a in ("Spider-man") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_spider-man_1982_parker_brothers_david_lamkins_laura_nikolich_pb5900/atari_2600_spider-man_1982_parker_brothers_david_lamkins_laura_nikolich_pb5900_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47166-spider-man-atari-2600-screenshot-climbing-the-building.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47167-spider-man-atari-2600-screenshot-swinging-back-and-forth.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47168-spider-man-atari-2600-screenshot-watch-out-for-bombs-on-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47169-spider-man-atari-2600-screenshot-watch-out-for-the-green-goblin.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2957-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23600-spider-man-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/2957-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/2957-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/2957-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/2957.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600grandprixrobby"
:"GrandPrix"
for /f "%FLDSWTCH%" %%a in ("Grand Prix") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_grand_prix_robby/atari_2600_grand_prix_robby_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46250-grand-prix-atari-2600-screenshot-a-race-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46251-grand-prix-atari-2600-screenshot-an-aweful-lot-of-traffic-here.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46252-grand-prix-atari-2600-screenshot-careful-narrow-bridge.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46253-grand-prix-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21544-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22958-grand-prix-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600airlock"
:"Airlock"
for /f "%FLDSWTCH%" %%a in ("Airlock") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_airlock/atari_2600_airlock_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46131-airlock-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46132-airlock-atari-2600-screenshot-running-from-the-ever-rising.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46133-airlock-atari-2600-screenshot-don-t-get-hit-by-the-rogue-torpedoes.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46134-airlock-atari-2600-screenshot-almost-made-it-to-the-top.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/10860-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36962-airlock-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600artilleryduel"
:"ArtilleryDuel"
for /f "%FLDSWTCH%" %%a in ("Artillery Duel") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_artillery_duel/atari_2600_artillery_duel_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92483-artillery-duel-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92484-artillery-duel-atari-2600-screenshot-xonox-logo.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92485-artillery-duel-atari-2600-screenshot-set-the-angle-and-power.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92486-artillery-duel-atari-2600-screenshot-there-is-a-wide-variety.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17496-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17496-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600montezumasrevengefeaturingpanamajoe1984parker"
:"MontezumasRevengeFeaturingPanamaJoe"
for /f "%FLDSWTCH%" %%a in ("Montezuma's Revenge - Featuring Panama Joe") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_montezumas_revenge_-_featuring_panama_joe_1984_parker_brothers_robert_/atari_2600_montezumas_revenge_-_featuring_panama_joe_1984_parker_brothers_robert__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92483-artillery-duel-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92484-artillery-duel-atari-2600-screenshot-xonox-logo.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92485-artillery-duel-atari-2600-screenshot-set-the-angle-and-power.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92486-artillery-duel-atari-2600-screenshot-there-is-a-wide-variety.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19207-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600qbertsqubes1984parkerbrotherstodd"
:"QbertsQubes"
for /f "%FLDSWTCH%" %%a in ("Q-bert's Qubes") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_q-berts_qubes_1984_parker_brothers_todd_marshall_pb5550/atari_2600_q-berts_qubes_1984_parker_brothers_todd_marshall_pb5550_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/69994-q-bert-s-qubes-atari-2600-screenshot-the-startup-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/69990-q-bert-s-qubes-atari-2600-screenshot-jumping-around-the-blocks.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/69991-q-bert-s-qubes-atari-2600-screenshot-watch-out-for-creatures.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/69992-q-bert-s-qubes-atari-2600-screenshot-ouch-something-hit-me.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5318-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/5318-1.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/5318-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/5318.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600kingkong1982tigervisionkarltolinger"
:"KingKong"
for /f "%FLDSWTCH%" %%a in ("King Kong") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_king_kong_1982_tigervision_karl_t._olinger_7-001/atari_2600_king_kong_1982_tigervision_karl_t._olinger_7-001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244422-king-kong-atari-2600-screenshot-initially-loaded-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244423-king-kong-atari-2600-screenshot-when-the-game-starts-kong.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244424-king-kong-atari-2600-screenshot-you-must-scale-the-building.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244425-king-kong-atari-2600-screenshot-starting-location.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17515-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258878-king-kong-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600riverraidiiiakariverraid1985"
:"RiverRaidIii"
for /f "%FLDSWTCH%" %%a in ("River Raid Iii") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_river_raid_iii_aka_river_raid_1985_digitel/atari_2600_river_raid_iii_aka_river_raid_1985_digitel_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41520-river-raid-ii-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41521-river-raid-ii-atari-2600-screenshot-ready-for-takeoff.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41522-river-raid-ii-atari-2600-screenshot-flying-over-the-ocean.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41523-river-raid-ii-atari-2600-screenshot-making-your-way-up-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17534-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20506-river-raid-ii-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600kaystonekapersakakeystonekapers1983digitel"
:"KaystoneKapers"
for /f "%FLDSWTCH%" %%a in ("Kaystone Kapers") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_kaystone_kapers_aka_keystone_kapers_1983_digitel/atari_2600_kaystone_kapers_aka_keystone_kapers_1983_digitel_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44537-keystone-kapers-atari-2600-screenshot-the-starting-location.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44538-keystone-kapers-atari-2600-screenshot-the-chase-is-on.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44539-keystone-kapers-atari-2600-screenshot-harry-is-on-the-floor.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44540-keystone-kapers-atari-2600-screenshot-harry-hooligan-is-almost.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5307-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21796-keystone-kapers-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/5307.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600seaquest1983activisionstevecartwrightax022"
:"Seaquest"
for /f "%FLDSWTCH%" %%a in ("Seaquest") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_seaquest_1983_activision_steve_cartwright_ax-022/atari_2600_seaquest_1983_activision_steve_cartwright_ax-022_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50697-seaquest-atari-2600-screenshot-title-screen-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50698-seaquest-atari-2600-screenshot-rescue-divers-and-avoid-sharks.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50699-seaquest-atari-2600-screenshot-careful-you-re-almost-out-of.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50700-seaquest-atari-2600-screenshot-watch-out-for-the-sharks-and.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22178-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/108038-seaquest-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600demonattack1983ccec823"
:"DemonAttack"
for /f "%FLDSWTCH%" %%a in ("Demon Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_demon_attack_1983_cce_c-823/atari_2600_demon_attack_1983_cce_c-823_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44256-demon-attack-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44257-demon-attack-atari-2600-screenshot-fighting-the-attacking-demons.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44258-demon-attack-atari-2600-screenshot-demons-attacking-you-with.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44259-demon-attack-atari-2600-screenshot-some-demons-will-split-into.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9271-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21671-demon-attack-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/9271.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600startrekstrategicoperationssimulator1983sega"
:"StarTrekStrategicOperationsSimulator"
for /f "%FLDSWTCH%" %%a in ("Star Trek - Strategic Operations Simulator") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_star_trek_-_strategic_operations_simulator_1983_sega_jeff_lorenz_004-0/atari_2600_star_trek_-_strategic_operations_simulator_1983_sega_jeff_lorenz_004-0_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62042-star-trek-strategic-operations-simulator-atari-2600-screenshot.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62043-star-trek-strategic-operations-simulator-atari-2600-screenshot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62044-star-trek-strategic-operations-simulator-atari-2600-screenshot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62045-star-trek-strategic-operations-simulator-atari-2600-screenshot.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28696-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/200956-star-trek-strategic-operations-simulator-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600riverraidii1988activisiondavidlubar"
:"RiverRaidIi"
for /f "%FLDSWTCH%" %%a in ("River Raid Ii") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_river_raid_ii_1988_activision_david_lubar_ak-048-04/atari_2600_river_raid_ii_1988_activision_david_lubar_ak-048-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41520-river-raid-ii-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41521-river-raid-ii-atari-2600-screenshot-ready-for-takeoff.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41522-river-raid-ii-atari-2600-screenshot-flying-over-the-ocean.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41523-river-raid-ii-atari-2600-screenshot-making-your-way-up-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17534-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20506-river-raid-ii-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600lordoftheringsthejourneyto"
:"TheLordOfTheRingsJourneyToRivendell"
for /f "%FLDSWTCH%" %%a in ("The Lord Of The Rings - Journey To Rivendell") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_lord_of_the_rings_the_-_journey_to_rivendell_the_lord_of_the_rings_i_1/atari_2600_lord_of_the_rings_the_-_journey_to_rivendell_the_lord_of_the_rings_i_1_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41520-river-raid-ii-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41521-river-raid-ii-atari-2600-screenshot-ready-for-takeoff.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41522-river-raid-ii-atari-2600-screenshot-flying-over-the-ocean.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41523-river-raid-ii-atari-2600-screenshot-making-your-way-up-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7950-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20506-river-raid-ii-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600freeway1981activisiondavidcraneag009"
:"Freeway"
for /f "%FLDSWTCH%" %%a in ("Freeway") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_freeway_1981_activision_david_crane_ag-009_ag-009-04/atari_2600_freeway_1981_activision_david_crane_ag-009_ag-009-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/42147-freeway-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/42148-freeway-atari-2600-screenshot-plenty-of-traffic-here.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/42149-freeway-atari-2600-screenshot-the-game-in-black-and-white-mode.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5304-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20735-freeway-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/5304-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"atari2600jamesbond007jamesbondagent007"
:"JamesBond007"
for /f "%FLDSWTCH%" %%a in ("James Bond 007") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_james_bond_007_james_bond_agent_007_1983_parker_brothers_joe_gaucher_l/atari_2600_james_bond_007_james_bond_agent_007_1983_parker_brothers_joe_gaucher_l_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56146-james-bond-007-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56147-james-bond-007-atari-2600-screenshot-jump-over-those-large.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56148-james-bond-007-atari-2600-screenshot-shoot-the-diamonds-for.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56149-james-bond-007-atari-2600-screenshot-travelling-by-sea.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600gauntlet1983answersoftwarecorporationtyassociates"
:"Gauntlet"
for /f "%FLDSWTCH%" %%a in ("Gauntlet") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_gauntlet_1983_answer_software_corporation_-_ty_associates_asc1002/atari_2600_gauntlet_1983_answer_software_corporation_-_ty_associates_asc1002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170938-gauntlet-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170939-gauntlet-atari-2600-screenshot-running-the-gauntlet.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170940-gauntlet-atari-2600-screenshot-jumping-or-ducking-looks-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170941-gauntlet-atari-2600-screenshot-i-can-give-this-old-man-some.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600tankbrigadeakaphantomtank1983panda"
:"TankBrigade"
for /f "%FLDSWTCH%" %%a in ("Tank Brigade") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tank_brigade_aka_phantom_tank_1983_panda_101/atari_2600_tank_brigade_aka_phantom_tank_1983_panda_101_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170938-gauntlet-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170939-gauntlet-atari-2600-screenshot-running-the-gauntlet.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170940-gauntlet-atari-2600-screenshot-jumping-or-ducking-looks-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170941-gauntlet-atari-2600-screenshot-i-can-give-this-old-man-some.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/29353-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600popeye1983parkerbrothersjoegaucherpb5370"
:"Popeye"
for /f "%FLDSWTCH%" %%a in ("Popeye") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_popeye_1983_parker_brothers_joe_gaucher_pb5370/atari_2600_popeye_1983_parker_brothers_joe_gaucher_pb5370_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43844-popeye-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43845-popeye-atari-2600-screenshot-the-first-level.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43846-popeye-atari-2600-screenshot-the-second-level.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/95313-popeye-atari-2600-screenshot-the-boat-level-on-atari-2600.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22173-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/85061-popeye-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600gijoecobrastrikepaddle1983"
:"GiJoeCobraStrike"
for /f "%FLDSWTCH%" %%a in ("G.i. Joe - Cobra Strike") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_g.i._joe_-_cobra_strike_paddle_1983_parker_brothers_john_emerson_pb592/atari_2600_g.i._joe_-_cobra_strike_paddle_1983_parker_brothers_john_emerson_pb592_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47164-g-i-joe-cobra-strike-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47165-g-i-joe-cobra-strike-atari-2600-screenshot-your-recruits-are.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19843-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23596-g-i-joe-cobra-strike-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600assault"
:"Assault"
for /f "%FLDSWTCH%" %%a in ("Assault") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_assault/atari_2600_assault_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184186-assault-atari-2600-screenshot-level-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184187-assault-atari-2600-screenshot-level-2.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184188-assault-atari-2600-screenshot-level-3.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184189-assault-atari-2600-screenshot-level-4-fireballs-will-chase.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600trondeadlydiscstronjoystick1982m"
:"TronDeadlyDiscs"
for /f "%FLDSWTCH%" %%a in ("Tron - Deadly Discs") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tron_-_deadly_discs_tron_joystick_1982_m_network_jeff_ronne_brett_stut/atari_2600_tron_-_deadly_discs_tron_joystick_1982_m_network_jeff_ronne_brett_stut_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41103-tron-deadly-discs-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41104-tron-deadly-discs-atari-2600-screenshot-throw-your-disc-to.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41105-tron-deadly-discs-atari-2600-screenshot-your-player-changes.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22211-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19867-tron-deadly-discs-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600bankheist"
:"BankHeist"
for /f "%FLDSWTCH%" %%a in ("Bank Heist") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bank_heist/atari_2600_bank_heist_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133901-bank-heist-atari-2600-screenshot-selecting-a-game-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133902-bank-heist-atari-2600-screenshot-robbed-some-banks-the-cops.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133903-bank-heist-atari-2600-screenshot-there-are-different-mazes.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133904-bank-heist-atari-2600-screenshot-after-a-bank-is-robbed-a.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17503-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17503-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600wizardofwor1982cbselectronicsjoe"
:"WizardOfWor"
for /f "%FLDSWTCH%" %%a in ("Wizard Of Wor") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_wizard_of_wor_1982_cbs_electronics_joe_hellesen_m8774_m8794/atari_2600_wizard_of_wor_1982_cbs_electronics_joe_hellesen_m8774_m8794_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52404-wizard-of-wor-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52405-wizard-of-wor-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52406-wizard-of-wor-atari-2600-screenshot-watch-out-for-the-many.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1360-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/79040-wizard-of-wor-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/1360-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/1360.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600frostbite1983activisionstevecartwrightax031"
:"Frostbite"
for /f "%FLDSWTCH%" %%a in ("Frostbite") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_frostbite_1983_activision_steve_cartwright_ax-031/atari_2600_frostbite_1983_activision_steve_cartwright_ax-031_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56309-frostbite-atari-2600-screenshot-the-beginning.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56311-frostbite-atari-2600-screenshot-jump-from-iceblock-to-iceblock.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56310-frostbite-atari-2600-screenshot-don-t-drown-in-the-water.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56312-frostbite-atari-2600-screenshot-i-better-hurry-up-before-i.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/8356-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/108018-frostbite-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600starfox1983mythiconbillbrynerbruce"
:"StarFox"
for /f "%FLDSWTCH%" %%a in ("Star Fox") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_star_fox_1983_mythicon_bill_bryner_bruce_de_graaf_ma1003/atari_2600_star_fox_1983_mythicon_bill_bryner_bruce_de_graaf_ma1003_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68641-star-fox-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68642-star-fox-atari-2600-screenshot-flying-through-the-planets-atmosphere.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68650-star-fox-atari-2600-screenshot-there-is-a-crystal-right-below.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14700-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/32100-star-fox-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600icehockeylehockeysurglace1981"
:"IceHockeyLeHockeySurGlace"
for /f "%FLDSWTCH%" %%a in ("Ice Hockey - Le Hockey Sur Glace") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_ice_hockey_-_le_hockey_sur_glace_1981_activision_alan_miller_ax-012_ca/atari_2600_ice_hockey_-_le_hockey_sur_glace_1981_activision_alan_miller_ax-012_ca_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68641-star-fox-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68642-star-fox-atari-2600-screenshot-flying-through-the-planets-atmosphere.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68650-star-fox-atari-2600-screenshot-there-is-a-crystal-right-below.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7949-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/32100-star-fox-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600bloodyhumanfreewayhumanfreewayfreewaybeta"
:"BloodyHumanFreeway"
for /f "%FLDSWTCH%" %%a in ("Bloody Human Freeway") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bloody_human_freeway_human_freeway_freeway_beta_activision_david_crane/atari_2600_bloody_human_freeway_human_freeway_freeway_beta_activision_david_crane_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68641-star-fox-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68642-star-fox-atari-2600-screenshot-flying-through-the-planets-atmosphere.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68650-star-fox-atari-2600-screenshot-there-is-a-crystal-right-below.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/32100-star-fox-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/32101-star-fox-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600starwarsjediarenapaddle1983parker"
:"StarWarsJediArena"
for /f "%FLDSWTCH%" %%a in ("Star Wars - Jedi Arena") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_star_wars_-_jedi_arena_paddle_1983_parker_brothers_rex_bradford_pb5000/atari_2600_star_wars_-_jedi_arena_paddle_1983_parker_brothers_rex_bradford_pb5000_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44253-star-wars-jedi-arena-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44254-star-wars-jedi-arena-atari-2600-screenshot-block-laser-bolts.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44255-star-wars-jedi-arena-atari-2600-screenshot-try-to-blast-your.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5329-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21668-star-wars-jedi-arena-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600congobongo1983segastevebeckphat"
:"CongoBongo"
for /f "%FLDSWTCH%" %%a in ("Congo Bongo") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_congo_bongo_1983_sega_steve_beck_phat_ho_-_beck-tech_006-01/atari_2600_congo_bongo_1983_sega_steve_beck_phat_ho_-_beck-tech_006-01_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55942-congo-bongo-atari-2600-screenshot-title-screen-set-game-options.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55943-congo-bongo-atari-2600-screenshot-climbing-your-way-up-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55944-congo-bongo-atari-2600-screenshot-beginning-the-second-level.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/27120-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27766-congo-bongo-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600busypoliceakakeystonekaperszellers"
:"BusyPolice"
for /f "%FLDSWTCH%" %%a in ("Busy Police") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_busy_police_aka_keystone_kapers_zellers/atari_2600_busy_police_aka_keystone_kapers_zellers_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55942-congo-bongo-atari-2600-screenshot-title-screen-set-game-options.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55943-congo-bongo-atari-2600-screenshot-climbing-your-way-up-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55944-congo-bongo-atari-2600-screenshot-beginning-the-second-level.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27766-congo-bongo-atari-2600-media.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600dolphin1983activisionmatthewlhubbardbob"
:"Dolphin"
for /f "%FLDSWTCH%" %%a in ("Dolphin") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_dolphin_1983_activision_matthew_l._hubbard_bob_whitehead_ax-024/atari_2600_dolphin_1983_activision_matthew_l._hubbard_bob_whitehead_ax-024_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56562-dolphin-atari-2600-screenshot-the-game-demo-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56563-dolphin-atari-2600-screenshot-running-from-the-squid.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56564-dolphin-atari-2600-screenshot-watch-out-for-the-column-of-sea.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56565-dolphin-atari-2600-screenshot-the-squid-is-closing-in.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22152-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/33340-dolphin-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600bachelorparty"
:"BachelorParty"
for /f "%FLDSWTCH%" %%a in ("Bachelor Party") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bachelor_party/atari_2600_bachelor_party_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/188100-bachelor-party-gigolo-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/188101-bachelor-party-gigolo-atari-2600-screenshot-the-gigolo-is.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/188102-bachelor-party-gigolo-atari-2600-screenshot-you-can-t-see.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/188103-bachelor-party-gigolo-atari-2600-screenshot-i-need-to-take.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/201134-bachelor-party-gigolo-atari-2600-front-cover.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600astrowar"
:"Astrowar"
for /f "%FLDSWTCH%" %%a in ("Astrowar") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_astrowar/atari_2600_astrowar_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50238-astrosmash-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50239-astrosmash-atari-2600-screenshot-be-sure-to-blast-the-white.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50240-astrosmash-atari-2600-screenshot-blasting-incoming-asteroids.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50241-astrosmash-atari-2600-screenshot-uh-oh-you-ve-been-hit.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/200570-astrosmash-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20692-astrosmash-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600bumpnjump1983mnetworkdavid"
:"BumpnJump"
for /f "%FLDSWTCH%" %%a in ("Bump 'n' Jump") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bump_n_jump_1983_m_network_david_akers_joe_ferreira_king_patricia_lewi/atari_2600_bump_n_jump_1983_m_network_david_akers_joe_ferreira_king_patricia_lewi_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50238-astrosmash-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50239-astrosmash-atari-2600-screenshot-be-sure-to-blast-the-white.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50240-astrosmash-atari-2600-screenshot-blasting-incoming-asteroids.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50241-astrosmash-atari-2600-screenshot-uh-oh-you-ve-been-hit.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/200570-astrosmash-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20692-astrosmash-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600beatemandeatemmystique"
:"BeatemAndEatem"
for /f "%FLDSWTCH%" %%a in ("Beat 'em And Eat 'em") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_beatem_and_eatem_mystique/atari_2600_beatem_and_eatem_mystique_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50238-astrosmash-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50239-astrosmash-atari-2600-screenshot-be-sure-to-blast-the-white.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50240-astrosmash-atari-2600-screenshot-blasting-incoming-asteroids.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50241-astrosmash-atari-2600-screenshot-uh-oh-you-ve-been-hit.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22143-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/200570-astrosmash-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600earthattackakadefenderzellers"
:"EarthAttack"
for /f "%FLDSWTCH%" %%a in ("Earth Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_earth_attack_aka_defender_zellers/atari_2600_earth_attack_aka_defender_zellers_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50682-plaque-attack-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50683-plaque-attack-atari-2600-screenshot-attacking-hamburgers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50684-plaque-attack-atari-2600-screenshot-here-comes-a-swarm-of-hot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50685-plaque-attack-atari-2600-screenshot-uh-oh-some-french-fries.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22205-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25385-plaque-attack-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600journeyescape1982dataage112006"
:"JourneyEscape"
for /f "%FLDSWTCH%" %%a in ("Journey Escape") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_journey_escape_1982_data_age_112-006/atari_2600_journey_escape_1982_data_age_112-006_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/49936-journey-escape-atari-2600-screenshot-title-screen-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/49937-journey-escape-atari-2600-screenshot-avoid-the-crowds-as-you.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/49938-journey-escape-atari-2600-screenshot-avoid-fences-reporters.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/49939-journey-escape-atari-2600-screenshot-the-blue-roadies-make.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7950-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/50797-journey-escape-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600airraiders"
:"AirRaiders"
for /f "%FLDSWTCH%" %%a in ("Air Raiders") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_air_raiders/atari_2600_air_raiders_screenshot.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68361-air-raiders-atari-2600-screenshot-first-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68362-air-raiders-atari-2600-screenshot-in-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68363-air-raiders-atari-2600-screenshot-in-game.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17494-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17494-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600keystonekapers1983activisiongarrykitchenax"
:"KeystoneKapers"
for /f "%FLDSWTCH%" %%a in ("Keystone Kapers") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_keystone_kapers_1983_activision_garry_kitchen_ax-025_ax-025-04/atari_2600_keystone_kapers_1983_activision_garry_kitchen_ax-025_ax-025-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44537-keystone-kapers-atari-2600-screenshot-the-starting-location.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44538-keystone-kapers-atari-2600-screenshot-the-chase-is-on.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44539-keystone-kapers-atari-2600-screenshot-harry-is-on-the-floor.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44540-keystone-kapers-atari-2600-screenshot-harry-hooligan-is-almost.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5307-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21796-keystone-kapers-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/5307.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600buckrogersplanetofzoom1983sega"
:"BuckRogersPlanetOfZoom"
for /f "%FLDSWTCH%" %%a in ("Buck Rogers - Planet Of Zoom") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_buck_rogers_-_planet_of_zoom_1983_sega_005-01/atari_2600_buck_rogers_-_planet_of_zoom_1983_sega_005-01_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/155925-buck-rogers-planet-of-zoom-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/155926-buck-rogers-planet-of-zoom-atari-2600-screenshot-beginning.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/155928-buck-rogers-planet-of-zoom-atari-2600-screenshot-in-space.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/155929-buck-rogers-planet-of-zoom-atari-2600-screenshot-level-2-on.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22206-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19732-buck-rogers-planet-of-zoom-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600smurfrescueingargamelscastlesmurfsmurf"
:"SmurfRescueInGargamelsCastle"
for /f "%FLDSWTCH%" %%a in ("Smurf - Rescue In Gargamel's Castle") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_smurf_-_rescue_in_gargamels_castle_smurf_smurf_action_1982_coleco_henr/atari_2600_smurf_-_rescue_in_gargamels_castle_smurf_smurf_action_1982_coleco_henr_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48667-smurf-rescue-in-gargamel-s-castle-atari-2600-screenshot-title.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48668-smurf-rescue-in-gargamel-s-castle-atari-2600-screenshot-a-fence.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48669-smurf-rescue-in-gargamel-s-castle-atari-2600-screenshot-watch.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48670-smurf-rescue-in-gargamel-s-castle-atari-2600-screenshot-some.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19894-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/277422-smurf-rescue-in-gargamel-s-castle-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600koolaidmankoolaidpitcherman"
:"KoolaidMan"
for /f "%FLDSWTCH%" %%a in ("Kool-aid Man") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_kool-aid_man_kool_aid_pitcher_man_1983_m_network_stephen_tatsumi_jane_/atari_2600_kool-aid_man_kool_aid_pitcher_man_1983_m_network_stephen_tatsumi_jane__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/101515-kool-aid-man-atari-2600-screenshot-here-comes-the-kool-aid.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/101516-kool-aid-man-atari-2600-screenshot-stop-the-thirsties-who.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/101517-kool-aid-man-atari-2600-screenshot-collect-ingredients-to.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/101518-kool-aid-man-atari-2600-screenshot-if-the-pool-runs-out-of.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28691-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28691-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600texaschainsawmassacrethe1983wizardvideo"
:"TexasChainsawMassacreThe"
for /f "%FLDSWTCH%" %%a in ("Texas Chainsaw Massacre, The") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_texas_chainsaw_massacre_the_1983_wizard_video_games_ed_salvo_008/atari_2600_texas_chainsaw_massacre_the_1983_wizard_video_games_ed_salvo_008_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/154724-the-texas-chainsaw-massacre-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/596067-the-texas-chainsaw-massacre-atari-2600-screenshot-stalking.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/154725-the-texas-chainsaw-massacre-atari-2600-screenshot-you-could.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/154727-the-texas-chainsaw-massacre-atari-2600-screenshot-my-family.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600mash198320thcentury"
:"MASH"
for /f "%FLDSWTCH%" %%a in ("M-A-S-H") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_m.a.s.h_1983_20th_century_fox_video_games_frank_cohen_douglas_dallas_n/atari_2600_m.a.s.h_1983_20th_century_fox_video_games_frank_cohen_douglas_dallas_n_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134546-m-a-s-h-atari-2600-screenshot-title-screen-select-game-options.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134547-m-a-s-h-atari-2600-screenshot-the-first-screen-rescuing-men.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134548-m-a-s-h-atari-2600-screenshot-in-the-operating-room.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134549-m-a-s-h-atari-2600-screenshot-can-you-get-this-piece-of-shrapnel.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258958-m-a-s-h-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258959-m-a-s-h-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600atarivcspointofpurchaserom"
:"AtariVCSPointofPurchase"
for /f "%FLDSWTCH%" %%a in ("Atari VCS Point-of-Purchase") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_atari_vcs_point-of-purchase_rom/atari_2600_atari_vcs_point-of-purchase_rom_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134546-m-a-s-h-atari-2600-screenshot-title-screen-select-game-options.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134547-m-a-s-h-atari-2600-screenshot-the-first-screen-rescuing-men.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134548-m-a-s-h-atari-2600-screenshot-in-the-operating-room.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134549-m-a-s-h-atari-2600-screenshot-can-you-get-this-piece-of-shrapnel.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/29337-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258958-m-a-s-h-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600amidar"
:"Amidar"
for /f "%FLDSWTCH%" %%a in ("Amidar") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_amidar/atari_2600_amidar_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56293-amidar-atari-2600-screenshot-the-beginning.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56294-amidar-atari-2600-screenshot-28-down-1-to-go.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56295-amidar-atari-2600-screenshot-watch-out-for-the-pigs.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56296-amidar-atari-2600-screenshot-what-the-hell.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1341-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/225411-amidar-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/1341.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600mcdonaldsgoldenarchesadventurebigmac06"
:"McDonaldsGoldenArchesAdventure(prototype)"
for /f "%FLDSWTCH%" %%a in ("McDonald's - Golden Arches Adventure (prototype)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mcdonalds_-_golden_arches_adventure_big_mac_06-06-1983_parker_brothers/atari_2600_mcdonalds_-_golden_arches_adventure_big_mac_06-06-1983_parker_brothers_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56293-amidar-atari-2600-screenshot-the-beginning.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56294-amidar-atari-2600-screenshot-28-down-1-to-go.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56295-amidar-atari-2600-screenshot-watch-out-for-the-pigs.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56296-amidar-atari-2600-screenshot-what-the-hell.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2570-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/225411-amidar-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600kungfumastercce"
:"KungFuMaster"
for /f "%FLDSWTCH%" %%a in ("Kung Fu Master") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_kung_fu_master_cce/atari_2600_kung_fu_master_cce_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56766-kung-fu-master-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56767-kung-fu-master-atari-2600-screenshot-incoming-bad-guys.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56768-kung-fu-master-atari-2600-screenshot-ducking-a-knife-that-was.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56769-kung-fu-master-atari-2600-screenshot-the-first-end-of-level.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28701-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56759-kung-fu-master-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600summergames1987epyxstevenabaker"
:"SummerGames"
for /f "%FLDSWTCH%" %%a in ("Summer Games") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_summer_games_1987_epyx_steven_a._baker_tod_frye_peter_engelbrite_80561/atari_2600_summer_games_1987_epyx_steven_a._baker_tod_frye_peter_engelbrite_80561_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68482-summer-games-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68483-summer-games-atari-2600-screenshot-select-a-country-to-represent.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68484-summer-games-atari-2600-screenshot-running-a-race.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/68485-summer-games-atari-2600-screenshot-one-of-the-swimming-events.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28591-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28591-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600mastersoftheuniversethepowerof"
:"MastersOfTheUniverseThePowerOfHeman"
for /f "%FLDSWTCH%" %%a in ("Masters Of The Universe - The Power Of He-man") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_masters_of_the_universe_-_the_power_of_he-man_1983_m_network_connie_go/atari_2600_masters_of_the_universe_-_the_power_of_he-man_1983_m_network_connie_go_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/51722-masters-of-the-universe-the-power-of-he-man-atari-2600-screenshot.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/51723-masters-of-the-universe-the-power-of-he-man-atari-2600-screenshot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28692-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28692-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600astroblast"
:"Astroblast"
for /f "%FLDSWTCH%" %%a in ("Astroblast") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_astroblast/atari_2600_astroblast_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50238-astrosmash-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50239-astrosmash-atari-2600-screenshot-be-sure-to-blast-the-white.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50240-astrosmash-atari-2600-screenshot-blasting-incoming-asteroids.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50241-astrosmash-atari-2600-screenshot-uh-oh-you-ve-been-hit.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17500-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/200570-astrosmash-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600cosmicark1983ccec831"
:"CosmicArk"
for /f "%FLDSWTCH%" %%a in ("Cosmic Ark") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cosmic_ark_1983_cce_c-831/atari_2600_cosmic_ark_1983_cce_c-831_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40490-cosmic-ark-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40491-cosmic-ark-atari-2600-screenshot-defend-the-ark-from-asteroids.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40492-cosmic-ark-atari-2600-screenshot-save-creatures-from-the-planets.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21347-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19981-cosmic-ark-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600beamrider"
:"Beamrider"
for /f "%FLDSWTCH%" %%a in ("Beamrider") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_beamrider/atari_2600_beamrider_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40478-beamrider-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40479-beamrider-atari-2600-screenshot-shooting-flying-saucers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40480-beamrider-atari-2600-screenshot-uh-oh-you-ve-been-destroyed.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40481-beamrider-atari-2600-screenshot-the-end-of-level-sentinel.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17506-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19936-beamrider-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600bobbyisgoinghome2600screensearch"
:"BobbyIsGoingHome"
for /f "%FLDSWTCH%" %%a in ("Bobby Is Going Home") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bobby_is_going_home_2600_screen_search_console_jone_yuan_telephonic_en/atari_2600_bobby_is_going_home_2600_screen_search_console_jone_yuan_telephonic_en_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40478-beamrider-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40479-beamrider-atari-2600-screenshot-shooting-flying-saucers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40480-beamrider-atari-2600-screenshot-uh-oh-you-ve-been-destroyed.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40481-beamrider-atari-2600-screenshot-the-end-of-level-sentinel.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9242-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19936-beamrider-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600dragster1980activisiondavidcraneag001"
:"Dragster"
for /f "%FLDSWTCH%" %%a in ("Dragster") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_dragster_1980_activision_david_crane_ag-001/atari_2600_dragster_1980_activision_david_crane_ag-001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50811-dragster-atari-2600-screenshot-a-race-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50812-dragster-atari-2600-screenshot-and-the-top-car-pulls-ahead.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50813-dragster-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22154-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25466-dragster-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600wintergames1987epyxstevenabaker"
:"WinterGames"
for /f "%FLDSWTCH%" %%a in ("Winter Games") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_winter_games_1987_epyx_steven_a._baker_tod_frye_peter_engelbrite_80561/atari_2600_winter_games_1987_epyx_steven_a._baker_tod_frye_peter_engelbrite_80561_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46143-winter-games-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46144-winter-games-atari-2600-screenshot-setting-up-the-players.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46145-winter-games-atari-2600-screenshot-slalom.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46146-winter-games-atari-2600-screenshot-the-bobsled.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22210-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22890-winter-games-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600playarounddemo1982playaroundjhm"
:"PlayaroundDemo"
for /f "%FLDSWTCH%" %%a in ("Playaround Demo") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_playaround_demo_1982_playaround_-_j.h.m./atari_2600_playaround_demo_1982_playaround_-_j.h.m._screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46143-winter-games-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46144-winter-games-atari-2600-screenshot-setting-up-the-players.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46145-winter-games-atari-2600-screenshot-slalom.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46146-winter-games-atari-2600-screenshot-the-bobsled.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22890-winter-games-atari-2600-media.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600starwarsreturnofthejediewok"
:"StarWarsReturnOfTheJediEwok"
for /f "%FLDSWTCH%" %%a in ("Star Wars - Return Of The Jedi - Ewok Adventure") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_star_wars_-_return_of_the_jedi_-_ewok_adventure_revenge_of_the_jedi_-_/atari_2600_star_wars_-_return_of_the_jedi_-_ewok_adventure_revenge_of_the_jedi_-__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22471-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39654-star-wars-return-of-the-jedi-death-star-battle-atari-2600-screenshot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39655-star-wars-return-of-the-jedi-death-star-battle-atari-2600-screenshot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39656-star-wars-return-of-the-jedi-death-star-battle-atari-2600-screenshot.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22471-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/119985-star-wars-return-of-the-jedi-death-star-battle-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600stampede1981activisionbobwhiteheadag011"
:"Stampede"
for /f "%FLDSWTCH%" %%a in ("Stampede") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_stampede_1981_activision_bob_whitehead_ag-011/atari_2600_stampede_1981_activision_bob_whitehead_ag-011_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41434-stampede-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41435-stampede-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41436-stampede-atari-2600-screenshot-plenty-of-calves-to-rope-here.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41437-stampede-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7955-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20433-stampede-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/7955.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600tapper1984segaballymidwaybecktech"
:"Tapper"
for /f "%FLDSWTCH%" %%a in ("Tapper") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tapper_1984_sega_-_bally_midway_-_beck-tech_010-01/atari_2600_tapper_1984_sega_-_bally_midway_-_beck-tech_010-01_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41529-tapper-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41530-tapper-atari-2600-screenshot-serving-some-thirsty-customers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41531-tapper-atari-2600-screenshot-searching-for-the-unshaken-soda.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41532-tapper-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22188-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/201990-tapper-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600halloween1983wizardvideogamesrobertbarber"
:"Halloween"
for /f "%FLDSWTCH%" %%a in ("Halloween") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_halloween_1983_wizard_video_games_robert_barber_tim_martin_007/atari_2600_halloween_1983_wizard_video_games_robert_barber_tim_martin_007_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/75087-halloween-atari-2600-screenshot-running-from-michael-myers.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/75088-halloween-atari-2600-screenshot-hmm-the-knife-is-on-the-floor.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/75089-halloween-atari-2600-screenshot-try-to-save-the-children.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/75090-halloween-atari-2600-screenshot-i-lost-my-head.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22160-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258786-halloween-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600tomcatthef14fightersimulator1988"
:"TomcatTheF14FighterSimulator"
for /f "%FLDSWTCH%" %%a in ("Tomcat - The F-14 Fighter Simulator") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tomcat_-_the_f-14_fighter_simulator_1988_absolute_entertainment_dan_ki/atari_2600_tomcat_-_the_f-14_fighter_simulator_1988_absolute_entertainment_dan_ki_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/71206-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/71207-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/71208-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/71209-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28702-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56869-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600frogsandfliesfrogsnflies1982"
:"FrogsAndFliesFrogsnFlies"
for /f "%FLDSWTCH%" %%a in ("Frogs And Flies - Frogs 'n' Flies") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_frogs_and_flies_-_frogs_n_flies_1982_m_network_david_rolfe_-_intv_mt56/atari_2600_frogs_and_flies_-_frogs_n_flies_1982_m_network_david_rolfe_-_intv_mt56_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/71206-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/71207-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/71208-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/71209-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/18549-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56869-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600cruisemissileakaexocet1987froggofg1007"
:"CruiseMissile"
for /f "%FLDSWTCH%" %%a in ("Cruise Missile") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cruise_missile_aka_exocet_1987_froggo_fg1007/atari_2600_cruise_missile_aka_exocet_1987_froggo_fg1007_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/58404-suicide-mission-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/58405-suicide-mission-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/58406-suicide-mission-atari-2600-screenshot-try-to-shoot-all-of-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/58407-suicide-mission-atari-2600-screenshot-uh-oh-i-m-surrounded.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28713-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/28737-suicide-mission-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600commandoraid1982usgamescorporation"
:"CommandoRaid"
for /f "%FLDSWTCH%" %%a in ("Commando Raid") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_commando_raid_1982_u.s._games_corporation_wes_trager_henry_will_iv_vc1/atari_2600_commando_raid_1982_u.s._games_corporation_wes_trager_henry_will_iv_vc1_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40997-commando-raid-atari-2600-screenshot-just-started-a-new-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40998-commando-raid-atari-2600-screenshot-paratroopers-are-attacking.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40999-commando-raid-atari-2600-screenshot-watch-out-for-the-bomber.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41000-commando-raid-atari-2600-screenshot-the-paratroopers-are-creating.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19929-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20181-commando-raid-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600racingcarunknown"
:"RacingCar"
for /f "%FLDSWTCH%" %%a in ("Racing Car") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_racing_car_unknown/atari_2600_racing_car_unknown_screenshot.png") do SET SNAP1ART=%%~a
set GTART=1
exit /b

:"atari2600porkys198320thcenturyfoxvideogames"
:"Porkys"
for /f "%FLDSWTCH%" %%a in ("Porky's") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_porkys_1983_20th_century_fox_video_games_-_lazer_micro_systems_-_dunhi/atari_2600_porkys_1983_20th_century_fox_video_games_-_lazer_micro_systems_-_dunhi_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169275-porky-s-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169276-porky-s-atari-2600-screenshot-starting-at-the-county-line.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169277-porky-s-atari-2600-screenshot-i-need-to-avoid-getting-hit.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169278-porky-s-atari-2600-screenshot-oh-no-i-ended-in-the-swamp-i.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28599-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28599-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600checkers1980activisionalanmillerag003"
:"Checkers"
for /f "%FLDSWTCH%" %%a in ("Checkers") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_checkers_1980_activision_alan_miller_ag-003/atari_2600_checkers_1980_activision_alan_miller_ag-003_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134566-checkers-atari-2600-screenshot-the-beginning-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134567-checkers-atari-2600-screenshot-move-the-x-to-select-a-checker.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134568-checkers-atari-2600-screenshot-uh-oh-the-red-player-has-just.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134569-checkers-atari-2600-screenshot-gameplay-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22149-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/53020-checkers-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600supertennisakarealsportstennistron"
:"SuperTennis"
for /f "%FLDSWTCH%" %%a in ("Super Tennis") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_super_tennis_aka_realsports_tennis_tron/atari_2600_super_tennis_aka_realsports_tennis_tron_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50805-tennis-atari-2600-screenshot-getting-ready-to-serve.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50806-tennis-atari-2600-screenshot-a-volley-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50807-tennis-atari-2600-screenshot-the-game-in-black-and-white-mode.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22202-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25463-tennis-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600robottankrobotank1983activisionalanmiller"
:"RobotTank"
for /f "%FLDSWTCH%" %%a in ("Robot Tank") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_robot_tank_robotank_1983_activision_alan_miller_az-028_ag-028-04/atari_2600_robot_tank_robotank_1983_activision_alan_miller_az-028_ag-028-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45483-robot-tank-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45490-robot-tank-atari-2600-screenshot-an-enemy-tank-has-been-destroyed.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45485-robot-tank-atari-2600-screenshot-it-can-be-difficult-to-spot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45486-robot-tank-atari-2600-screenshot-a-complete-squadron-has-been.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5323-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22507-robot-tank-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600gyruss1984parkerbrotherspb5080"
:"Gyruss"
for /f "%FLDSWTCH%" %%a in ("Gyruss") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_gyruss_1984_parker_brothers_pb5080/atari_2600_gyruss_1984_parker_brothers_pb5080_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43890-gyruss-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43891-gyruss-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43892-gyruss-atari-2600-screenshot-watch-out-for-the-satellites.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43893-gyruss-atari-2600-screenshot-arrived-at-neptune.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28595-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28595-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600andromanonthemoonprototype"
:"AndromanOnTheMoon"
for /f "%FLDSWTCH%" %%a in ("Androman On The Moon") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_androman_on_the_moon_prototype/atari_2600_androman_on_the_moon_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43890-gyruss-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43891-gyruss-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43892-gyruss-atari-2600-screenshot-watch-out-for-the-satellites.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43893-gyruss-atari-2600-screenshot-arrived-at-neptune.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1353-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21443-gyruss-atari-2600-media.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/1353-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/1353.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600laserblastlazer1981activisiondavidcrane"
:"LaserBlast"
for /f "%FLDSWTCH%" %%a in ("Laser Blast") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_laser_blast_lazer_1981_activision_david_crane_ag-008/atari_2600_laser_blast_lazer_1981_activision_david_crane_ag-008_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40970-laser-blast-atari-2600-screenshot-firing-laser-blasts.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40971-laser-blast-atari-2600-screenshot-avoid-enemy-fire.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40972-laser-blast-atari-2600-screenshot-try-to-crash-land-on-an-enemy.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40973-laser-blast-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19892-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20131-laser-blast-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600tankcityakathundergroundfunvisionfundinternational"
:"TankCity"
for /f "%FLDSWTCH%" %%a in ("Tank City") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tank_city_aka_thunderground_funvision_-_fund._international_co./atari_2600_tank_city_aka_thunderground_funvision_-_fund._international_co._screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133901-bank-heist-atari-2600-screenshot-selecting-a-game-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133902-bank-heist-atari-2600-screenshot-robbed-some-banks-the-cops.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133903-bank-heist-atari-2600-screenshot-there-are-different-mazes.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133904-bank-heist-atari-2600-screenshot-after-a-bank-is-robbed-a.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5323-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/5323-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600karate1982ultravision1044"
:"Karate"
for /f "%FLDSWTCH%" %%a in ("Karate") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_karate_1982_ultravision_1044/atari_2600_karate_1982_ultravision_1044_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/88212-karate-atari-2600-screenshot-get-ready-to-begin-a-fight.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/88213-karate-atari-2600-screenshot-a-fight-in-progress-with-no-points.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/88214-karate-atari-2600-screenshot-kicking-your-opponent.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/88215-karate-atari-2600-screenshot-ouch-i-ve-been-knocked-down.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28712-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/37821-karate-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600elkattack1987atarimarkrhahn"
:"ElkAttack"
for /f "%FLDSWTCH%" %%a in ("Elk Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_elk_attack_1987_atari_mark_r._hahn_prototype/atari_2600_elk_attack_1987_atari_mark_r._hahn_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50682-plaque-attack-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50683-plaque-attack-atari-2600-screenshot-attacking-hamburgers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50684-plaque-attack-atari-2600-screenshot-here-comes-a-swarm-of-hot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50685-plaque-attack-atari-2600-screenshot-uh-oh-some-french-fries.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22215-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25385-plaque-attack-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600carnival1982colecostevejessicakitchen2468"
:"Carnival"
for /f "%FLDSWTCH%" %%a in ("Carnival") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_carnival_1982_coleco_steve_jessica_kitchen_2468/atari_2600_carnival_1982_coleco_steve_jessica_kitchen_2468_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46063-carnival-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46064-carnival-atari-2600-screenshot-shooting-targets.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46065-carnival-atari-2600-screenshot-watch-out-for-the-bullet-eating.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46066-carnival-atari-2600-screenshot-almost-all-of-the-targets-are.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/27359-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/51919-carnival-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600skiingleski1980activisionbobwhitehead"
:"SkiingLeSki"
for /f "%FLDSWTCH%" %%a in ("Skiing - Le Ski") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_skiing_-_le_ski_1980_activision_bob_whitehead_ag-005_cag-005_ag-005-04/atari_2600_skiing_-_le_ski_1980_activision_bob_whitehead_ag-005_cag-005_ag-005-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46063-carnival-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46064-carnival-atari-2600-screenshot-shooting-targets.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46065-carnival-atari-2600-screenshot-watch-out-for-the-bullet-eating.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46066-carnival-atari-2600-screenshot-almost-all-of-the-targets-are.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7954-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/51919-carnival-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600solarfox1983cbselectronicsbobcurtiss"
:"SolarFox"
for /f "%FLDSWTCH%" %%a in ("Solar Fox") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_solar_fox_1983_cbs_electronics_bob_curtiss_4l_2487_5000/atari_2600_solar_fox_1983_cbs_electronics_bob_curtiss_4l_2487_5000_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47303-solar-fox-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47304-solar-fox-atari-2600-screenshot-collecting-solar-cells.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47305-solar-fox-atari-2600-screenshot-watch-out-for-incoming-fireballs.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47306-solar-fox-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/23914-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23771-solar-fox-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600autorennen"
:"Autorennen"
for /f "%FLDSWTCH%" %%a in ("Autorennen") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_autorennen/atari_2600_autorennen_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47303-solar-fox-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47304-solar-fox-atari-2600-screenshot-collecting-solar-cells.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47305-solar-fox-atari-2600-screenshot-watch-out-for-incoming-fireballs.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47306-solar-fox-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23771-solar-fox-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23772-solar-fox-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600cattrax1983ualimitedprototype"
:"CatTrax"
for /f "%FLDSWTCH%" %%a in ("Cat Trax") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cat_trax_1983_ua_limited_prototype/atari_2600_cat_trax_1983_ua_limited_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226120-cat-trax-atari-2600-screenshot-starting-screen-the-game-used.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226121-cat-trax-atari-2600-screenshot-there-is-the-potion-to-turn.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226122-cat-trax-atari-2600-screenshot-dog-catcher-truck-rear-view.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226123-cat-trax-atari-2600-screenshot-dog-catcher-truck-side-view.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/211791-cat-trax-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/211792-cat-trax-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600earthdiesscreamingthe198320thcentury"
:"EarthDiesScreamingThe"
for /f "%FLDSWTCH%" %%a in ("Earth Dies Screaming, The") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_earth_dies_screaming_the_1983_20th_century_fox_video_games_dan_thompso/atari_2600_earth_dies_screaming_the_1983_20th_century_fox_video_games_dan_thompso_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167340-the-earth-dies-screaming-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167341-the-earth-dies-screaming-atari-2600-screenshot-i-ve-been-hit.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167342-the-earth-dies-screaming-atari-2600-screenshot-trillian-fighter.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167343-the-earth-dies-screaming-atari-2600-screenshot-firing-lasers.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22205-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600boggle08071978ataridavidcrane"
:"Boggle"
for /f "%FLDSWTCH%" %%a in ("Boggle") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_boggle_08-07-1978_atari_david_crane_prototype/atari_2600_boggle_08-07-1978_atari_david_crane_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40458-frogger-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40459-frogger-atari-2600-screenshot-the-game-in-black-and-white-mode.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167302-frogger-atari-2600-screenshot-game-in-progress-starpath-supercharger.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19786-frogger-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23603-frogger-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600miner2049erstarringbountybob1982tigervision"
:"Miner2049erStarringBountyBob"
for /f "%FLDSWTCH%" %%a in ("Miner 2049er - Starring Bounty Bob") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_miner_2049er_-_starring_bounty_bob_1982_tigervision_7-008/atari_2600_miner_2049er_-_starring_bounty_bob_1982_tigervision_7-008_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40458-frogger-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40459-frogger-atari-2600-screenshot-the-game-in-black-and-white-mode.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167302-frogger-atari-2600-screenshot-game-in-progress-starpath-supercharger.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19786-frogger-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23603-frogger-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600fastfood1982telesysdondonyoruffcorn"
:"FastFood"
for /f "%FLDSWTCH%" %%a in ("Fast Food") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_fast_food_1982_telesys_don_donyo_ruffcorn_jack_woodman_1003/atari_2600_fast_food_1982_telesys_don_donyo_ruffcorn_jack_woodman_1003_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244662-fast-food-atari-2600-screenshot-i-need-to-eat-as-many-calories.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244663-fast-food-atari-2600-screenshot-i-need-to-avoid-the-purple.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244664-fast-food-atari-2600-screenshot-i-m-getting-fatter.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244665-fast-food-atari-2600-screenshot-i-ate-six-purple-pickles.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22157-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258984-fast-food-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600harem1982multivisionmichaelcase"
:"Harem"
for /f "%FLDSWTCH%" %%a in ("Harem") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_harem_1982_multivision_michael_case/atari_2600_harem_1982_multivision_michael_case_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244662-fast-food-atari-2600-screenshot-i-need-to-eat-as-many-calories.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244663-fast-food-atari-2600-screenshot-i-need-to-avoid-the-purple.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244664-fast-food-atari-2600-screenshot-i-m-getting-fatter.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244665-fast-food-atari-2600-screenshot-i-ate-six-purple-pickles.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258984-fast-food-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258985-fast-food-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600dungeondarkchambersbeta11221985"
:"Dungeon"
for /f "%FLDSWTCH%" %%a in ("Dungeon") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_dungeon_dark_chambers_beta_11-22-1985_atari_john_howard_palevich_cx261/atari_2600_dungeon_dark_chambers_beta_11-22-1985_atari_john_howard_palevich_cx261_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244662-fast-food-atari-2600-screenshot-i-need-to-eat-as-many-calories.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244663-fast-food-atari-2600-screenshot-i-need-to-avoid-the-purple.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244664-fast-food-atari-2600-screenshot-i-m-getting-fatter.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244665-fast-food-atari-2600-screenshot-i-ate-six-purple-pickles.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258984-fast-food-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258985-fast-food-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600motocrossracer1983xonoxktelsoftware"
:"MotocrossRacer"
for /f "%FLDSWTCH%" %%a in ("Motocross Racer") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_motocross_racer_1983_xonox_-_k-tel_software_anthony_r._henderson_99008/atari_2600_motocross_racer_1983_xonox_-_k-tel_software_anthony_r._henderson_99008_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/93172-motocross-racer-atari-2600-screenshot-startup-screen-xonox.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/93173-motocross-racer-atari-2600-screenshot-beginning-the-desert.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/93174-motocross-racer-atari-2600-screenshot-the-horizon-approaches.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/93175-motocross-racer-atari-2600-screenshot-the-uphill-race.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7956-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/247093-motocross-racer-atari-2600-media.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/7956.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600berenstainbears"
:"BerenstainBears"
for /f "%FLDSWTCH%" %%a in ("Berenstain Bears") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_berenstain_bears/atari_2600_berenstain_bears_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184651-berenstain-bears-atari-2600-screenshot-the-narrator-bear.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184652-berenstain-bears-atari-2600-screenshot-you-play-as-brother.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184653-berenstain-bears-atari-2600-screenshot-avoid-the-rocks.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184654-berenstain-bears-atari-2600-screenshot-you-need-to-catch-the.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600bibi"
:"Bi!Bi!"
for /f "%FLDSWTCH%" %%a in ("Bi! Bi!") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bibi/atari_2600_bibi_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184651-berenstain-bears-atari-2600-screenshot-the-narrator-bear.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184652-berenstain-bears-atari-2600-screenshot-you-play-as-brother.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184653-berenstain-bears-atari-2600-screenshot-avoid-the-rocks.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184654-berenstain-bears-atari-2600-screenshot-you-need-to-catch-the.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600starmaster1982activisionalanmillerax016"
:"Starmaster"
for /f "%FLDSWTCH%" %%a in ("Starmaster") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_starmaster_1982_activision_alan_miller_ax-016/atari_2600_starmaster_1982_activision_alan_miller_ax-016_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126009-starmaster-atari-2600-screenshot-game-4-starmaster-selected.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126010-starmaster-atari-2600-screenshot-starting-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126012-starmaster-atari-2600-screenshot-warping-to-a-sector-with.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126014-starmaster-atari-2600-screenshot-starmap.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1357-2.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600packongakaspiderkongunknown"
:"PacKong"
for /f "%FLDSWTCH%" %%a in ("Pac Kong") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pac_kong_aka_spider_kong_unknown/atari_2600_pac_kong_aka_spider_kong_unknown_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/458424-pac-kong-atari-2600-screenshot-starting-the-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/458425-pac-kong-atari-2600-screenshot-you-must-jump-at-the-very-from.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/458427-pac-kong-atari-2600-screenshot-otherwise-you-fall.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/458428-pac-kong-atari-2600-screenshot-i-win.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17526-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/135976-pac-kong-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600moonsweeper1988activisionaiz001"
:"Moonsweeper"
for /f "%FLDSWTCH%" %%a in ("Moonsweeper") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_moonsweeper_1988_activision_aiz-001/atari_2600_moonsweeper_1988_activision_aiz-001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78078-moonsweeper-atari-2600-screenshot-title-screen-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78079-moonsweeper-atari-2600-screenshot-flying-in-space.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78080-moonsweeper-atari-2600-screenshot-rescue-miners-on-the-moon.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78081-moonsweeper-atari-2600-screenshot-watch-out-for-lunar-towers.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1363-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/1363-1.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/1363.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600bumperbashpaddle1983spectravideodavidlubar"
:"BumperBash"
for /f "%FLDSWTCH%" %%a in ("Bumper Bash") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bumper_bash_paddle_1983_spectravideo_david_lubar_sa-218/atari_2600_bumper_bash_paddle_1983_spectravideo_david_lubar_sa-218_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/202339-bumper-bash-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/202340-bumper-bash-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
set GTART=1
exit /b

:"atari2600planetoftheapes198320thcentury"
:"PlanetOfTheApes"
for /f "%FLDSWTCH%" %%a in ("Planet Of The Apes") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_planet_of_the_apes_1983_20th_century_fox_video_games_john_w.s._marvin_/atari_2600_planet_of_the_apes_1983_20th_century_fox_video_games_john_w.s._marvin__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/202339-bumper-bash-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/202340-bumper-bash-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17530-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17530-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600timepilot1983colecoharleyhputhuff"
:"TimePilot"
for /f "%FLDSWTCH%" %%a in ("Time Pilot") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_time_pilot_1983_coleco_harley_h._puthuff_jr._2663/atari_2600_time_pilot_1983_coleco_harley_h._puthuff_jr._2663_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/66999-time-pilot-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/67000-time-pilot-atari-2600-screenshot-gameplay-on-the-first-level.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/67001-time-pilot-atari-2600-screenshot-watch-out-for-enemy-planes.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/67002-time-pilot-atari-2600-screenshot-attacking-helicopters.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19897-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600fishingderby1980activisiondavidcraneag"
:"FishingDerby"
for /f "%FLDSWTCH%" %%a in ("Fishing Derby") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_fishing_derby_1980_activision_david_crane_ag-004/atari_2600_fishing_derby_1980_activision_david_crane_ag-004_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50580-fishing-derby-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50581-fishing-derby-atari-2600-screenshot-some-fishing-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50582-fishing-derby-atari-2600-screenshot-got-a-big-fish-on-the-line.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20286-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/70805-fishing-derby-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600tutankham1983parkerbrothersdaveengmandawn"
:"Tutankham"
for /f "%FLDSWTCH%" %%a in ("Tutankham") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tutankham_1983_parker_brothers_dave_engman_dawn_stockbridge_pb5340/atari_2600_tutankham_1983_parker_brothers_dave_engman_dawn_stockbridge_pb5340_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52920-tutankham-atari-2600-screenshot-the-beginning-location.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52921-tutankham-atari-2600-screenshot-collect-treasures-but-watch.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52922-tutankham-atari-2600-screenshot-beginning-the-second-level.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28598-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/50794-tutankham-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600peterosebaseball1988absoluteentertainmentalex"
:"PeteRoseBaseball"
for /f "%FLDSWTCH%" %%a in ("Pete Rose Baseball") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pete_rose_baseball_1988_absolute_entertainment_alex_demeo_ag-045-04_ak/atari_2600_pete_rose_baseball_1988_absolute_entertainment_alex_demeo_ag-045-04_ak_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/179536-super-baseball-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/179537-super-baseball-atari-2600-screenshot-the-players-take-to-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/179538-super-baseball-atari-2600-screenshot-play-ball.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/179539-super-baseball-atari-2600-screenshot-the-pitch-was-a-ball.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28704-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28704-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600soccerakainternationalsoccer1989telegames5687"
:"Soccer"
for /f "%FLDSWTCH%" %%a in ("Soccer") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_soccer_aka_international_soccer_1989_telegames_5687_a279/atari_2600_soccer_aka_international_soccer_1989_telegames_5687_a279_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/77838-sorcerer-atari-2600-screenshot-the-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/77839-sorcerer-atari-2600-screenshot-watch-out-for-those-guys-at.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/77840-sorcerer-atari-2600-screenshot-there-are-a-variety-of-creatures.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/77841-sorcerer-atari-2600-screenshot-collect-the-treasure.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5316-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/34506-sorcerer-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/5316-g2.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/5316-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/5316-2.jpg") do SET FAN2ART=%%~a
set GTART=1
exit /b

:"atari2600locknchase1982mnetworkbruce"
:"LocknChase"
for /f "%FLDSWTCH%" %%a in ("Lock 'n' Chase") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_lock_n_chase_1982_m_network_bruce_pedersen_-_intv_mt5663/atari_2600_lock_n_chase_1982_m_network_bruce_pedersen_-_intv_mt5663_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46015-lock-n-chase-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46016-lock-n-chase-atari-2600-screenshot-you-ve-been-caught.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22164-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36712-lock-n-chase-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600angriffderluftflotten"
:"AngriffDerLuftflotten"
for /f "%FLDSWTCH%" %%a in ("Angriff Der Luftflotten") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_angriff_der_luftflotten/atari_2600_angriff_der_luftflotten_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46015-lock-n-chase-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46016-lock-n-chase-atari-2600-screenshot-you-ve-been-caught.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36712-lock-n-chase-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36713-lock-n-chase-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600redvsbluefootballrealsportsfootballbeta"
:"RedVsBlueFootball"
for /f "%FLDSWTCH%" %%a in ("Red Vs. Blue - Football") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_red_vs._blue_-_football_realsports_football_beta_1981_atari_tod_frye_p/atari_2600_red_vs._blue_-_football_realsports_football_beta_1981_atari_tod_frye_p_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46015-lock-n-chase-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46016-lock-n-chase-atari-2600-screenshot-you-ve-been-caught.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22201-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36712-lock-n-chase-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spaceshuttleajourneyintospace1983"
:"SpaceShuttleAJourneyIntoSpace"
for /f "%FLDSWTCH%" %%a in ("Space Shuttle - A Journey Into Space") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_space_shuttle_-_a_journey_into_space_1983_activision_steve_jessica_kit/atari_2600_space_shuttle_-_a_journey_into_space_1983_activision_steve_jessica_kit_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/60662-space-shuttle-a-journey-into-space-atari-2600-screenshot-title.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/60663-space-shuttle-a-journey-into-space-atari-2600-screenshot-t.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/60664-space-shuttle-a-journey-into-space-atari-2600-screenshot-here.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5326-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/29683-space-shuttle-a-journey-into-space-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600fasteddie198220thcenturyfoxvideo"
:"FastEddie"
for /f "%FLDSWTCH%" %%a in ("Fast Eddie") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_fast_eddie_1982_20th_century_fox_video_games_-_sirius_software_mark_tu/atari_2600_fast_eddie_1982_20th_century_fox_video_games_-_sirius_software_mark_tu_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168660-fast-eddie-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168661-fast-eddie-atari-2600-screenshot-level-1-hearts.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168662-fast-eddie-atari-2600-screenshot-i-need-to-get-the-key-above.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168663-fast-eddie-atari-2600-screenshot-level-2-fish.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22156-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/112701-fast-eddie-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600baseattack"
:"BaseAttack"
for /f "%FLDSWTCH%" %%a in ("Base Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_base_attack/atari_2600_base_attack_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50682-plaque-attack-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50683-plaque-attack-atari-2600-screenshot-attacking-hamburgers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50684-plaque-attack-atari-2600-screenshot-here-comes-a-swarm-of-hot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50685-plaque-attack-atari-2600-screenshot-uh-oh-some-french-fries.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17504-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17504-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600firefly1983mythiconbillbrynerbruce"
:"FireFly"
for /f "%FLDSWTCH%" %%a in ("Fire Fly") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_fire_fly_1983_mythicon_bill_bryner_bruce_de_graaf_ma1002/atari_2600_fire_fly_1983_mythicon_bill_bryner_bruce_de_graaf_ma1002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70740-fire-fly-atari-2600-screenshot-fighting-a-flaming-pumpkin.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70741-fire-fly-atari-2600-screenshot-watch-out-for-these-demons.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70742-fire-fly-atari-2600-screenshot-some-coiled-jumping-snakes-attack.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70743-fire-fly-atari-2600-screenshot-incoming-enemies.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22216-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/32434-fire-fly-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600shuttleorbiter1983avalonhilljeanbaer"
:"ShuttleOrbiter"
for /f "%FLDSWTCH%" %%a in ("Shuttle Orbiter") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_shuttle_orbiter_1983_avalon_hill_jean_baer_bill_hood_5004002/atari_2600_shuttle_orbiter_1983_avalon_hill_jean_baer_bill_hood_5004002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183136-shuttle-orbiter-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183137-shuttle-orbiter-atari-2600-screenshot-lift-off.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183138-shuttle-orbiter-atari-2600-screenshot-orbiting-the-earth-not.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183139-shuttle-orbiter-atari-2600-screenshot-docked-with-the-fuel.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5326-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/5326-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600ghostmanor1983xonoxktelsoftware"
:"GhostManor"
for /f "%FLDSWTCH%" %%a in ("Ghost Manor") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_ghost_manor_1983_xonox_-_k-tel_software_-_beck-tech_6210_06002_06004_9/atari_2600_ghost_manor_1983_xonox_-_k-tel_software_-_beck-tech_6210_06002_06004_9_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/88256-ghost-manor-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/88257-ghost-manor-atari-2600-screenshot-chasing-the-rainbow-ghost.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/88258-ghost-manor-atari-2600-screenshot-shoot-all-of-the-ghosts-to.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/88259-ghost-manor-atari-2600-screenshot-the-first-floor-of-the-manor.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/18881-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/18881-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600shootingallery1982imagicdenniskoble720021"
:"ShootinGallery"
for /f "%FLDSWTCH%" %%a in ("Shootin' Gallery") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_shootin_gallery_1982_imagic_dennis_koble_720021-1a_ia3410/atari_2600_shootin_gallery_1982_imagic_dennis_koble_720021-1a_ia3410_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115878-shootin-gallery-atari-2600-screenshot-imagic-logo-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115879-shootin-gallery-atari-2600-screenshot-shooting-targets.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115881-shootin-gallery-atari-2600-screenshot-there-are-many-types.jpg") do SET SNAP4ART=%%~a
set GTART=1
exit /b

:"atari2600pizzachefpizzatime1983zimagemag"
:"PizzaChefPizzaTime"
for /f "%FLDSWTCH%" %%a in ("Pizza Chef - Pizza Time") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pizza_chef_-_pizza_time_1983_zimag_-_emag_-_vidco_713-111_-_gn-050_pro/atari_2600_pizza_chef_-_pizza_time_1983_zimag_-_emag_-_vidco_713-111_-_gn-050_pro_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115878-shootin-gallery-atari-2600-screenshot-imagic-logo-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115879-shootin-gallery-atari-2600-screenshot-shooting-targets.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115881-shootin-gallery-atari-2600-screenshot-there-are-many-types.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22212-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600riddleofthesphinx1982imagicrob"
:"RiddleOfTheSphinx"
for /f "%FLDSWTCH%" %%a in ("Riddle Of The Sphinx") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_riddle_of_the_sphinx_1982_imagic_rob_fulop_bob_smith_720106-1a_ia3600/atari_2600_riddle_of_the_sphinx_1982_imagic_rob_fulop_bob_smith_720106-1a_ia3600_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/99223-riddle-of-the-sphinx-atari-2600-screenshot-the-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/99224-riddle-of-the-sphinx-atari-2600-screenshot-watch-out-for-enemies.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/99225-riddle-of-the-sphinx-atari-2600-screenshot-some-kind-of-temple.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/99226-riddle-of-the-sphinx-atari-2600-screenshot-isis-may-heal-your.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22177-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/53289-riddle-of-the-sphinx-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600supercobra1982parkerbrothersmikebrodie"
:"SuperCobra"
for /f "%FLDSWTCH%" %%a in ("Super Cobra") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_super_cobra_1982_parker_brothers_mike_brodie_pb5320/atari_2600_super_cobra_1982_parker_brothers_mike_brodie_pb5320_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52905-super-cobra-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52906-super-cobra-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52907-super-cobra-atari-2600-screenshot-try-to-bomb-the-fuel-depots.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52908-super-cobra-atari-2600-screenshot-the-tunnel-begins-to-get.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28597-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28597-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600deathtrap1983avalonhilljeanbaer"
:"DeathTrap"
for /f "%FLDSWTCH%" %%a in ("Death Trap") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_death_trap_1983_avalon_hill_jean_baer_jim_jacob_5001002/atari_2600_death_trap_1983_avalon_hill_jean_baer_jim_jacob_5001002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/182797-death-trap-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/182798-death-trap-atari-2600-screenshot-starting-a-game-on-easy-level.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/182799-death-trap-atari-2600-screenshot-trying-to-destroy-the-right.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/182800-death-trap-atari-2600-screenshot-going-after-the-left-generator.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22168-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258777-death-trap-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600megaboydynacom"
:"Megaboy"
for /f "%FLDSWTCH%" %%a in ("Megaboy") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_megaboy_dynacom/atari_2600_megaboy_dynacom_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/182797-death-trap-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/182798-death-trap-atari-2600-screenshot-starting-a-game-on-easy-level.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/182799-death-trap-atari-2600-screenshot-trying-to-destroy-the-right.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/182800-death-trap-atari-2600-screenshot-going-after-the-left-generator.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258777-death-trap-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258778-death-trap-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600firefighterfirefighters1982imagicbrad"
:"FireFighter"
for /f "%FLDSWTCH%" %%a in ("Fire Fighter") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_fire_fighter_fire_fighters_1982_imagic_brad_stewart_720105-1a_ia3400/atari_2600_fire_fighter_fire_fighters_1982_imagic_brad_stewart_720105-1a_ia3400_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106010-fire-fighter-atari-2600-screenshot-the-starting-screen-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106011-fire-fighter-atari-2600-screenshot-using-the-fire-hose-to.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106012-fire-fighter-atari-2600-screenshot-oops-i-ve-moved-the-ladder.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106013-fire-fighter-atari-2600-screenshot-the-building-gets-shorter.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17511-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/121513-fire-fighter-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600jawbreaker"
:"JawBreaker"
for /f "%FLDSWTCH%" %%a in ("Jaw Breaker") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_jaw_breaker/atari_2600_jaw_breaker_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/510075-jawbreaker-atari-2600-screenshot-starting-the-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/510076-jawbreaker-atari-2600-screenshot-the-vitamin-pill-has-appeared.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/510077-jawbreaker-atari-2600-screenshot-i-ate-the-vitamin-so-all.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/510078-jawbreaker-atari-2600-screenshot-i-cleared-the-stage-and-am.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/259369-jawbreaker-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/259370-jawbreaker-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600skateboardin1987absoluteentertainmentdavidcrane"
:"SkateBoardin"
for /f "%FLDSWTCH%" %%a in ("Skate Boardin'") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_skate_boardin_1987_absolute_entertainment_david_crane_ag-042-02_ag-042/atari_2600_skate_boardin_1987_absolute_entertainment_david_crane_ag-042-02_ag-042_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169434-skate-boardin-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169435-skate-boardin-atari-2600-screenshot-awsome.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169436-skate-boardin-atari-2600-screenshot-catching-some-air.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170032-skate-boardin-atari-2600-screenshot-tubular.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28703-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28703-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600mrpostmanocarteiro1983ccec"
:"MrPostmanOCarteiro"
for /f "%FLDSWTCH%" %%a in ("Mr. Postman - O Carteiro") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mr._postman_-_o_carteiro_1983_cce_c-801/atari_2600_mr._postman_-_o_carteiro_1983_cce_c-801_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169434-skate-boardin-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169435-skate-boardin-atari-2600-screenshot-awsome.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169436-skate-boardin-atari-2600-screenshot-catching-some-air.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170032-skate-boardin-atari-2600-screenshot-tubular.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22169-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/86356-skate-boardin-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600wormwari198220thcenturyfox"
:"WormWarI"
for /f "%FLDSWTCH%" %%a in ("Worm War I") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_worm_war_i_1982_20th_century_fox_video_games_-_sirius_software_david_l/atari_2600_worm_war_i_1982_20th_century_fox_video_games_-_sirius_software_david_l_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168810-worm-war-i-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168811-worm-war-i-atari-2600-screenshot-i-need-to-shoot-the-worm.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168812-worm-war-i-atari-2600-screenshot-shoot-worms-and-blocks.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168813-worm-war-i-atari-2600-screenshot-i-need-to-touch-this-fuel.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22195-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260877-worm-war-i-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600stargunner1982telesysalexleavens1005"
:"Stargunner"
for /f "%FLDSWTCH%" %%a in ("Stargunner") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_stargunner_1982_telesys_alex_leavens_1005/atari_2600_stargunner_1982_telesys_alex_leavens_1005_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244673-stargunner-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244674-stargunner-atari-2600-screenshot-the-first-enemy-wave.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244675-stargunner-atari-2600-screenshot-i-shot-an-enemy.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244677-stargunner-atari-2600-screenshot-the-second-enemy-wave.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28707-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28707-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600applesanddolls"
:"ApplesAndDolls"
for /f "%FLDSWTCH%" %%a in ("Apples And Dolls") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_apples_and_dolls/atari_2600_apples_and_dolls_screenshot.gif") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244673-stargunner-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244674-stargunner-atari-2600-screenshot-the-first-enemy-wave.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244675-stargunner-atari-2600-screenshot-i-shot-an-enemy.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244677-stargunner-atari-2600-screenshot-the-second-enemy-wave.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600sinistar1984ataritodfryecx26122prototype"
:"Sinistar(UnreleasedProtoype)"
for /f "%FLDSWTCH%" %%a in ("Sinistar (Unreleased Protoype)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sinistar_1984_atari_tod_frye_cx26122_prototype/atari_2600_sinistar_1984_atari_tod_frye_cx26122_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244378-astar-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244379-astar-atari-2600-screenshot-level-1-cherries.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244380-astar-atari-2600-screenshot-i-finished-but-not-in-the-minimum.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244381-astar-atari-2600-screenshot-level-2-strawberries.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600crackpots1983activisiondankitchenax029"
:"Crackpots"
for /f "%FLDSWTCH%" %%a in ("Crackpots") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_crackpots_1983_activision_dan_kitchen_ax-029/atari_2600_crackpots_1983_activision_dan_kitchen_ax-029_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47308-crackpots-atari-2600-screenshot-here-come-the-bugs.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47309-crackpots-atari-2600-screenshot-hit-a-bug-with-a-pot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47310-crackpots-atari-2600-screenshot-bugs-have-almost-reached-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47311-crackpots-atari-2600-screenshot-you-become-lower-to-the-ground.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22150-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23774-crackpots-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600sneaknpeekhidenseek1982"
:"SneaknPeek"
for /f "%FLDSWTCH%" %%a in ("Sneak 'n Peek") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sneak_n_peek_hide_n_seek_1982_u.s._games_corporation_garry_kitchen_pau/atari_2600_sneak_n_peek_hide_n_seek_1982_u.s._games_corporation_garry_kitchen_pau_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70811-sneak-n-peek-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70812-sneak-n-peek-atari-2600-screenshot-one-player-covers-his-eyes.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70813-sneak-n-peek-atari-2600-screenshot-hmm-now-where-should-i-hide.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70814-sneak-n-peek-atari-2600-screenshot-searching-a-pink-bedroom.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19930-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/19930-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600plaqueattack1983activisionstevecartwrightax"
:"PlaqueAttack"
for /f "%FLDSWTCH%" %%a in ("Plaque Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_plaque_attack_1983_activision_steve_cartwright_ax-027/atari_2600_plaque_attack_1983_activision_steve_cartwright_ax-027_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50682-plaque-attack-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50683-plaque-attack-atari-2600-screenshot-attacking-hamburgers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50684-plaque-attack-atari-2600-screenshot-here-comes-a-swarm-of-hot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50685-plaque-attack-atari-2600-screenshot-uh-oh-some-french-fries.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/10130-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25385-plaque-attack-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600junglefever1982playaroundjhm"
:"JungleFever"
for /f "%FLDSWTCH%" %%a in ("Jungle Fever") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_jungle_fever_1982_playaround_-_j.h.m._203/atari_2600_jungle_fever_1982_playaround_-_j.h.m._203_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40453-jungle-hunt-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40454-jungle-hunt-atari-2600-screenshot-swinging-from-vine-to-vine.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40455-jungle-hunt-atari-2600-screenshot-watch-out-for-alligators.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40456-jungle-hunt-atari-2600-screenshot-jumping-over-boulders.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1351-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19518-jungle-hunt-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/1351.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600starvoyager1982imagicbobsmith720000"
:"StarVoyager"
for /f "%FLDSWTCH%" %%a in ("Star Voyager") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_star_voyager_1982_imagic_bob_smith_720000-201_720102-1b_ia3201/atari_2600_star_voyager_1982_imagic_bob_smith_720000-201_720102-1b_ia3201_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115855-star-voyager-atari-2600-screenshot-imagic-logo-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115856-star-voyager-atari-2600-screenshot-enemy-ship-in-the-distance.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115857-star-voyager-atari-2600-screenshot-oh-no-i-ve-been-hit.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/115858-star-voyager-atari-2600-screenshot-the-screen-flashes-different.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22199-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/53304-star-voyager-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600bacheloretteparty"
:"BacheloretteParty"
for /f "%FLDSWTCH%" %%a in ("Bachelorette Party") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bachelorette_party/atari_2600_bachelorette_party_screenshot.gif") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/188100-bachelor-party-gigolo-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/188101-bachelor-party-gigolo-atari-2600-screenshot-the-gigolo-is.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/188102-bachelor-party-gigolo-atari-2600-screenshot-you-can-t-see.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/188103-bachelor-party-gigolo-atari-2600-screenshot-i-need-to-take.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/201134-bachelor-party-gigolo-atari-2600-front-cover.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600tanksbutnotanksakaphantomtank"
:"TanksButNoTanks"
for /f "%FLDSWTCH%" %%a in ("Tanks But No Tanks") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tanks_but_no_tanks_aka_phantom_tank_1983_zimag_-_emag_-_vidco_707-111_/atari_2600_tanks_but_no_tanks_aka_phantom_tank_1983_zimag_-_emag_-_vidco_707-111__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/534343-tanks-but-no-tanks-atari-2600-screenshot-starting-screen-showing.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/534344-tanks-but-no-tanks-atari-2600-screenshot-starting-the-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/534345-tanks-but-no-tanks-atari-2600-screenshot-i-lost-a-tank.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/534346-tanks-but-no-tanks-atari-2600-screenshot-level-2-more-enemies.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600circusataricircuspaddle1980atarimike"
:"CircusAtari"
for /f "%FLDSWTCH%" %%a in ("Circus Atari") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_circus_atari_-_circus_paddle_1980_atari_mike_lorenzen_-_sears_cx2630_-/atari_2600_circus_atari_-_circus_paddle_1980_atari_mike_lorenzen_-_sears_cx2630_-_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45987-circus-atari-atari-2600-screenshot-the-game-demo-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45988-circus-atari-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45989-circus-atari-atari-2600-screenshot-whoops.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45990-circus-atari-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5301-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22731-circus-atari-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600diagnostictestcartridge261982atari"
:"DiagnosticTestCartridge26"
for /f "%FLDSWTCH%" %%a in ("Diagnostic Test Cartridge 2.6") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/images/emulation_default.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45987-circus-atari-atari-2600-screenshot-the-game-demo-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45988-circus-atari-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45989-circus-atari-atari-2600-screenshot-whoops.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45990-circus-atari-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22731-circus-atari-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/261065-circus-atari-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600mountainking1983cbselectronicsef"
:"MountainKing"
for /f "%FLDSWTCH%" %%a in ("Mountain King") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mountain_king_1983_cbs_electronics_e.f._dreyer_ed_salvo_4l_2738_0000/atari_2600_mountain_king_1983_cbs_electronics_e.f._dreyer_ed_salvo_4l_2738_0000_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52494-mountain-king-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52495-mountain-king-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52496-mountain-king-atari-2600-screenshot-found-the-crown.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52497-mountain-king-atari-2600-screenshot-searching-with-the-flashlight.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22217-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/26326-mountain-king-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600dicepuzzle1983panda106"
:"DicePuzzle"
for /f "%FLDSWTCH%" %%a in ("Dice Puzzle") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_dice_puzzle_1983_panda_106/atari_2600_dice_puzzle_1983_panda_106_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52494-mountain-king-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52495-mountain-king-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52496-mountain-king-atari-2600-screenshot-found-the-crown.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52497-mountain-king-atari-2600-screenshot-searching-with-the-flashlight.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/26326-mountain-king-atari-2600-media.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600wings06031983cbselectronicsstuart"
:"Wings"
for /f "%FLDSWTCH%" %%a in ("Wings") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_wings_06-03-1983_cbs_electronics_stuart_ross_prototype/atari_2600_wings_06-03-1983_cbs_electronics_stuart_ross_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100386-wing-war-atari-2600-screenshot-starting-location-your-dragon.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100387-wing-war-atari-2600-screenshot-fire-crystals-can-often-be.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100388-wing-war-atari-2600-screenshot-destroy-the-creature-by-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100389-wing-war-atari-2600-screenshot-brought-a-water-crystal-back.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600gophergopherattack1982usgames"
:"Gopher"
for /f "%FLDSWTCH%" %%a in ("Gopher") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_gopher_gopher_attack_1982_u.s._games_corporation_sylvia_day_henry_will/atari_2600_gopher_gopher_attack_1982_u.s._games_corporation_sylvia_day_henry_will_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70866-gopher-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70867-gopher-atari-2600-screenshot-the-gopher-is-tunneling-his-way.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70868-gopher-atari-2600-screenshot-the-duck-flies-by-and-drops-carrot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70869-gopher-atari-2600-screenshot-uh-oh-the-gopher-made-it-to-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28690-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28690-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600seahuntakaskindiver1987"
:"SeaHunt"
for /f "%FLDSWTCH%" %%a in ("Sea Hunt") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sea_hunt_aka_skindiver_1987/atari_2600_sea_hunt_aka_skindiver_1987_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44577-spy-hunter-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44574-spy-hunter-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44575-spy-hunter-atari-2600-screenshot-the-weapons-van-is-on-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44576-spy-hunter-atari-2600-screenshot-driving-the-boat.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28710-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28710-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600iwantmymommyakaopensesame"
:"IWantMyMommy"
for /f "%FLDSWTCH%" %%a in ("I Want My Mommy") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_i_want_my_mommy_aka_open_sesame_kidstuff_1983_zimag_-_emag_-_vidco_710/atari_2600_i_want_my_mommy_aka_open_sesame_kidstuff_1983_zimag_-_emag_-_vidco_710_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/544180-i-want-my-mommy-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/544181-i-want-my-mommy-atari-2600-screenshot-teddy-has-raised-some.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/544182-i-want-my-mommy-atari-2600-screenshot-i-caught-a-mommy-kiss.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/544183-i-want-my-mommy-atari-2600-screenshot-i-knocked-out-a-dream.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22161-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600funkyfish1983ualimitedprototype"
:"FunkyFish"
for /f "%FLDSWTCH%" %%a in ("Funky Fish") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_funky_fish_1983_ua_limited_prototype/atari_2600_funky_fish_1983_ua_limited_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/225824-funky-fish-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/225825-funky-fish-atari-2600-screenshot-shoot-the-things-that-guard.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/225826-funky-fish-atari-2600-screenshot-i-lost-a-life-i-am-just-bones.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/225827-funky-fish-atari-2600-screenshot-when-you-shoot-a-sea-creature.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260984-funky-fish-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260983-funky-fish-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600sssnake1982dataageda1003"
:"Sssnake"
for /f "%FLDSWTCH%" %%a in ("Sssnake") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sssnake_1982_data_age_da1003/atari_2600_sssnake_1982_data_age_da1003_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186538-sssnake-atari-2600-screenshot-i-must-shoot-the-prey-through.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186539-sssnake-atari-2600-screenshot-they-come-in-different-shapes.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186540-sssnake-atari-2600-screenshot-i-got-them.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186541-sssnake-atari-2600-screenshot-the-snake-got-me.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22184-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600spiderfighter1982activisionlarrymillerax"
:"SpiderFighter"
for /f "%FLDSWTCH%" %%a in ("Spider Fighter") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_spider_fighter_1982_activision_larry_miller_ax-021/atari_2600_spider_fighter_1982_activision_larry_miller_ax-021_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50583-spider-fighter-atari-2600-screenshot-title-screen-and-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50584-spider-fighter-atari-2600-screenshot-fighting-some-spiders.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50585-spider-fighter-atari-2600-screenshot-the-spiders-are-getting.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50586-spider-fighter-atari-2600-screenshot-argh-you-ve-been-hit.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1354-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25353-spider-fighter-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600deadlyduck198220thcenturyfoxvideo"
:"DeadlyDuck"
for /f "%FLDSWTCH%" %%a in ("Deadly Duck") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_deadly_duck_1982_20th_century_fox_video_games_-_sirius_software_ed_hod/atari_2600_deadly_duck_1982_20th_century_fox_video_games_-_sirius_software_ed_hod_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167974-deadly-duck-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167975-deadly-duck-atari-2600-screenshot-the-crabs-are-dropping-bricks.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167976-deadly-duck-atari-2600-screenshot-i-have-eliminated-three.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167977-deadly-duck-atari-2600-screenshot-i-was-hit.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22151-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260885-deadly-duck-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600submarinecommanderseawolf31982searstele"
:"SubmarineCommander"
for /f "%FLDSWTCH%" %%a in ("Submarine Commander") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_submarine_commander_seawolf_3_1982_sears_tele-games_marilyn_churchill_/atari_2600_submarine_commander_seawolf_3_1982_sears_tele-games_marilyn_churchill__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/192068-submarine-commander-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/192069-submarine-commander-atari-2600-screenshot-a-tanker-slow-but.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/192070-submarine-commander-atari-2600-screenshot-i-fired-a-torpedo.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/192071-submarine-commander-atari-2600-screenshot-i-hit-the-tanker.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600bugspaddle1982dataageda1005"
:"Bugs"
for /f "%FLDSWTCH%" %%a in ("Bugs") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bugs_paddle_1982_data_age_da1005/atari_2600_bugs_paddle_1982_data_age_da1005_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185768-bugs-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185769-bugs-atari-2600-screenshot-warping-in-to-the-planet.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185770-bugs-atari-2600-screenshot-the-bugs-are-emerging.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185771-bugs-atari-2600-screenshot-the-phylanx-is-coming-in.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22146-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/220806-bugs-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600internationalsoccer1982mnetworkkevinmiller"
:"InternationalSoccer"
for /f "%FLDSWTCH%" %%a in ("International Soccer") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_international_soccer_1982_m_network_kevin_miller_mt5687/atari_2600_international_soccer_1982_m_network_kevin_miller_mt5687_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185768-bugs-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185769-bugs-atari-2600-screenshot-warping-in-to-the-planet.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185770-bugs-atari-2600-screenshot-the-bugs-are-emerging.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185771-bugs-atari-2600-screenshot-the-phylanx-is-coming-in.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9246-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/220806-bugs-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600supervoleyballakarealsportsvolleyballcce"
:"SuperVoleyball"
for /f "%FLDSWTCH%" %%a in ("Super Voleyball") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_super_voleyball_aka_realsports_volleyball_cce/atari_2600_super_voleyball_aka_realsports_volleyball_cce_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/181663-super-football-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/181666-super-football-atari-2600-screenshot-the-players-take-to-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/181665-super-football-atari-2600-screenshot-huddled.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/181664-super-football-atari-2600-screenshot-ready-to-play.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5331-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/211785-super-football-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600demolitionherby1983telesysdondonyoruffcorn"
:"DemolitionHerby"
for /f "%FLDSWTCH%" %%a in ("Demolition Herby") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_demolition_herby_1983_telesys_don_donyo_ruffcorn_1006/atari_2600_demolition_herby_1983_telesys_don_donyo_ruffcorn_1006_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/241034-demolition-herby-atari-2600-screenshot-starting-location.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/241035-demolition-herby-atari-2600-screenshot-i-have-completed-apanel.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/241036-demolition-herby-atari-2600-screenshot-i-was-knocked-off-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/241037-demolition-herby-atari-2600-screenshot-i-have-completed-several.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260080-demolition-herby-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/128334-demolition-herby-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600bermudatrianglegameworld"
:"BermudaTriangle"
for /f "%FLDSWTCH%" %%a in ("Bermuda Triangle") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_bermuda_triangle_gameworld/atari_2600_bermuda_triangle_gameworld_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85104-bermuda-triangle-atari-2600-screenshot-watch-out-for-sharks.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85105-bermuda-triangle-atari-2600-screenshot-there-are-many-obstacles.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85106-bermuda-triangle-atari-2600-screenshot-squid-sneaking-up-behind.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85107-bermuda-triangle-atari-2600-screenshot-using-the-tractor-beam.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17507-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36594-bermuda-triangle-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600lostluggage1981apollogamesbyapollo"
:"LostLuggage"
for /f "%FLDSWTCH%" %%a in ("Lost Luggage") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_lost_luggage_1981_apollo_-_games_by_apollo_ernie_runyon_ed_salvo_ap-20/atari_2600_lost_luggage_1981_apollo_-_games_by_apollo_ernie_runyon_ed_salvo_ap-20_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62880-lost-luggage-atari-2600-screenshot-an-airplane-is-landing.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62881-lost-luggage-atari-2600-screenshot-catching-suitcases-in-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62882-lost-luggage-atari-2600-screenshot-catching-suitcases-in-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62883-lost-luggage-atari-2600-screenshot-oops-missed-a-suitcase.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17518-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17518-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600cosmiccorridorakaspacetunnel1983zimag"
:"CosmicCorridor"
for /f "%FLDSWTCH%" %%a in ("Cosmic Corridor") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cosmic_corridor_aka_space_tunnel_1983_zimag_-_emag_-_vidco_708-111_-_g/atari_2600_cosmic_corridor_aka_space_tunnel_1983_zimag_-_emag_-_vidco_708-111_-_g_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56574-cosmic-commuter-atari-2600-screenshot-game-demo-screen-select.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56575-cosmic-commuter-atari-2600-screenshot-landing-on-the-planet.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56576-cosmic-commuter-atari-2600-screenshot-piloting-the-astrobus.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56577-cosmic-commuter-atari-2600-screenshot-pick-up-eight-commuters.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22209-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600pleiades1983ualimitedprototype"
:"Pleiades"
for /f "%FLDSWTCH%" %%a in ("Pleiades") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pleiades_1983_ua_limited_prototype/atari_2600_pleiades_1983_ua_limited_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/225828-pleiades-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/225829-pleiades-atari-2600-screenshot-shoot-those-alien-ships.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/225830-pleiades-atari-2600-screenshot-shoot-the-alien-in-the-mother.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/225831-pleiades-atari-2600-screenshot-i-need-to-maneuver-through.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260986-pleiades-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260985-pleiades-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600frankensteinsmonster1983dataage112008"
:"FrankensteinsMonster"
for /f "%FLDSWTCH%" %%a in ("Frankenstein's Monster") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_frankensteins_monster_1983_data_age_112-008/atari_2600_frankensteins_monster_1983_data_age_112-008_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186561-frankenstein-s-monster-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186562-frankenstein-s-monster-atari-2600-screenshot-jumping-the-tarantula.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186563-frankenstein-s-monster-atari-2600-screenshot-i-have-the-stone.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186564-frankenstein-s-monster-atari-2600-screenshot-if-i-make-my.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5303-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/5303-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600gigolo1982playaroundjhm205"
:"Gigolo"
for /f "%FLDSWTCH%" %%a in ("Gigolo") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_gigolo_1982_playaround_-_j.h.m._205/atari_2600_gigolo_1982_playaround_-_j.h.m._205_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46222-golf-atari-2600-screenshot-teeing-off-on-the-first-hole.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46223-golf-atari-2600-screenshot-putting.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46224-golf-atari-2600-screenshot-watch-out-for-trees-and-sand.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46225-golf-atari-2600-screenshot-teeing-off-on-the-third-hole.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22946-golf-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36717-golf-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600armorambush"
:"ArmorAmbush"
for /f "%FLDSWTCH%" %%a in ("Armor Ambush") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_armor_ambush/atari_2600_armor_ambush_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46222-golf-atari-2600-screenshot-teeing-off-on-the-first-hole.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46223-golf-atari-2600-screenshot-putting.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46224-golf-atari-2600-screenshot-watch-out-for-trees-and-sand.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46225-golf-atari-2600-screenshot-teeing-off-on-the-third-hole.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17495-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22946-golf-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600tapeworm1982spectravisionspectravideosa204"
:"Tapeworm"
for /f "%FLDSWTCH%" %%a in ("Tapeworm") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tapeworm_1982_spectravision_spectravideo_sa-204/atari_2600_tapeworm_1982_spectravision_spectravideo_sa-204_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168816-tape-worm-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168817-tape-worm-atari-2600-screenshot-in-level-1-apple.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168818-tape-worm-atari-2600-screenshot-watch-out-for-beeky.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168819-tape-worm-atari-2600-screenshot-i-got-the-apple.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600streetracerspeedwayiiwheelspaddle1977"
:"StreetRacerSpeedwayIi"
for /f "%FLDSWTCH%" %%a in ("Street Racer - Speedway Ii") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_street_racer_-_speedway_ii_wheels_paddle_1977_atari_larry_kaplan_-_sea/atari_2600_street_racer_-_speedway_ii_wheels_paddle_1977_atari_larry_kaplan_-_sea_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62389-street-racer-atari-2600-screenshot-racecar-racing.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62390-street-racer-atari-2600-screenshot-the-slalom.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62391-street-racer-atari-2600-screenshot-avoid-the-obstacles.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62392-street-racer-atari-2600-screenshot-the-jet-shooter-variation.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7956-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/30357-street-racer-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/7956.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600taxavoiders1982americanvideogamedunhillelectronics"
:"TaxAvoiders"
for /f "%FLDSWTCH%" %%a in ("Tax Avoiders") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tax_avoiders_1982_american_videogame_-_dunhill_electronics_darrell_wag/atari_2600_tax_avoiders_1982_american_videogame_-_dunhill_electronics_darrell_wag_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169669-tax-avoiders-atari-2600-screenshot-the-income-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169670-tax-avoiders-atari-2600-screenshot-the-investment-tax-shelter.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28714-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260911-tax-avoiders-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600skeetshoot1981apollogamesbyapollo"
:"SkeetShoot"
for /f "%FLDSWTCH%" %%a in ("Skeet Shoot") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_skeet_shoot_1981_apollo_-_games_by_apollo_ed_salvo_ap-1001/atari_2600_skeet_shoot_1981_apollo_-_games_by_apollo_ed_salvo_ap-1001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53131-skeet-shoot-atari-2600-screenshot-setting-up-a-new-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53132-skeet-shoot-atari-2600-screenshot-firing-at-a-clay-pigeon-and.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53133-skeet-shoot-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/26516-skeet-shoot-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/26517-skeet-shoot-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600londonblitz1983avalonhilljeanbaer"
:"LondonBlitz"
for /f "%FLDSWTCH%" %%a in ("London Blitz") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_london_blitz_1983_avalon_hill_jean_baer_bill_rebecca_ann_heineman_will/atari_2600_london_blitz_1983_avalon_hill_jean_baer_bill_rebecca_ann_heineman_will_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184561-london-blitz-atari-2600-screenshot-starting-screen-and-level.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184562-london-blitz-atari-2600-screenshot-the-map.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184563-london-blitz-atari-2600-screenshot-walking-the-streets-of.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184565-london-blitz-atari-2600-screenshot-this-is-a-green-bomb-these.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600crashdivevoyagetothebottomof"
:"CrashDive"
for /f "%FLDSWTCH%" %%a in ("Crash Dive") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_crash_dive_voyage_to_the_bottom_of_the_sea_1983_20th_century_fox_video/atari_2600_crash_dive_voyage_to_the_bottom_of_the_sea_1983_20th_century_fox_video_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167833-crash-dive-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167834-crash-dive-atari-2600-screenshot-i-need-to-avoid-and-destroy.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167835-crash-dive-atari-2600-screenshot-i-can-destroy-the-boat-bird.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167836-crash-dive-atari-2600-screenshot-i-need-to-get-the-treasure.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/243692-crash-dive-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/243693-crash-dive-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600trickshot1982imagicdenniskoble720000"
:"TrickShot"
for /f "%FLDSWTCH%" %%a in ("Trick Shot") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_trick_shot_1982_imagic_dennis_koble_720000-100_720100-1b_ia3000_ia3000/atari_2600_trick_shot_1982_imagic_dennis_koble_720000-100_720100-1b_ia3000_ia3000_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106014-trick-shot-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106015-trick-shot-atari-2600-screenshot-breaking-in-a-game-of-pool.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106016-trick-shot-atari-2600-screenshot-can-you-perform-this-trick.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28695-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/53296-trick-shot-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600pooyan1983konamirc100x02"
:"Pooyan"
for /f "%FLDSWTCH%" %%a in ("Pooyan") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pooyan_1983_konami_rc_100-x_02/atari_2600_pooyan_1983_konami_rc_100-x_02_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/79870-pooyan-atari-2600-screenshot-the-game-demo-mode-which-changes.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/79871-pooyan-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/79872-pooyan-atari-2600-screenshot-stop-those-wolves.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/79873-pooyan-atari-2600-screenshot-watch-out-for-that-wolf-behind.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600pharaohscurseunknown"
:"PharaohsCurse"
for /f "%FLDSWTCH%" %%a in ("Pharaoh's Curse") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pharaohs_curse_unknown/atari_2600_pharaohs_curse_unknown_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/79870-pooyan-atari-2600-screenshot-the-game-demo-mode-which-changes.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/79871-pooyan-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/79872-pooyan-atari-2600-screenshot-stop-those-wolves.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/79873-pooyan-atari-2600-screenshot-watch-out-for-that-wolf-behind.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600marinewars1983konamirc102x"
:"MarineWars"
for /f "%FLDSWTCH%" %%a in ("Marine Wars") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_marine_wars_1983_konami_rc_102-x_02/atari_2600_marine_wars_1983_konami_rc_102-x_02_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187691-marine-wars-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187692-marine-wars-atari-2600-screenshot-i-hit-a-distant-ship.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187693-marine-wars-atari-2600-screenshot-they-hit-my-ship.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187694-marine-wars-atari-2600-screenshot-fighting-battleships-at.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17519-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17519-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600boombangakacrackpots1983ccec"
:"BoomBang"
for /f "%FLDSWTCH%" %%a in ("Boom Bang") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_boom_bang_aka_crackpots_1983_cce_c-849/atari_2600_boom_bang_aka_crackpots_1983_cce_c-849_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187691-marine-wars-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187692-marine-wars-atari-2600-screenshot-i-hit-a-distant-ship.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187693-marine-wars-atari-2600-screenshot-they-hit-my-ship.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187694-marine-wars-atari-2600-screenshot-fighting-battleships-at.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600pompeiilabyrinthlavarinth1983apolloap2011"
:"Pompeii"
for /f "%FLDSWTCH%" %%a in ("Pompeii") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pompeii_labyrinth_lavarinth_1983_apollo_ap-2011_prototype/atari_2600_pompeii_labyrinth_lavarinth_1983_apollo_ap-2011_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43844-popeye-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43845-popeye-atari-2600-screenshot-the-first-level.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/43846-popeye-atari-2600-screenshot-the-second-level.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/95313-popeye-atari-2600-screenshot-the-boat-level-on-atari-2600.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/85061-popeye-atari-2600-media.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600carebears1983parkerbrotherslauranikolich"
:"CareBears(Prototype)"
for /f "%FLDSWTCH%" %%a in ("Care Bears (Prototype)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_care_bears_1983_parker_brothers_laura_nikolich_prototype/atari_2600_care_bears_1983_parker_brothers_laura_nikolich_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187691-marine-wars-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187692-marine-wars-atari-2600-screenshot-i-hit-a-distant-ship.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187693-marine-wars-atari-2600-screenshot-they-hit-my-ship.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187694-marine-wars-atari-2600-screenshot-fighting-battleships-at.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600pegaladraoakakeystonekapersdismac"
:"PegaLadrao"
for /f "%FLDSWTCH%" %%a in ("Pega Ladrao") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pega_ladrao_aka_keystone_kapers_dismac/atari_2600_pega_ladrao_aka_keystone_kapers_dismac_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187691-marine-wars-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187692-marine-wars-atari-2600-screenshot-i-hit-a-distant-ship.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187693-marine-wars-atari-2600-screenshot-they-hit-my-ship.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187694-marine-wars-atari-2600-screenshot-fighting-battleships-at.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600burningdesire1982playaroundjhm"
:"BurningDesire"
for /f "%FLDSWTCH%" %%a in ("Burning Desire") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_burning_desire_1982_playaround_-_j.h.m._202/atari_2600_burning_desire_1982_playaround_-_j.h.m._202_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187691-marine-wars-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187692-marine-wars-atari-2600-screenshot-i-hit-a-distant-ship.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187693-marine-wars-atari-2600-screenshot-they-hit-my-ship.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187694-marine-wars-atari-2600-screenshot-fighting-battleships-at.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600wallball1983avalonhillduncanscott"
:"WallBall"
for /f "%FLDSWTCH%" %%a in ("Wall Ball") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_wall_ball_1983_avalon_hill_duncan_scott_5003002/atari_2600_wall_ball_1983_avalon_hill_duncan_scott_5003002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187691-marine-wars-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187692-marine-wars-atari-2600-screenshot-i-hit-a-distant-ship.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187693-marine-wars-atari-2600-screenshot-they-hit-my-ship.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/187694-marine-wars-atari-2600-screenshot-fighting-battleships-at.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/30137-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/30137-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600condorattack1982ultravision1043"
:"CondorAttack"
for /f "%FLDSWTCH%" %%a in ("Condor Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_condor_attack_1982_ultravision_1043/atari_2600_condor_attack_1982_ultravision_1043_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44256-demon-attack-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44257-demon-attack-atari-2600-screenshot-fighting-the-attacking-demons.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44258-demon-attack-atari-2600-screenshot-demons-attacking-you-with.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44259-demon-attack-atari-2600-screenshot-some-demons-will-split-into.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9244-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21671-demon-attack-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600chasethechuckwagon1983spectravideovideogames"
:"ChaseTheChuckwagon"
for /f "%FLDSWTCH%" %%a in ("Chase The Chuckwagon") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_chase_the_chuckwagon_1983_spectravideo_-_video_games_industries_corpor/atari_2600_chase_the_chuckwagon_1983_spectravideo_-_video_games_industries_corpor_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/99227-chase-the-chuck-wagon-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/99228-chase-the-chuck-wagon-atari-2600-screenshot-try-to-make-your.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/99229-chase-the-chuck-wagon-atari-2600-screenshot-there-are-a-variety.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/99230-chase-the-chuck-wagon-atari-2600-screenshot-the-between-level.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22164-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600spitfireattackflightcommander1983miltonbradley"
:"SpitfireAttack"
for /f "%FLDSWTCH%" %%a in ("Spitfire Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_spitfire_attack_flight_commander_1983_milton_bradley_company_4363/atari_2600_spitfire_attack_flight_commander_1983_milton_bradley_company_4363_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126374-spitfire-attack-atari-2600-screenshot-game-1-selected.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126375-spitfire-attack-atari-2600-screenshot-game-started.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126376-spitfire-attack-atari-2600-screenshot-shot-a-plane.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126377-spitfire-attack-atari-2600-screenshot-targeting-an-anti-aircraft.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22204-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/182059-spitfire-attack-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600sirlancelot1983xonoxktelsoftware"
:"SirLancelot"
for /f "%FLDSWTCH%" %%a in ("Sir Lancelot") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sir_lancelot_1983_xonox_-_k-tel_software_anthony_r._henderson_99006_62/atari_2600_sir_lancelot_1983_xonox_-_k-tel_software_anthony_r._henderson_99006_62_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/94727-sir-lancelot-atari-2600-screenshot-xonox-logo-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/94731-sir-lancelot-atari-2600-screenshot-battle-creatures-outside.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/94728-sir-lancelot-atari-2600-screenshot-facing-the-fire-breathing.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/94729-sir-lancelot-atari-2600-screenshot-each-battle-outside-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19844-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600volleyballakarealsportsvolleyball1983digitel"
:"Volleyball"
for /f "%FLDSWTCH%" %%a in ("Volleyball") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_volleyball_aka_realsports_volleyball_1983_digitel/atari_2600_volleyball_aka_realsports_volleyball_1983_digitel_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50171-realsports-volleyball-atari-2600-screenshot-title-screen-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50173-realsports-volleyball-atari-2600-screenshot-getting-ready-to.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50174-realsports-volleyball-atari-2600-screenshot-a-volley-in-progress.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50175-realsports-volleyball-atari-2600-screenshot-the-game-in-black.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17532-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25167-realsports-volleyball-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600pressurecooker1983activisiongarrykitchenaz"
:"PressureCooker"
for /f "%FLDSWTCH%" %%a in ("Pressure Cooker") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pressure_cooker_1983_activision_garry_kitchen_az-032/atari_2600_pressure_cooker_1983_activision_garry_kitchen_az-032_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46341-pressure-cooker-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46342-pressure-cooker-atari-2600-screenshot-creating-hamburgers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46343-pressure-cooker-atari-2600-screenshot-drop-hamburgers-in-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46344-pressure-cooker-atari-2600-screenshot-here-comes-some-lettuce.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22174-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36384-pressure-cooker-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600racquetball1981apollogamesbyapolloed"
:"Racquetball"
for /f "%FLDSWTCH%" %%a in ("Racquetball") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_racquetball_1981_apollo_-_games_by_apollo_ed_salvo_byron_parks_ap-2003/atari_2600_racquetball_1981_apollo_-_games_by_apollo_ed_salvo_byron_parks_ap-2003_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171840-racquetball-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171841-racquetball-atari-2600-screenshot-playing-the-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171842-racquetball-atari-2600-screenshot-i-lost.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22175-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/86357-racquetball-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600megaforce198220thcenturyfoxvideo"
:"MegaForce"
for /f "%FLDSWTCH%" %%a in ("Mega Force") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mega_force_1982_20th_century_fox_video_games_douglas_dallas_north_neub/atari_2600_mega_force_1982_20th_century_fox_video_games_douglas_dallas_north_neub_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169428-mega-force-atari-2600-screenshot-starting-screen-here-is-sardoun.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169429-mega-force-atari-2600-screenshot-an-enemy-fighter-approaches.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169430-mega-force-atari-2600-screenshot-a-fuel-depot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169431-mega-force-atari-2600-screenshot-my-prize.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7951-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/265599-mega-force-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600alligatorpeopleprototype"
:"AlligatorPeople"
for /f "%FLDSWTCH%" %%a in ("Alligator People") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_alligator_people_prototype/atari_2600_alligator_people_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/252965-alligator-people-atari-2600-screenshot-starting-level-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/252966-alligator-people-atari-2600-screenshot-i-cured-all-my-friends.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/252968-alligator-people-atari-2600-screenshot-close-call-with-an.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/252969-alligator-people-atari-2600-screenshot-crunch.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600tunnelrunnerblackbox1983cbselectronics"
:"TunnelRunner"
for /f "%FLDSWTCH%" %%a in ("Tunnel Runner") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tunnel_runner_black_box_1983_cbs_electronics_richard_k._balaska_jr._an/atari_2600_tunnel_runner_black_box_1983_cbs_electronics_richard_k._balaska_jr._an_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133908-tunnel-runner-atari-2600-screenshot-tunnel-runner-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133909-tunnel-runner-atari-2600-screenshot-pressing-the-fire-button.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133910-tunnel-runner-atari-2600-screenshot-one-of-the-enemy-zot-s.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/133911-tunnel-runner-atari-2600-screenshot-the-zot-has-sensed-your.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22192-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/107733-tunnel-runner-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600rhood1983xonoxktelsoftware"
:"RHood"
for /f "%FLDSWTCH%" %%a in ("R Hood") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/images/emulation_default.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/94680-robin-hood-atari-2600-screenshot-xonox-logo-and-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/94681-robin-hood-atari-2600-screenshot-fighting-henchman-in-the-forest.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/94682-robin-hood-atari-2600-screenshot-you-need-to-fight-off-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/94683-robin-hood-atari-2600-screenshot-can-you-find-maid-marian-somewhere.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19844-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600harborescapeakariverraid1983panda"
:"HarborEscape"
for /f "%FLDSWTCH%" %%a in ("Harbor Escape") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_harbor_escape_aka_river_raid_1983_panda_110/atari_2600_harbor_escape_aka_river_raid_1983_panda_110_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/104497-no-escape-atari-2600-screenshot-game-demo-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/104498-no-escape-atari-2600-screenshot-gameplay-on-the-first-level.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/104499-no-escape-atari-2600-screenshot-throw-stones-at-the-roof-to.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/104500-no-escape-atari-2600-screenshot-there-are-a-variety-of-different.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17525-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17525-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600raftrider1982usgamescorporation"
:"RaftRider"
for /f "%FLDSWTCH%" %%a in ("Raft Rider") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_raft_rider_1982_u.s._games_corporation_vc2006/atari_2600_raft_rider_1982_u.s._games_corporation_vc2006_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70853-raft-rider-atari-2600-screenshot-the-title-screen-is-plain.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70854-raft-rider-atari-2600-screenshot-floating-down-the-river.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70855-raft-rider-atari-2600-screenshot-the-beaver-is-running-along.jpg") do SET SNAP4ART=%%~a
set GTART=1
exit /b

:"atari2600spacejockey1982usgamescorporation"
:"SpaceJockey"
for /f "%FLDSWTCH%" %%a in ("Space Jockey") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_space_jockey_1982_u.s._games_corporation_garry_kitchen_-_vidtec_vc1001/atari_2600_space_jockey_1982_u.s._games_corporation_garry_kitchen_-_vidtec_vc1001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48119-space-jockey-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48120-space-jockey-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48121-space-jockey-atari-2600-screenshot-the-balloons-are-among-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/48122-space-jockey-atari-2600-screenshot-firing-at-some-enemies.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/15890-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/24043-space-jockey-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600exocet1983panda109"
:"Exocet"
for /f "%FLDSWTCH%" %%a in ("Exocet") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_exocet_1983_panda_109/atari_2600_exocet_1983_panda_109_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170009-exocet-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170010-exocet-atari-2600-screenshot-i-need-to-hit-this-tower-on-its.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170011-exocet-atari-2600-screenshot-i-can-hit-this-tower-most-anywhere.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170012-exocet-atari-2600-screenshot-i-was-able-to-get-underground.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600cosmiccommuter1984activisionjohnvanryzin"
:"CosmicCommuter"
for /f "%FLDSWTCH%" %%a in ("Cosmic Commuter") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cosmic_commuter_1984_activision_john_van_ryzin_ag-038-04/atari_2600_cosmic_commuter_1984_activision_john_van_ryzin_ag-038-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56574-cosmic-commuter-atari-2600-screenshot-game-demo-screen-select.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56575-cosmic-commuter-atari-2600-screenshot-landing-on-the-planet.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56576-cosmic-commuter-atari-2600-screenshot-piloting-the-astrobus.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56577-cosmic-commuter-atari-2600-screenshot-pick-up-eight-commuters.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22209-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600miner2049ervolumeii1983tigervision7"
:"Miner2049erVolumeII"
for /f "%FLDSWTCH%" %%a in ("Miner 2049er Volume II") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_miner_2049er_volume_ii_1983_tigervision_7-011/atari_2600_miner_2049er_volume_ii_1983_tigervision_7-011_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/241273-miner-2049er-volume-ii-atari-2600-screenshot-starting-location.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/241274-miner-2049er-volume-ii-atari-2600-screenshot-i-have-claimed.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/241275-miner-2049er-volume-ii-atari-2600-screenshot-ups-a-daisy.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/241276-miner-2049er-volume-ii-atari-2600-screenshot-i-jumped-wong.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600toweringinferno1982usgamescorporation"
:"ToweringInferno"
for /f "%FLDSWTCH%" %%a in ("Towering Inferno") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_towering_inferno_1982_u.s._games_corporation_jeff_corsiglia_paul_allen/atari_2600_towering_inferno_1982_u.s._games_corporation_jeff_corsiglia_paul_allen_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70861-towering-inferno-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70862-towering-inferno-atari-2600-screenshot-the-towering-inferno.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70863-towering-inferno-atari-2600-screenshot-watch-out-for-that-wall.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70864-towering-inferno-atari-2600-screenshot-try-to-reach-the-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19931-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/19931-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600stronghold1983commavidjosephbielcm009"
:"Stronghold"
for /f "%FLDSWTCH%" %%a in ("Stronghold") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_stronghold_1983_commavid_joseph_biel_cm-009/atari_2600_stronghold_1983_commavid_joseph_biel_cm-009_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185069-stronghold-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185070-stronghold-atari-2600-screenshot-single-drones-are-rising.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185071-stronghold-atari-2600-screenshot-drones-in-sets.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/185072-stronghold-atari-2600-screenshot-i-need-to-get-get-through.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260953-stronghold-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260954-stronghold-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600nightmarecce"
:"Nightmare"
for /f "%FLDSWTCH%" %%a in ("Nightmare") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_nightmare_cce/atari_2600_nightmare_cce_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45991-night-driver-atari-2600-screenshot-racing.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45992-night-driver-atari-2600-screenshot-passing-a-car.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45993-night-driver-atari-2600-screenshot-the-screen-flashes-when.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45994-night-driver-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22743-night-driver-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/262744-night-driver-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600catchtimeakaplaqueattack2600screen"
:"CatchTime"
for /f "%FLDSWTCH%" %%a in ("Catch Time") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_catch_time_aka_plaque_attack_2600_screen_search_console_jone_yuan_tele/atari_2600_catch_time_aka_plaque_attack_2600_screen_search_console_jone_yuan_tele_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167833-crash-dive-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167834-crash-dive-atari-2600-screenshot-i-need-to-avoid-and-destroy.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167835-crash-dive-atari-2600-screenshot-i-can-destroy-the-boat-bird.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167836-crash-dive-atari-2600-screenshot-i-need-to-get-the-treasure.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19897-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/243692-crash-dive-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600gammaattack1983gammationrobertlesken"
:"Gammaattack"
for /f "%FLDSWTCH%" %%a in ("Gamma-attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_gamma-attack_1983_gammation_robert_l._esken_jr./atari_2600_gamma-attack_1983_gammation_robert_l._esken_jr._screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/296289-gamma-attack-atari-2600-screenshot-starting-out.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/296290-gamma-attack-atari-2600-screenshot-shooting-at-the-enemy.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/296291-gamma-attack-atari-2600-screenshot-but-they-shoot-back.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/296292-gamma-attack-atari-2600-screenshot-got-one.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/10130-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600strawberryshortcakemusicalmatchups1983parker"
:"StrawberryShortcakeMusicalMatchups"
for /f "%FLDSWTCH%" %%a in ("Strawberry Shortcake - Musical Match-ups") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_strawberry_shortcake_-_musical_match-ups_1983_parker_brothers_dawn_sto/atari_2600_strawberry_shortcake_-_musical_match-ups_1983_parker_brothers_dawn_sto_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/58291-strawberry-shortcake-musical-match-ups-atari-2600-screenshot.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/58292-strawberry-shortcake-musical-match-ups-atari-2600-screenshot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/58293-strawberry-shortcake-musical-match-ups-atari-2600-screenshot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/58294-strawberry-shortcake-musical-match-ups-atari-2600-screenshot.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28596-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/206660-strawberry-shortcake-musical-match-ups-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600rocnrope1984colecoedenglish"
:"RocnRope"
for /f "%FLDSWTCH%" %%a in ("Roc 'n Rope") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_roc_n_rope_1984_coleco_ed_english_2667/atari_2600_roc_n_rope_1984_coleco_ed_english_2667_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/49906-roc-n-rope-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/49907-roc-n-rope-atari-2600-screenshot-beginning-your-climb.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/49908-roc-n-rope-atari-2600-screenshot-beginning-the-second-level.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/49909-roc-n-rope-atari-2600-screenshot-almost-to-the-top.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5324-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/5324-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600angling"
:"Angling"
for /f "%FLDSWTCH%" %%a in ("Angling") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_angling/atari_2600_angling_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167807-alien-atari-2600-screenshot-game-start-the-screen-is-full.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167808-alien-atari-2600-screenshot-i-grabbed-a-pulsar-so-i-can-kill.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167810-alien-atari-2600-screenshot-there-is-a-bonus-item-i-can-get.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167811-alien-atari-2600-screenshot-i-need-to-cross-the-area-to-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260880-alien-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260879-alien-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600supersoccerakarealsportssoccerdigivision"
:"SuperSoccer"
for /f "%FLDSWTCH%" %%a in ("Super Soccer") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_super_soccer_aka_realsports_soccer_digivision/atari_2600_super_soccer_aka_realsports_soccer_digivision_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52905-super-cobra-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52906-super-cobra-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52907-super-cobra-atari-2600-screenshot-try-to-bomb-the-fuel-depots.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52908-super-cobra-atari-2600-screenshot-the-tunnel-begins-to-get.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28597-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28597-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600diagnostictestcartridge201980atari"
:"DiagnosticTestCartridge20"
for /f "%FLDSWTCH%" %%a in ("Diagnostic Test Cartridge 2.0") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_diagnostic_test_cartridge_2.0_1980_atari_50008_prototype/atari_2600_diagnostic_test_cartridge_2.0_1980_atari_50008_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52905-super-cobra-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52906-super-cobra-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52907-super-cobra-atari-2600-screenshot-try-to-bomb-the-fuel-depots.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52908-super-cobra-atari-2600-screenshot-the-tunnel-begins-to-get.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/26432-super-cobra-atari-2600-media.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/135225-super-cobra-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600roomofdoom1982commavidirwingaines"
:"RoomOfDoom"
for /f "%FLDSWTCH%" %%a in ("Room Of Doom") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_room_of_doom_1982_commavid_irwin_gaines_cm-004/atari_2600_room_of_doom_1982_commavid_irwin_gaines_cm-004_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184913-room-of-doom-atari-2600-screenshot-room-1-you-can-t-see-me.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184914-room-of-doom-atari-2600-screenshot-room-1-with-all-portals.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184915-room-of-doom-atari-2600-screenshot-room-2.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184916-room-of-doom-atari-2600-screenshot-room-3-you-can-t-see-them.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258819-room-of-doom-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258820-room-of-doom-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600mad"
:"MAD"
for /f "%FLDSWTCH%" %%a in ("M.A.D.") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mad/atari_2600_mad_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70849-m-a-d-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70850-m-a-d-atari-2600-screenshot-watch-out-for-the-attacking-rockets.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70851-m-a-d-atari-2600-screenshot-the-enemies-will-turn-white-just.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70852-m-a-d-atari-2600-screenshot-running-out-of-energy-installations.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/32578-m-a-d-atari-2600-media.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600frontline1984colecoedtemple2665"
:"FrontLine"
for /f "%FLDSWTCH%" %%a in ("Front Line") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_front_line_1984_coleco_ed_temple_2665/atari_2600_front_line_1984_coleco_ed_temple_2665_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78113-front-line-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78114-front-line-atari-2600-screenshot-fighting-your-way-through.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78115-front-line-atari-2600-screenshot-lookout-here-come-some-tanks.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78116-front-line-atari-2600-screenshot-there-are-many-tanks-in-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28698-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35838-front-line-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spikespeak1983xonoxktelsoftware"
:"SpikesPeak"
for /f "%FLDSWTCH%" %%a in ("Spike's Peak") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_spikes_peak_1983_xonox_-_k-tel_software_-_beck-tech_6210_7210_06003._9/atari_2600_spikes_peak_1983_xonox_-_k-tel_software_-_beck-tech_6210_7210_06003._9_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92374-spike-s-peak-atari-2600-screenshot-startup-screen-and-xonox.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92375-spike-s-peak-atari-2600-screenshot-all-you-need-to-do-here.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92376-spike-s-peak-atari-2600-screenshot-watch-out-for-the-bear-on.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/92377-spike-s-peak-atari-2600-screenshot-the-only-way-to-avoid-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/18881-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/18881-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600grandprizeakaendurofunvisionfundinternational"
:"GrandPrize"
for /f "%FLDSWTCH%" %%a in ("Grand Prize") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_grand_prize_aka_enduro_funvision_-_fund._international_co./atari_2600_grand_prize_aka_enduro_funvision_-_fund._international_co._screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46250-grand-prix-atari-2600-screenshot-a-race-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46251-grand-prix-atari-2600-screenshot-an-aweful-lot-of-traffic-here.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46252-grand-prix-atari-2600-screenshot-careful-narrow-bridge.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46253-grand-prix-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21544-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22958-grand-prix-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spaceadventureakaflashgordonzellers"
:"SpaceAdventure"
for /f "%FLDSWTCH%" %%a in ("Space Adventure") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_space_adventure_aka_flash_gordon_zellers/atari_2600_space_adventure_aka_flash_gordon_zellers_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54792-adventure-atari-2600-screenshot-got-the-treaure.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54793-adventure-atari-2600-screenshot-get-the-key-to-unlock-the-castle.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83935-adventure-atari-2600-screenshot-using-the-invisible-gray-dot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83936-adventure-atari-2600-screenshot-the-first-easter-egg-in-a-video.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2570-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/70798-adventure-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600cathouseblues1982playaroundjhm"
:"CathouseBlues"
for /f "%FLDSWTCH%" %%a in ("Cathouse Blues") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cathouse_blues_1982_playaround_-_j.h.m._201/atari_2600_cathouse_blues_1982_playaround_-_j.h.m._201_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/191975-philly-flasher-cathouse-blues-atari-2600-screenshot-philly.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/191976-philly-flasher-cathouse-blues-atari-2600-screenshot-philly.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/191977-philly-flasher-cathouse-blues-atari-2600-screenshot-cathouse.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/191978-philly-flasher-cathouse-blues-atari-2600-screenshot-having.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600knightonthetown1982playaroundj"
:"KnightOnTheTown"
for /f "%FLDSWTCH%" %%a in ("Knight On The Town") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_knight_on_the_town_1982_playaround_-_j.h.m._203/atari_2600_knight_on_the_town_1982_playaround_-_j.h.m._203_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/200020-jungle-fever-knight-on-the-town-atari-2600-screenshot-jungle.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/200021-jungle-fever-knight-on-the-town-atari-2600-screenshot-i-m.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/200022-jungle-fever-knight-on-the-town-atari-2600-screenshot-now.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/200023-jungle-fever-knight-on-the-town-atari-2600-screenshot-i-reached.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600masterbuilder1983spectravideosa210"
:"MasterBuilder"
for /f "%FLDSWTCH%" %%a in ("Master Builder") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_master_builder_1983_spectravideo_sa-210/atari_2600_master_builder_1983_spectravideo_sa-210_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/230047-master-builder-atari-2600-screenshot-this-is-what-i-need-to.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/230048-master-builder-atari-2600-screenshot-starting-my-construction.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/230049-master-builder-atari-2600-screenshot-i-need-to-watch-out-for.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/230050-master-builder-atari-2600-screenshot-that-brat-stole-the-ladder.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17509-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17509-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600glacierpatrol1989telegamesedsalvo5667"
:"GlacierPatrol"
for /f "%FLDSWTCH%" %%a in ("Glacier Patrol") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_glacier_patrol_1989_telegames_ed_salvo_5667_a106/atari_2600_glacier_patrol_1989_telegames_ed_salvo_5667_a106_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/229799-glacier-patrol-atari-2600-screenshot-firing-a-shot-while-an.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/229800-glacier-patrol-atari-2600-screenshot-trying-to-jump-over-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/229801-glacier-patrol-atari-2600-screenshot-the-snowball-hit-me-and.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/229802-glacier-patrol-atari-2600-screenshot-the-enemy-completed-their.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17530-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17530-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600lasergatesinnerspace1983imagicdan"
:"LaserGates"
for /f "%FLDSWTCH%" %%a in ("Laser Gates") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_laser_gates_inner_space_1983_imagic_dan_oliver_720118-1a_03208/atari_2600_laser_gates_inner_space_1983_imagic_dan_oliver_720118-1a_03208_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106017-laser-gates-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106018-laser-gates-atari-2600-screenshot-these-force-fields-will.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106019-laser-gates-atari-2600-screenshot-watch-out-for-that-rocket.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106020-laser-gates-atari-2600-screenshot-blast-your-way-through-this.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22207-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600oceancityakaatlantisfunvisionfundinternational"
:"OceanCity"
for /f "%FLDSWTCH%" %%a in ("Ocean City") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_ocean_city_aka_atlantis_funvision_-_fund._international_co./atari_2600_ocean_city_aka_atlantis_funvision_-_fund._international_co._screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106017-laser-gates-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106018-laser-gates-atari-2600-screenshot-these-force-fields-will.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106019-laser-gates-atari-2600-screenshot-watch-out-for-that-rocket.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106020-laser-gates-atari-2600-screenshot-blast-your-way-through-this.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600asterix"
:"Asterix"
for /f "%FLDSWTCH%" %%a in ("Asterix") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_asterix/atari_2600_asterix_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45074-asteroids-atari-2600-screenshot-blasting-asteroids.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45075-asteroids-atari-2600-screenshot-each-level-starts-with-several.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/45076-asteroids-atari-2600-screenshot-eventually-you-have-lots-of.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9243-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19819-asteroids-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/9243.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600eggomaniaweirdbirdpaddle1982us"
:"Eggomania"
for /f "%FLDSWTCH%" %%a in ("Eggomania") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_eggomania_weird_bird_paddle_1982_u.s._games_corporation_todd_marshall_/atari_2600_eggomania_weird_bird_paddle_1982_u.s._games_corporation_todd_marshall__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70797-eggomania-atari-2600-screenshot-the-title-screen-and-game-demo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70798-eggomania-atari-2600-screenshot-catch-those-eggs.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70799-eggomania-atari-2600-screenshot-egg-yolk-is-collecting-on-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70800-eggomania-atari-2600-screenshot-the-more-difficult-game-variation.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14280-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/14280-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600titlematchprowrestling1987absoluteentertainment"
:"TitleMatchProWrestling"
for /f "%FLDSWTCH%" %%a in ("Title Match Pro Wrestling") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_title_match_pro_wrestling_1987_absolute_entertainment_alex_demeo_ag-04/atari_2600_title_match_pro_wrestling_1987_absolute_entertainment_alex_demeo_ag-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/132756-title-match-pro-wrestling-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/132757-title-match-pro-wrestling-atari-2600-screenshot-choosing-fighters.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/132758-title-match-pro-wrestling-atari-2600-screenshot-beginning.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/132759-title-match-pro-wrestling-atari-2600-screenshot-argh-i-m-getting.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22190-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56848-title-match-pro-wrestling-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spacechase1981apollogamesbyapolloed"
:"Spacechase"
for /f "%FLDSWTCH%" %%a in ("Spacechase") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_spacechase_1981_apollo_-_games_by_apollo_ed_salvo_byron_parks_ap-2001/atari_2600_spacechase_1981_apollo_-_games_by_apollo_ed_salvo_byron_parks_ap-2001_screenshot.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171222-spacechase-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171223-spacechase-atari-2600-screenshot-playing-the-game-in-daytime.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171224-spacechase-atari-2600-screenshot-i-got-an-alien-in-nighttime.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171225-spacechase-atari-2600-screenshot-got-another-one.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600colorbargenerator1984videosoftjerry"
:"ColorBarGenerator"
for /f "%FLDSWTCH%" %%a in ("Color Bar Generator") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_color_bar_generator_1984_video_soft_jerry_lawson_vs1008/atari_2600_color_bar_generator_1984_video_soft_jerry_lawson_vs1008_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171222-spacechase-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171223-spacechase-atari-2600-screenshot-playing-the-game-in-daytime.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171224-spacechase-atari-2600-screenshot-i-got-an-alien-in-nighttime.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171225-spacechase-atari-2600-screenshot-got-another-one.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600crossforcecrossfire1982spectravisionspectravideo"
:"CrossForce"
for /f "%FLDSWTCH%" %%a in ("Cross Force") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cross_force_cross_fire_1982_spectravision_spectravideo_sa-203/atari_2600_cross_force_cross_fire_1982_spectravision_spectravideo_sa-203_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228618-cross-force-atari-2600-screenshot-this-is-the-mothership-that.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228619-cross-force-atari-2600-screenshot-these-are-the-aliens-in.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228620-cross-force-atari-2600-screenshot-these-are-the-aliens-in.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228621-cross-force-atari-2600-screenshot-these-are-the-aliens-in.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17492-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17492-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600reactor1982parkerbrotherscharlieheathpb5330"
:"Reactor"
for /f "%FLDSWTCH%" %%a in ("Reactor") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_reactor_1982_parker_brothers_charlie_heath_pb5330/atari_2600_reactor_1982_parker_brothers_charlie_heath_pb5330_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47145-reactor-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47146-reactor-atari-2600-screenshot-particles-attacking.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47147-reactor-atari-2600-screenshot-the-vortex-reactor-core-variation.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47148-reactor-atari-2600-screenshot-using-a-decoy.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5321-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23592-reactor-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spacemasterx7198320thcenturyfox"
:"SpacemasterX7"
for /f "%FLDSWTCH%" %%a in ("Spacemaster X-7") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/images/emulation_default.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169044-spacemaster-x-7-atari-2600-screenshot-i-need-to-avoid-the.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169045-spacemaster-x-7-atari-2600-screenshot-i-ve-gotten-a-few-shots.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169046-spacemaster-x-7-atari-2600-screenshot-i-blew-up-a-base.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169047-spacemaster-x-7-atari-2600-screenshot-i-can-shoot-the-base.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600privateeye1983activisionbobwhiteheadag"
:"PrivateEye"
for /f "%FLDSWTCH%" %%a in ("Private Eye") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_private_eye_1983_activision_bob_whitehead_ag-034-04/atari_2600_private_eye_1983_activision_bob_whitehead_ag-034-04_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50472-private-eye-atari-2600-screenshot-begin-the-game-here-at-the.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50466-private-eye-atari-2600-screenshot-hmm-a-questionable-character.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50467-private-eye-atari-2600-screenshot-jumping-up-to-nab-a-questionable.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50469-private-eye-atari-2600-screenshot-watch-out-for-potted-plants.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14281-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25270-private-eye-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600sorcerer1983mythiconbillbrynerbrucede"
:"SorcerersApprentice"
for /f "%FLDSWTCH%" %%a in ("Sorcerer's Apprentice") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sorcerer_1983_mythicon_bill_bryner_bruce_de_graaf_ma1001/atari_2600_sorcerer_1983_mythicon_bill_bryner_bruce_de_graaf_ma1001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/101235-sorcerer-s-apprentice-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/101236-sorcerer-s-apprentice-atari-2600-screenshot-beginning-a-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/101237-sorcerer-s-apprentice-atari-2600-screenshot-better-be-quick.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/101238-sorcerer-s-apprentice-atari-2600-screenshot-mickey-can-run.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22181-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/52328-sorcerer-s-apprentice-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spacecanyonakaspacecavern1983panda"
:"SpaceCanyon"
for /f "%FLDSWTCH%" %%a in ("Space Canyon") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_space_canyon_aka_space_cavern_1983_panda_100/atari_2600_space_canyon_aka_space_cavern_1983_panda_100_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/42678-space-cavern-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/42679-space-cavern-atari-2600-screenshot-running-from-enemy-fire.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/42680-space-cavern-atari-2600-screenshot-watch-out-for-that-creature.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22200-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20997-space-cavern-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600fantasticvoyage198220thcenturyfoxvideo"
:"FantasticVoyage"
for /f "%FLDSWTCH%" %%a in ("Fantastic Voyage") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_fantastic_voyage_1982_20th_century_fox_video_games_david_lubar_11008/atari_2600_fantastic_voyage_1982_20th_century_fox_video_games_david_lubar_11008_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/146215-fantastic-voyage-atari-2600-screenshot-beginning-the-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/146216-fantastic-voyage-atari-2600-screenshot-shoot-the-enzymes-and.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/146217-fantastic-voyage-atari-2600-screenshot-shoot-the-key-shaped.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/146218-fantastic-voyage-atari-2600-screenshot-don-t-shoot-these-blood.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22155-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/225414-fantastic-voyage-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600mashakamash1983"
:"Mash"
for /f "%FLDSWTCH%" %%a in ("Mash") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mash_aka_m.a.s.h_1983_cce_c-859/atari_2600_mash_aka_m.a.s.h_1983_cce_c-859_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/146215-fantastic-voyage-atari-2600-screenshot-beginning-the-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/146216-fantastic-voyage-atari-2600-screenshot-shoot-the-enzymes-and.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/146217-fantastic-voyage-atari-2600-screenshot-shoot-the-key-shaped.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/146218-fantastic-voyage-atari-2600-screenshot-don-t-shoot-these-blood.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/225414-fantastic-voyage-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/225415-fantastic-voyage-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600finalapproach1982apolloap2009"
:"FinalApproach"
for /f "%FLDSWTCH%" %%a in ("Final Approach") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_final_approach_1982_apollo_ap-2009/atari_2600_final_approach_1982_apollo_ap-2009_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171020-final-approach-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171023-final-approach-atari-2600-screenshot-the-approach-control.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171024-final-approach-atari-2600-screenshot-the-ground-control-approach.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171025-final-approach-atari-2600-screenshot-trying-to-land-a-plane.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600fathom1983imagicwilfredowillyaguilarmichael"
:"Fathom"
for /f "%FLDSWTCH%" %%a in ("Fathom") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_fathom_1983_imagic_wilfredo_willy_aguilar_michael_becker_rob_fulop_720/atari_2600_fathom_1983_imagic_wilfredo_willy_aguilar_michael_becker_rob_fulop_720_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100214-fathom-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100215-fathom-atari-2600-screenshot-switch-between-bird-and-dolphin.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100216-fathom-atari-2600-screenshot-swim-into-the-sea-horses-to-find.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100217-fathom-atari-2600-screenshot-running-into-the-sea-weed-drains.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/26201-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/26201-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600entombedmazechase1982usgames"
:"Entombed"
for /f "%FLDSWTCH%" %%a in ("Entombed") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_entombed_maze_chase_1982_u.s._games_corporation_paul_allen_newell_stev/atari_2600_entombed_maze_chase_1982_u.s._games_corporation_paul_allen_newell_stev_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/17764-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40462-entombed-atari-2600-screenshot-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40463-entombed-atari-2600-screenshot-wandering-through-the-maze.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/40464-entombed-atari-2600-screenshot-uh-oh-a-dead-end.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17764-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17764-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600phantontankakaphantomtankdigivision"
:"PhantonTank"
for /f "%FLDSWTCH%" %%a in ("Phanton Tank") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_phanton_tank_aka_phantom_tank_digivision/atari_2600_phanton_tank_aka_phantom_tank_digivision_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/458434-phantom-panzer-atari-2600-screenshot-starting-the-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/458435-phantom-panzer-atari-2600-screenshot-shooting-another-tank.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/458436-phantom-panzer-atari-2600-screenshot-second-level.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/29353-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/135803-phantom-panzer-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600strategyx1983konamirc101x"
:"StrategyX"
for /f "%FLDSWTCH%" %%a in ("Strategy X") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_strategy_x_1983_konami_rc_101-x_02/atari_2600_strategy_x_1983_konami_rc_101-x_02_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189201-strategy-x-atari-2600-screenshot-starting-location.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189202-strategy-x-atari-2600-screenshot-firing-a-shot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189203-strategy-x-atari-2600-screenshot-the-enemy-are-shooting-at.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189206-strategy-x-atari-2600-screenshot-i-was-shot.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22185-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600nutsunknown"
:"Nuts"
for /f "%FLDSWTCH%" %%a in ("Nuts") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_nuts_unknown/atari_2600_nuts_unknown_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/69289-coconuts-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/69290-coconuts-atari-2600-screenshot-dodging-coconuts.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/69291-coconuts-atari-2600-screenshot-you-ve-lost-the-umbrella-and.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/32238-coconuts-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/32239-coconuts-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600solarstormpaddle1983imagicwilfredowilly"
:"SolarStorm"
for /f "%FLDSWTCH%" %%a in ("Solar Storm") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_solar_storm_paddle_1983_imagic_wilfredo_willy_aguilar_michael_becker_d/atari_2600_solar_storm_paddle_1983_imagic_wilfredo_willy_aguilar_michael_becker_d_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100104-solar-storm-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100105-solar-storm-atari-2600-screenshot-destroy-those-enemy-ships.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100106-solar-storm-atari-2600-screenshot-debris-from-an-exploded.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100107-solar-storm-atari-2600-screenshot-if-these-enemies-make-it.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22180-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/41423-solar-storm-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600entitythe198320thcenturyfoxvideo"
:"TheEntity"
for /f "%FLDSWTCH%" %%a in ("The Entity") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_entity_the_1983_20th_century_fox_video_games_mark_klein_11036_prototyp/atari_2600_entity_the_1983_20th_century_fox_video_games_mark_klein_11036_prototyp_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100104-solar-storm-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100105-solar-storm-atari-2600-screenshot-destroy-those-enemy-ships.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100106-solar-storm-atari-2600-screenshot-debris-from-an-exploded.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100107-solar-storm-atari-2600-screenshot-if-these-enemies-make-it.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/41423-solar-storm-atari-2600-media.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600cubicolor1982imagicrobfulopprototype"
:"Cubicolor"
for /f "%FLDSWTCH%" %%a in ("Cubicolor") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cubicolor_1982_imagic_rob_fulop_prototype/atari_2600_cubicolor_1982_imagic_rob_fulop_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100104-solar-storm-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100105-solar-storm-atari-2600-screenshot-destroy-those-enemy-ships.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100106-solar-storm-atari-2600-screenshot-debris-from-an-exploded.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/100107-solar-storm-atari-2600-screenshot-if-these-enemies-make-it.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/41423-solar-storm-atari-2600-media.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600chinasyndrome1982spectravisionspectravideosa205"
:"ChinaSyndrome"
for /f "%FLDSWTCH%" %%a in ("China Syndrome") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_china_syndrome_1982_spectravision_spectravideo_sa-205/atari_2600_china_syndrome_1982_spectravision_spectravideo_sa-205_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228741-china-syndrome-atari-2600-screenshot-you-start-with-the-robot.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228742-china-syndrome-atari-2600-screenshot-the-robot-arm-when-closed.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228743-china-syndrome-atari-2600-screenshot-avoid-the-fans-as-they.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228744-china-syndrome-atari-2600-screenshot-the-deeper-level-you.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28590-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28590-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600greatescapeakaasteroidfire1983bomb"
:"GreatEscape"
for /f "%FLDSWTCH%" %%a in ("Great Escape") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_great_escape_aka_asteroid_fire_1983_bomb_-_onbase_ca282/atari_2600_great_escape_aka_asteroid_fire_1983_bomb_-_onbase_ca282_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184519-great-escape-atari-2600-screenshot-shoot-or-avoid-the-meteorites.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184520-great-escape-atari-2600-screenshot-shoot-the-aliens-but-remember.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184521-great-escape-atari-2600-screenshot-you-must-always-avoid-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184522-great-escape-atari-2600-screenshot-i-am-exploding.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/7950-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600blueprint1983cbselectronicstomdidomenico4l"
:"Blueprint"
for /f "%FLDSWTCH%" %%a in ("Blueprint") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_blueprint_1983_cbs_electronics_tom_didomenico_4l_2486_5000/atari_2600_blueprint_1983_cbs_electronics_tom_didomenico_4l_2486_5000_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52313-blueprint-atari-2600-screenshot-beginning-a-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52314-blueprint-atari-2600-screenshot-uh-oh-you-ve-found-a-bomb.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17508-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17508-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600stoneage1983ccec840"
:"StoneAge"
for /f "%FLDSWTCH%" %%a in ("Stone Age") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_stone_age_1983_cce_c-840/atari_2600_stone_age_1983_cce_c-840_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52313-blueprint-atari-2600-screenshot-beginning-a-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52314-blueprint-atari-2600-screenshot-uh-oh-you-ve-found-a-bomb.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/26243-blueprint-atari-2600-media.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600toothprotectors1983dsdcamelotjohnsonjohnson"
:"ToothProtectors"
for /f "%FLDSWTCH%" %%a in ("Tooth Protectors") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tooth_protectors_1983_dsd-camelot_-_johnson__johnson/atari_2600_tooth_protectors_1983_dsd-camelot_-_johnson__johnson_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153811-tooth-protectors-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153812-tooth-protectors-atari-2600-screenshot-start-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153813-tooth-protectors-atari-2600-screenshot-deflecting-crumbs.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153814-tooth-protectors-atari-2600-screenshot-finished-a-round.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600ladyinwading1982playaroundjh"
:"LadyInWading"
for /f "%FLDSWTCH%" %%a in ("Lady In Wading") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_lady_in_wading_1982_playaround_-_j.h.m._204/atari_2600_lady_in_wading_1982_playaround_-_j.h.m._204_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153811-tooth-protectors-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153812-tooth-protectors-atari-2600-screenshot-start-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153813-tooth-protectors-atari-2600-screenshot-deflecting-crumbs.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153814-tooth-protectors-atari-2600-screenshot-finished-a-round.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600rockybullwinkle04201983mnetwork"
:"Rocky&Bullwinkle"
for /f "%FLDSWTCH%" %%a in ("Rocky & Bullwinkle") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_rocky__bullwinkle_04-20-1983_m_network_steve_crandall_patricia_lewis_d/atari_2600_rocky__bullwinkle_04-20-1983_m_network_steve_crandall_patricia_lewis_d_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153811-tooth-protectors-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153812-tooth-protectors-atari-2600-screenshot-start-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153813-tooth-protectors-atari-2600-screenshot-deflecting-crumbs.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153814-tooth-protectors-atari-2600-screenshot-finished-a-round.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600phillyflasherakabeatemeatem"
:"PhillyFlasher"
for /f "%FLDSWTCH%" %%a in ("Philly Flasher") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_philly_flasher_aka_beat_em__eat_em_paddle_1982_playaround_-_j.h.m._201/atari_2600_philly_flasher_aka_beat_em__eat_em_paddle_1982_playaround_-_j.h.m._201_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/191975-philly-flasher-cathouse-blues-atari-2600-screenshot-philly.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/191976-philly-flasher-cathouse-blues-atari-2600-screenshot-philly.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/191977-philly-flasher-cathouse-blues-atari-2600-screenshot-cathouse.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/191978-philly-flasher-cathouse-blues-atari-2600-screenshot-having.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600steeplechasepaddle1980searstelegamesjim"
:"Steeplechase"
for /f "%FLDSWTCH%" %%a in ("Steeplechase") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_steeplechase_paddle_1980_sears_tele-games_jim_huether_cx2614_-_49-7512/atari_2600_steeplechase_paddle_1980_sears_tele-games_jim_huether_cx2614_-_49-7512_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194682-steeplechase-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194683-steeplechase-atari-2600-screenshot-jumping-a-hurdle.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194684-steeplechase-atari-2600-screenshot-i-m-in-the-lead.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194685-steeplechase-atari-2600-screenshot-i-missed-a-hurdle-and-my.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600cakewalkbakery1983commavidirwingainescm"
:"CakewalkBakery"
for /f "%FLDSWTCH%" %%a in ("Cakewalk Bakery") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cakewalk_bakery_1983_commavid_irwin_gaines_cm-008/atari_2600_cakewalk_bakery_1983_commavid_irwin_gaines_cm-008_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184820-cakewalk-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184821-cakewalk-atari-2600-screenshot-i-need-to-catch-the-cakes.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184822-cakewalk-atari-2600-screenshot-i-missed-one-so-the-janitor.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184823-cakewalk-atari-2600-screenshot-whew-time-for-a-coffee-break.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260958-cakewalk-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260957-cakewalk-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600minesofminos1982commavidirwingaines"
:"MinesOfMinos"
for /f "%FLDSWTCH%" %%a in ("Mines Of Minos") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mines_of_minos_1982_commavid_irwin_gaines_cm-005/atari_2600_mines_of_minos_1982_commavid_irwin_gaines_cm-005_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184910-mines-of-minos-atari-2600-screenshot-starting-in-the-first.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184911-mines-of-minos-atari-2600-screenshot-a-monster-dying-after.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184912-mines-of-minos-atari-2600-screenshot-the-mine-slowly-floods.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258981-mines-of-minos-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258982-mines-of-minos-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600taskforceakagangsteralley1987froggo"
:"TaskForce"
for /f "%FLDSWTCH%" %%a in ("Task Force") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_task_force_aka_gangster_alley_1987_froggo_fg1003/atari_2600_task_force_aka_gangster_alley_1987_froggo_fg1003_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169428-mega-force-atari-2600-screenshot-starting-screen-here-is-sardoun.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169429-mega-force-atari-2600-screenshot-an-enemy-fighter-approaches.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169430-mega-force-atari-2600-screenshot-a-fuel-depot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169431-mega-force-atari-2600-screenshot-my-prize.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28708-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28708-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600upndown1984segaphatho"
:"UpnDown"
for /f "%FLDSWTCH%" %%a in ("Up 'n Down") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_up_n_down_1984_sega_phat_ho_-_bally_midway_-_beck-tech_009-01/atari_2600_up_n_down_1984_sega_phat_ho_-_bally_midway_-_beck-tech_009-01_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/195688-up-n-down-atari-2600-screenshot-title-and-game-start.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/195689-up-n-down-atari-2600-screenshot-i-need-to-get-a-flag-of-each.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/195691-up-n-down-atari-2600-screenshot-like-a-brisge-over-troubled.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/195692-up-n-down-atari-2600-screenshot-there-are-bonus-items-like.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600fisherpriceakaskindiver1983ccec"
:"FisherPrice"
for /f "%FLDSWTCH%" %%a in ("Fisher Price") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_fisher_price_aka_skindiver_1983_cce_c-863/atari_2600_fisher_price_aka_skindiver_1983_cce_c-863_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/195688-up-n-down-atari-2600-screenshot-title-and-game-start.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/195689-up-n-down-atari-2600-screenshot-i-need-to-get-a-flag-of-each.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/195691-up-n-down-atari-2600-screenshot-like-a-brisge-over-troubled.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/195692-up-n-down-atari-2600-screenshot-there-are-bonus-items-like.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600elisladder1982simage"
:"ElisLadder"
for /f "%FLDSWTCH%" %%a in ("Eli's Ladder") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_elis_ladder_1982_simage/atari_2600_elis_ladder_1982_simage_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196311-eli-s-ladder-atari-2600-screenshot-main-menu-set-to-addition.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196312-eli-s-ladder-atari-2600-screenshot-main-menu-set-to-subtraction.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196313-eli-s-ladder-atari-2600-screenshot-main-menu-with-2-player.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/196314-eli-s-ladder-atari-2600-screenshot-answering-an-addition-question.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600sharkattackakalochjaw1982apollogames"
:"SharkAttack"
for /f "%FLDSWTCH%" %%a in ("Shark Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_shark_attack_aka_lochjaw_1982_apollo_-_games_by_apollo_steve_stringfel/atari_2600_shark_attack_aka_lochjaw_1982_apollo_-_games_by_apollo_steve_stringfel_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126374-spitfire-attack-atari-2600-screenshot-game-1-selected.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126375-spitfire-attack-atari-2600-screenshot-game-started.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126376-spitfire-attack-atari-2600-screenshot-shot-a-plane.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126377-spitfire-attack-atari-2600-screenshot-targeting-an-anti-aircraft.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22215-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/182059-spitfire-attack-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600thunderground1983segajefflorenz00301"
:"Thunderground"
for /f "%FLDSWTCH%" %%a in ("Thunderground") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_thunderground_1983_sega_jeff_lorenz_003-01/atari_2600_thunderground_1983_sega_jeff_lorenz_003-01_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/199097-thunderground-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/199098-thunderground-atari-2600-screenshot-level-1-round-1.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/199099-thunderground-atari-2600-screenshot-i-destroyed-all-six-bases.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/199100-thunderground-atari-2600-screenshot-a-round-with-a-digger.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28697-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258756-thunderground-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600mysteriousthiefa1983zimagemagvidco"
:"MysteriousThiefA"
for /f "%FLDSWTCH%" %%a in ("Mysterious Thief, A") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mysterious_thief_a_1983_zimag_-_emag_-_vidco_gn-070_prototype/atari_2600_mysterious_thief_a_1983_zimag_-_emag_-_vidco_gn-070_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/199097-thunderground-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/199098-thunderground-atari-2600-screenshot-level-1-round-1.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/199099-thunderground-atari-2600-screenshot-i-destroyed-all-six-bases.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/199100-thunderground-atari-2600-screenshot-a-round-with-a-digger.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258756-thunderground-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258757-thunderground-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600cryptsofchaos198220thcenturyfox"
:"CryptsOfChaos"
for /f "%FLDSWTCH%" %%a in ("Crypts Of Chaos") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_crypts_of_chaos_1982_20th_century_fox_video_games_john_w.s._marvin_110/atari_2600_crypts_of_chaos_1982_20th_century_fox_video_games_john_w.s._marvin_110_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/28600-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167829-crypts-of-chaos-atari-2600-screenshot-starting-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167830-crypts-of-chaos-atari-2600-screenshot-a-troll-is-approaching.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167831-crypts-of-chaos-atari-2600-screenshot-a-blob-is-approaching.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28600-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28600-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600lillyadventure"
:"LillyAdventure"
for /f "%FLDSWTCH%" %%a in ("Lilly Adventure") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_lilly_adventure/atari_2600_lilly_adventure_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54792-adventure-atari-2600-screenshot-got-the-treaure.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54793-adventure-atari-2600-screenshot-get-the-key-to-unlock-the-castle.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83935-adventure-atari-2600-screenshot-using-the-invisible-gray-dot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83936-adventure-atari-2600-screenshot-the-first-easter-egg-in-a-video.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17517-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/70798-adventure-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600mightymouseakagopherfunvisionfundinternational"
:"MightyMouse"
for /f "%FLDSWTCH%" %%a in ("Mighty Mouse") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mighty_mouse_aka_gopher_funvision_-_fund._international_co./atari_2600_mighty_mouse_aka_gopher_funvision_-_fund._international_co._screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54792-adventure-atari-2600-screenshot-got-the-treaure.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54793-adventure-atari-2600-screenshot-get-the-key-to-unlock-the-castle.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83935-adventure-atari-2600-screenshot-using-the-invisible-gray-dot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83936-adventure-atari-2600-screenshot-the-first-easter-egg-in-a-video.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22168-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/70798-adventure-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600timewarp1982funvisionfundinternationalco"
:"TimeWarp"
for /f "%FLDSWTCH%" %%a in ("Time Warp") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_time_warp_1982_funvision_-_fund._international_co./atari_2600_time_warp_1982_funvision_-_fund._international_co._screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22212-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600opensesame"
:"OpenSesame"
for /f "%FLDSWTCH%" %%a in ("Open Sesame") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_open_sesame/atari_2600_open_sesame_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85877-open-sesame-atari-2600-screenshot-begin-each-level-on-the-bottom.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85878-open-sesame-atari-2600-screenshot-making-your-way-to-the-top.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/85879-open-sesame-atari-2600-screenshot-level-complete.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36986-open-sesame-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36987-open-sesame-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600gangsteralley1982spectravisionspectravideosa201"
:"GangsterAlley"
for /f "%FLDSWTCH%" %%a in ("Gangster Alley") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_gangster_alley_1982_spectravision_spectravideo_sa-201/atari_2600_gangster_alley_1982_spectravision_spectravideo_sa-201_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228817-gangster-alley-atari-2600-screenshot-the-wanted-mug-shots.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228818-gangster-alley-atari-2600-screenshot-shoot-the-gangster-before.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228819-gangster-alley-atari-2600-screenshot-fighting-when-it-is-night.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228820-gangster-alley-atari-2600-screenshot-if-you-lose-the-game.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28593-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/253203-gangster-alley-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600ztackakabaseattack1983bomb"
:"Ztack"
for /f "%FLDSWTCH%" %%a in ("Z-tack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_z-tack_aka_base_attack_1983_bomb_-_onbase_ca283/atari_2600_z-tack_aka_base_attack_1983_bomb_-_onbase_ca283_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184556-z-tack-atari-2600-screenshot-starting-out.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184557-z-tack-atari-2600-screenshot-i-ve-destroyed-some-cities-watch.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184558-z-tack-atari-2600-screenshot-i-was-hit.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184559-z-tack-atari-2600-screenshot-don-t-hit-the-exploding-balloons.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600walldefenderakawallbreak1983bomb"
:"Walldefender"
for /f "%FLDSWTCH%" %%a in ("Wall-defender") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_wall-defender_aka_wall_break_1983_bomb_-_onbase_ca285/atari_2600_wall-defender_aka_wall_break_1983_bomb_-_onbase_ca285_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184532-wall-defender-atari-2600-screenshot-firing-from-the-full-fortress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184533-wall-defender-atari-2600-screenshot-i-need-to-keep-these-aliens.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184534-wall-defender-atari-2600-screenshot-i-ve-lost-the-outer-layer.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184535-wall-defender-atari-2600-screenshot-down-to-my-last-wall.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1347-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/1347-1.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/1347-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/1347.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600ramit1982telesysjimrupp1004"
:"RamIt"
for /f "%FLDSWTCH%" %%a in ("Ram It") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_ram_it_1982_telesys_jim_rupp_1004/atari_2600_ram_it_1982_telesys_jim_rupp_1004_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244667-ram-it-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244669-ram-it-atari-2600-screenshot-the-colors-at-their-starting.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244671-ram-it-atari-2600-screenshot-the-colors-are-advancing-i-need.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244672-ram-it-atari-2600-screenshot-round-2.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260874-ram-it-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/128331-ram-it-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600zoofun"
:"ZooFun"
for /f "%FLDSWTCH%" %%a in ("Zoo Fun") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_zoo_fun/atari_2600_zoo_fun_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244667-ram-it-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244669-ram-it-atari-2600-screenshot-the-colors-at-their-starting.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244671-ram-it-atari-2600-screenshot-the-colors-are-advancing-i-need.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244672-ram-it-atari-2600-screenshot-round-2.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260874-ram-it-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/128331-ram-it-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600skypatrolaerialace1982imagicbrad"
:"SkyPatrol"
for /f "%FLDSWTCH%" %%a in ("Sky Patrol") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sky_patrol_aerial_ace_1982_imagic_brad_stewart_720106-1a_ia3409_protot/atari_2600_sky_patrol_aerial_ace_1982_imagic_brad_stewart_720106-1a_ia3409_protot_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39843-moon-patrol-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39844-moon-patrol-atari-2600-screenshot-aliens-attacking.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/39845-moon-patrol-atari-2600-screenshot-craters-and-rocks-to-jump.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19860-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/19718-moon-patrol-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spacerobotdimaxsinmaxsm8001"
:"SpaceRobot"
for /f "%FLDSWTCH%" %%a in ("Space Robot") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_space_robot_dimax_-_sinmax_sm8001/atari_2600_space_robot_dimax_-_sinmax_sm8001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/246678-space-treat-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/246679-space-treat-atari-2600-screenshot-level-1.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/246680-space-treat-atari-2600-screenshot-i-need-to-get-the-strawberry.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/246681-space-treat-atari-2600-screenshot-got-the-strwberry-now-i.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/15890-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/15890-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600superboxakarealsportsboxingcce"
:"SuperBox"
for /f "%FLDSWTCH%" %%a in ("Super Box") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_super_box_aka_realsports_boxing_cce/atari_2600_super_box_aka_realsports_boxing_cce_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52905-super-cobra-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52906-super-cobra-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52907-super-cobra-atari-2600-screenshot-try-to-bomb-the-fuel-depots.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/52908-super-cobra-atari-2600-screenshot-the-tunnel-begins-to-get.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28597-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28597-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600wabbit1982apollobantranap2010"
:"Wabbit"
for /f "%FLDSWTCH%" %%a in ("Wabbit") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_wabbit_1982_apollo_ban_tran_ap-2010/atari_2600_wabbit_1982_apollo_ban_tran_ap-2010_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62988-wabbit-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62990-wabbit-atari-2600-screenshot-you-don-t-have-many-carrots-left.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62992-wabbit-atari-2600-screenshot-throwing-eggs-at-the-rabbits.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22194-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600seamonsteromonstromarinho1983cce"
:"SeaMonsterOMonstroMarinho"
for /f "%FLDSWTCH%" %%a in ("Sea Monster - O Monstro Marinho") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sea_monster_-_o_monstro_marinho_1983_cce_c-805/atari_2600_sea_monster_-_o_monstro_marinho_1983_cce_c-805_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62988-wabbit-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62990-wabbit-atari-2600-screenshot-you-don-t-have-many-carrots-left.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62992-wabbit-atari-2600-screenshot-throwing-eggs-at-the-rabbits.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5303-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/5303-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spinningfireballfirespinnerfireballspinner1983"
:"SpinningFireballFireSpinnerFireballSpinner"
for /f "%FLDSWTCH%" %%a in ("Spinning Fireball - Fire Spinner - Fireball Spinner") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_spinning_fireball_-_fire_spinner_-_fireball_spinner_1983_zimag_-_emag_/atari_2600_spinning_fireball_-_fire_spinner_-_fireball_spinner_1983_zimag_-_emag__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62988-wabbit-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62990-wabbit-atari-2600-screenshot-you-don-t-have-many-carrots-left.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62992-wabbit-atari-2600-screenshot-throwing-eggs-at-the-rabbits.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22216-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600cosmiccreeps1982telesysdondonyoruffcorn"
:"CosmicCreeps"
for /f "%FLDSWTCH%" %%a in ("Cosmic Creeps") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cosmic_creeps_1982_telesys_don_donyo_ruffcorn_1002/atari_2600_cosmic_creeps_1982_telesys_don_donyo_ruffcorn_1002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/247636-cosmic-creeps-atari-2600-screenshot-flying-the-oribinaut-past.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/247637-cosmic-creeps-atari-2600-screenshot-i-need-to-protect-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/247638-cosmic-creeps-atari-2600-screenshot-my-orbinaut-was-hit-and.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/247639-cosmic-creeps-atari-2600-screenshot-i-shot-a-space-creep.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28706-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258884-cosmic-creeps-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600stellartrackstellatrek1980searstele"
:"StellarTrack"
for /f "%FLDSWTCH%" %%a in ("Stellar Track") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_stellar_track_stella_trek_1980_sears_tele-games_robert_zdybel_cx2619_-/atari_2600_stellar_track_stella_trek_1980_sears_tele-games_robert_zdybel_cx2619_-_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194688-stellar-track-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194689-stellar-track-atari-2600-screenshot-galaxy-map.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194690-stellar-track-atari-2600-screenshot-long-range-scan.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194691-stellar-track-atari-2600-screenshot-short-range-scan.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/29507-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600surroundchaseblockade1977atarialanmiller"
:"SurroundChase"
for /f "%FLDSWTCH%" %%a in ("Surround - Chase") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_surround_-_chase_blockade_1977_atari_alan_miller_-_sears_cx2641_-_9980/atari_2600_surround_-_chase_blockade_1977_atari_alan_miller_-_sears_cx2641_-_9980_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53315-surround-atari-2600-screenshot-beginning-a-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53316-surround-atari-2600-screenshot-on-a-collision-course-as-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53317-surround-atari-2600-screenshot-diagonal-movement-is-available.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53318-surround-atari-2600-screenshot-some-game-variations-allow-you.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21035-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36715-surround-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600cosmicswarmtermite1982commavidjohnbronstein"
:"CosmicSwarm"
for /f "%FLDSWTCH%" %%a in ("Cosmic Swarm") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_cosmic_swarm_termite_1982_commavid_john_bronstein_cm-003/atari_2600_cosmic_swarm_termite_1982_commavid_john_bronstein_cm-003_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169671-cosmic-swarm-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169672-cosmic-swarm-atari-2600-screenshot-there-is-a-termite-these.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169673-cosmic-swarm-atari-2600-screenshot-these-blocks-are-energized.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/169674-cosmic-swarm-atari-2600-screenshot-the-refuel-ship-on-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21347-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260617-cosmic-swarm-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600questforquintanaroo1984sunrisesoftware"
:"QuestForQuintanaRoo"
for /f "%FLDSWTCH%" %%a in ("Quest For Quintana Roo") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_quest_for_quintana_roo_1984_sunrise_software_1603/atari_2600_quest_for_quintana_roo_1984_sunrise_software_1603_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/63506-quest-for-quintana-roo-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/63507-quest-for-quintana-roo-atari-2600-screenshot-outside-the-temple.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/63509-quest-for-quintana-roo-atari-2600-screenshot-exploring-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/63510-quest-for-quintana-roo-atari-2600-screenshot-found-something.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22218-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/31242-quest-for-quintana-roo-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600videocubeakaatarivideocubecce"
:"VideoCube"
for /f "%FLDSWTCH%" %%a in ("Video Cube") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_video_cube_aka_atari_video_cube_cce/atari_2600_video_cube_aka_atari_video_cube_cce_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/155006-atari-video-cube-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/155007-atari-video-cube-atari-2600-screenshot-cube-rotating-right.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/155008-atari-video-cube-atari-2600-screenshot-i-changed-a-spaces.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/155009-atari-video-cube-atari-2600-screenshot-a-blacked-out-spaces.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17501-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/278927-atari-video-cube-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600skyskipper1983parkerbrotherspb5350"
:"SkySkipper"
for /f "%FLDSWTCH%" %%a in ("Sky Skipper") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sky_skipper_1983_parker_brothers_pb5350/atari_2600_sky_skipper_1983_parker_brothers_pb5350_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189193-sky-skipper-atari-2600-screenshot-starting-level-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189194-sky-skipper-atari-2600-screenshot-dropping-a-bomb.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189195-sky-skipper-atari-2600-screenshot-i-knocked-dowmn-a-gorilla.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189196-sky-skipper-atari-2600-screenshot-starting-level-2.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258856-sky-skipper-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258857-sky-skipper-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600targetpracticecarnivalakacarnival1983cce"
:"TargetPractice"
for /f "%FLDSWTCH%" %%a in ("Target Practice") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_target_practice_carnival_aka_carnival_1983_cce_c-833/atari_2600_target_practice_carnival_aka_carnival_1983_cce_c-833_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189193-sky-skipper-atari-2600-screenshot-starting-level-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189194-sky-skipper-atari-2600-screenshot-dropping-a-bomb.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189195-sky-skipper-atari-2600-screenshot-i-knocked-dowmn-a-gorilla.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/189196-sky-skipper-atari-2600-screenshot-starting-level-2.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258856-sky-skipper-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258857-sky-skipper-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600laservolleyakalasergateszellers"
:"LaserVolley"
for /f "%FLDSWTCH%" %%a in ("Laser Volley") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_laser_volley_aka_laser_gates_zellers/atari_2600_laser_volley_aka_laser_gates_zellers_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228817-gangster-alley-atari-2600-screenshot-the-wanted-mug-shots.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228818-gangster-alley-atari-2600-screenshot-shoot-the-gangster-before.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228819-gangster-alley-atari-2600-screenshot-fighting-when-it-is-night.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228820-gangster-alley-atari-2600-screenshot-if-you-lose-the-game.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22208-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/253203-gangster-alley-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600misteriousthiefaakaamysteriousthief"
:"MisteriousThiefA"
for /f "%FLDSWTCH%" %%a in ("Misterious Thief, A") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_misterious_thief_a_aka_a_mysterious_thief_1983_cce_c-839/atari_2600_misterious_thief_a_aka_a_mysterious_thief_1983_cce_c-839_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228817-gangster-alley-atari-2600-screenshot-the-wanted-mug-shots.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228818-gangster-alley-atari-2600-screenshot-shoot-the-gangster-before.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228819-gangster-alley-atari-2600-screenshot-fighting-when-it-is-night.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228820-gangster-alley-atari-2600-screenshot-if-you-lose-the-game.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/253203-gangster-alley-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/253205-gangster-alley-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600aufruhrimzoo"
:"AufruhrImZoo"
for /f "%FLDSWTCH%" %%a in ("Aufruhr Im Zoo") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_aufruhr_im_zoo/atari_2600_aufruhr_im_zoo_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228817-gangster-alley-atari-2600-screenshot-the-wanted-mug-shots.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228818-gangster-alley-atari-2600-screenshot-shoot-the-gangster-before.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228819-gangster-alley-atari-2600-screenshot-fighting-when-it-is-night.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/228820-gangster-alley-atari-2600-screenshot-if-you-lose-the-game.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/253203-gangster-alley-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/253205-gangster-alley-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600marauder1982tigervisionrorkeweigandt7005"
:"Marauder"
for /f "%FLDSWTCH%" %%a in ("Marauder") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_marauder_1982_tigervision_rorke_weigandt_7-005/atari_2600_marauder_1982_tigervision_rorke_weigandt_7-005_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244679-marauder-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244680-marauder-atari-2600-screenshot-i-am-facing-off-against-robots.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244681-marauder-atari-2600-screenshot-i-shot-a-robot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244682-marauder-atari-2600-screenshot-the-magic-armor.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/181163-marauder-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/181164-marauder-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600farmyardfunakaplayfarmvideogame"
:"FarmyardFun"
for /f "%FLDSWTCH%" %%a in ("Farmyard Fun") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_farmyard_fun_aka_play_farm_video_game_cartridge_-_ariola_tp-617/atari_2600_farmyard_fun_aka_play_farm_video_game_cartridge_-_ariola_tp-617_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244679-marauder-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244680-marauder-atari-2600-screenshot-i-am-facing-off-against-robots.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244681-marauder-atari-2600-screenshot-i-shot-a-robot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244682-marauder-atari-2600-screenshot-the-magic-armor.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/181163-marauder-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/181164-marauder-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600tomarcthebarbarianthundarrthebarbarian1983"
:"TomarcTheBarbarian"
for /f "%FLDSWTCH%" %%a in ("Tomarc The Barbarian") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tomarc_the_barbarian_thundarr_the_barbarian_1983_99007_6240_xonox_-_k-/atari_2600_tomarc_the_barbarian_thundarr_the_barbarian_1983_99007_6240_xonox_-_k-_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/93825-tomarc-the-barbarian-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/93826-tomarc-the-barbarian-atari-2600-screenshot-tomarc-sets-out.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/93827-tomarc-the-barbarian-atari-2600-screenshot-tomarc-leaps-through.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/93828-tomarc-the-barbarian-atari-2600-screenshot-watch-out-for-those.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600beanybopper20thcenturyfox"
:"BeanyBopper"
for /f "%FLDSWTCH%" %%a in ("Beany Bopper") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_beany_bopper_20th_century_fox/atari_2600_beany_bopper_20th_century_fox_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167822-beany-bopper-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167823-beany-bopper-atari-2600-screenshot-i-shot-this-beanny-with.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167824-beany-bopper-atari-2600-screenshot-i-can-get-this-falling.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/167825-beany-bopper-atari-2600-screenshot-i-was-touched-by-an-unstunned.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22142-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600scubadiverakaskindiver1983panda104"
:"ScubaDiver"
for /f "%FLDSWTCH%" %%a in ("Scuba Diver") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_scuba_diver_aka_skindiver_1983_panda_104/atari_2600_scuba_diver_aka_skindiver_1983_panda_104_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44862-sky-diver-atari-2600-screenshot-parachuting-down.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44863-sky-diver-atari-2600-screenshot-the-left-player-has-almost.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44864-sky-diver-atari-2600-screenshot-the-left-player-landed-and.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44865-sky-diver-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22031-sky-diver-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22032-sky-diver-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600targ1983cbselectronics80110prototype"
:"Targ"
for /f "%FLDSWTCH%" %%a in ("Targ") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_targ_1983_cbs_electronics_80110_prototype/atari_2600_targ_1983_cbs_electronics_80110_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41529-tapper-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41530-tapper-atari-2600-screenshot-serving-some-thirsty-customers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41531-tapper-atari-2600-screenshot-searching-for-the-unshaken-soda.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/41532-tapper-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/201990-tapper-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/20510-tapper-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600turmoil198220thcenturyfoxvideogames"
:"Turmoil"
for /f "%FLDSWTCH%" %%a in ("Turmoil") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_turmoil_1982_20th_century_fox_video_games_mark_turmell_11007/atari_2600_turmoil_1982_20th_century_fox_video_games_mark_turmell_11007_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134289-turmoil-atari-2600-screenshot-turmoil-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134290-turmoil-atari-2600-screenshot-announcing-level-1-in-pretty.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134292-turmoil-atari-2600-screenshot-this-is-a-game-of-quick-wits.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134291-turmoil-atari-2600-screenshot-some-of-the-ships-you-destroy.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22193-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260882-turmoil-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600espial1984tigervision7012"
:"Espial"
for /f "%FLDSWTCH%" %%a in ("Espial") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_espial_1984_tigervision_7-012/atari_2600_espial_1984_tigervision_7-012_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/240844-espial-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/240845-espial-atari-2600-screenshot-first-background-this-is-where.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/240846-espial-atari-2600-screenshot-second-background.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/240847-espial-atari-2600-screenshot-this-is-the-third-background.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600videolife1981commavidjohnbronsteincm"
:"VideoLife"
for /f "%FLDSWTCH%" %%a in ("Video Life") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_video_life_1981_commavid_john_bronstein_cm-002/atari_2600_video_life_1981_commavid_john_bronstein_cm-002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175579-video-chess-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175580-video-chess-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/15889-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/211796-video-chess-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600wordzapperwordgrabber1982us"
:"WordZapper"
for /f "%FLDSWTCH%" %%a in ("Word Zapper") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_word_zapper_word_grabber_1982_u.s._games_corporation_henry_will_iv_-_v/atari_2600_word_zapper_word_grabber_1982_u.s._games_corporation_henry_will_iv_-_v_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72393-word-zapper-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72394-word-zapper-atari-2600-screenshot-first-the-word-you-need-to.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72395-word-zapper-atari-2600-screenshot-the-alphabet-scrolls-by-at.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72396-word-zapper-atari-2600-screenshot-zap-letter-in-the-correct.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19932-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/19932-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600tacscanpaddle1982sega00101"
:"Tacscan"
for /f "%FLDSWTCH%" %%a in ("Tac-scan") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_tac-scan_paddle_1982_sega_001-01/atari_2600_tac-scan_paddle_1982_sega_001-01_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46218-tac-scan-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46219-tac-scan-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46220-tac-scan-atari-2600-screenshot-only-three-ships-left-in-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46221-tac-scan-atari-2600-screenshot-try-to-catch-bonus-ships-to.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22187-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22943-tac-scan-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600mission3000admission30001983"
:"Mission3000AdMission3000"
for /f "%FLDSWTCH%" %%a in ("Mission 3,000 A.d. - Mission 3000") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mission_3000_a.d._-_mission_3000_1983_bit_corporation_pg207/atari_2600_mission_3000_a.d._-_mission_3000_1983_bit_corporation_pg207_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46218-tac-scan-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46219-tac-scan-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46220-tac-scan-atari-2600-screenshot-only-three-ships-left-in-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46221-tac-scan-atari-2600-screenshot-try-to-catch-bonus-ships-to.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19896-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22943-tac-scan-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600squirreloesquiloakasnailagainstsquirrel"
:"SquirrelOEsquilo"
for /f "%FLDSWTCH%" %%a in ("Squirrel - O Esquilo") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_squirrel_-_o_esquilo_aka_snail_against_squirrel_1983_cce_c-809/atari_2600_squirrel_-_o_esquilo_aka_snail_against_squirrel_1983_cce_c-809_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46218-tac-scan-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46219-tac-scan-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46220-tac-scan-atari-2600-screenshot-only-three-ships-left-in-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/46221-tac-scan-atari-2600-screenshot-try-to-catch-bonus-ships-to.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22943-tac-scan-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/22944-tac-scan-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600gogohomemonster"
:"GoGoHomeMonster"
for /f "%FLDSWTCH%" %%a in ("Go Go Home Monster") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_go_go_home_monster/atari_2600_go_go_home_monster_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78713-sea-monster-atari-2600-screenshot-try-to-shoot-the-sea-monsters.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78714-sea-monster-atari-2600-screenshot-don-t-let-the-sea-monsters.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/78715-sea-monster-atari-2600-screenshot-the-game-in-black-and-white.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9236-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/34738-sea-monster-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600saveourshipunknown"
:"SaveOurShip"
for /f "%FLDSWTCH%" %%a in ("Save Our Ship") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_save_our_ship_unknown/atari_2600_save_our_ship_unknown_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53406-star-ship-atari-2600-screenshot-shooting-space-objects-in-star.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53407-star-ship-atari-2600-screenshot-try-to-shoot-the-other-player.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53408-star-ship-atari-2600-screenshot-avoid-the-asteroids-in-warp.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/53409-star-ship-atari-2600-screenshot-try-to-land-on-the-moon-in.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1355-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/26620-star-ship-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600savethewhales198320thcenturyfox"
:"SaveTheWhales"
for /f "%FLDSWTCH%" %%a in ("Save The Whales") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_save_the_whales_1983_20th_century_fox_video_games_steve_beck_11035_pro/atari_2600_save_the_whales_1983_20th_century_fox_video_games_steve_beck_11035_pro_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244459-save-the-whales-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244460-save-the-whales-atari-2600-screenshot-i-need-to-destroy-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244461-save-the-whales-atari-2600-screenshot-radioactive-waste-that.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244462-save-the-whales-atari-2600-screenshot-the-setting-so-the-ship.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/259394-save-the-whales-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/259395-save-the-whales-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600looping1983colecoedtemple2654prototype"
:"Looping"
for /f "%FLDSWTCH%" %%a in ("Looping") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_looping_1983_coleco_ed_temple_2654_prototype/atari_2600_looping_1983_coleco_ed_temple_2654_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57180-boxing-atari-2600-screenshot-setting-game-options.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57181-boxing-atari-2600-screenshot-a-fight-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57182-boxing-atari-2600-screenshot-and-black-is-ahead-18-9.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57183-boxing-atari-2600-screenshot-the-game-in-black-and-white-mode.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600secretagentpaddle1983dataageprototype"
:"SecretAgent"
for /f "%FLDSWTCH%" %%a in ("Secret Agent") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_secret_agent_paddle_1983_data_age_prototype/atari_2600_secret_agent_paddle_1983_data_age_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244826-secret-agent-atari-2600-screenshot-secret-agent-man-hey-they.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244829-secret-agent-atari-2600-screenshot-starting-level-1-catch.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244830-secret-agent-atari-2600-screenshot-making-the-drop-off.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244831-secret-agent-atari-2600-screenshot-level-2-catch-the-money.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5325-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/5325-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600gamelinemastermodulerom1983controlvideo"
:"GamelineMasterModuleRom"
for /f "%FLDSWTCH%" %%a in ("Gameline Master Module Rom") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_gameline_master_module_rom_1983_control_video_corporation/atari_2600_gameline_master_module_rom_1983_control_video_corporation_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244826-secret-agent-atari-2600-screenshot-secret-agent-man-hey-they.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244829-secret-agent-atari-2600-screenshot-starting-level-1-catch.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244830-secret-agent-atari-2600-screenshot-making-the-drop-off.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244831-secret-agent-atari-2600-screenshot-level-2-catch-the-money.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17509-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17509-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600namethisgameguardiansoftreasureoctopussy"
:"NameThisGame"
for /f "%FLDSWTCH%" %%a in ("Name This Game") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_name_this_game_guardians_of_treasure_octopussy_1982_u.s._games_corpora/atari_2600_name_this_game_guardians_of_treasure_octopussy_1982_u.s._games_corpora_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72310-name-this-game-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72314-name-this-game-atari-2600-screenshot-protecting-your-treasure.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72312-name-this-game-atari-2600-screenshot-catch-the-line-to-replenish.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72313-name-this-game-atari-2600-screenshot-ouch-the-shark-got-me.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/17524-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/17524-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600infiltrate1981apollogamesbyapolloap"
:"Infiltrate"
for /f "%FLDSWTCH%" %%a in ("Infiltrate") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_infiltrate_1981_apollo_-_games_by_apollo_ap-2006/atari_2600_infiltrate_1981_apollo_-_games_by_apollo_ap-2006_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171217-infiltrate-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171218-infiltrate-atari-2600-screenshot-i-m-infiltrating-note-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171219-infiltrate-atari-2600-screenshot-duck.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/171220-infiltrate-atari-2600-screenshot-i-shot-an-assassin.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22163-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/76445-infiltrate-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600malagai1983answersoftwarecorporationtyassociates"
:"Malagai"
for /f "%FLDSWTCH%" %%a in ("Malagai") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_malagai_1983_answer_software_corporation_-_ty_associates_asc1001/atari_2600_malagai_1983_answer_software_corporation_-_ty_associates_asc1001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170930-malagai-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170931-malagai-atari-2600-screenshot-i-need-to-get-the-right-key.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170932-malagai-atari-2600-screenshot-i-m-out-of-time-they-re-attacking.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/170933-malagai-atari-2600-screenshot-starbase-2.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600pieceocakebakerypaddle1982u"
:"PieceOCake"
for /f "%FLDSWTCH%" %%a in ("Piece O' Cake") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_piece_o_cake_bakery_paddle_1982_u.s._games_corporation_vc2005/atari_2600_piece_o_cake_bakery_paddle_1982_u.s._games_corporation_vc2005_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72382-piece-o-cake-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72383-piece-o-cake-atari-2600-screenshot-building-a-cake.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72384-piece-o-cake-atari-2600-screenshot-oops-that-s-not-a-proper.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72385-piece-o-cake-atari-2600-screenshot-just-built-a-perfect-cake.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22172-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600stuntmanakanightmare1983panda105"
:"StuntMan"
for /f "%FLDSWTCH%" %%a in ("Stunt Man") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_stunt_man_aka_nightmare_1983_panda_105/atari_2600_stunt_man_aka_nightmare_1983_panda_105_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72382-piece-o-cake-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72383-piece-o-cake-atari-2600-screenshot-building-a-cake.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72384-piece-o-cake-atari-2600-screenshot-oops-that-s-not-a-proper.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72385-piece-o-cake-atari-2600-screenshot-just-built-a-perfect-cake.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600picniccatchtheflypaddle1982u"
:"Picnic"
for /f "%FLDSWTCH%" %%a in ("Picnic") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_picnic_catch_the_fly_paddle_1982_u.s._games_corporation_tom_sloper_vc2/atari_2600_picnic_catch_the_fly_paddle_1982_u.s._games_corporation_tom_sloper_vc2_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70801-picnic-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70802-picnic-atari-2600-screenshot-attacking-flies.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70803-picnic-atari-2600-screenshot-a-fly-is-eating-your-hamburger.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70804-picnic-atari-2600-screenshot-only-a-small-amount-of-hamburger.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22171-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/258862-picnic-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600lasercade198320thcenturyfoxvideogames"
:"Lasercade"
for /f "%FLDSWTCH%" %%a in ("Lasercade") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_lasercade_1983_20th_century_fox_video_games_-_videa_lee_actor_prototyp/atari_2600_lasercade_1983_20th_century_fox_video_games_-_videa_lee_actor_prototyp_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106017-laser-gates-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106018-laser-gates-atari-2600-screenshot-these-force-fields-will.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106019-laser-gates-atari-2600-screenshot-watch-out-for-that-rocket.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/106020-laser-gates-atari-2600-screenshot-blast-your-way-through-this.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600squeezebox1982usgamescorporation"
:"SqueezeBox"
for /f "%FLDSWTCH%" %%a in ("Squeeze Box") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_squeeze_box_1982_u.s._games_corporation_henry_will_iv_vc2002/atari_2600_squeeze_box_1982_u.s._games_corporation_henry_will_iv_vc2002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70806-squeeze-box-atari-2600-screenshot-game-variation-selection.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70807-squeeze-box-atari-2600-screenshot-blast-your-way-through-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70808-squeeze-box-atari-2600-screenshot-almost-have-a-path-large.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/70809-squeeze-box-atari-2600-screenshot-turn-all-of-the-blocks-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22183-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600plugattackakaplaqueattackfunvisionfund"
:"PlugAttack"
for /f "%FLDSWTCH%" %%a in ("Plug Attack") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_plug_attack_aka_plaque_attack_funvision_-_fund._international_co./atari_2600_plug_attack_aka_plaque_attack_funvision_-_fund._international_co._screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50682-plaque-attack-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50683-plaque-attack-atari-2600-screenshot-attacking-hamburgers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50684-plaque-attack-atari-2600-screenshot-here-comes-a-swarm-of-hot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50685-plaque-attack-atari-2600-screenshot-uh-oh-some-french-fries.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/10130-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25385-plaque-attack-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600incagoldakaspiderkongzellers"
:"IncaGold"
for /f "%FLDSWTCH%" %%a in ("Inca Gold") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_inca_gold_aka_spider_kong_zellers/atari_2600_inca_gold_aka_spider_kong_zellers_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50682-plaque-attack-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50683-plaque-attack-atari-2600-screenshot-attacking-hamburgers.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50684-plaque-attack-atari-2600-screenshot-here-comes-a-swarm-of-hot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/50685-plaque-attack-atari-2600-screenshot-uh-oh-some-french-fries.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/25385-plaque-attack-atari-2600-media.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/83736-plaque-attack-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600subterraneatarantula1983imagicmarkklein720112"
:"Subterranea"
for /f "%FLDSWTCH%" %%a in ("Subterranea") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_subterranea_tarantula_1983_imagic_mark_klein_720112-1a_03213/atari_2600_subterranea_tarantula_1983_imagic_mark_klein_720112-1a_03213_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/107240-subterranea-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/107241-subterranea-atari-2600-screenshot-blast-the-aerobots.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/107242-subterranea-atari-2600-screenshot-in-the-subterranean-caves.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/107243-subterranea-atari-2600-screenshot-some-caves-are-narrower.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600kamikazesaucers1983syncrodanwolfprototype"
:"KamikazeSaucers"
for /f "%FLDSWTCH%" %%a in ("Kamikaze Saucers") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_kamikaze_saucers_1983_syncro_dan_wolf_prototype/atari_2600_kamikaze_saucers_1983_syncro_dan_wolf_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/107240-subterranea-atari-2600-screenshot-imagic-logo.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/107241-subterranea-atari-2600-screenshot-blast-the-aerobots.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/107242-subterranea-atari-2600-screenshot-in-the-subterranean-caves.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/107243-subterranea-atari-2600-screenshot-some-caves-are-narrower.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600revengeofthebeefsteaktomatoesrevengeof"
:"RevengeOfTheBeefsteakTomatoes"
for /f "%FLDSWTCH%" %%a in ("Revenge Of The Beefsteak Tomatoes") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_revenge_of_the_beefsteak_tomatoes_revenge_of_the_cherry_tomatoes_1982_/atari_2600_revenge_of_the_beefsteak_tomatoes_revenge_of_the_cherry_tomatoes_1982__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168826-revenge-of-the-beefsteak-tomatoes-atari-2600-screenshot-starting.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168827-revenge-of-the-beefsteak-tomatoes-atari-2600-screenshot-watch.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168828-revenge-of-the-beefsteak-tomatoes-atari-2600-screenshot-i.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/168830-revenge-of-the-beefsteak-tomatoes-atari-2600-screenshot-i.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22213-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600meltdownatomsmasher198320thcenturyfox"
:"Meltdown"
for /f "%FLDSWTCH%" %%a in ("Meltdown") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_meltdown_atom_smasher_1983_20th_century_fox_video_games_-_videa_david_/atari_2600_meltdown_atom_smasher_1983_20th_century_fox_video_games_-_videa_david__screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/245642-skeleton-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/245643-skeleton-atari-2600-screenshot-i-found-a-skeleton-in-the-maze.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/245644-skeleton-atari-2600-screenshot-i-was-caught-by-a-skeleton.jpg") do SET SNAP4ART=%%~a
set GTART=1
exit /b

:"atari2600spidermazeakaspiderkong1982k"
:"SpiderMaze"
for /f "%FLDSWTCH%" %%a in ("Spider Maze") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_spider_maze_aka_spider_kong_1982_k-tel_vision/atari_2600_spider_maze_aka_spider_kong_1982_k-tel_vision_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47166-spider-man-atari-2600-screenshot-climbing-the-building.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47167-spider-man-atari-2600-screenshot-swinging-back-and-forth.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47168-spider-man-atari-2600-screenshot-watch-out-for-bombs-on-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/47169-spider-man-atari-2600-screenshot-watch-out-for-the-green-goblin.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2957-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/23600-spider-man-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/2957-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/2957-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/2957-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/2957.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"atari2600mangia1983spectravideosa212"
:"Mangia"
for /f "%FLDSWTCH%" %%a in ("Mangia'") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_mangia_1983_spectravideo_sa-212/atari_2600_mangia_1983_spectravideo_sa-212_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/212114-mangia-atari-2600-screenshot-eating-pasta.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/212115-mangia-atari-2600-screenshot-tossing-a-plate-to-frankie.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/212116-mangia-atari-2600-screenshot-tossing-a-plate-to-sergio.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/212117-mangia-atari-2600-screenshot-i-ate-so-much-i-burst.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600guardiancosmiccombatpaddle1982apollolarry"
:"Guardian"
for /f "%FLDSWTCH%" %%a in ("Guardian") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_guardian_cosmic_combat_paddle_1982_apollo_larry_martin_ap-2008/atari_2600_guardian_cosmic_combat_paddle_1982_apollo_larry_martin_ap-2008_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62968-guardian-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62969-guardian-atari-2600-screenshot-shoot-the-incoming-explosives.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62970-guardian-atari-2600-screenshot-a-few-holes-have-formed-in-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62971-guardian-atari-2600-screenshot-a-two-player-game.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600friscounknown"
:"Frisco"
for /f "%FLDSWTCH%" %%a in ("Frisco") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_frisco_unknown/atari_2600_frisco_unknown_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62968-guardian-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62969-guardian-atari-2600-screenshot-shoot-the-incoming-explosives.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62970-guardian-atari-2600-screenshot-a-few-holes-have-formed-in-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62971-guardian-atari-2600-screenshot-a-two-player-game.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600kabobber07251983activisionrexbradford"
:"Kabobber"
for /f "%FLDSWTCH%" %%a in ("Kabobber") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_kabobber_07-25-1983_activision_rex_bradford_prototype/atari_2600_kabobber_07-25-1983_activision_rex_bradford_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244454-saboteur-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244455-saboteur-atari-2600-screenshot-get-ready.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244456-saboteur-atari-2600-screenshot-i-need-to-try-to-keep-the-robots.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244457-saboteur-atari-2600-screenshot-i-need-to-try-to-destroy-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260914-saboteur-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260913-saboteur-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600motolaserakamegaforcestargame"
:"MotoLaser"
for /f "%FLDSWTCH%" %%a in ("Moto Laser") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_moto_laser_aka_mega_force_star_game_043/atari_2600_moto_laser_aka_mega_force_star_game_043_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244454-saboteur-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244455-saboteur-atari-2600-screenshot-get-ready.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244456-saboteur-atari-2600-screenshot-i-need-to-try-to-keep-the-robots.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244457-saboteur-atari-2600-screenshot-i-need-to-try-to-destroy-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22208-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260914-saboteur-atari-2600-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600outofcontrol1983avalonhilljean"
:"OutOfControl"
for /f "%FLDSWTCH%" %%a in ("Out Of Control") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_out_of_control_1983_avalon_hill_jean_baer_bill_rebecca_ann_heineman_ji/atari_2600_out_of_control_1983_avalon_hill_jean_baer_bill_rebecca_ann_heineman_ji_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183079-out-of-control-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183080-out-of-control-atari-2600-screenshot-if-i-go-to-far-off-course.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183081-out-of-control-atari-2600-screenshot-with-the-single-hurdle.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183082-out-of-control-atari-2600-screenshot-i-need-to-pop-10-space.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600subscansubterfuge1982sega00201"
:"Subscan"
for /f "%FLDSWTCH%" %%a in ("Sub-scan") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_sub-scan_subterfuge_1982_sega_002-01/atari_2600_sub-scan_subterfuge_1982_sega_002-01_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183079-out-of-control-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183080-out-of-control-atari-2600-screenshot-if-i-go-to-far-off-course.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183081-out-of-control-atari-2600-screenshot-with-the-single-hurdle.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183082-out-of-control-atari-2600-screenshot-i-need-to-pop-10-space.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22186-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600ixion1984segajefflorenzprototype"
:"Ixion"
for /f "%FLDSWTCH%" %%a in ("Ixion") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_ixion_1984_sega_jeff_lorenz_prototype/atari_2600_ixion_1984_sega_jeff_lorenz_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183079-out-of-control-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183080-out-of-control-atari-2600-screenshot-if-i-go-to-far-off-course.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183081-out-of-control-atari-2600-screenshot-with-the-single-hurdle.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/183082-out-of-control-atari-2600-screenshot-i-need-to-pop-10-space.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600survivalruncosmiccommander1983miltonbradley"
:"SurvivalRun"
for /f "%FLDSWTCH%" %%a in ("Survival Run") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_survival_run_cosmic_commander_1983_milton_bradley_company_4362/atari_2600_survival_run_cosmic_commander_1983_milton_bradley_company_4362_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126017-survival-run-atari-2600-screenshot-difficulty-level-5-selected.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126018-survival-run-atari-2600-screenshot-starting-screen-of-difficulty.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126019-survival-run-atari-2600-screenshot-enemy-ship.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126020-survival-run-atari-2600-screenshot-enemy-force-field.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600confrontation1983answersoftwarecorporationtyassociates"
:"Confrontation"
for /f "%FLDSWTCH%" %%a in ("Confrontation") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_confrontation_1983_answer_software_corporation_-_ty_associates_asc2001/atari_2600_confrontation_1983_answer_software_corporation_-_ty_associates_asc2001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126017-survival-run-atari-2600-screenshot-difficulty-level-5-selected.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126018-survival-run-atari-2600-screenshot-starting-screen-of-difficulty.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126019-survival-run-atari-2600-screenshot-enemy-ship.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/126020-survival-run-atari-2600-screenshot-enemy-force-field.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600warplockpaddle1982dataageda1002"
:"Warplock"
for /f "%FLDSWTCH%" %%a in ("Warplock") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_warplock_paddle_1982_data_age_da1002/atari_2600_warplock_paddle_1982_data_age_da1002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186150-warplock-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186151-warplock-atari-2600-screenshot-enemies-moving-around-the-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186152-warplock-atari-2600-screenshot-me-shooting-at-enemies.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186153-warplock-atari-2600-screenshot-the-enemies-shooting-back.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600thwocker04091984activisioncharlieheath"
:"Thwocker"
for /f "%FLDSWTCH%" %%a in ("Thwocker") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_thwocker_04-09-1984_activision_charlie_heath_prototype/atari_2600_thwocker_04-09-1984_activision_charlie_heath_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134566-checkers-atari-2600-screenshot-the-beginning-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134567-checkers-atari-2600-screenshot-move-the-x-to-select-a-checker.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134568-checkers-atari-2600-screenshot-uh-oh-the-red-player-has-just.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/134569-checkers-atari-2600-screenshot-gameplay-in-black-and-white.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/53020-checkers-atari-2600-media.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600encounteratl5megaloninvasionpaddle"
:"EncounterAtL5"
for /f "%FLDSWTCH%" %%a in ("Encounter At L-5") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_encounter_at_l-5_megalon_invasion_paddle_1982_data_age_da1001/atari_2600_encounter_at_l-5_megalon_invasion_paddle_1982_data_age_da1001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186167-encounter-at-l-5-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186168-encounter-at-l-5-atari-2600-screenshot-i-m-shooting-at-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186169-encounter-at-l-5-atari-2600-screenshot-i-need-to-destroy-the.jpg") do SET SNAP4ART=%%~a
set GTART=1
exit /b

:"atari2600lochjaw1981apollogamesbyapollosteve"
:"Lochjaw"
for /f "%FLDSWTCH%" %%a in ("Lochjaw") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_lochjaw_1981_apollo_-_games_by_apollo_steve_stringfellow_ap-2005/atari_2600_lochjaw_1981_apollo_-_games_by_apollo_steve_stringfellow_ap-2005_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62869-lochjaw-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62870-lochjaw-atari-2600-screenshot-watch-out-for-that-shark.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62871-lochjaw-atari-2600-screenshot-here-comes-the-loch-ness-monster.jpg") do SET SNAP4ART=%%~a
set GTART=1
exit /b

:"atari2600imagicselectorrom1982imagic"
:"ImagicSelectorRom"
for /f "%FLDSWTCH%" %%a in ("Imagic Selector Rom") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_imagic_selector_rom_1982_imagic/atari_2600_imagic_selector_rom_1982_imagic_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62869-lochjaw-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62870-lochjaw-atari-2600-screenshot-watch-out-for-that-shark.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/62871-lochjaw-atari-2600-screenshot-here-comes-the-loch-ness-monster.jpg") do SET SNAP4ART=%%~a
set GTART=1
exit /b

:"atari2600springer1982tigervision7006"
:"Springer"
for /f "%FLDSWTCH%" %%a in ("Springer") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_springer_1982_tigervision_7-006/atari_2600_springer_1982_tigervision_7-006_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244725-springer-atari-2600-screenshot-starting-location.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244726-springer-atari-2600-screenshot-i-fell-off-the-cloud.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244727-springer-atari-2600-screenshot-one-egg-has-hatched-a-dragon.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244728-springer-atari-2600-screenshot-the-second-screen-from-the.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600universalchaosakatarg1989telegames7062"
:"UniversalChaos"
for /f "%FLDSWTCH%" %%a in ("Universal Chaos") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_universal_chaos_aka_targ_1989_telegames_7062_a305/atari_2600_universal_chaos_aka_targ_1989_telegames_7062_a305_screenshot.gif") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/28600-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/239900-universal-chaos-atari-2600-screenshot-starting-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/239901-universal-chaos-atari-2600-screenshot-i-am-shooting-at-one.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/239902-universal-chaos-atari-2600-screenshot-the-mortii-warlord-is.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28600-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28600-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600kyphus1982apollotimmartinap2007"
:"Kyphus"
for /f "%FLDSWTCH%" %%a in ("Kyphus") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_kyphus_1982_apollo_tim_martin_ap-2007_prototype/atari_2600_kyphus_1982_apollo_tim_martin_ap-2007_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/239900-universal-chaos-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/239901-universal-chaos-atari-2600-screenshot-i-am-shooting-at-one.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/239902-universal-chaos-atari-2600-screenshot-the-mortii-warlord-is.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/239903-universal-chaos-atari-2600-screenshot-i-shot-the-mortii-warlord.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600dishasterakadancingplate1983zimagemag"
:"Dishaster"
for /f "%FLDSWTCH%" %%a in ("Dishaster") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_dishaster_aka_dancing_plate_1983_zimag_-_emag_-_vidco_711-111_-_gn-020/atari_2600_dishaster_aka_dancing_plate_1983_zimag_-_emag_-_vidco_711-111_-_gn-020_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/534192-dishaster-atari-2600-screenshot-starting-screen-showing-the.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/534193-dishaster-atari-2600-screenshot-i-ve-got-four-dishes-but-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/534194-dishaster-atari-2600-screenshot-now-three-out-of-four-are.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/534195-dishaster-atari-2600-screenshot-the-dishes-to-either-side.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600radarakaexocet1983ccec867"
:"Radar"
for /f "%FLDSWTCH%" %%a in ("Radar") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_radar_aka_exocet_1983_cce_c-867/atari_2600_radar_aka_exocet_1983_cce_c-867_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/77708-radar-lock-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/77709-radar-lock-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/77710-radar-lock-atari-2600-screenshot-sharp-turn.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/77711-radar-lock-atari-2600-screenshot-whoa-numerous-enemies.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/34494-radar-lock-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/34495-radar-lock-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600casinopokerpluspaddle1979ataribob"
:"Casino"
for /f "%FLDSWTCH%" %%a in ("Casino") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_casino_-_poker_plus_paddle_1979_atari_bob_whitehead_-_sears_cx2652_-_6/atari_2600_casino_-_poker_plus_paddle_1979_atari_bob_whitehead_-_sears_cx2652_-_6_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175840-casino-atari-2600-screenshot-placing-a-bet-for-blackjack.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175841-casino-atari-2600-screenshot-playing-a-hand.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175842-casino-atari-2600-screenshot-i-won.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175843-casino-atari-2600-screenshot-in-version-2-i-cannot-split-hands.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/1345-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260905-casino-atari-2600-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/1345-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"atari2600immiesaggies1983ccec838"
:"Immies&Aggies"
for /f "%FLDSWTCH%" %%a in ("Immies & Aggies") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_immies__aggies_1983_cce_c-838/atari_2600_immies__aggies_1983_cce_c-838_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175840-casino-atari-2600-screenshot-placing-a-bet-for-blackjack.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175841-casino-atari-2600-screenshot-playing-a-hand.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175842-casino-atari-2600-screenshot-i-won.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175843-casino-atari-2600-screenshot-in-version-2-i-cannot-split-hands.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260905-casino-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260906-casino-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600seamonstermonstredesmers1982puzzybit"
:"SeamonsterMonstreDesMers"
for /f "%FLDSWTCH%" %%a in ("Seamonster - Monstre Des Mers") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_seamonster_-_monstre_des_mers_1982_puzzy_-_bit_corporation_pg201/atari_2600_seamonster_-_monstre_des_mers_1982_puzzy_-_bit_corporation_pg201_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175840-casino-atari-2600-screenshot-placing-a-bet-for-blackjack.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175841-casino-atari-2600-screenshot-playing-a-hand.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175842-casino-atari-2600-screenshot-i-won.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/175843-casino-atari-2600-screenshot-in-version-2-i-cannot-split-hands.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260905-casino-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/260906-casino-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600threshold1982tigervisionwarrenschwader7003"
:"Threshold"
for /f "%FLDSWTCH%" %%a in ("Threshold") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_threshold_1982_tigervision_warren_schwader_7-003/atari_2600_threshold_1982_tigervision_warren_schwader_7-003_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/144591-threshold-atari-2600-screenshot-startup-screen-select-game.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/144592-threshold-atari-2600-screenshot-watch-out-for-those-incoming.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/144593-threshold-atari-2600-screenshot-careful-don-t-crash.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/144594-threshold-atari-2600-screenshot-attempting-to-blast-one-of.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/55658-threshold-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/55617-threshold-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600pickup198320thcenturyfoxvideo"
:"PickUp"
for /f "%FLDSWTCH%" %%a in ("Pick Up") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_pick_up_1983_20th_century_fox_video_games_mark_klein_11034_prototype/atari_2600_pick_up_1983_20th_century_fox_video_games_mark_klein_11034_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244798-pick-up-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244799-pick-up-atari-2600-screenshot-first-stage.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244800-pick-up-atari-2600-screenshot-i-collected-all-the-items-i.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/244801-pick-up-atari-2600-screenshot-i-m-giving-my-girl-all-the-gifts.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/259386-pick-up-atari-2600-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/259387-pick-up-atari-2600-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600spiderdroidakaamidar1987froggofg1002"
:"Spiderdroid"
for /f "%FLDSWTCH%" %%a in ("Spiderdroid") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_spiderdroid_aka_amidar_1987_froggo_fg1002/atari_2600_spiderdroid_aka_amidar_1987_froggo_fg1002_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/445505-spiderdroid-atari-2600-screenshot-starting-out.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/445506-spiderdroid-atari-2600-screenshot-i-captured-a-room.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/445507-spiderdroid-atari-2600-screenshot-got-2-rooms.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/445508-spiderdroid-atari-2600-screenshot-i-turned-the-birddroids.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/28709-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/28709-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600holehunterakatopyvideogamecartridge"
:"HoleHunter"
for /f "%FLDSWTCH%" %%a in ("Hole Hunter") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_hole_hunter_aka_topy_video_game_cartridge_-_ariola_tp-606/atari_2600_hole_hunter_aka_topy_video_game_cartridge_-_ariola_tp-606_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44577-spy-hunter-atari-2600-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44574-spy-hunter-atari-2600-screenshot-a-game-in-progress.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44575-spy-hunter-atari-2600-screenshot-the-weapons-van-is-on-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/44576-spy-hunter-atari-2600-screenshot-driving-the-boat.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22182-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/21819-spy-hunter-atari-2600-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600offyourrockerjoyboard1983amiga3130"
:"OffYourRocker"
for /f "%FLDSWTCH%" %%a in ("Off Your Rocker") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_off_your_rocker_joyboard_1983_amiga_3130_prototype/atari_2600_off_your_rocker_joyboard_1983_amiga_3130_prototype_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/314454-off-your-rocker-atari-2600-screenshot-opening-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/314455-off-your-rocker-atari-2600-screenshot-leaning-towards-the.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/314456-off-your-rocker-atari-2600-screenshot-this-is-what-happens.jpg") do SET SNAP4ART=%%~a
set GTART=1
exit /b

:"atari2600rescueterrai1982venturevisiondanoliver"
:"RescueTerraI"
for /f "%FLDSWTCH%" %%a in ("Rescue Terra I") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_rescue_terra_i_1982_venturevision_dan_oliver_vv2001/atari_2600_rescue_terra_i_1982_venturevision_dan_oliver_vv2001_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226001-rescue-terra-i-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226002-rescue-terra-i-atari-2600-screenshot-i-am-fighting-through.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226003-rescue-terra-i-atari-2600-screenshot-i-am-fighting-both-meteors.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226004-rescue-terra-i-atari-2600-screenshot-nothing-but-pirate-ships.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21537-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600glibvideowordgame1983selchowrighter"
:"GlibVideoWordGame"
for /f "%FLDSWTCH%" %%a in ("Glib - Video Word Game") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_glib_-_video_word_game_1983_selchow__righter_-_qdi_87/atari_2600_glib_-_video_word_game_1983_selchow__righter_-_qdi_87_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226001-rescue-terra-i-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226002-rescue-terra-i-atari-2600-screenshot-i-am-fighting-through.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226003-rescue-terra-i-atari-2600-screenshot-i-am-fighting-both-meteors.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226004-rescue-terra-i-atari-2600-screenshot-nothing-but-pirate-ships.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/19932-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/19932-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"atari2600resgateespacialakamoonsweepercce"
:"ResgateEspacial"
for /f "%FLDSWTCH%" %%a in ("Resgate Espacial") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_resgate_espacial_aka_moonsweeper_cce/atari_2600_resgate_espacial_aka_moonsweeper_cce_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226001-rescue-terra-i-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226002-rescue-terra-i-atari-2600-screenshot-i-am-fighting-through.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226003-rescue-terra-i-atari-2600-screenshot-i-am-fighting-both-meteors.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/226004-rescue-terra-i-atari-2600-screenshot-nothing-but-pirate-ships.jpg") do SET SNAP5ART=%%~a
set GTART=1
exit /b

:"atari2600videojoggerfootcraz1983exuscorporation"
:"VideoJogger"
for /f "%FLDSWTCH%" %%a in ("Video Jogger") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_video_jogger_foot_craz_1983_exus_corporation/atari_2600_video_jogger_foot_craz_1983_exus_corporation_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186589-video-jogger-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186590-video-jogger-atari-2600-screenshot-i-passed-the-pace-symbol.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186591-video-jogger-atari-2600-screenshot-i-passed-2000-points-so.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/15889-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"atari2600videoreflexfootcraz1983exuscorporation"
:"VideoReflex"
for /f "%FLDSWTCH%" %%a in ("Video Reflex") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/atari_2600_video_reflex_foot_craz_1983_exus_corporation/atari_2600_video_reflex_foot_craz_1983_exus_corporation_screenshot.png") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186594-video-reflex-atari-2600-screenshot-starting-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186595-video-reflex-atari-2600-screenshot-counting-down-to-begin.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186596-video-reflex-atari-2600-screenshot-sqush-the-bug.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/186598-video-reflex-atari-2600-screenshot-bug-was-squashed.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/15889-1.jpg") do SET B1ART=%%~a
