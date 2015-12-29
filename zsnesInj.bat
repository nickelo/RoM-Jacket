if "%HERTZ%"=="100" "%GBC%\fart.exe" "zsnes.bat" [1] kp
if "%HERTZ%"=="120" "%GBC%\fart.exe" "zsnes.bat" [1] ks
if "%P1JOYTYPE%"=="KB" call "%GBC%\zsnesKB1.bat">>"%GBC%\logs\zsnesKB1.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\zsnesKB2.bat">>"%GBC%\logs\zsnesKB2.log"
if "%P1JOYTYPE%"=="JOY" call "%GBC%\zsnesJoy1.bat">>"%GBC%\logs\zsnesJoy1.log"
if "%P1JOYTYPE%"=="JOY" call "%GBC%\zsnesJoy2.bat">>"%GBC%\logs\zsnesJoy2.log"
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "zsnes.bat" [GFXDRV] False
"%GBC%\fart.exe" "zsnes.bat" [FAST] False
"%GBC%\fart.exe" "zsnes.bat" [FASTA] True
"%GBC%\fart.exe" "zsnes.bat" [ATOM] False
"%GBC%\fart.exe" "zsnes.bat" [BUF] 1
"%GBC%\fart.exe" "zsnes.bat" [FRAMESK] 0
"%GBC%\fart.exe" "zsnes.bat" [ANIS] 0
"%GBC%\fart.exe" "zsnes.bat" [TEXS] 0
"%GBC%\fart.exe" "zsnes.bat" [DEPOST] 0
"%GBC%\fart.exe" "zsnes.bat" [INTERN] 0
"%GBC%\fart.exe" "zsnes.bat" [LOWLAT] 0
"%GBC%\fart.exe" "zsnes.bat" [POST] Off
exit /b
:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
:GFXDRV