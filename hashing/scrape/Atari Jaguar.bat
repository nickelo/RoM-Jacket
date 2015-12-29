goto :"%ROMFNM%"
exit /b


:"AirCars(World)"
:"AirCars"
for /f "%FLDSWTCH%" %%a in ("Air Cars (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22351-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22351-2.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22351-3.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22351-4.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22351-5.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22351-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/140807-aircars-jaguar-media.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"AlienvsPredator(World)"
:"AlienvsPredator"
for /f "%FLDSWTCH%" %%a in ("Alien vs Predator (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28562-alien-vs-predator-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28558-alien-vs-predator-jaguar-screenshot-introduction.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28556-alien-vs-predator-jaguar-screenshot-character-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28561-alien-vs-predator-jaguar-screenshot-the-marine-s-story.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28554-alien-vs-predator-jaguar-screenshot-the-alien-has-to-cocoon.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3962-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13203-alien-vs-predator-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3962-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/3962-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/3962.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"AtariKarts(World)"
:"AtariKarts"
for /f "%FLDSWTCH%" %%a in ("Atari Karts (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28853-atari-karts-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28854-atari-karts-jaguar-screenshot-character-selection.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28855-atari-karts-jaguar-screenshot-the-moon.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28856-atari-karts-jaguar-screenshot-beach-jumping.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28857-atari-karts-jaguar-screenshot-castle-karts.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3963-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13711-atari-karts-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3963-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"AttackoftheMutantPenguins(World)"
:"AttackoftheMutantPenguins"
for /f "%FLDSWTCH%" %%a in ("Attack of the Mutant Penguins (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29089-mutant-penguins-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29090-mutant-penguins-jaguar-screenshot-choose-your-character.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29091-mutant-penguins-jaguar-screenshot-the-canyon-is-the-first-level.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29092-mutant-penguins-jaguar-screenshot-the-penguin-scale.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29093-mutant-penguins-jaguar-screenshot-a-fence-holds-in-these-bad.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9849-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13693-mutant-penguins-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/9849-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"BattleSphereGold(World)"
:"BattleSphereGold"
for /f "%FLDSWTCH%" %%a in ("Battle Sphere Gold (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20270-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"BrutalSportsFootball(World)"
:"BrutalSportsFootball"
for /f "%FLDSWTCH%" %%a in ("Brutal Sports Football (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28784-brutal-sports-football-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28785-brutal-sports-football-jaguar-screenshot-the-freaky-lizard.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28786-brutal-sports-football-jaguar-screenshot-flying-tackle.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28787-brutal-sports-football-jaguar-screenshot-score.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28788-brutal-sports-football-jaguar-screenshot-decapitations-are.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14801-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13685-brutal-sports-football-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"BubsyinFracturedFurryTales(World)"
:"BubsyinFracturedFurryTales"
for /f "%FLDSWTCH%" %%a in ("Bubsy in Fractured Furry Tales (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27499-bubsy-in-fractured-furry-tales-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27500-bubsy-in-fractured-furry-tales-jaguar-screenshot-twisted-tea.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27501-bubsy-in-fractured-furry-tales-jaguar-screenshot-bubsy-and.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27502-bubsy-in-fractured-furry-tales-jaguar-screenshot-bubsy-and.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27503-bubsy-in-fractured-furry-tales-jaguar-screenshot-waterbubsy.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3964-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13244-bubsy-in-fractured-furry-tales-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3964-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"CannonFodder(World)"
:"CannonFodder"
for /f "%FLDSWTCH%" %%a in ("Cannon Fodder (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164380-cannon-fodder-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164381-cannon-fodder-jaguar-screenshot-main-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164382-cannon-fodder-jaguar-screenshot-mission-1-s-goal.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164383-cannon-fodder-jaguar-screenshot-kill-all-the-enemy.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164384-cannon-fodder-jaguar-screenshot-all-mt-men-were-killed.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3965-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/77934-cannon-fodder-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3965-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/3965.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"CheckeredFlag(World)"
:"CheckeredFlag"
for /f "%FLDSWTCH%" %%a in ("Checkered Flag (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27582-checkered-flag-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27583-checkered-flag-jaguar-screenshot-main-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27584-checkered-flag-jaguar-screenshot-the-narrow-and-tricky-island.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27585-checkered-flag-jaguar-screenshot-goofy-crash-animation.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27587-checkered-flag-jaguar-screenshot-racing-in-the-rain.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14797-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13248-checkered-flag-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ClubDrive(World)"
:"ClubDrive"
for /f "%FLDSWTCH%" %%a in ("Club Drive (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27427-club-drive-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27428-club-drive-jaguar-screenshot-game-setup.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27429-club-drive-jaguar-screenshot-the-giant-house-that-s-supposed.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27430-club-drive-jaguar-screenshot-the-golden-gate-bridge.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27431-club-drive-jaguar-screenshot-ghost-town.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2517-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13166-club-drive-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/2517-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"Cybermorph(World)(Rev1)"
:"Cybermorph"
for /f "%FLDSWTCH%" %%a in ("Cybermorph (World) (Rev 1)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27294-cybermorph-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27295-cybermorph-jaguar-screenshot-choose-a-planet.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27296-cybermorph-jaguar-screenshot-mission-briefing.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27297-cybermorph-jaguar-screenshot-ahh-a-pod.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27298-cybermorph-jaguar-screenshot-taking-heavy-fire.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2518-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/142350-cybermorph-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/2518-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"Cybermorph(World)(Rev2)"
:"Cybermorph"
for /f "%FLDSWTCH%" %%a in ("Cybermorph (World) (Rev 2)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27294-cybermorph-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27295-cybermorph-jaguar-screenshot-choose-a-planet.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27296-cybermorph-jaguar-screenshot-mission-briefing.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27297-cybermorph-jaguar-screenshot-ahh-a-pod.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27298-cybermorph-jaguar-screenshot-taking-heavy-fire.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2518-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/142350-cybermorph-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/2518-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"Defender2000(World)"
:"Defender2000"
for /f "%FLDSWTCH%" %%a in ("Defender 2000 (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28148-defender-2000-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28149-defender-2000-jaguar-screenshot-game-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28150-defender-2000-jaguar-screenshot-original-defender.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28151-defender-2000-jaguar-screenshot-even-original-defender-gets.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28152-defender-2000-jaguar-screenshot-defender-plus-near-the-warp.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/13357-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13444-defender-2000-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"Doom(World)"
:"Doom"
for /f "%FLDSWTCH%" %%a in ("Doom (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28148-defender-2000-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28149-defender-2000-jaguar-screenshot-game-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28150-defender-2000-jaguar-screenshot-original-defender.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28151-defender-2000-jaguar-screenshot-even-original-defender-gets.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28152-defender-2000-jaguar-screenshot-defender-plus-near-the-warp.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2878-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13444-defender-2000-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/2878-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/2878-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/2878.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"DoubleDragonVTheShadowFalls(World)"
:"DoubleDragonVTheShadowFalls"
for /f "%FLDSWTCH%" %%a in ("Double Dragon V - The Shadow Falls (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164577-double-dragon-v-the-shadow-falls-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164578-double-dragon-v-the-shadow-falls-jaguar-screenshot-main-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164579-double-dragon-v-the-shadow-falls-jaguar-screenshot-select.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164580-double-dragon-v-the-shadow-falls-jaguar-screenshot-the-location.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/164581-double-dragon-v-the-shadow-falls-jaguar-screenshot-it-is-billy.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3966-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/3966-1.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3966-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"DragonTheBruceLeeStory(World)"
:"DragonTheBruceLeeStory"
for /f "%FLDSWTCH%" %%a in ("Dragon - The Bruce Lee Story (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158464-dragon-the-bruce-lee-story-jaguar-screenshot-copyright-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158465-dragon-the-bruce-lee-story-jaguar-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158466-dragon-the-bruce-lee-story-jaguar-screenshot-high-scores.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158467-dragon-the-bruce-lee-story-jaguar-screenshot-select-you-game.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158468-dragon-the-bruce-lee-story-jaguar-screenshot-story-mode-level.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3967-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56499-dragon-the-bruce-lee-story-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3967-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/3967-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"EvolutionDinoDudes(World)"
:"EvolutionDinoDudes"
for /f "%FLDSWTCH%" %%a in ("Evolution - Dino Dudes (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158464-dragon-the-bruce-lee-story-jaguar-screenshot-copyright-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158465-dragon-the-bruce-lee-story-jaguar-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158466-dragon-the-bruce-lee-story-jaguar-screenshot-high-scores.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158467-dragon-the-bruce-lee-story-jaguar-screenshot-select-you-game.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158468-dragon-the-bruce-lee-story-jaguar-screenshot-story-mode-level.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3968-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56499-dragon-the-bruce-lee-story-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3968-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"FeverPitchSoccer(World)(EnFrDeEsIt)"
:"FeverPitchSoccer"
for /f "%FLDSWTCH%" %%a in ("Fever Pitch Soccer (World) (En,Fr,De,Es,It)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158464-dragon-the-bruce-lee-story-jaguar-screenshot-copyright-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158465-dragon-the-bruce-lee-story-jaguar-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158466-dragon-the-bruce-lee-story-jaguar-screenshot-high-scores.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158467-dragon-the-bruce-lee-story-jaguar-screenshot-select-you-game.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/158468-dragon-the-bruce-lee-story-jaguar-screenshot-story-mode-level.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3992-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/56499-dragon-the-bruce-lee-story-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3992-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"FightforLife(World)(Alt1)"
:"FightforLife"
for /f "%FLDSWTCH%" %%a in ("Fight for Life (World) (Alt 1)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28434-fight-for-life-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28435-fight-for-life-jaguar-screenshot-main-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28436-fight-for-life-jaguar-screenshot-fighter-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28437-fight-for-life-jaguar-screenshot-jenny-vs-pog.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28438-fight-for-life-jaguar-screenshot-kara-vs-ian.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3969-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13621-fight-for-life-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3969-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"FightforLife(World)"
:"FightforLife"
for /f "%FLDSWTCH%" %%a in ("Fight for Life (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28434-fight-for-life-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28435-fight-for-life-jaguar-screenshot-main-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28436-fight-for-life-jaguar-screenshot-fighter-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28437-fight-for-life-jaguar-screenshot-jenny-vs-pog.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28438-fight-for-life-jaguar-screenshot-kara-vs-ian.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3969-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13621-fight-for-life-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3969-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"FlashbackTheQuestforIdentity(World)(EnFr)"
:"FlashbackTheQuestforIdentity"
for /f "%FLDSWTCH%" %%a in ("Flashback - The Quest for Identity (World) (En,Fr)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27491-flashback-the-quest-for-identity-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27492-flashback-the-quest-for-identity-jaguar-screenshot-opening.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27493-flashback-the-quest-for-identity-jaguar-screenshot-first-level.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27494-flashback-the-quest-for-identity-jaguar-screenshot-ian-place.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27495-flashback-the-quest-for-identity-jaguar-screenshot-death-tower.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2846-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13168-flashback-the-quest-for-identity-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/2846.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"FlipOut!(World)"
:"FlipOut!"
for /f "%FLDSWTCH%" %%a in ("Flip Out! (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28621-flipout-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28622-flipout-jaguar-screenshot-map.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28623-flipout-jaguar-screenshot-cheese-world.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28624-flipout-jaguar-screenshot-easter-island.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28625-flipout-jaguar-screenshot-planet-pigskin.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3974-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13687-flipout-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3974-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"HoverStrike(World)"
:"HoverStrike"
for /f "%FLDSWTCH%" %%a in ("Hover Strike (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360936-hover-strike-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360937-hover-strike-jaguar-screenshot-mission-select.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360938-hover-strike-jaguar-screenshot-a-briefing-screen-shows-you.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360939-hover-strike-jaguar-screenshot-spinning-around-the-volcano.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360940-hover-strike-jaguar-screenshot-shooting-our-objective.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20271-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35420-hover-strike-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"HyperForce(World)"
:"HyperForce"
for /f "%FLDSWTCH%" %%a in ("Hyper Force (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20272-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"IWar(World)"
:"IWar"
for /f "%FLDSWTCH%" %%a in ("I-War (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28530-i-war-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28531-i-war-jaguar-screenshot-enemy-tank.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28532-i-war-jaguar-screenshot-mission-failed.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28533-i-war-jaguar-screenshot-a-datapod.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28534-i-war-jaguar-screenshot-shoot-switches-to-activate-portals.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13654-i-war-jaguar-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13655-i-war-jaguar-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"IronSoldier(World)(v104)"
:"IronSoldier"
for /f "%FLDSWTCH%" %%a in ("Iron Soldier (World) (v1.04)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27315-iron-soldier-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27316-iron-soldier-jaguar-screenshot-mission-selection.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27317-iron-soldier-jaguar-screenshot-mission-briefing.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27318-iron-soldier-jaguar-screenshot-weapons-configuration.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27319-iron-soldier-jaguar-screenshot-a-convoy-to-protect.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3975-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13133-iron-soldier-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3975-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"IronSoldier2(World)"
:"IronSoldier2"
for /f "%FLDSWTCH%" %%a in ("Iron Soldier 2 (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22392-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22392-2.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22392-3.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22392-4.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/22392-5.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/22392-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13859-iron-soldier-2-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/22392-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"KasumiNinja(World)"
:"KasumiNinja"
for /f "%FLDSWTCH%" %%a in ("Kasumi Ninja (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27624-kasumi-ninja-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27625-kasumi-ninja-jaguar-screenshot-main-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27626-kasumi-ninja-jaguar-screenshot-senzo-vs-danja.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27627-kasumi-ninja-jaguar-screenshot-habaki-vs-chagi.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27628-kasumi-ninja-jaguar-screenshot-chagi-vs-pakawa.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3976-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13250-kasumi-ninja-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3976-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"MissileCommand3D(World)"
:"MissileCommand3D"
for /f "%FLDSWTCH%" %%a in ("Missile Command 3D (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28334-missile-command-3d-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28335-missile-command-3d-jaguar-screenshot-virtual-mode-power-ups.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28336-missile-command-3d-jaguar-screenshot-classic-mode-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28337-missile-command-3d-jaguar-screenshot-the-lynx-is-one-of-several.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28338-missile-command-3d-jaguar-screenshot-classic-mode-gameplay.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20273-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13549-missile-command-3d-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"NBAJamTournamentEdition(World)"
:"NBAJamTournamentEdition"
for /f "%FLDSWTCH%" %%a in ("NBA Jam - Tournament Edition (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28071-nba-jam-tournament-edition-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28072-nba-jam-tournament-edition-jaguar-screenshot-publisher-developer.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28073-nba-jam-tournament-edition-jaguar-screenshot-insane-dunks-spice.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28074-nba-jam-tournament-edition-jaguar-screenshot-the-game-s-presentation.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28075-nba-jam-tournament-edition-jaguar-screenshot-player-graphics.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3977-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13440-nba-jam-tournament-edition-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3977-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/3977-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/3977.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"PinballFantasies(World)"
:"PinballFantasies"
for /f "%FLDSWTCH%" %%a in ("Pinball Fantasies (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29202-pinball-fantasies-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29203-pinball-fantasies-jaguar-screenshot-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29204-pinball-fantasies-jaguar-screenshot-party-land-mid-field.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29205-pinball-fantasies-jaguar-screenshot-party-land-bottom-area.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29206-pinball-fantasies-jaguar-screenshot-speed-devils-top-screen.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3978-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13769-pinball-fantasies-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3978-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/3978-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/3978.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"PitfallTheMayanAdventure(World)"
:"PitfallTheMayanAdventure"
for /f "%FLDSWTCH%" %%a in ("Pitfall - The Mayan Adventure (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/159231-pitfall-the-mayan-adventure-jaguar-screenshot-copyright-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/159232-pitfall-the-mayan-adventure-jaguar-screenshot-opening-story.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/159233-pitfall-the-mayan-adventure-jaguar-screenshot-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/159234-pitfall-the-mayan-adventure-jaguar-screenshot-crack-that-whip.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/159235-pitfall-the-mayan-adventure-jaguar-screenshot-kinda-makes.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3979-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/44170-pitfall-the-mayan-adventure-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3979-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"PowerDriveRally(World)"
:"PowerDriveRally"
for /f "%FLDSWTCH%" %%a in ("Power Drive Rally (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27722-powerdrive-rally-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27723-powerdrive-rally-jaguar-screenshot-a-bridge-over-nifty-water.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27724-powerdrive-rally-jaguar-screenshot-the-mini-cannot-compare.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27725-powerdrive-rally-jaguar-screenshot-the-start-finish-line.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27726-powerdrive-rally-jaguar-screenshot-fix-up-your-car-after-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14798-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13246-powerdrive-rally-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ProtectorSpecialEdition(World)"
:"ProtectorSpecialEdition"
for /f "%FLDSWTCH%" %%a in ("Protector - Special Edition (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27722-powerdrive-rally-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27723-powerdrive-rally-jaguar-screenshot-a-bridge-over-nifty-water.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27724-powerdrive-rally-jaguar-screenshot-the-mini-cannot-compare.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27725-powerdrive-rally-jaguar-screenshot-the-start-finish-line.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27726-powerdrive-rally-jaguar-screenshot-fix-up-your-car-after-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20274-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13246-powerdrive-rally-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"Raiden(World)"
:"Raiden"
for /f "%FLDSWTCH%" %%a in ("Raiden (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27303-raiden-jaguar-screenshot-the-atari-logo.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27304-raiden-jaguar-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27305-raiden-jaguar-screenshot-beginning-a-new-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27306-raiden-jaguar-screenshot-your-auxilary-weapon-in-action.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27307-raiden-jaguar-screenshot-an-end-of-level-boss.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3980-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13052-raiden-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3980-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/3980.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"Rayman(World)"
:"Rayman"
for /f "%FLDSWTCH%" %%a in ("Rayman (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27354-rayman-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27355-rayman-jaguar-screenshot-the-story-sorry-no-fmv-for-this-version.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27356-rayman-jaguar-screenshot-map-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27357-rayman-jaguar-screenshot-the-dream-forest.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27358-rayman-jaguar-screenshot-vines-help-rayman-out-of-tough-situations.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3982-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13135-rayman-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3982-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/3982.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"RuinerPinball(World)"
:"RuinerPinball"
for /f "%FLDSWTCH%" %%a in ("Ruiner Pinball (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29156-ruiner-pinball-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29157-ruiner-pinball-jaguar-screenshot-ruiner-bottom-left-area-and.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29158-ruiner-pinball-jaguar-screenshot-ruiner-right-side-midway-up.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29159-ruiner-pinball-jaguar-screenshot-ruiner-top-left-area.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29160-ruiner-pinball-jaguar-screenshot-ruiner-the-screen-zooms-out.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3983-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13767-ruiner-pinball-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3983-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"SensibleSoccerInternationalEdition(World)"
:"SensibleSoccerInternationalEdition"
for /f "%FLDSWTCH%" %%a in ("Sensible Soccer - International Edition (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/20275-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/20275-2.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/20275-3.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/20275-4.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/20275-5.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20275-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/20275-1.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/20275-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"Skyhammer(World)"
:"Skyhammer"
for /f "%FLDSWTCH%" %%a in ("Skyhammer (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380851-skyhammer-jaguar-screenshot-first-thing-you-see.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380852-skyhammer-jaguar-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380853-skyhammer-jaguar-screenshot-options-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380854-skyhammer-jaguar-screenshot-loading-screen.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380855-skyhammer-jaguar-screenshot-a-typical-view-out-of-your-cockpit.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20277-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/41465-skyhammer-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"SoccerKid(World)"
:"SoccerKid"
for /f "%FLDSWTCH%" %%a in ("Soccer Kid (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20278-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"SpaceWar2000(World)"
:"SpaceWar2000"
for /f "%FLDSWTCH%" %%a in ("Space War 2000 (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20279-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"SuperBurnout(World)"
:"SuperBurnout"
for /f "%FLDSWTCH%" %%a in ("Super Burnout (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28790-super-burnout-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28791-super-burnout-jaguar-screenshot-the-american-track.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28792-super-burnout-jaguar-screenshot-night-racing.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28793-super-burnout-jaguar-screenshot-brazil.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28794-super-burnout-jaguar-screenshot-blame-canada-for-this-lousy.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3984-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/289691-super-burnout-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3984-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"SuperCross3D(World)"
:"SuperCross3D"
for /f "%FLDSWTCH%" %%a in ("SuperCross 3D (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28566-supercross-3d-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28567-supercross-3d-jaguar-screenshot-practice-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28568-supercross-3d-jaguar-screenshot-tournament-map.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28569-supercross-3d-jaguar-screenshot-pre-race-setup.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/28570-supercross-3d-jaguar-screenshot-big-jump.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3985-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13641-supercross-3d-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3985-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"Syndicate(World)"
:"Syndicate"
for /f "%FLDSWTCH%" %%a in ("Syndicate (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360929-syndicate-jaguar-screenshot-the-jaguar-uses-the-pc-s-art-unlike.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360930-syndicate-jaguar-screenshot-full-zoom-out-zooming-is-unique.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360931-syndicate-jaguar-screenshot-full-zoom-in.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360932-syndicate-jaguar-screenshot-the-beginnings-of-a-standard-syndicate.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360933-syndicate-jaguar-screenshot-ka-blooey.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3986-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/41449-syndicate-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3986-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/3986.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"Tempest2000(World)"
:"Tempest2000"
for /f "%FLDSWTCH%" %%a in ("Tempest 2000 (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29292-tempest-2000-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29293-tempest-2000-jaguar-screenshot-credits.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29294-tempest-2000-jaguar-screenshot-main-menu.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29295-tempest-2000-jaguar-screenshot-classic-tempest-no-enhancements.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/29296-tempest-2000-jaguar-screenshot-tempest-plus-with-ai-droid.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3987-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13695-tempest-2000-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3987-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/3987.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"ThemePark(World)"
:"ThemePark"
for /f "%FLDSWTCH%" %%a in ("Theme Park (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360945-theme-park-jaguar-screenshot-game-options.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360946-theme-park-jaguar-screenshot-a-tutorial-guides-beginners-in.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360947-theme-park-jaguar-screenshot-a-quick-menu-assists-the-console.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360949-theme-park-jaguar-screenshot-support-and-info-screens-are.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360950-theme-park-jaguar-screenshot-easy-to-read-the-various-thoughts.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14796-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/35588-theme-park-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"TotalCarnage(World)"
:"TotalCarnage"
for /f "%FLDSWTCH%" %%a in ("Total Carnage (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20280-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/198050-total-carnage-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"TowersII(World)"
:"TowersII"
for /f "%FLDSWTCH%" %%a in ("Towers II (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/13355-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/198050-total-carnage-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"TrevorMcFurintheCrescentGalaxy(World)"
:"TrevorMcFurintheCrescentGalaxy"
for /f "%FLDSWTCH%" %%a in ("Trevor McFur in the Crescent Galaxy (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27505-trevor-mcfur-in-the-crescent-galaxy-jaguar-screenshot-trevor.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27506-trevor-mcfur-in-the-crescent-galaxy-jaguar-screenshot-title.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27507-trevor-mcfur-in-the-crescent-galaxy-jaguar-screenshot-an-introduction.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27508-trevor-mcfur-in-the-crescent-galaxy-jaguar-screenshot-beginning.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27509-trevor-mcfur-in-the-crescent-galaxy-jaguar-screenshot-some.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20281-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/130219-trevor-mcfur-in-the-crescent-galaxy-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"TroyAikmanNFLFootball(World)"
:"TroyAikmanNFLFootball"
for /f "%FLDSWTCH%" %%a in ("Troy Aikman NFL Football (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360953-troy-aikman-nfl-football-jaguar-screenshot-menu-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360954-troy-aikman-nfl-football-jaguar-screenshot-picking-a-play.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360957-troy-aikman-nfl-football-jaguar-screenshot-ready-for-the-snap.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360958-troy-aikman-nfl-football-jaguar-screenshot-x-marks-the-pass.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360955-troy-aikman-nfl-football-jaguar-screenshot-summary-of-the.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20282-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/141596-troy-aikman-nfl-football-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"UltraVortek(World)"
:"UltraVortek"
for /f "%FLDSWTCH%" %%a in ("Ultra Vortek (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27796-ultra-vortek-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27797-ultra-vortek-jaguar-screenshot-the-story.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27798-ultra-vortek-jaguar-screenshot-character-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27799-ultra-vortek-jaguar-screenshot-buzzsaw-vs-dreadloc.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27800-ultra-vortek-jaguar-screenshot-one-of-dreadloc-s-more-creative.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3988-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/289708-ultra-vortek-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3988-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"ValdIsereSkiingandSnowboarding(World)"
:"ValdIsereSkiingandSnowboarding"
for /f "%FLDSWTCH%" %%a in ("Val d'Isere Skiing and Snowboarding (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27435-val-d-isere-skiing-and-snowboarding-jaguar-screenshot-title.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27436-val-d-isere-skiing-and-snowboarding-jaguar-screenshot-publisher.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27437-val-d-isere-skiing-and-snowboarding-jaguar-screenshot-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27438-val-d-isere-skiing-and-snowboarding-jaguar-screenshot-select.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27439-val-d-isere-skiing-and-snowboarding-jaguar-screenshot-starting.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14800-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13164-val-d-isere-skiing-and-snowboarding-jaguar-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"WhiteMenCantJump(World)"
:"WhiteMenCantJump"
for /f "%FLDSWTCH%" %%a in ("White Men Can't Jump (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/232298-white-men-can-t-jump-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/232299-white-men-can-t-jump-jaguar-screenshot-selecting-your-team.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/232304-white-men-can-t-jump-jaguar-screenshot-the-loan-sharks-more.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/232301-white-men-can-t-jump-jaguar-screenshot-picking-which-team.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/232302-white-men-can-t-jump-jaguar-screenshot-the-urban-court.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3989-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/48497-white-men-can-t-jump-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3989-g.jpg") do SET BANNR=%%~a
set GTART=1
exit /b

:"Wolfenstein3D(World)"
:"Wolfenstein3D"
for /f "%FLDSWTCH%" %%a in ("Wolfenstein 3D (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27402-wolfenstein-3d-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27403-wolfenstein-3d-jaguar-screenshot-mission-briefing.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27404-wolfenstein-3d-jaguar-screenshot-beginning-a-new-game.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27405-wolfenstein-3d-jaguar-screenshot-in-trouble-now.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27406-wolfenstein-3d-jaguar-screenshot-found-some-food.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3990-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13128-wolfenstein-3d-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3990-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/3990-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/3990-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/3990.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"Worms(World)"
:"Worms"
for /f "%FLDSWTCH%" %%a in ("Worms (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380902-worms-jaguar-screenshot-team17-also-known-as-the-worms-guys.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380903-worms-jaguar-screenshot-main-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380904-worms-jaguar-screenshot-blowing-up-worms-at-the-north-pole.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380905-worms-jaguar-screenshot-explosions-across-the-alps.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/380906-worms-jaguar-screenshot-fighting-in-the-jungle-and-that-s.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20276-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"Zero5(World)"
:"Zero5"
for /f "%FLDSWTCH%" %%a in ("Zero 5 (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360959-zero-5-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360960-zero-5-jaguar-screenshot-options.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360961-zero-5-jaguar-screenshot-first-mission-briefing.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360962-zero-5-jaguar-screenshot-the-first-mission-has-you-fending.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/360963-zero-5-jaguar-screenshot-the-camera-constantly-shifts-to-offer.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/141594-zero-5-jaguar-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/141595-zero-5-jaguar-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"Zool2(World)"
:"Zool2"
for /f "%FLDSWTCH%" %%a in ("Zool 2 (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27716-zool-2-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27717-zool-2-jaguar-screenshot-character-selection.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27718-zool-2-jaguar-screenshot-that-bridge-collapses-behind-zool.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27719-zool-2-jaguar-screenshot-grab-walls-like-spider-man.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/27720-zool-2-jaguar-screenshot-some-walls-can-be-shot-apart.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2581-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/13242-zool-2-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/2581.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"Zoop!(World)"
:"Zoop!"
for /f "%FLDSWTCH%" %%a in ("Zoop! (World)")do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/159228-zoop-jaguar-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/159229-zoop-jaguar-screenshot-select-game-type-or-options.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/159230-zoop-jaguar-screenshot-select-starting-stage-and-difficulty.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/3991-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/42020-zoop-jaguar-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/3991-g.jpg") do SET BANNR=%%~a
