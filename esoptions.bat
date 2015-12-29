"%GBC%\wbox.exe" "RJ_GUI" "Enable Scraping" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :SCRAPEON
if %errorlevel%==2 goto :SCRAPEOFF
goto :QUITOUT
:SCRAPEON
"%GBC%\fart.exe" "%GBC%\net\%EMST%\es_settings.cfg" [SCRAPE] true
goto :TRANS
:SCRAPEOFF
"%GBC%\fart.exe" "%GBC%\net\%EMST%\es_settings.cfg" [SCRAPE] false
goto :TRANS

:TRANS
"%GBC%\wbox.exe" "RJ_GUI" "Transition Style" "Slide;Fade" /DB=1
if %errorlevel%==1 goto :SLIDE
if %errorlevel%==2 goto :FADE
goto :QUITOUT

:SLIDE
"%GBC%\fart.exe" "%GBC%\net\%EMST%\es_settings.cfg" [TRANS] slide
goto :QUITOUT
:FADE
"%GBC%\fart.exe" "%GBC%\net\%EMST%\es_settings.cfg" [TRANS] fade
goto :QUITOUT
:QUITOUT