if "%CSTCONS%"=="%SEGDC%" goto :SEGDC
if "%CSTCONS%"=="%ATMS%" goto :ATOM
if "%CSTCONS%"=="%NAOMI%" goto :NAOMI
goto :REZTST

:SEGDC
set DRMCB=
del /q "%GBC%\dctmp.ini"
if not exist "%GBE%\%EMUZ%\%DMUL%\roms\dc.zip" goto :CLEARBIOS
for /f "tokens=1,2 delims==" %%a in ('"%SEVENZIP%" l -slt "%GBE%\%EMUZ%\%DMUL%\roms\dc.zip"') do (
if "%%~a"=="Path " echo.%%~b>>"%GBC%\dctmp.ini"
if "%%~a"=="CRC " echo.%%~b>>"%GBC%\dctmp.ini"
)
"%GBC%\fart.exe" "%GBC%\dctmp.ini" " " --remove
for /f "delims=" %%a in ('type "%GBC%\dctmp.ini"') do (
set BIOSTYPE=%%~a
call :SETBIOS
)
goto :CLEARBIOS

:SETBIOS
if "%DRMCB%"=="3" goto :CLEARBIOS
if "%BIOSTYPE%"=="89F2B1A1" set DRMCB=3
if "%BIOSTYPE%"=="1_01d_01.bin" set DRMCB=3
if "%BIOSTYPE%"=="2186E0E5" set DRMCB=1
if "%BIOSTYPE%"=="1_004_01.bin" set DRMCB=1
if "%BIOSTYPE%"=="5454841F" set DRMCB=0
if "%BIOSTYPE%"=="1_011_01.bin" set DRMCB=0
if "%BIOSTYPE%"=="A2564FAD" set DRMCB=4
if "%BIOSTYPE%"=="1_01d_02.bin" set DRMCB=4
REM if "%BIOSTYPE%"=="786168F9" set DRMCB=5
REM if "%BIOSTYPE%"=="1_022_01.bin" set DRMCB=5
if "%BIOSTYPE%"=="1_01c_01.bin" set DRMCB=2
exit /b

:CLEARBIOS
if "%DRMCB%"=="" set DRMCB=3
del /q "%GBC%\dctmp.ini"
"%GBC%\fart.exe" "%GBC%\net\%LNCH%\%SEGDC%\Demul.ini" "[DRMCB]" "%DRMCB%"
if "%P1JOYTYPE%"=="JOY" call "%GBC%\segdcJoy1.bat">>"%GBC%\logs\segdcJoy1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\segdcJoy2.bat">>"%GBC%\logs\segdcJoy2.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\segdcKB1.bat">>"%GBC%\logs\segdcKB1.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\segdcKB2.bat">>"%GBC%\logs\segdcKB2.log"
goto :REZTST

:ATOM
if "%P1JOYTYPE%"=="JOY" call "%GBC%\atmsJoy1.bat">>"%GBC%\logs\atmsJoy1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\atmsJoy2.bat">>"%GBC%\logs\atmsJoy2.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\atmsKB1.bat">>"%GBC%\logs\atmsKB1.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\atmsKB2.bat">>"%GBC%\logs\atmsKB2.log"
goto :REZTST

:NAOMI
if "%P1JOYTYPE%"=="JOY" call "%GBC%\naomiJoy1.bat">>"%GBC%\logs\naomiJoy1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\naomiJoy2.bat">>"%GBC%\logs\naomiJoy2.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\naomiKb1.bat">>"%GBC%\logs\naomiKb1.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\naomiKb2.bat">>"%GBC%\logs\naomiKb2.log"
goto :REZTST

:REZTST
for /f "tokens=2 delims=@" %%a in ('"%GBC%\Qres.exe" /V/S') do set THERZ=%%~a
for %%a in ("%THERZ:~1, -4%") do set HERTZ=%%~a
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "%DMUL%.ini" [VIDM] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%DMUL%.ini" [GPUPLUG] "gpuDX10.dll"
echo."gpuDX10.dll">>"%GBC%\%CEMU%_%CSTCONS%.ini"

for /f "delims=" %%a in ('dir /b/a-d "gpuDXLegacy.ini" "gpuDXv3.ini"') do (
"%GBC%\fart.exe" "%%~a" [TRANZ] True
"%GBC%\fart.exe" "%%~a" [ASORT] False
"%GBC%\fart.exe" "%%~a" [MODT] True
"%GBC%\fart.exe" "%%~a" [FOGOFF] True
"%GBC%\fart.exe" "%%~a" [DYNVB] False
"%GBC%\fart.exe" "%%~a" [FILT] False
"%GBC%\fart.exe" "%%~a" [FREQ] "%HERTZ%"
)

echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

call "%GBC%\ratio.bat">>"%GBC%\logs\ratio.log"
for /f "tokens=1,2 delims=.," %%a in ('cscript //nologo "%GBC%\ratio.vbs" %DREZY% %DREZX%') do (
set LONG=%%~a
set CROP=%%~b
call :CROP
)
set BCROP=
if %RATIO% %RATOP% 7 set BCROP=1
if "%BCROP%"=="" SET ASPCR=2
if "%BCROP%"=="1" SET ASPCR=1
goto :ASPCG

:CROP
set RATOP=GEQ
if %LONG% GEQ 1 set RATOP=LEQ
for %%a in ("%CROP:~0,2%") do (
if "%%~a"=="" set /a CROP=%CROP%0
if %%~a GEQ 5 set /a CROP+=1
)
for %%a in ("%CROP:~0,1%") do set RATIO=%%~a
IF "%RATIO%"=="" set RATIO=0
exit /b

:ASPCG
"%GBC%\fart.exe" "gpuDX1*.ini" [AUTOROTATE] 0
"%GBC%\fart.exe" "gpuDX1*.ini" [ASPC] %ASPCR%
"%GBC%\fart.exe" "gpuDX1*.ini" [SCALE] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [ASORT] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [OMOD] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [TMOD] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [VSYNC] 0
"%GBC%\fart.exe" "gpuDX1*.ini" [NETSORT] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [MAXL] 32
"%GBC%\fart.exe" "gpu*.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "gpu*.ini" [REZY] %DREZY%
"%GBC%\fart.exe" "spuDemul.ini" [SNDBUF] 2048
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%ASPCR%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."32">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%DREZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%DREZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."2048">>"%GBC%\%CEMU%_%CSTCONS%.ini"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\Winput.exe" "set HERTZ=$input" "Enter a Freqency in Hz" "%HERTZ%">"%GBC%\hertz.cmd"
if %ERRORLEVEL%==1 goto :SETHZD
call "%GBC%\hertz.cmd"
if "%HERTZ%"=="" SET HERTZ=60
"%GBC%\fart.exe" "*.ini" [HERTZ] %HERTZ%
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:SHADER
echo SCANLINES>"%GBC%\dmulshader.ini"
echo FXAA>>"%GBC%\dmulshader.ini"
echo HDR-TV>>"%GBC%\dmulshader.ini"
echo CARTOON>>"%GBC%\dmulshader.ini"
echo RGB DOT(MICRO)>>"%GBC%\dmulshader.ini"
echo RGB DOT(TINY)>>"%GBC%\dmulshader.ini"
echo BLUR>>"%GBC%\dmulshader.ini"
"%GBC%\wbox.exe" "RJ_GUI" "Would you liek to enable a shader?^^2max" "Enable;OFF"
if %ERRORLEVEL%==1 goto :SHDR1
if %ERRORLEVEL%==2 goto :SHDR0
goto :SHADER

:SHDR1
"%GBC%\fart.exe" "*.ini" [PASS] 1
if "%SHADRF%" NEQ "" "%GBC%\fart.exe" "*.ini" [PASS] 1
if "%SHADRF%" NEQ "" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\wselect.exe" "%GBC%\dmulshader.ini" "Select a Shader" "set SHADRB=$item" > "%GBC%\shader.cmd"
if %errorlevel% == 0 goto :SHADER
call "%GBC%\shader.cmd"
if "%SHADRB%"=="" goto :SHDR0
"%GBC%\fart.exe" "*.ini" [SHADR] "%SHADRB%"
echo."%SHADRB%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\wbox.exe" "RJ_GUI" "Enable another shader?" "Enable;OFF"
if %ERRORLEVEL%==1 goto :SHDR2
if %ERRORLEVEL%==2 goto :SHDR0
goto :QUITOUT

:SHDR2
"%GBC%\wselect.exe" "%GBC%\dmulshader.ini" "Select a Shader" "set SHADRF=$item" > "%GBC%\shader.cmd"
if %errorlevel% == 0 goto :BLIT
call "%GBC%\shader.cmd"
if "%SHADRF%" NEQ "" "%GBC%\fart.exe" "*.ini" [PASS2] 1
"%GBC%\fart.exe" "*.ini" [PASS2] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "*.ini" [SHADV] "%SHADRF%"
echo."%SHADRF%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT

:SHDR0
"%GBC%\fart.exe" "*.ini" [PASS] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "*.ini" [PASS2] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT

:BLIT
if %DXV% LEQ 10 goto :BLITDX10
"%GBC%\wbox.exe" "RJ_GUI" "Select a Driver" "DX10;DX11" /DB=1
REM if %ERRORLEVEL%==1 goto :BLITLOW
REM if %ERRORLEVEL%==2 goto :BLITMID
if %ERRORLEVEL%==1 goto :BLITDX10
if %ERRORLEVEL%==2 goto :DXENA
goto :QUITOUT

REM :BLITMID
REM "%GBC%\fart.exe" "gpuDXv3.ini" [TRANZ] True
REM "%GBC%\fart.exe" "gpuDXv3.ini" [SORT] True
REM "%GBC%\fart.exe" "gpuDXv3.ini" [MODT] True
REM "%GBC%\fart.exe" "gpuDXv3.ini" [FOGOFF] False
REM "%GBC%\fart.exe" "gpuDXv3.ini" [DYNVB] False
REM "%GBC%\fart.exe" "gpuDXv3.ini" [FILT] True
REM "%GBC%\fart.exe" "gpuDXv3.ini" [REZX] %REZX%
REM "%GBC%\fart.exe" "gpuDXv3.ini" [REZY] %REZY%
REM "%GBC%\fart.exe" "gpuDXv3.ini" [FREQ] "%HERTZ%"
REM "%GBC%\fart.exe" "%DMUL%.ini" [GPUPLUG] "gpuDXv3.dll"

REM goto :REZL

REM :BLITLOW
REM "%GBC%\fart.exe" "gpuDXLegacy.ini" [TRANZ] False
REM "%GBC%\fart.exe" "gpuDXLegacy.ini" [SORT] False
REM "%GBC%\fart.exe" "gpuDXLegacy.ini" [MODT] True
REM "%GBC%\fart.exe" "gpuDXLegacy.ini" [FOGOFF] True
REM "%GBC%\fart.exe" "gpuDXLegacy.ini" [DYNVB] False
REM "%GBC%\fart.exe" "gpuDXLegacy.ini" [FILT] False
REM "%GBC%\fart.exe" "gpuDXLegacy.ini" [REZX] %REZX%
REM "%GBC%\fart.exe" "gpuDXLegacy.ini" [REZY] %REZY%
REM "%GBC%\fart.exe" "gpuDXLegacy.ini" [HERTZ] "%HERTZ%"
REM "%GBC%\fart.exe" "%DMUL%.ini" [GPUPLUG] "gpuDXLegacy.dll"

REM goto :REZL

:BLITDX10
"%GBC%\fart.exe" "%DMUL%.ini" [GPUPLUG] "gpuDX10.dll"
echo."gpuDX10.dll">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REZL

:DXENB
"%GBC%\fart.exe" "%DMUL%.ini" [GPUPLUG] "gpuDX11.dll"
echo."gpuDX11.dll">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MAXL

:MAXL
"%GBC%\wbox.exe" "RJ_GUI" "Set the Max Layers" "8;16;32;64" /DB=3 /BW=20
if %ERRORLEVEL%==1 goto :8L
if %ERRORLEVEL%==2 goto :16L
if %ERRORLEVEL%==3 goto :32L
if %ERRORLEVEL%==4 goto :64L
goto :QUITOUT

:8L
"%GBC%\fart.exe" "gpuDX1*.ini" [MAXL] 8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :NETSORT
:16L
"%GBC%\fart.exe" "gpuDX1*.ini" [MAXL] 16
echo."16">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :NETSORT
:32L
"%GBC%\fart.exe" "gpuDX1*.ini" [MAXL] 32
echo."32">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :NETSORT
:64L
"%GBC%\fart.exe" "gpuDX1*.ini" [MAXL] 64
echo."64">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :NETSORT

:NETSORT
"%GBC%\wbox.exe" "RJ_GUI" "Enable network sorting" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :NETON
if %ERRORLEVEL%==2 goto :NETOFF
goto :QUITOUT
:NETON
"%GBC%\fart.exe" "gpuDX1*.ini" [NETSORT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REZL
:NETOFF
"%GBC%\fart.exe" "gpuDX1*.ini" [NETSORT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REZL
:DXENA
"%GBC%\fart.exe" "gpuDX1*.ini" [AUTOROTATE] 0
"%GBC%\fart.exe" "gpuDX1*.ini" [SCALE] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [ASORT] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [OMOD] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [TMOD] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [VSYNC] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [NETSORT] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [MAXL] 32
"%GBC%\fart.exe" "%DMUL%.ini" [GPUPLUG] "gpuDX11.dll"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."32">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."gpuDX11.dll">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REZL

:REZL
"%GBC%\wbox.exe" "RJ_GUI" "Set the internal resolution" "1x;2x;3x;4x;5x;6x" /BW=25 /DB=1
if %ERRORLEVEL%==1 goto :NATIVE
if %ERRORLEVEL%==2 goto :2x
if %ERRORLEVEL%==3 goto :3x
if %ERRORLEVEL%==4 goto :4x
if %ERRORLEVEL%==5 goto :5x
if %ERRORLEVEL%==6 goto :6x
goto :QUITOUT

:NATIVE
"%GBC%\fart.exe" "gpuDX1*.ini" [SCALE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ROTATE
:2x
"%GBC%\fart.exe" "gpuDX1*.ini" [SCALE] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ROTATE
:3x
"%GBC%\fart.exe" "gpuDX1*.ini" [SCALE] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ROTATE
:4x
"%GBC%\fart.exe" "gpuDX1*.ini" [SCALE] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ROTATE
:5x
"%GBC%\fart.exe" "gpuDX1*.ini" [SCALE] 5
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ROTATE
:6x
"%GBC%\fart.exe" "gpuDX1*.ini" [SCALE] 6
echo."6">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ROTATE

:ROTATE
"%GBC%\wbox.exe" "RJ_GUI" "Autorotate?" "Enable;Disable;Set" /DB=1
if %ERRORLEVEL%==1 goto :AUTOR
if %ERRORLEVEL%==2 goto :NOROT
if %ERRORLEVEL%==3 goto :SETROT
goto :QUITOUT

:SETROT
"%GBC%\wbox.exe" "RJ_GUI" "Set the rotation" "0;90;180;270" /DB=1 /BW=20
if %ERRORLEVEL%==1 goto :NOAROT
if %ERRORLEVEL%==2 goto :90ROT
if %ERRORLEVEL%==3 goto :180ROT
if %ERRORLEVEL%==4 goto :270ROT
goto :QUITOUT

:NOROT
"%GBC%\fart.exe" "gpuDX1*.ini" [AUTOROTATE] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [ROT] 0
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASORT
:90ROT
"%GBC%\fart.exe" "gpuDX1*.ini" [AUTOROTATE] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [ROT] 90
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."90">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASORT
:180ROT
"%GBC%\fart.exe" "gpuDX1*.ini" [AUTOROTATE] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [ROT] 180
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."180">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASORT
:270ROT
"%GBC%\fart.exe" "gpuDX1*.ini" [AUTOROTATE] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [ROT] 270
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."270">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASORT

:AUTOR
"%GBC%\fart.exe" "gpuDX1*.ini" [AUTOROTATE] 0
"%GBC%\fart.exe" "gpuDX1*.ini" [ROT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASORT
:NOAROT
"%GBC%\fart.exe" "gpuDX1*.ini" [AUTOROTATE] 1
"%GBC%\fart.exe" "gpuDX1*.ini" [ROT] 0
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASORT

:ASORT
"%GBC%\wbox.exe" "RJ_GUI" "Enable Autosort?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :SORTON
if %ERRORLEVEL%==2 goto :NOSORT
goto :QUITOUT
:SORTON
"%GBC%\fart.exe" "gpuDX1*.ini" [ASORT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :OPAQUE
:NOSORT
"%GBC%\fart.exe" "gpuDX1*.ini" [ASORT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :OPAQUE

:OPAQUE
"%GBC%\wbox.exe" "RJ_GUI" "Enable Opaque Modifier" "Disable;Enable" /DB=2
if %ERRORLEVEL%==1 goto :PAQ
if %ERRORLEVEL%==2 goto :NOPAQ
goto :NOPAQ
:PAQ
"%GBC%\fart.exe" "gpuDX1*.ini" [OMOD] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TMOD
:NOPAQ
"%GBC%\fart.exe" "gpuDX1*.ini" [OMOD] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TMOD

:TMOD
"%GBC%\wbox.exe" "RJ_GUI" "Enable Translucence Modifier?" "Disable;Enable" /DB=2
if %ERRORLEVEL%==1 goto :TMODON
if %ERRORLEVEL%==2 goto :NOTMOD
goto :QUITOUT
:TMODON
"%GBC%\fart.exe" "gpuDX1*.ini" [TMOD] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCT
:NOTMOD
"%GBC%\fart.exe" "gpuDX1*.ini" [TMOD] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCT

:ASPCT
set DB=3
if "%DISPASPCT%"=="Standard 4x3" set DB=2
"%GBC%\wbox.exe" "RJ_GUI" "Set the Aspect Ratio" "Stretch;4x3;16x9" /DB=2
if %ERRORLEVEL%==1 goto :STRETCH
if %ERRORLEVEL%==2 goto :4x3
if %ERRORLEVEL%==3 goto :16x9
goto :QUITOUT

:STRETCH
"%GBC%\fart.exe" "gpuDX1*.ini" [ASPC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:4x3
"%GBC%\fart.exe" "gpuDX1*.ini" [ASPC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:16x9
"%GBC%\fart.exe" "gpuDX1*.ini" [ASPC] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :VSYNCON
if %ERRORLEVEL%==2 goto :VSYNCOFF
goto :QUITOUT

:VSYNCON
"%GBC%\fart.exe" "gpuDX1*.ini" [VSYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:VSYNCOFF
"%GBC%\fart.exe" "gpuDX1*.ini" [VSYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Select a video mode" "VGA;RGB;TV;RESV" /DB=1
if %ERRORLEVEL%==1 goto :VID0
if %ERRORLEVEL%==2 goto :VIDR
if %ERRORLEVEL%==3 goto :VIDV
if %ERRORLEVEL%==4 goto :RESV
goto :QUITOUT

:VID0
"%GBC%\fart.exe" "%DMUL%.ini" [VIDM] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SNDBUF
:VIDR
"%GBC%\fart.exe" "%DMUL%.ini" [VIDM] 512
echo."512">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SNDBUF
:VIDV
"%GBC%\fart.exe" "%DMUL%.ini" [VIDM] 768
echo."768">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SNDBUF
:RESV
"%GBC%\fart.exe" "%DMUL%.ini" [VIDM] 256
echo."256">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SNDBUF

:SNDBUF
"%GBC%\wbox.exe" "RJ_GUI" "Sound buffer size (in KB)" "1024;2048;4096;8192" /DB=2
if %ERRORLEVEL%==1 goto :SMSND
if %ERRORLEVEL%==2 goto :MEDSND
if %ERRORLEVEL%==3 goto :LGSND
if %ERRORLEVEL%==4 goto :BIGSND
goto :QUITOUT
:SMSND
"%GBC%\fart.exe" "spuDemul.ini" [SNDBUF] 1024
echo."1024">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOL
:MEDSND
"%GBC%\fart.exe" "spuDemul.ini" [SNDBUF] 2048
echo."2048">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOL
:LGSND
"%GBC%\fart.exe" "spuDemul.ini" [SNDBUF] 4096
echo."4096">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOL
:BIGSND
"%GBC%\fart.exe" "spuDemul.ini" [SNDBUF] 8192
echo."8192">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOL

:RESOL
"%GBC%\fart.exe" "*.ini" [REZX] %REZX%
"%GBC%\fart.exe" "*.ini" [REZY] %REZY%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:DMULCOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1