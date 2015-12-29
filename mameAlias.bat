set ARCDPROC=1
mkdir "SOURCE"
ATTRIB +H "SOURCE"
move /Y "*.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"

:aliasbegin
%BSTRT% "%WFINS%" "RJ_GUI" "%ARCD% Settings" /Stop /timeout:1
SET TIMOUT=
if "%INDVALL%"=="1" goto :clones
"%GBC%\wbox.exe" "RJ_GUI" "### MAME LIBRARY ###^-Complete-^The complete mame set (15,000+ ROMs) will be generated^-Uncloned-^Clones/duplicates/non-parent ROMs are pruned for Frontends" "Complete;Uncloned" /DB=1 /BW=150 %TIMOUT%
if %ERRORLEVEL%==1 goto :clones
if %ERRORLEVEL%==2 goto :noclones
goto :noclones

:clones
set CLONES=1
goto :procmame
:noclones
set CLONES=0
goto :procmame

:procmame
pushd "%GBC%\net\%LNCH%\%ARCD%"
if "%CEMU%"=="%MAME%" call "%GBC%\mameInj.bat">>"%GBC%\logs\%ARCD%mameInj.log"
"%GBC%\fart.exe" "Mame.ini" [EMUL] "%GBE%\%EMUZ%\%MAME%"
"%GBC%\fart.exe" "Mame.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
"%GBC%\fart.exe" "*.bat" [SOURCE] "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
if "%SHDRON%"=="0" "%GBC%\fart.exe" "Mame.ini" [SHD] "0"
if "%SHDRON%"=="1" call "%GBC%\injectshader.bat">>"%GBC%\logs\injectshader.log"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZX] %DREZX%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZY] %DREZY%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [MASK] %DREZY%
popd
%BSTRT% "%WBUSY%" "RJ_GUI" "Preparing %ARCD% directory." /marquee
if "%CLONES%"=="1" CALL "%GBC%\CLONES.bat"
if "%CLONES%"=="0" CALL "%GBC%\NOCLONES.bat"
%BSTRT% "%WFINS%" "RJ_GUI" "%ARCD% directory prepared" /Stop /timeout:1
:quitalias
