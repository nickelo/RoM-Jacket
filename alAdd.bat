for %%A in ("%NWCON%") do set CONSRN=%%~A
call "%GBC%\advLset.bat"
pushd "%GBC%\net\%XBMC%\%ADVL%\%NWCON%"
REM call "%GBC%\rndID.bat"
for /f "tokens=1,2,3,4,5 delims=-" %%a in ('"%GBC%\uuidgen.exe"') do set RNDVAR=%%~a%%~b%%~c%%~d%%~e
echo %RNDVAR% >"%GBC%\randnum.ini"

"%GBC%\fart.exe" "%NWCON%.xml.prt" [RNDNUM] %RNDVAR%
"%GBC%\fart.exe" "%NWCON%.xml.prt" [CONS] "%CONSRN%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [NWCON] "%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [BATCHLPTH] "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [RMPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [THMBPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [FANRTPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [CSTMPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [TRLPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\backdrops\%NWCON%.mp4"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [FLDR] "%GBG%\%GAM%\%CONS%\%NWCON%\%FLDR%.png"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [BCKD] "%GBG%\%GAM%\%CONS%\%NWCON%\%BCKD%.jpg"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [CONSPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
type "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWCON%.xml.prt">>"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
rename "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWCON%.xml.prt" "%NWCON%.xml.set"
popd

REM call "%GBC%\rndID.bat"
REM CALL :RNDGET
for /f "delims=" %%b in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%\%NWCON%"') do (
SET NWGAM=%%~b
call :rndID
CALL :INJALRMXML
)
type "%GBC%\net\%XBMC%\%ADVL%\roms.xml.End.set">>"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
goto :vidRom

:rndID
SET RNDVAR=
for /f "tokens=1,2,3,4,5 delims=-" %%a in ('"%GBC%\uuidgen.exe"') do set RNDVAR=%%~a%%~b%%~c%%~d%%~e
echo %RNDVAR% >"%GBC%\randnum.ini"
exit /b

:RNDGET
set urlNthL=1
set RNDVAR=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\randnum.ini" /L:%urlNthL%') do set RNDVAR=%%~a
popd

:INJALRMXML
copy /Y "%GBC%\net\%XBMC%\%ADVL%\roms.xml.set" "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWGAM%.xml.prt"
for /f "delims=" %%a in ('dir /b /a-d "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWGAM%.xml.*"') do CALL :ROMINJECTION
exit /b

:ROMINJECTION
pushd "%GBC%\net\%XBMC%\%ADVL%\%NWCON%"
"%GBC%\fart.exe" "*.xml.prt" [CSTMPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\"
"%GBC%\fart.exe" "*.xml.prt" [THMBPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\%FLDR%.jpg"
"%GBC%\fart.exe" "*.xml.prt" [RNDNUM] %RNDVAR%
"%GBC%\fart.exe" "*.xml.prt" [FANRTPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\%BCKD%.jpg"
"%GBC%\fart.exe" "*.xml.prt" [ROMNM] "%NWGAM%"
"%GBC%\fart.exe" "*.xml.prt" [ROMPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\%NWGAM%.bat"
type "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWGAM%.xml.prt">>"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
rename "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWGAM%.xml.prt" "%NWGAM%.xml.set"
popd
exit /b

:vidrom
set OMIN=
for /f "delims=" %%a in ('dir /b/a-d "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\backdrops\*.mp4"') do (
SET OMIN=%%~a
call :injvid
)
"%GBC%\fart.exe" "*.xml.prt" [TRLRPTH] --remove
exit /b

:injvid
"%GBC%\fart.exe" "*.xml.prt" [TRLRPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\backdrops\%OMIN%.mp4"
exit /b
