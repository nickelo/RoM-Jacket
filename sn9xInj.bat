if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "snes9x.conf" [DBLBUF] FALSE
"%GBC%\fart.exe" "snes9x.conf" [FLTYP] 0
"%GBC%\fart.exe" "snes9x.conf" [FLTYPH] 0
"%GBC%\fart.exe" "snes9x.conf" [DRAW] 1
"%GBC%\fart.exe" "snes9x.conf" [ASPC] 256
"%GBC%\fart.exe" "snes9x.conf" [SHDTOG] FALSE
"%GBC%\fart.exe" "snes9x.conf" [SHD3DPTH] --remove
"%GBC%\fart.exe" "snes9x.conf" [SHDOGPTH] --remove
"%GBC%\fart.exe" "snes9x.conf" [REZX] %DREZX%
"%GBC%\fart.exe" "snes9x.conf" [REZY] %DREZY%
"%GBC%\fart.exe" "snes9x.conf" [HERTZ] %HERTZ%
"%GBC%\fart.exe" "snes9x.conf" [VSYNC] FALSE
"%GBC%\fart.exe" "snes9x.conf" [FKFS] FALSE
"%GBC%\fart.exe" "snes9x.conf" [BILIN] FALSE
"%GBC%\fart.exe" "snes9x.conf" [REWB] 10
exit /b

:PRESETS
:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
"%GBC%\fart.exe" "snes9x.conf" [FKFS] FALSE
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\Winput.exe" "set HERTZ=$input" "Enter a Freqency in Hz" "%HERTZ%">"%GBC%\hertz.cmd"
if %ERRORLEVEL%==1 goto :SETHZD
call "%GBC%\hertz.cmd"
if "%HERTZ%"=="" SET HERTZ=60
"%GBC%\fart.exe" "snes9x.conf" [REZX] "%REZX%"
"%GBC%\fart.exe" "snes9x.conf" [REZY] "%REZY%"
"%GBC%\fart.exe" "snes9x.conf" [HERTZ] "%HERTZ%"
echo."FALSE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

"%GBC%\wbox.exe" "RJ_GUI" "Select a Display Driver" "DDraw;DirectX;OpenGL" /DB=2
if %errorlevel%==1 goto :DDraw
if %errorlevel%==2 goto :DirectX
if %errorlevel%==3 goto :OGL
goto :CANCEL

:DDraw
set SHDTYP=DD
"%GBC%\fart.exe" "snes9x.conf" [DRAW] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCT
:DirectX
set SHDTYP=DX
"%GBC%\fart.exe" "snes9x.conf" [DRAW] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCT
:OGL
set SHDTYP=OGL
"%GBC%\fart.exe" "snes9x.conf" [DRAW] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCT

:ASPCT
"%GBC%\wbox.exe" "RJ_GUI" "What aspect ratio would you prefer?" "8x7;4x3" /DB=1
if %ERRORLEVEL%==1 goto :FULLS
if %ERRORLEVEL%==2 goto :FILS
goto :CANCEL

:FULLS
"%GBC%\fart.exe" "snes9x.conf" [ASPC] 256 
echo."256">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DBLBUF

:FILS
"%GBC%\fart.exe" "snes9x.conf" [ASPC] 299
echo."299">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DBLBUF


:DBLBUF
"%GBC%\wbox.exe" "RJ_GUI" "Enable fullscreen buffering?" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :BUFON
if %errorlevel%==2 goto :BUFOFF
goto :CANCEL

:BUFOFF
"%GBC%\fart.exe" "snes9x.conf" [DBLBUF] FALSE
echo."FALSE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:BUFON
"%GBC%\fart.exe" "snes9x.conf" [DBLBUF] TRUE
echo."TRUE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER


:SHADER
del /q "%GBC%\shdrs.ini"
if "%SHDTYP%"=="DD" goto :SHDR0
"%GBC%\wbox.exe" "RJ_GUI" "####SHADERS####^^Shader: Select a shader file.^Snex9x: Use a snes9x builtin preset only.^None: Disable Shaders" "Shader;Builtin;None" /DB=3
if %ERRORLEVEL%==1 goto :SHDR%SHDTYP%
if %ERRORLEVEL%==2 goto :SHDR2
if %ERRORLEVEL%==3 goto :SHDR0
goto :CANCEL



:SHDRDX
set SRCHTRM=*.cg*
"%GBC%\fart.exe" "snes9x.conf" [SHDOGPTH] --remove
"%GBC%\fart.exe" "snes9x.conf" [SHDTOG] TRUE
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%SN9X%\Shaders\%SRCHTRM%"') do echo."%%~a">>"%GBC%\shdrs.ini"
"%GBC%\fart.exe" "%GBC%\shdrs.ini" "\"" --remove
echo.Select>>"%GBC%\shdrs.ini"
"%GBC%\Wselect.exe" "%GBC%\shdrs.ini" "Select a shader" "$item" > "%GBC%\shdrs.cmd"
for /f "delims=" %%a in ('type "%GBC%\shdrs.cmd"') do set SHDRVL=%%~a
if "%SHDRVL%"=="Select" goto :SELSHAD
"%GBC%\fart.exe" "snes9x.conf" [SHD3DPTH] "%GBE%\%EMUZ%\%SN9X%\Shaders\%SHDRVL%"
echo."TRUE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%GBE%\%EMUZ%\%SN9X%\Shaders\%SHDRVL%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHDR2

:SHDROGL
set SRCHTRM=*.shader
"%GBC%\fart.exe" "snes9x.conf" [SHD3DPTH] --remove
"%GBC%\fart.exe" "snes9x.conf" [SHDTOG] TRUE
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%SN9X%\Shaders\%SRCHTRM%"') do echo."%%~a">>"%GBC%\shdrs.ini"
"%GBC%\fart.exe" "%GBC%\shdrs.ini" "\"" --remove
echo.Select>>"%GBC%\shdrs.ini"
"%GBC%\Wselect.exe" "%GBC%\shdrs.ini" "Select a shader" "$item" > "%GBC%\shdrs.cmd"
for /f "delims=" %%a in ('type "%GBC%\shdrs.cmd"') do set SHDRVL=%%~a
if "%SHDRVL%"=="Select" goto :SELSHAD
"%GBC%\fart.exe" "snes9x.conf" [SHDOGPTH] "%GBE%\%EMUZ%\%SN9X%\Shaders\%SHDRVL%"
echo."TRUE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%GBE%\%EMUZ%\%SN9X%\Shaders\%SHDRVL%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHDR2

:SELSHAD
set SHDRLVL=
pushd "%GBC%"
for /f "delims=" %%a in ('Wfile.exe "SET SHDRLVL=" "%GBE%\%EMUZ%\%SN9X%\Shaders\*.*" "SELECT A Shader" /noquote') do %%a
popd
if "%SHDRLVL%"=="" goto :SHDR0
if "%SHDTYP%"=="DX" "%GBC%\fart.exe" [SHD3DPTH] "%SHDRLVL%"
if "%SHDTYP%"=="OGL	" "%GBC%\fart.exe" [SHDOGPTH] "%SHDRLVL%"
echo."TRUE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%GBE%\%EMUZ%\%SN9X%\Shaders\%SHDRVL%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHDR2

:SHDR0
"%GBC%\fart.exe" "snes9x.conf" [SHDTOG] FALSE
set SHDRLVL=None
echo."FALSE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "snes9x.conf" [SHD3DPTH] --remove
"%GBC%\fart.exe" "snes9x.conf" [SHDOGPTH] --remove
echo."%SHDRVL%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
:SHDR2
set SHDRBN=2
if "%SHDRLVL%"=="None" set SHDRBN=1
"%GBC%\wbox.exe" "RJ_GUI" "Enable a builtin shader" "Select;None" /DB=%SHDRBN%
if %errorlevel%==1 goto :SELFILT
if %errorlevel%==2 goto :NOFILT
goto :CANCEL

:SELFILT
del /q "%GBC%\filt.cmd"
del /q "%GBC%\filt.ini"
echo.None>>"%GBC%\filt.ini"
echo.hq2x>>"%GBC%\filt.ini"
echo.Forced 1X>>"%GBC%\filt.ini"
echo.Simple 2X>>"%GBC%\filt.ini"
echo.Scanlines>>"%GBC%\filt.ini"
echo.TV Mode>>"%GBC%\filt.ini"
echo.Blargg's NTSC (Composite)>>"%GBC%\filt.ini"
echo.Blargg's NTSC (S-Video)>>"%GBC%\filt.ini"
echo.Blargg's NTSC (RGB)>>"%GBC%\filt.ini"
echo.SuperEagle>>"%GBC%\filt.ini"
echo.Super2xSaI>>"%GBC%\filt.ini"
echo.2xSaI>>"%GBC%\filt.ini"
echo.hq2xS>>"%GBC%\filt.ini"
echo.hq2xBold>>"%GBC%\filt.ini"
echo.EPX A>>"%GBC%\filt.ini"
echo.EPX B>>"%GBC%\filt.ini"
echo.EPX C>>"%GBC%\filt.ini"
echo.Simple 3X>>"%GBC%\filt.ini"
echo.TV Mode 3X>>"%GBC%\filt.ini"
echo.Dot Matrix 3X>>"%GBC%\filt.ini"
echo.hq3x>>"%GBC%\filt.ini"
echo.hq3xS>>"%GBC%\filt.ini"
echo.hq3xBold>>"%GBC%\filt.ini"
echo.lq3xBold>>"%GBC%\filt.ini"
echo.EPX3>>"%GBC%\filt.ini"
echo.Simple 4X>>"%GBC%\filt.ini"
echo.hq4x>>"%GBC%\filt.ini"
echo.2xBRZ>>"%GBC%\filt.ini"
echo.3xBRZ>>"%GBC%\filt.ini"
echo.4xBRZ>>"%GBC%\filt.ini"
set FLTYP=None
set FILTHNUM=0
"%GBC%\Wselect.exe" "%GBC%\filt.ini" "Select a filter-type" "$item" > "%GBC%\filt.cmd"
for /f "delims=" %%a in ('type "%GBC%\filt.cmd"') do set FLTYP=%%~a
if "%FLTYP%"=="None" set FILTHNUM=0
if "%FLTYP%"=="Forced 1X" set FILTHNUM=1
if "%FLTYP%"=="Simple 2X" set FILTHNUM=2
if "%FLTYP%"=="Scanlines" set FILTHNUM=3
if "%FLTYP%"=="TV Mode" set FILTHNUM=4
if "%FLTYP%"=="Blargg's NTSC (Composite)" set FILTHNUM=5
if "%FLTYP%"=="Blargg's NTSC (S-Video)" set FILTHNUM=6
if "%FLTYP%"=="Blargg's NTSC (RGB)" set FILTHNUM=7
if "%FLTYP%"=="SuperEagle" set FILTHNUM=8
if "%FLTYP%"=="Super2xSaI" set FILTHNUM=9
if "%FLTYP%"=="2xSaI" set FILTHNUM=10
if "%FLTYP%"=="hq2x" set FILTHNUM=11
if "%FLTYP%"=="hq2xS" set FILTHNUM=12
if "%FLTYP%"=="hq2xBold" set FILTHNUM=13
if "%FLTYP%"=="EPX A" set FILTHNUM=14
if "%FLTYP%"=="EPX B" set FILTHNUM=15
if "%FLTYP%"=="EPX C" set FILTHNUM=16
if "%FLTYP%"=="Simple 3X" set FILTHNUM=17
if "%FLTYP%"=="TV Mode 3X" set FILTHNUM=18
if "%FLTYP%"=="Dot Matrix 3X" set FILTHNUM=19
if "%FLTYP%"=="hq3x" set FILTHNUM=20
if "%FLTYP%"=="hq3xS" set FILTHNUM=21
if "%FLTYP%"=="hq3xBold" set FILTHNUM=22
if "%FLTYP%"=="lq3xBold" set FILTHNUM=23
if "%FLTYP%"=="EPX3" set FILTHNUM=24
if "%FLTYP%"=="Simple 4X" set FILTHNUM=25
if "%FLTYP%"=="hq4x" set FILTHNUM=26
if "%FLTYP%"=="2xBRZ" set FILTHNUM=27
if "%FLTYP%"=="3xBRZ" set FILTHNUM=28
if "%FLTYP%"=="4xBRZ" set FILTHNUM=29
"%GBC%\fart.exe" "snes9x.conf" [FLTYP] "%FILTHNUM%"
echo."%FILTHNUM%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FLTH

:FLTH
del /q "%GBC%\filt.cmd"
del /q "%GBC%\filt.ini"
set FLTYP=None
set FILTNUM=0
echo.None>>"%GBC%\filt.ini"
echo.Forced 1X>>"%GBC%\filt.ini"
echo.Simple 2X>>"%GBC%\filt.ini"
echo.Scanlines>>"%GBC%\filt.ini"
echo.TV Mode>>"%GBC%\filt.ini"
echo.Blargg's NTSC (Composite)>>"%GBC%\filt.ini"
echo.Blargg's NTSC (S-Video)>>"%GBC%\filt.ini"
echo.Blargg's NTSC (RGB)>>"%GBC%\filt.ini"
echo.Simple 3X>>"%GBC%\filt.ini"
echo.Simple 4X>>"%GBC%\filt.ini"
echo.hq4x>>"%GBC%\filt.ini"
echo.2xBRZ>>"%GBC%\filt.ini"
echo.3xBRZ>>"%GBC%\filt.ini"
echo.4xBRZ>>"%GBC%\filt.ini"
"%GBC%\Wselect.exe" "%GBC%\filt.ini" "Select a Hirez-filter" "$item" > "%GBC%\filt.cmd"
for /f "delims=" %%a in ('type "%GBC%\filt.cmd"') do set FLTYP=%%~a
if "%FLTYP%"=="None" set FILTNUM=0
if "%FLTYP%"=="Simple 2X" set FILTNUM=2
if "%FLTYP%"=="Forced 1X" set FILTNUM=1
if "%FLTYP%"=="Scanlines" set FILTNUM=3
if "%FLTYP%"=="TV Mode" set FILTNUM=4
if "%FLTYP%"=="Blargg's NTSC (Composite)" set FILTNUM=5
if "%FLTYP%"=="Blargg's NTSC (S-Video)" set FILTNUM=6
if "%FLTYP%"=="Blargg's NTSC (RGB)" set FILTNUM=7
if "%FLTYP%"=="Simple 3X" set FILTNUM=17
if "%FLTYP%"=="Simple 4X" set FILTNUM=25
if "%FLTYP%"=="hq4x" set FILTNUM=26
if "%FLTYP%"=="2xBRZ" set FILTNUM=27
if "%FLTYP%"=="3xBRZ" set FILTNUM=28
if "%FLTYP%"=="4xBRZ" set FILTNUM=29
"%GBC%\fart.exe" "snes9x.conf" [FLTYPH] "%FILTNUM%"
echo."%FILTNUM%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INTERP

:NOFILT
"%GBC%\fart.exe" "snes9x.conf" [FLTYP] "0"
"%GBC%\fart.exe" "snes9x.conf" [FLTYPH] "0"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:INTERP
"%GBC%\wbox.exe" "RJ_GUI" "Enable Bilinear Filtering?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :INTON
if %ERRORLEVEL%==2 goto :NOINT
goto :CANCEL

:INTON
"%GBC%\fart.exe" "snes9x.conf" [BILIN] TRUE
echo."TRUE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:NOINT
"%GBC%\fart.exe" "snes9x.conf" [BILIN] FALSE
echo."FALSE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable V-Sync?" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :VSNCON
if %errorlevel%==2 goto :VSNCOFF
goto :CANCEL

:VSNCOFF
"%GBC%\fart.exe" "snes9x.conf" [VSYNC] "FALSE"
echo."FALSE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REW

:VSNCON
"%GBC%\fart.exe" "snes9x.conf" [VSYNC] "TRUE"
echo."TRUE">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REW

:REW
"%GBC%\wbox.exe" "RJ_GUI" "Set Rewind Buffer size" "10mb;50mb;100mb;500mb;None" /DB=5
if %errorlevel%==1 goto :10MB
if %errorlevel%==2 goto :50MB
if %errorlevel%==3 goto :100MB
if %errorlevel%==4 goto :500MB
if %errorlevel%==5 goto :NOBUF
goto :CANCEL

:10MB
"%GBC%\fart.exe" "snes9x.conf" [REWB] 10
echo."10">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SN9XCOMPL

:50MB
"%GBC%\fart.exe" "snes9x.conf" [REWB] 50
echo."50">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SN9XCOMPL

:100MB
"%GBC%\fart.exe" "snes9x.conf" [REWB] 100
echo."100">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SN9XCOMPL

:500MB
"%GBC%\fart.exe" "snes9x.conf" [REWB] 500
echo."500">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SN9XCOMPL

:NOBUF
"%GBC%\fart.exe" "snes9x.conf" [REWB] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SN9XCOMPL


:SN9XCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:CANCEL
set CANCELLED=1