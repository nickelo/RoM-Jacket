goto :"%ROMFNM%"
exit /b

:"Asteroids"
:"Asteroids(1987)(Atari)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Asteroids (1987)(Atari)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Asteroids_1987_Atari_NTSC/Asteroids_1987_Atari_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/18177-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27258-asteroids-atari-7800-front-cover.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/18177-1.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27259-asteroids-atari-7800-back-cover.jpg") do set B4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27260-asteroids-atari-7800-media.jpg") do set B5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/18177-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54985-asteroids-atari-7800-screenshot-atari-logo.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54986-asteroids-atari-7800-screenshot-title-screen.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54987-asteroids-atari-7800-screenshot-a-game-in-progress.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54988-asteroids-atari-7800-screenshot-watch-out-for-that-flying-saucer.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/54989-asteroids-atari-7800-screenshot-each-level-begins-with-large.jpg") do set SNAP6ART=%%~a
set GTART=1
exit /b
:"DoubleDragon"
:"DoubleDragon(1989)(Activision)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Double Dragon (1989)(Activision)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Double_Dragon_1989_Activision_NTSC/Double_Dragon_1989_Activision_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21041-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27307-double-dragon-atari-7800-front-cover.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/21041-1.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27308-double-dragon-atari-7800-back-cover.jpg") do set B4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27309-double-dragon-atari-7800-media.jpg") do set B5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55260-double-dragon-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55261-double-dragon-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55262-double-dragon-atari-7800-screenshot-beginning-the-game.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55263-double-dragon-atari-7800-screenshot-outnumbered-as-usual.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55264-double-dragon-atari-7800-screenshot-watch-out-for-that-whip.jpg") do set SNAP5ART=%%~a
set GTART=1
exit /b
:"KungFuMaster"
:"KungFuMaster(1989)(AbsoluteEntertainment)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Kung-Fu Master (1989)(Absolute Entertainment)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Kung-Fu_Master_1989_Absolute_Entertainment_NTSC/Kung-Fu_Master_1989_Absolute_Entertainment_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21102-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/21102-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194379-kung-fu-master-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194380-kung-fu-master-atari-7800-screenshot-dagger-thrower-on-first.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194381-kung-fu-master-atari-7800-screenshot-you-ll-get-tired-of-these.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/194382-kung-fu-master-atari-7800-screenshot-first-floor-boss.jpg") do set SNAP5ART=%%~a
set GTART=1
exit /b
:"Rampage"
:"Rampage(1989)(Activision)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Rampage (1989)(Activision)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Rampage_1989_Activision_NTSC/Rampage_1989_Activision_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22383-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/22383-1.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/295649-rampage-atari-7800-media.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22383-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22383-2.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22383-3.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22383-4.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22383-5.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22383-6.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22383-7.jpg") do set SNAP7ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22383-8.jpg") do set SNAP8ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57070-rampage-atari-7800-screenshot-atari-logo.jpg") do set SNAP9ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/57071-rampage-atari-7800-screenshot-title-screen.jpg") do set SNAP10ART=%%~a
set GTART=1
exit /b
:"F18Hornet"
:"F18Hornet(1988)(AbsoluteEntertainment)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("F-18 Hornet (1988)(Absolute Entertainment)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/F-18_Hornet_1988_Absolute_Entertainment_NTSC/F-18_Hornet_1988_Absolute_Entertainment_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21093-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/21093-1.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/295648-f-18-hornet-atari-7800-media.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/21093-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/21093-2.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72944-f-18-hornet-atari-7800-screenshot-atari-logo.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72945-f-18-hornet-atari-7800-screenshot-title-screen.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72946-f-18-hornet-atari-7800-screenshot-mission-overview.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72947-f-18-hornet-atari-7800-screenshot-beginning-mission-one.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72948-f-18-hornet-atari-7800-screenshot-airborne.jpg") do set SNAP7ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72949-f-18-hornet-atari-7800-screenshot-enemy-plane-in-sight.jpg") do set SNAP8ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72950-f-18-hornet-atari-7800-screenshot-taking-off-from-an-aircraft.jpg") do set SNAP9ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72951-f-18-hornet-atari-7800-screenshot-i-better-shoot-this-enemy.jpg") do set SNAP10ART=%%~a
set GTART=1
exit /b
:"TomcatTheF14FighterSimulator"
:"TomcatTheF14FighterSimulator(1989)(AbsoluteEntertainment)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Tomcat - The F-14 Fighter Simulator (1989)(Absolute Entertainment)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Tomcat_-_The_F-14_Fighter_Simulator_1989_Absolute_Entertainment_NTSC/Tomcat_-_The_F-14_Fighter_Simulator_1989_Absolute_Entertainment_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22389-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/22389-1.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22389-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22389-2.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22389-3.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22389-4.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22389-5.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22389-6.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22389-7.jpg") do set SNAP7ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22389-8.jpg") do set SNAP8ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72930-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-7800.jpg") do set SNAP9ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/72931-dan-kitchen-s-tomcat-the-f-14-fighter-simulator-atari-7800.jpg") do set SNAP10ART=%%~a
set GTART=1
exit /b
:"TankCommand"
:"TankCommand(1988)(Froggo)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Tank Command (1988)(Froggo)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Tank_Command_1988_Froggo_NTSC/Tank_Command_1988_Froggo_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22388-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/22388-1.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22388-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22388-2.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22388-3.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22388-4.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22388-5.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22388-6.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22388-7.jpg") do set SNAP7ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22388-8.jpg") do set SNAP8ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82782-tank-command-atari-7800-screenshot-atari-logo.jpg") do set SNAP9ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82783-tank-command-atari-7800-screenshot-title-screen.jpg") do set SNAP10ART=%%~a
set GTART=1
exit /b
:"FoodFight"
:"FoodFight"
for /f "%FLDSWTCH%" %%a in ("Food Fight") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Food_Fight_1987_Atari_NTSC/Food_Fight_1987_Atari_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21044-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/28227-food-fight-atari-7800-front-cover.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/21044-1.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/28228-food-fight-atari-7800-back-cover.jpg") do set B4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55491-food-fight-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55492-food-fight-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55493-food-fight-atari-7800-screenshot-get-ready-to-begin.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55494-food-fight-atari-7800-screenshot-grab-some-food-to-throw-at.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55495-food-fight-atari-7800-screenshot-rapid-firing-some-watermelon.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/55496-food-fight-atari-7800-screenshot-eating-an-ice-cream-cone.jpg") do set SNAP6ART=%%~a
set GTART=1
exit /b
:"Baseball"
:"Baseball(1989)(AbsoluteEntertainment)(PAL)"
for /f "%FLDSWTCH%" %%a in ("Baseball (1989)(Absolute Entertainment)(PAL)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Baseball_1989_Absolute_Entertainment_PAL/Baseball_1989_Absolute_Entertainment_PAL_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22379-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35897-basketbrawl-atari-7800-front-cover.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/22379-1.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35898-basketbrawl-atari-7800-back-cover.jpg") do set B4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35899-basketbrawl-atari-7800-media.jpg") do set B5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-2.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-3.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-4.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-5.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-6.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-7.jpg") do set SNAP7ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-8.jpg") do set SNAP8ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56348-basketbrawl-atari-7800-screenshot-atari-logo.jpg") do set SNAP9ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56349-basketbrawl-atari-7800-screenshot-title-screen.jpg") do set SNAP10ART=%%~a
set GTART=1
exit /b
:"SpaceWar!Rev20040318"
:"SpaceWar!Rev20040318(2004)(EricBall)(PD)"
for /f "%FLDSWTCH%" %%a in ("Space War! Rev 20040318 (2004)(Eric Ball)(PD)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/images/emulation_default.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35897-basketbrawl-atari-7800-front-cover.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35898-basketbrawl-atari-7800-back-cover.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35899-basketbrawl-atari-7800-media.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56348-basketbrawl-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56349-basketbrawl-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56350-basketbrawl-atari-7800-screenshot-game-options.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56351-basketbrawl-atari-7800-screenshot-choose-a-character.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56352-basketbrawl-atari-7800-screenshot-some-more-game-options.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56353-basketbrawl-atari-7800-screenshot-a-game-in-progress.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56354-basketbrawl-atari-7800-screenshot-taking-a-shot.jpg") do set SNAP7ART=%%~a
set GTART=1
exit /b
:"PeteRoseBaseball"
:"PeteRoseBaseball(1989)(AbsoluteEntertainment)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Pete Rose Baseball (1989)(Absolute Entertainment)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Pete_Rose_Baseball_1989_Absolute_Entertainment_NTSC/Pete_Rose_Baseball_1989_Absolute_Entertainment_NTSC_screenshot.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22379-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35897-basketbrawl-atari-7800-front-cover.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/22379-1.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35898-basketbrawl-atari-7800-back-cover.jpg") do set B4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35899-basketbrawl-atari-7800-media.jpg") do set B5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-2.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-3.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-4.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-5.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-6.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-7.jpg") do set SNAP7ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22379-8.jpg") do set SNAP8ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56348-basketbrawl-atari-7800-screenshot-atari-logo.jpg") do set SNAP9ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56349-basketbrawl-atari-7800-screenshot-title-screen.jpg") do set SNAP10ART=%%~a
set GTART=1
exit /b
:"BarnyardBlaster"
:"BarnyardBlaster(1988)(Atari)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Barnyard Blaster (1988)(Atari)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Barnyard_Blaster_1988_Atari_NTSC/Barnyard_Blaster_1988_Atari_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21097-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27850-barnyard-blaster-atari-7800-front-cover.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/21097-1.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27851-barnyard-blaster-atari-7800-back-cover.jpg") do set B4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/27852-barnyard-blaster-atari-7800-media.jpg") do set B5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56259-barnyard-blaster-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56260-barnyard-blaster-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/56261-barnyard-blaster-atari-7800-screenshot-choose-a-one-or-two.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82565-barnyard-blaster-atari-7800-screenshot-shoot-these-bottles.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82566-barnyard-blaster-atari-7800-screenshot-a-can-goes-flying.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82568-barnyard-blaster-atari-7800-screenshot-shoot-the-bottles-that.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82569-barnyard-blaster-atari-7800-screenshot-shoot-targets-out-in.jpg") do set SNAP7ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82570-barnyard-blaster-atari-7800-screenshot-the-results-so-far.jpg") do set SNAP8ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82572-barnyard-blaster-atari-7800-screenshot-game-over.jpg") do set SNAP9ART=%%~a
set GTART=1
exit /b
:"SuperSkateboardin"
:"SuperSkateboardin(1988)(AbsoluteEntertainment)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Super Skateboardin' (1988)(Absolute Entertainment)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Super_Skateboardin_1988_Absolute_Entertainment_NTSC/Super_Skateboardin_1988_Absolute_Entertainment_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20614-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/20614-1.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/295650-super-skateboardin-atari-7800-media.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/60187-super-skateboardin-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/60188-super-skateboardin-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/60189-super-skateboardin-atari-7800-screenshot-some-skateboardin.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/60190-super-skateboardin-atari-7800-screenshot-skateboardin-past.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/60191-super-skateboardin-atari-7800-screenshot-reached-the-end-of.jpg") do set SNAP5ART=%%~a
set GTART=1
exit /b
:"WaterSki"
:"WaterSki(1988)(Froggo)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Water Ski (1988)(Froggo)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Water_Ski_1988_Froggo_NTSC/Water_Ski_1988_Froggo_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22390-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36529-water-ski-atari-7800-front-cover.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/22390-1.jpg") do set B3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36530-water-ski-atari-7800-back-cover.jpg") do set B4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/36531-water-ski-atari-7800-media.jpg") do set B5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22390-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22390-2.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22390-3.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22390-4.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22390-5.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22390-6.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22390-7.jpg") do set SNAP7ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22390-8.jpg") do set SNAP8ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82757-water-ski-atari-7800-screenshot-atari-logo.jpg") do set SNAP9ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82758-water-ski-atari-7800-screenshot-title-screen.jpg") do set SNAP10ART=%%~a
set GTART=1
exit /b
:"TitleMatchProWrestling"
:"TitleMatchProWrestling(1989)(AbsoluteEntertainment)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Title Match Pro Wrestling (1989)(Absolute Entertainment)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Title_Match_Pro_Wrestling_1989_Absolute_Entertainment_NTSC/Title_Match_Pro_Wrestling_1989_Absolute_Entertainment_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20613-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/20613-1.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP6ART=%%~a
set GTART=1
exit /b
:"Senso7800DX4"
:"Senso7800DX4(2003)(Taquart)(PD)"
for /f "%FLDSWTCH%" %%a in ("Senso 7800 DX4 (2003)(Taquart)(PD)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Senso_7800_DX4_2003_Taquart_PD/Senso_7800_DX4_2003_Taquart_PD_screenshot.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21099-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/21099-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP7ART=%%~a
set GTART=1
exit /b
:"GATO"
:"GATO(1987)(Atari)(NTSC)(proto)"
for /f "%FLDSWTCH%" %%a in ("GATO (1987)(Atari)(NTSC)(proto)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/GATO_1987_Atari_NTSC_proto/GATO_1987_Atari_NTSC_proto_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21101-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP6ART=%%~a
set GTART=1
exit /b
:"ColorSelector"
:"ColorSelector(1987)(Atari)"
for /f "%FLDSWTCH%" %%a in ("Color Selector (1987)(Atari)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Color_Selector_1987_Atari/Color_Selector_1987_Atari_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP6ART=%%~a
set GTART=1
exit /b
:"Mean18UltimateGolf"
:"Mean18UltimateGolf(1989)(Atari)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Mean 18 Ultimate Golf (1989)(Atari)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/serve/Mean_18_Ultimate_Golf_1989_Atari_NTSC/Mean_18_Ultimate_Golf_1989_Atari_NTSC_screenshot.png") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21048-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/21048-1.jpg") do set B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP6ART=%%~a
set GTART=1
exit /b
:"SpaceWar!Rev20030930"
:"SpaceWar!Rev20030930(2003)(EricBall)(PD)"
for /f "%FLDSWTCH%" %%a in ("Space War! Rev 20030930 (2003)(Eric Ball)(PD)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/images/emulation_default.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP6ART=%%~a
set GTART=1
exit /b
:"Atari7800SymbolicDebugMonitorandDownloader"
:"Atari7800SymbolicDebugMonitorandDownloader(1988)(Atari)(NTSC)"
for /f "%FLDSWTCH%" %%a in ("Atari 7800 Symbolic Debug Monitor and Downloader (1988)(Atari)(NTSC)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/images/emulation_default.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21099-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/21099-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP7ART=%%~a
set GTART=1
exit /b
:"Senso7800DX3"
:"Senso7800DX3(2003)(Taquart)(PD)"
for /f "%FLDSWTCH%" %%a in ("Senso 7800 DX3 (2003)(Taquart)(PD)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/images/emulation_default.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21099-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/21099-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP7ART=%%~a
set GTART=1
exit /b
:"Senso7800Test5"
:"Senso7800Test5(2001)(Taquart)(PD)"
for /f "%FLDSWTCH%" %%a in ("Senso 7800 Test 5 (2001)(Taquart)(PD)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/images/emulation_default.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21099-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/21099-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP7ART=%%~a
set GTART=1
exit /b
:"Senso7800DX2"
:"Senso7800DX2(2002)(Taquart)(PD)"
for /f "%FLDSWTCH%" %%a in ("Senso 7800 DX2 (2002)(Taquart)(PD)") do set ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("https://archive.org/images/emulation_default.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/21099-1.jpg") do set B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/21099-1.jpg") do set SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82997-title-match-pro-wrestling-atari-7800-screenshot-atari-logo.jpg") do set SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82998-title-match-pro-wrestling-atari-7800-screenshot-title-screen.jpg") do set SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/82999-title-match-pro-wrestling-atari-7800-screenshot-select-the.jpg") do set SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83000-title-match-pro-wrestling-atari-7800-screenshot-beginning-a.jpg") do set SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83001-title-match-pro-wrestling-atari-7800-screenshot-oof-that-s.jpg") do set SNAP6ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83002-title-match-pro-wrestling-atari-7800-screenshot-my-player-is.jpg") do set SNAP7ART=%%~a
set GTART=1
exit /b
