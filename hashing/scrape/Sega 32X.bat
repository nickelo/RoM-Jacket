goto :"%ROMFNM%"
exit /b


:"AfterBurnerCompleteAfterBurner(JapanUSA)"
:"AfterBurnerCompleteAfterBurner"
:"AfterBurnerCompleteAfterBurner"
for /f "%FLDSWTCH%" %%a in ("After Burner Complete ~ After Burner (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4912-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/4912-1.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4912-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"AmazingSpiderManTheWebofFire(USA)"
:"AmazingSpiderManTheWebofFire"
:"AmazingSpiderManTheWebofFire"
for /f "%FLDSWTCH%" %%a in ("Amazing Spider-Man, The - Web of Fire (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83855-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-sega.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83856-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-again.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83857-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-marvel.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83858-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83859-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-main.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4925-2.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/38643-the-amazing-spider-man-web-of-fire-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4925-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"BCRacers(USA)"
:"BCRacers"
:"BCRacers"
for /f "%FLDSWTCH%" %%a in ("BC Racers (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35793-bc-racers-sega-32x-screenshot-the-32x-version-lacks-the-animated.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35794-bc-racers-sega-32x-screenshot-character-selection.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35795-bc-racers-sega-32x-screenshot-the-32x-version-s-graphics-are.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35796-bc-racers-sega-32x-screenshot-night-rider.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35797-bc-racers-sega-32x-screenshot-the-desert-track.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4913-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14463-bc-racers-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4913.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"Blackthorne(USA)"
:"Blackthorne"
:"Blackthorne"
for /f "%FLDSWTCH%" %%a in ("Blackthorne (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35390-blackthorne-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35391-blackthorne-sega-32x-screenshot-have-a-conversation-with-the.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35392-blackthorne-sega-32x-screenshot-hiding-in-the-shadows.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35393-blackthorne-sega-32x-screenshot-animated-introduction.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35394-blackthorne-sega-32x-screenshot-i-might-just-be-the-chosen.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9074-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14454-blackthorne-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"BrutalUnleashedAbovetheClaw(USA)"
:"BrutalUnleashedAbovetheClaw"
:"BrutalUnleashedAbovetheClaw"
for /f "%FLDSWTCH%" %%a in ("Brutal Unleashed - Above the Claw (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/456672-brutal-above-the-claw-sega-32x-screenshot-sega-logo.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/456673-brutal-above-the-claw-sega-32x-screenshot-first-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/456674-brutal-above-the-claw-sega-32x-screenshot-second-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555504-brutal-above-the-claw-sega-32x-screenshot-a-character-shown.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/456675-brutal-above-the-claw-sega-32x-screenshot-main-menu.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5295-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/31581-brutal-above-the-claw-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ChaotixKnucklesChaotix(JapanUSA)"
:"ChaotixKnucklesChaotix"
:"ChaotixKnucklesChaotix"
for /f "%FLDSWTCH%" %%a in ("Chaotix ~ Knuckles' Chaotix (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/2290-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32523-knuckles-chaotix-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32524-knuckles-chaotix-sega-32x-screenshot-vector-and-bomb.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32525-knuckles-chaotix-sega-32x-screenshot-mighty-and-knuckles.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32526-knuckles-chaotix-sega-32x-screenshot-knuckles-and-charmy.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2290-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15649-knuckles-chaotix-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"CyberBrawlCosmicCarnage(JapanUSA)"
:"CyberBrawlCosmicCarnage"
:"CyberBrawlCosmicCarnage"
for /f "%FLDSWTCH%" %%a in ("Cyber Brawl ~ Cosmic Carnage (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4914-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33230-cosmic-carnage-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33231-cosmic-carnage-sega-32x-screenshot-the-story.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33232-cosmic-carnage-sega-32x-screenshot-player-select.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33233-cosmic-carnage-sega-32x-screenshot-cyclic-vs-talmac.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4914-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16222-cosmic-carnage-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"Doom(JapanUSA)"
:"Doom"
:"Doom"
for /f "%FLDSWTCH%" %%a in ("Doom (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4917-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33230-cosmic-carnage-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33231-cosmic-carnage-sega-32x-screenshot-the-story.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33232-cosmic-carnage-sega-32x-screenshot-player-select.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33233-cosmic-carnage-sega-32x-screenshot-cyclic-vs-talmac.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4917-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16222-cosmic-carnage-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/4917-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4917-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4917-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4917.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"GolfMagazine36GreatHolesStarringFredCouples(Japan"
:"GolfMagazine36GreatHolesStarringFredCouples"
:"GolfMagazine36GreatHolesStarringFredCouples"
for /f "%FLDSWTCH%" %%a in ("Golf Magazine 36 Great Holes Starring Fred Couples (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555487-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/463953-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555488-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/463954-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/463955-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4911-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/162554-golf-magazine-presents-36-great-holes-starring-fred-couples-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"Kolibri(USAEurope)"
:"Kolibri"
:"Kolibri"
for /f "%FLDSWTCH%" %%a in ("Kolibri (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/2609-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/2609-2.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32435-kolibri-sega-32x-screenshot-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153518-kolibri-sega-32x-screenshot-main-menu.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32436-kolibri-sega-32x-screenshot-it-s-kolibri.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2609-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15568-kolibri-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"MetalHead(JapanUSA)(EnJa)"
:"MetalHead"
:"MetalHead"
for /f "%FLDSWTCH%" %%a in ("Metal Head (Japan, USA) (En,Ja)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33315-metal-head-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33316-metal-head-sega-32x-screenshot-your-head.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33317-metal-head-sega-32x-screenshot-introduction-the-game-features.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33318-metal-head-sega-32x-screenshot-this-guy-gives-you-mission-briefings.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33319-metal-head-sega-32x-screenshot-targeting-an-enemy-bot.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4918-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16366-metal-head-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"MortalKombatII(JapanUSA)"
:"MortalKombatII"
:"MortalKombatII"
for /f "%FLDSWTCH%" %%a in ("Mortal Kombat II (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31872-mortal-kombat-ii-sega-32x-screenshot-introduction.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31873-mortal-kombat-ii-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31874-mortal-kombat-ii-sega-32x-screenshot-reptile-s-bio.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31875-mortal-kombat-ii-sega-32x-screenshot-rayden-trips-reptile.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31876-mortal-kombat-ii-sega-32x-screenshot-scorpion-vs-scorpion.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4919-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15077-mortal-kombat-ii-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/4919-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4919-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4919-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4919.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"MotocrossChampionship(USA)"
:"MotocrossChampionship"
:"MotocrossChampionship"
for /f "%FLDSWTCH%" %%a in ("Motocross Championship (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33052-motocross-championship-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33053-motocross-championship-sega-32x-screenshot-at-the-starting.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33054-motocross-championship-sega-32x-screenshot-tight-turn.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33055-motocross-championship-sega-32x-screenshot-eww-mud.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33056-motocross-championship-sega-32x-screenshot-races-get-fairly.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9076-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16087-motocross-championship-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"NBAJamTournamentEdition(World)"
:"NBAJamTournamentEdition"
:"NBAJamTournamentEdition"
for /f "%FLDSWTCH%" %%a in ("NBA Jam - Tournament Edition (World)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555517-nba-jam-tournament-edition-sega-32x-screenshot-akklaim-iguana.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/474030-nba-jam-tournament-edition-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/474031-nba-jam-tournament-edition-sega-32x-screenshot-main-menu.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/474032-nba-jam-tournament-edition-sega-32x-screenshot-selecting-a.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/474033-nba-jam-tournament-edition-sega-32x-screenshot-vs-screen.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9077-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/196934-nba-jam-tournament-edition-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/9077-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/9077.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"NFLQuarterbackClub(World)"
:"NFLQuarterbackClub"
:"NFLQuarterbackClub"
for /f "%FLDSWTCH%" %%a in ("NFL Quarterback Club (World)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555527-nfl-quarterback-club-sega-32x-screenshot-copyright-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555528-nfl-quarterback-club-sega-32x-screenshot-qb-intro.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495623-nfl-quarterback-club-sega-32x-screenshot-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495624-nfl-quarterback-club-sega-32x-screenshot-pick-between-play.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495625-nfl-quarterback-club-sega-32x-screenshot-play-main-menu.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14262-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/208542-nfl-quarterback-club-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ParasquadZaxxonsMotherbase2000(JapanUSA)"
:"ParasquadZaxxonsMotherbase2000"
:"ParasquadZaxxonsMotherbase2000"
for /f "%FLDSWTCH%" %%a in ("Parasquad ~ Zaxxon's Motherbase 2000 (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33860-zaxxon-s-motherbase-2000-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33861-zaxxon-s-motherbase-2000-sega-32x-screenshot-stage-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33862-zaxxon-s-motherbase-2000-sega-32x-screenshot-first-boss.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33863-zaxxon-s-motherbase-2000-sega-32x-screenshot-stage-2-with-falling.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33864-zaxxon-s-motherbase-2000-sega-32x-screenshot-stage-3-i-ve-hijacked.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9083-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16594-zaxxon-s-motherbase-2000-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"PitfallTheMayanAdventure(USA)"
:"PitfallTheMayanAdventure"
:"PitfallTheMayanAdventure"
for /f "%FLDSWTCH%" %%a in ("Pitfall - The Mayan Adventure (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/9079-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/154786-pitfall-the-mayan-adventure-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/472891-pitfall-the-mayan-adventure-sega-32x-screenshot-intro-harry.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/472892-pitfall-the-mayan-adventure-sega-32x-screenshot-some-instructions.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/472893-pitfall-the-mayan-adventure-sega-32x-screenshot-sand-pits.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9079-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"PrimalRage(USAEurope)"
:"PrimalRage"
:"PrimalRage"
for /f "%FLDSWTCH%" %%a in ("Primal Rage (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/119524-primal-rage-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/119522-primal-rage-sega-32x-screenshot-options-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/119523-primal-rage-sega-32x-screenshot-select-your-dino-fighter.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4922-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/98390-primal-rage-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/4922-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4922.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"RBIBaseball95(USA)"
:"RBIBaseball95"
:"RBIBaseball95"
for /f "%FLDSWTCH%" %%a in ("RBI Baseball '95 (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495520-rbi-baseball-95-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495521-rbi-baseball-95-sega-32x-screenshot-main-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555537-rbi-baseball-95-sega-32x-screenshot-team-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555538-rbi-baseball-95-sega-32x-screenshot-vs-screen.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555539-rbi-baseball-95-sega-32x-screenshot-pitch.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9080-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/9080-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ShadowSquadronStellarAssault(USAEurope)"
:"ShadowSquadronStellarAssault"
:"ShadowSquadronStellarAssault"
for /f "%FLDSWTCH%" %%a in ("Shadow Squadron ~ Stellar Assault (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32180-shadow-squadron-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32181-shadow-squadron-sega-32x-screenshot-demo-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32182-shadow-squadron-sega-32x-screenshot-fighter-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32183-shadow-squadron-sega-32x-screenshot-asteroids.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32184-shadow-squadron-sega-32x-screenshot-decent-explosions.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15383-shadow-squadron-sega-32x-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/85850-shadow-squadron-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"SoulstarX(USA)(Proto)"
:"SoulstarX"
:"SoulstarX"
for /f "%FLDSWTCH%" %%a in ("Soulstar X (USA) (Proto)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32180-shadow-squadron-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32181-shadow-squadron-sega-32x-screenshot-demo-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32182-shadow-squadron-sega-32x-screenshot-fighter-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32183-shadow-squadron-sega-32x-screenshot-asteroids.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32184-shadow-squadron-sega-32x-screenshot-decent-explosions.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15383-shadow-squadron-sega-32x-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/85850-shadow-squadron-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"SpaceHarrier(JapanUSA)"
:"SpaceHarrier"
:"SpaceHarrier"
for /f "%FLDSWTCH%" %%a in ("Space Harrier (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/117-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33586-space-harrier-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33587-space-harrier-sega-32x-screenshot-stage-1-moot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33588-space-harrier-sega-32x-screenshot-first-level-boss.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33589-space-harrier-sega-32x-screenshot-enemy-harriers.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/117-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14467-space-harrier-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/117-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/117.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"StarTrekStarfleetAcademyStarshipBridgeSimulator(USA)"
:"StarTrekStarfleetAcademyStarshipBridgeSimulator"
:"StarTrekStarfleetAcademyStarshipBridgeSimulator"
for /f "%FLDSWTCH%" %%a in ("Star Trek Starfleet Academy - Starship Bridge Simulator (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184622-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184623-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184624-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184625-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184626-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5970-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/69205-star-trek-starfleet-academy-starship-bridge-simulator-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/5970-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"StarWarsArcade(USA)"
:"StarWarsArcade"
:"StarWarsArcade"
for /f "%FLDSWTCH%" %%a in ("Star Wars Arcade (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4926-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31310-star-wars-arcade-sega-32x-screenshot-introduction.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31311-star-wars-arcade-sega-32x-screenshot-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31312-star-wars-arcade-sega-32x-screenshot-the-story.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31313-star-wars-arcade-sega-32x-screenshot-x-wing-info.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4926-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/98396-star-wars-arcade-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"TMek(USAEurope)"
:"TMek"
:"TMek"
for /f "%FLDSWTCH%" %%a in ("T-Mek (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35759-t-mek-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35761-t-mek-sega-32x-screenshot-introduction.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35767-t-mek-sega-32x-screenshot-the-first-level-the-desert.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35769-t-mek-sega-32x-screenshot-up-close-with-your-foe.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35772-t-mek-sega-32x-screenshot-taking-damage.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14459-t-mek-sega-32x-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14460-t-mek-sega-32x-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"Tempo(JapanUSA)"
:"Tempo"
:"Tempo"
for /f "%FLDSWTCH%" %%a in ("Tempo (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4927-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34008-tempo-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34009-tempo-sega-32x-screenshot-crazy-animated-intro.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34010-tempo-sega-32x-screenshot-the-circus.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34011-tempo-sega-32x-screenshot-all-the-levels-are-painfully-bright.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4927-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16654-tempo-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ToughmanContest(USAEurope)"
:"ToughmanContest"
:"ToughmanContest"
for /f "%FLDSWTCH%" %%a in ("Toughman Contest (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34930-toughman-contest-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34933-toughman-contest-sega-32x-screenshot-choose-a-fighter.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34938-toughman-contest-sega-32x-screenshot-south-of-the-border-brawl.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34939-toughman-contest-sega-32x-screenshot-those-lions-freak-me-out.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34940-toughman-contest-sega-32x-screenshot-peek-a-boo.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9082-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17144-toughman-contest-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"VirtuaFighter(JapanUSA)"
:"VirtuaFighter"
:"VirtuaFighter"
for /f "%FLDSWTCH%" %%a in ("Virtua Fighter (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4928-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35653-virtua-fighter-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35654-virtua-fighter-sega-32x-screenshot-opening-fights.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35655-virtua-fighter-sega-32x-screenshot-player-selectification.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35656-virtua-fighter-sega-32x-screenshot-jacky-vs-jacky.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4928-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17493-virtua-fighter-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4928-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4928.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"VirtuaHamster(USA)(Proto)"
:"VirtuaHamster"
:"VirtuaHamster"
for /f "%FLDSWTCH%" %%a in ("Virtua Hamster (USA) (Proto)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35653-virtua-fighter-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35654-virtua-fighter-sega-32x-screenshot-opening-fights.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35655-virtua-fighter-sega-32x-screenshot-player-selectification.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35656-virtua-fighter-sega-32x-screenshot-jacky-vs-jacky.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35657-virtua-fighter-sega-32x-screenshot-jeffry-throws-jacky.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20518-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17493-virtua-fighter-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"VirtuaRacingDeluxe(USA)"
:"VirtuaRacingDeluxe"
:"VirtuaRacingDeluxe"
for /f "%FLDSWTCH%" %%a in ("Virtua Racing Deluxe (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4929-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32643-virtua-racing-deluxe-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32644-virtua-racing-deluxe-sega-32x-screenshot-opening-demo.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32645-virtua-racing-deluxe-sega-32x-screenshot-main-menu.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32646-virtua-racing-deluxe-sega-32x-screenshot-pit-stop.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4929-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15687-virtua-racing-deluxe-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"WorldSeriesBaseballStarringDeionSanders(USA)"
:"WorldSeriesBaseballStarringDeionSanders"
:"WorldSeriesBaseballStarringDeionSanders"
for /f "%FLDSWTCH%" %%a in ("World Series Baseball Starring Deion Sanders (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35420-world-series-baseball-starring-deion-sanders-sega-32x-screenshot.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35421-world-series-baseball-starring-deion-sanders-sega-32x-screenshot.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35422-world-series-baseball-starring-deion-sanders-sega-32x-screenshot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35423-world-series-baseball-starring-deion-sanders-sega-32x-screenshot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20521-1.png") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17372-world-series-baseball-starring-deion-sanders-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"WWFRaw(World)"
:"WWFRaw"
:"WWFRaw"
for /f "%FLDSWTCH%" %%a in ("WWF Raw (World)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35424-wwf-raw-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35425-wwf-raw-sega-32x-screenshot-yokozuna-apparently-lost-100-lbs.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35426-wwf-raw-sega-32x-screenshot-undertaker-vs-1-2-3-kid.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/624840-wwf-raw-sega-32x-screenshot-menu.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/624842-wwf-raw-sega-32x-screenshot-character-portrait.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17378-wwf-raw-sega-32x-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17379-wwf-raw-sega-32x-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"WWFWrestleManiaTheArcadeGame(USA)"
:"WWFWrestleManiaTheArcadeGame"
:"WWFWrestleManiaTheArcadeGame"
for /f "%FLDSWTCH%" %%a in ("WWF WrestleMania - The Arcade Game (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34809-wwf-wrestlemania-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34810-wwf-wrestlemania-sega-32x-screenshot-wrestler-bio.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34811-wwf-wrestlemania-sega-32x-screenshot-razor-ramon-vs-bret-hart.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34812-wwf-wrestlemania-sega-32x-screenshot-2-on-one-that-s-not-fair.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34813-wwf-wrestlemania-sega-32x-screenshot-underneath-yokozuna-is.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14263-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17130-wwf-wrestlemania-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/14263.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"XMen(USA)(Proto)"
:"XMen"
:"XMen"
for /f "%FLDSWTCH%" %%a in ("X-Men (USA) (Proto)") do SET ROMRNM=%%~a
set GTART=1
exit /b

:"AfterBurnerCompleteAfterBurner(JapanUSA)"
:"AfterBurnerCompleteAfterBurner"
:"AfterBurnerCompleteAfterBurner"
for /f "%FLDSWTCH%" %%a in ("After Burner Complete ~ After Burner (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4912-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/4912-1.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4912-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"AmazingSpiderManTheWebofFire(USA)"
:"AmazingSpiderManTheWebofFire"
:"AmazingSpiderManTheWebofFire"
for /f "%FLDSWTCH%" %%a in ("Amazing Spider-Man, The - Web of Fire (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83855-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-sega.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83856-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-again.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83857-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-marvel.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83858-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-the.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/83859-the-amazing-spider-man-web-of-fire-sega-32x-screenshot-main.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4925-2.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/38643-the-amazing-spider-man-web-of-fire-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4925-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"BCRacers(USA)"
:"BCRacers"
:"BCRacers"
for /f "%FLDSWTCH%" %%a in ("BC Racers (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35793-bc-racers-sega-32x-screenshot-the-32x-version-lacks-the-animated.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35794-bc-racers-sega-32x-screenshot-character-selection.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35795-bc-racers-sega-32x-screenshot-the-32x-version-s-graphics-are.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35796-bc-racers-sega-32x-screenshot-night-rider.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35797-bc-racers-sega-32x-screenshot-the-desert-track.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4913-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14463-bc-racers-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4913.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"Blackthorne(USA)"
:"Blackthorne"
:"Blackthorne"
for /f "%FLDSWTCH%" %%a in ("Blackthorne (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35390-blackthorne-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35391-blackthorne-sega-32x-screenshot-have-a-conversation-with-the.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35392-blackthorne-sega-32x-screenshot-hiding-in-the-shadows.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35393-blackthorne-sega-32x-screenshot-animated-introduction.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35394-blackthorne-sega-32x-screenshot-i-might-just-be-the-chosen.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9074-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14454-blackthorne-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"BrutalUnleashedAbovetheClaw(USA)"
:"BrutalUnleashedAbovetheClaw"
:"BrutalUnleashedAbovetheClaw"
for /f "%FLDSWTCH%" %%a in ("Brutal Unleashed - Above the Claw (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/456672-brutal-above-the-claw-sega-32x-screenshot-sega-logo.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/456673-brutal-above-the-claw-sega-32x-screenshot-first-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/456674-brutal-above-the-claw-sega-32x-screenshot-second-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555504-brutal-above-the-claw-sega-32x-screenshot-a-character-shown.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/456675-brutal-above-the-claw-sega-32x-screenshot-main-menu.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5295-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/31581-brutal-above-the-claw-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ChaotixKnucklesChaotix(JapanUSA)"
:"ChaotixKnucklesChaotix"
:"ChaotixKnucklesChaotix"
for /f "%FLDSWTCH%" %%a in ("Chaotix ~ Knuckles' Chaotix (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/2290-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32523-knuckles-chaotix-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32524-knuckles-chaotix-sega-32x-screenshot-vector-and-bomb.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32525-knuckles-chaotix-sega-32x-screenshot-mighty-and-knuckles.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32526-knuckles-chaotix-sega-32x-screenshot-knuckles-and-charmy.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2290-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15649-knuckles-chaotix-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"CyberBrawlCosmicCarnage(JapanUSA)"
:"CyberBrawlCosmicCarnage"
:"CyberBrawlCosmicCarnage"
for /f "%FLDSWTCH%" %%a in ("Cyber Brawl ~ Cosmic Carnage (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4914-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33230-cosmic-carnage-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33231-cosmic-carnage-sega-32x-screenshot-the-story.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33232-cosmic-carnage-sega-32x-screenshot-player-select.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33233-cosmic-carnage-sega-32x-screenshot-cyclic-vs-talmac.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4914-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16222-cosmic-carnage-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"Doom(JapanUSA)"
:"Doom"
:"Doom"
for /f "%FLDSWTCH%" %%a in ("Doom (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4917-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33230-cosmic-carnage-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33231-cosmic-carnage-sega-32x-screenshot-the-story.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33232-cosmic-carnage-sega-32x-screenshot-player-select.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33233-cosmic-carnage-sega-32x-screenshot-cyclic-vs-talmac.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4917-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16222-cosmic-carnage-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/4917-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4917-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4917-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4917.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"GolfMagazine36GreatHolesStarringFredCouples(Japan"
:"GolfMagazine36GreatHolesStarringFredCouples"
:"GolfMagazine36GreatHolesStarringFredCouples"
for /f "%FLDSWTCH%" %%a in ("Golf Magazine 36 Great Holes Starring Fred Couples (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555487-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/463953-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555488-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/463954-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/463955-golf-magazine-presents-36-great-holes-starring-fred-couples.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4911-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/162554-golf-magazine-presents-36-great-holes-starring-fred-couples-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"Kolibri(USAEurope)"
:"Kolibri"
:"Kolibri"
for /f "%FLDSWTCH%" %%a in ("Kolibri (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/2609-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/2609-2.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32435-kolibri-sega-32x-screenshot-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/153518-kolibri-sega-32x-screenshot-main-menu.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32436-kolibri-sega-32x-screenshot-it-s-kolibri.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/2609-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15568-kolibri-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"MetalHead(JapanUSA)(EnJa)"
:"MetalHead"
:"MetalHead"
for /f "%FLDSWTCH%" %%a in ("Metal Head (Japan, USA) (En,Ja)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33315-metal-head-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33316-metal-head-sega-32x-screenshot-your-head.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33317-metal-head-sega-32x-screenshot-introduction-the-game-features.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33318-metal-head-sega-32x-screenshot-this-guy-gives-you-mission-briefings.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33319-metal-head-sega-32x-screenshot-targeting-an-enemy-bot.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4918-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16366-metal-head-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"MortalKombatII(JapanUSA)"
:"MortalKombatII"
:"MortalKombatII"
for /f "%FLDSWTCH%" %%a in ("Mortal Kombat II (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31872-mortal-kombat-ii-sega-32x-screenshot-introduction.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31873-mortal-kombat-ii-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31874-mortal-kombat-ii-sega-32x-screenshot-reptile-s-bio.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31875-mortal-kombat-ii-sega-32x-screenshot-rayden-trips-reptile.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31876-mortal-kombat-ii-sega-32x-screenshot-scorpion-vs-scorpion.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4919-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15077-mortal-kombat-ii-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/4919-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4919-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4919-2.jpg") do SET FAN2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4919.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"MotocrossChampionship(USA)"
:"MotocrossChampionship"
:"MotocrossChampionship"
for /f "%FLDSWTCH%" %%a in ("Motocross Championship (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33052-motocross-championship-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33053-motocross-championship-sega-32x-screenshot-at-the-starting.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33054-motocross-championship-sega-32x-screenshot-tight-turn.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33055-motocross-championship-sega-32x-screenshot-eww-mud.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33056-motocross-championship-sega-32x-screenshot-races-get-fairly.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9076-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16087-motocross-championship-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"NBAJamTournamentEdition(World)"
:"NBAJamTournamentEdition"
:"NBAJamTournamentEdition"
for /f "%FLDSWTCH%" %%a in ("NBA Jam - Tournament Edition (World)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555517-nba-jam-tournament-edition-sega-32x-screenshot-akklaim-iguana.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/474030-nba-jam-tournament-edition-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/474031-nba-jam-tournament-edition-sega-32x-screenshot-main-menu.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/474032-nba-jam-tournament-edition-sega-32x-screenshot-selecting-a.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/474033-nba-jam-tournament-edition-sega-32x-screenshot-vs-screen.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9077-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/196934-nba-jam-tournament-edition-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/9077-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/9077.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"NFLQuarterbackClub(World)"
:"NFLQuarterbackClub"
:"NFLQuarterbackClub"
for /f "%FLDSWTCH%" %%a in ("NFL Quarterback Club (World)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555527-nfl-quarterback-club-sega-32x-screenshot-copyright-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555528-nfl-quarterback-club-sega-32x-screenshot-qb-intro.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495623-nfl-quarterback-club-sega-32x-screenshot-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495624-nfl-quarterback-club-sega-32x-screenshot-pick-between-play.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495625-nfl-quarterback-club-sega-32x-screenshot-play-main-menu.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14262-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/208542-nfl-quarterback-club-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ParasquadZaxxonsMotherbase2000(JapanUSA)"
:"ParasquadZaxxonsMotherbase2000"
:"ParasquadZaxxonsMotherbase2000"
for /f "%FLDSWTCH%" %%a in ("Parasquad ~ Zaxxon's Motherbase 2000 (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33860-zaxxon-s-motherbase-2000-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33861-zaxxon-s-motherbase-2000-sega-32x-screenshot-stage-1.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33862-zaxxon-s-motherbase-2000-sega-32x-screenshot-first-boss.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33863-zaxxon-s-motherbase-2000-sega-32x-screenshot-stage-2-with-falling.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33864-zaxxon-s-motherbase-2000-sega-32x-screenshot-stage-3-i-ve-hijacked.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9083-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16594-zaxxon-s-motherbase-2000-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"PitfallTheMayanAdventure(USA)"
:"PitfallTheMayanAdventure"
:"PitfallTheMayanAdventure"
for /f "%FLDSWTCH%" %%a in ("Pitfall - The Mayan Adventure (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/9079-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/154786-pitfall-the-mayan-adventure-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/472891-pitfall-the-mayan-adventure-sega-32x-screenshot-intro-harry.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/472892-pitfall-the-mayan-adventure-sega-32x-screenshot-some-instructions.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/472893-pitfall-the-mayan-adventure-sega-32x-screenshot-sand-pits.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9079-1.jpg") do SET B1ART=%%~a
set GTART=1
exit /b

:"PrimalRage(USAEurope)"
:"PrimalRage"
:"PrimalRage"
for /f "%FLDSWTCH%" %%a in ("Primal Rage (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/119524-primal-rage-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/119522-primal-rage-sega-32x-screenshot-options-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/119523-primal-rage-sega-32x-screenshot-select-your-dino-fighter.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4922-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/98390-primal-rage-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/graphical/4922-g.jpg") do SET BANNR=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4922.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"RBIBaseball95(USA)"
:"RBIBaseball95"
:"RBIBaseball95"
for /f "%FLDSWTCH%" %%a in ("RBI Baseball '95 (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495520-rbi-baseball-95-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/495521-rbi-baseball-95-sega-32x-screenshot-main-menu.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555537-rbi-baseball-95-sega-32x-screenshot-team-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555538-rbi-baseball-95-sega-32x-screenshot-vs-screen.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/555539-rbi-baseball-95-sega-32x-screenshot-pitch.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9080-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/back/9080-1.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ShadowSquadronStellarAssault(USAEurope)"
:"ShadowSquadronStellarAssault"
:"ShadowSquadronStellarAssault"
for /f "%FLDSWTCH%" %%a in ("Shadow Squadron ~ Stellar Assault (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32180-shadow-squadron-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32181-shadow-squadron-sega-32x-screenshot-demo-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32182-shadow-squadron-sega-32x-screenshot-fighter-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32183-shadow-squadron-sega-32x-screenshot-asteroids.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32184-shadow-squadron-sega-32x-screenshot-decent-explosions.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15383-shadow-squadron-sega-32x-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/85850-shadow-squadron-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"SoulstarX(USA)(Proto)"
:"SoulstarX"
:"SoulstarX"
for /f "%FLDSWTCH%" %%a in ("Soulstar X (USA) (Proto)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32180-shadow-squadron-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32181-shadow-squadron-sega-32x-screenshot-demo-mode.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32182-shadow-squadron-sega-32x-screenshot-fighter-selection.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32183-shadow-squadron-sega-32x-screenshot-asteroids.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32184-shadow-squadron-sega-32x-screenshot-decent-explosions.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15383-shadow-squadron-sega-32x-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/85850-shadow-squadron-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"SpaceHarrier(JapanUSA)"
:"SpaceHarrier"
:"SpaceHarrier"
for /f "%FLDSWTCH%" %%a in ("Space Harrier (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/117-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33586-space-harrier-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33587-space-harrier-sega-32x-screenshot-stage-1-moot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33588-space-harrier-sega-32x-screenshot-first-level-boss.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/33589-space-harrier-sega-32x-screenshot-enemy-harriers.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/117-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14467-space-harrier-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/117-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/117.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"StarTrekStarfleetAcademyStarshipBridgeSimulator(USA)"
:"StarTrekStarfleetAcademyStarshipBridgeSimulator"
:"StarTrekStarfleetAcademyStarshipBridgeSimulator"
for /f "%FLDSWTCH%" %%a in ("Star Trek Starfleet Academy - Starship Bridge Simulator (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184622-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184623-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184624-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184625-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/184626-star-trek-starfleet-academy-starship-bridge-simulator-sega.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/5970-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/69205-star-trek-starfleet-academy-starship-bridge-simulator-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/5970-1.jpg") do SET FAN1ART=%%~a
set GTART=1
exit /b

:"StarWarsArcade(USA)"
:"StarWarsArcade"
:"StarWarsArcade"
for /f "%FLDSWTCH%" %%a in ("Star Wars Arcade (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4926-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31310-star-wars-arcade-sega-32x-screenshot-introduction.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31311-star-wars-arcade-sega-32x-screenshot-title-screen.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31312-star-wars-arcade-sega-32x-screenshot-the-story.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/31313-star-wars-arcade-sega-32x-screenshot-x-wing-info.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4926-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/98396-star-wars-arcade-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"TMek(USAEurope)"
:"TMek"
:"TMek"
for /f "%FLDSWTCH%" %%a in ("T-Mek (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35759-t-mek-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35761-t-mek-sega-32x-screenshot-introduction.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35767-t-mek-sega-32x-screenshot-the-first-level-the-desert.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35769-t-mek-sega-32x-screenshot-up-close-with-your-foe.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35772-t-mek-sega-32x-screenshot-taking-damage.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14459-t-mek-sega-32x-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/14460-t-mek-sega-32x-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"Tempo(JapanUSA)"
:"Tempo"
:"Tempo"
for /f "%FLDSWTCH%" %%a in ("Tempo (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4927-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34008-tempo-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34009-tempo-sega-32x-screenshot-crazy-animated-intro.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34010-tempo-sega-32x-screenshot-the-circus.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34011-tempo-sega-32x-screenshot-all-the-levels-are-painfully-bright.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4927-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/16654-tempo-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"ToughmanContest(USAEurope)"
:"ToughmanContest"
:"ToughmanContest"
for /f "%FLDSWTCH%" %%a in ("Toughman Contest (USA, Europe)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34930-toughman-contest-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34933-toughman-contest-sega-32x-screenshot-choose-a-fighter.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34938-toughman-contest-sega-32x-screenshot-south-of-the-border-brawl.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34939-toughman-contest-sega-32x-screenshot-those-lions-freak-me-out.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34940-toughman-contest-sega-32x-screenshot-peek-a-boo.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/9082-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17144-toughman-contest-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"VirtuaFighter(JapanUSA)"
:"VirtuaFighter"
:"VirtuaFighter"
for /f "%FLDSWTCH%" %%a in ("Virtua Fighter (Japan, USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4928-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35653-virtua-fighter-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35654-virtua-fighter-sega-32x-screenshot-opening-fights.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35655-virtua-fighter-sega-32x-screenshot-player-selectification.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35656-virtua-fighter-sega-32x-screenshot-jacky-vs-jacky.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4928-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17493-virtua-fighter-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/fanart/original/4928-1.jpg") do SET FAN1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/4928.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"VirtuaHamster(USA)(Proto)"
:"VirtuaHamster"
:"VirtuaHamster"
for /f "%FLDSWTCH%" %%a in ("Virtua Hamster (USA) (Proto)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35653-virtua-fighter-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35654-virtua-fighter-sega-32x-screenshot-opening-fights.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35655-virtua-fighter-sega-32x-screenshot-player-selectification.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35656-virtua-fighter-sega-32x-screenshot-jacky-vs-jacky.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35657-virtua-fighter-sega-32x-screenshot-jeffry-throws-jacky.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20518-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17493-virtua-fighter-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"VirtuaRacingDeluxe(USA)"
:"VirtuaRacingDeluxe"
:"VirtuaRacingDeluxe"
for /f "%FLDSWTCH%" %%a in ("Virtua Racing Deluxe (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/screenshots/4929-1.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32643-virtua-racing-deluxe-sega-32x-screenshot-title-screen.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32644-virtua-racing-deluxe-sega-32x-screenshot-opening-demo.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32645-virtua-racing-deluxe-sega-32x-screenshot-main-menu.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/32646-virtua-racing-deluxe-sega-32x-screenshot-pit-stop.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/4929-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/15687-virtua-racing-deluxe-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"WorldSeriesBaseballStarringDeionSanders(USA)"
:"WorldSeriesBaseballStarringDeionSanders"
:"WorldSeriesBaseballStarringDeionSanders"
for /f "%FLDSWTCH%" %%a in ("World Series Baseball Starring Deion Sanders (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35420-world-series-baseball-starring-deion-sanders-sega-32x-screenshot.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35421-world-series-baseball-starring-deion-sanders-sega-32x-screenshot.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35422-world-series-baseball-starring-deion-sanders-sega-32x-screenshot.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35423-world-series-baseball-starring-deion-sanders-sega-32x-screenshot.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/20521-1.png") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17372-world-series-baseball-starring-deion-sanders-sega-32x-front-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"WWFRaw(World)"
:"WWFRaw"
:"WWFRaw"
for /f "%FLDSWTCH%" %%a in ("WWF Raw (World)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35424-wwf-raw-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35425-wwf-raw-sega-32x-screenshot-yokozuna-apparently-lost-100-lbs.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/35426-wwf-raw-sega-32x-screenshot-undertaker-vs-1-2-3-kid.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/624840-wwf-raw-sega-32x-screenshot-menu.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/624842-wwf-raw-sega-32x-screenshot-character-portrait.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17378-wwf-raw-sega-32x-front-cover.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17379-wwf-raw-sega-32x-back-cover.jpg") do SET B2ART=%%~a
set GTART=1
exit /b

:"WWFWrestleManiaTheArcadeGame(USA)"
:"WWFWrestleManiaTheArcadeGame"
:"WWFWrestleManiaTheArcadeGame"
for /f "%FLDSWTCH%" %%a in ("WWF WrestleMania - The Arcade Game (USA)") do SET ROMRNM=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34809-wwf-wrestlemania-sega-32x-screenshot-title-screen.jpg") do SET SNAP1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34810-wwf-wrestlemania-sega-32x-screenshot-wrestler-bio.jpg") do SET SNAP2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34811-wwf-wrestlemania-sega-32x-screenshot-razor-ramon-vs-bret-hart.jpg") do SET SNAP3ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34812-wwf-wrestlemania-sega-32x-screenshot-2-on-one-that-s-not-fair.jpg") do SET SNAP4ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/shots/l/34813-wwf-wrestlemania-sega-32x-screenshot-underneath-yokozuna-is.jpg") do SET SNAP5ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/boxart/original/front/14263-1.jpg") do SET B1ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://www.mobygames.com/images/covers/l/17130-wwf-wrestlemania-sega-32x-front-cover.jpg") do SET B2ART=%%~a
for /f "%ARTSWTCH%" %%a in ("http://thegamesdb.net/banners/clearlogo/14263.png") do SET LOG1ART=%%~a
set GTART=1
exit /b

:"XMen(USA)(Proto)"
:"XMen"
:"XMen"
for /f "%FLDSWTCH%" %%a in ("X-Men (USA) (Proto)") do SET ROMRNM=%%~a
