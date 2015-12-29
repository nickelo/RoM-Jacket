"%GBC%\fart.exe" "INTERNAL1_DEFAULT.cmd" [PAD1CFG] "%PAD1%"
"%GBC%\fart.exe" "INTERNAL2_DEFAULT.cmd" [PAD2CFG] "%PAD2%"
"%GBC%\fart.exe" "DEFAULT.cmd" [PADTYPE] "4,4,1,1,4,4,1,1"
"%GBC%\fart.exe" "DEFAULT.cmd" [PAD1CFG] "%PAD1%"
"%GBC%\fart.exe" "DEFAULT.cmd" [PAD2CFG] "%PAD2%"
"%GBC%\fart.exe" "DEFAULT.cmd" [PAD3CFG] "%PAD3%"
"%GBC%\fart.exe" "DEFAULT.cmd" [PAD4CFG] "%PAD4%"
"%GBC%\fart.exe" "DEFAULT.cmd" [PAD5CFG] "%PAD5%"
"%GBC%\fart.exe" "DEFAULT.cmd" [PAD6CFG] "%PAD6%"
"%GBC%\fart.exe" "DEFAULT.cmd" [PAD7CFG] "%PAD7%"
"%GBC%\fart.exe" "DEFAULT.cmd" [PAD8CFG] "%PAD8%"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [EMUL] "%GBE%\%EMUZ%\%EPSXE%"
SET SPU=PeopsDSound
SET SPUD=spuPeopsDSound.dll
SET GPU=PeteOpenGL2
SET GPUD=gpuPeteOpenGL2.dll
set MULTI=0
if "%DTON%"=="1" call :DTON
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "INTERNAL1_DEFAULT.cmd" [MULTI1] "0"
"%GBC%\fart.exe" "INTERNAL2_DEFAULT.cmd" [MULTI2] "0"
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI1] "0"
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI2] "0"
"%GBC%\fart.exe" "DEFAULT.cmd" [SPU] "%SPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [SPUD] "%SPUD%"
"%GBC%\fart.exe" "DEFAULT.cmd" [GPU] "%GPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [GPUD] "%GPUD%"

"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANL] "0x0"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANLVL] "0x0"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [REZX] "%DREZX%"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [REZY] "%DREZY%"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [MDEC] "0x1"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [WINSIZE] "39322400"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [HRTEX] "0x0"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [FSBLUR] "0x1"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [GPUKEYS] "2A2A2A2A2A2A2A2A00"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [TEXFILT] "0x1"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [FRAMETEXTYPE] "0x2"

"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FRAMEUP] "0x1"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [RATIO] "0x0"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [RENDERMODE] "0x0"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDR] "0x1"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [SHADER] --remove
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDRLVL] "0x1"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSFIX] "0x0"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [WINSIZE] "39322400"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSFIX] "1"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDR] "0x0"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [HRESX] "0x1"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [HRESY] "0x1"
exit /b

:DTON
call "%GBC%\dtest.bat">>"%GBC%\logs\dtest.log"
set /a DRVNUM+=65
REG ADD "HKEY_CURRENT_USER\Software\epsxe\config" /f /v "CdromLetter" /t REG_SZ /d "%DRVNUM%"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [REZX] %REZX%
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [REZY] %REZY%

:GPU
"%GBC%\wbox.exe" "RJ_GUI" "Select a GPU type" "OpenGL;D3D;Soft;AmiDog;BladeSoft;PeopsOGL" /DB=1
if %ERRORLEVEL%==1 goto :OPENGL
if %ERRORLEVEL%==2 goto :D3D
if %ERRORLEVEL%==3 goto :SOFT
if %ERRORLEVEL%==4 goto :AMID
if %ERRORLEVEL%==5 goto :BLADESOFT
if %ERRORLEVEL%==6 goto :PEOPS
goto :QUITOUT

:PEOPS
SET GPU=PeopsOpenGL
SET GPUD=gpuPeopsOpenGL.dll
"%GBC%\fart.exe" "DEFAULT.cmd" [GPU] "%GPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [GPUD] "%GPUD%"
goto :SCANL

:OPENGL
SET GPU=PeteOpenGL2
SET GPUD=gpuPeteOpenGL2.dll
"%GBC%\fart.exe" "DEFAULT.cmd" [GPU] "%GPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [GPUD] "%GPUD%"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [EMUL] "%GBE%\%EMUZ%\%EPSXE%"
goto :SCANL

:D3D
SET GPU=PeteD3D
SET GPUD=gpuPeteD3D.dll
"%GBC%\fart.exe" "DEFAULT.cmd" [GPU] "%GPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [GPUD] "%GPUD%"
goto :SCANL

:SOFT
SET GPU=PeteSoft
SET GPUD=gpuPeteSoft.dll
"%GBC%\fart.exe" "DEFAULT.cmd" [GPU] "%GPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [GPUD] "%GPUD%"
goto :SCANL

:AMID
SET GPU=AmiDog
SET GPUD=gpuadgpu.dll
"%GBC%\fart.exe" "DEFAULT.cmd" [GPU] "%GPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [GPUD] "%GPUD%"
goto :AMIMODE

:BLADESOFT
SET GPU=BladeSoft
SET GPUD=gpuBladeSoft.dll
"%GBC%\fart.exe" "DEFAULT.cmd" [GPU] "%GPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [GPUD] "%GPUD%"
goto :BLDMODE

:SCANL
"%GBC%\wbox.exe" "RJ_GUI" "Enable Scanlines?" "Disable;Low;Mid;High" /DB=1
if %errorlevel%==1 goto :NOSCAN
if %errorlevel%==2 goto :LOWSCAN
if %errorlevel%==3 goto :MIDSCAN
if %errorlevel%==4 goto :HISCAN
goto :QUITOUT

:NOSCAN
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANL] "0x0"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANLVL] "0x0"
goto :MDEC

:LOWSCAN
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANL] "0x1"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANLVL] "0x20"
goto :MDEC

:MIDSCAN
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANL] "0x1"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANLVL] "0x80"
goto :MDEC

:HISCAN
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANL] "0x1"
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [SCANLVL] "0xff"
goto :MDEC

:MDEC
"%GBC%\wbox.exe" "RJ_GUI" "Enable MDEC Filter" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :MDECON
if %errorlevel%==2 goto :MDECOFF
goto :QUITOUT

:MDECON
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [MDEC] "0x1"
goto :TEXFILT

:MDECOFF
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [MDEC] "0x0"
goto :TEXFILT

:TEXFILT
"%GBC%\wbox.exe" "RJ_GUI" "Texture Filtering Type" "Standard;Extended;STD-Sprite0;EXT-Sprite0;STD-Smooth;EXT-Smooth" /DB=2
if %errorlevel%==1 goto :NOTXF
if %errorlevel%==2 goto :STDTEX
if %errorlevel%==3 goto :EXTTEX
if %errorlevel%==4 goto :STDSP0
if %errorlevel%==5 goto :EXTSP0
if %errorlevel%==6 goto :STDSMT
if %errorlevel%==7 goto :EXTSMT
goto :QUITOUT

:NOTXF
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [TEXFILT] "0x0"
goto :HRTEX

:STDTEX
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [TEXFILT] "0x1"
goto :HRTEX

:EXTTEX
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [TEXFILT] "0x2"
goto :HRTEX

:STDSP0
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [TEXFILT] "0x3"
goto :HRTEX

:EXTSP0
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [TEXFILT] "0x4"
goto :HRTEX

:STDSMT
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [TEXFILT] "0x5"
goto :HRTEX

:EXTSMT
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [TEXFILT] "0x6"
goto :HRTEX

:HRTEX
"%GBC%\wbox.exe" "RJ_GUI" "Set Hires Texture Filtering" "Off;2xsal;Stretch" /DB=3
if %errorlevel%==1 goto :HRTFOFF
if %errorlevel%==2 goto :2XSAL
if %errorlevel%==3 goto :HRSTR
goto :QUITOUT

:HRTFOFF
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [HRTEX] "0x0"
goto :OSD

:2XSAL
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [HRTEX] "0x1"
goto :OSD

:HRSTR
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [HRTEX] "0x2"
goto :OSD

:OSD
set OSDOPT=
if "%GPU%"=="PeopsOpenGL" set OSDOPT=;Enhanced;Minimum
if "%GPU%"=="PeteD3D" set OSDOPT=;Enhanced;Minimum
"%GBC%\wbox.exe" "RJ_GUI" "Offscreen Drawing" "None;Standard;Extended%OSDOPT%" /DB=2
if %errorlevel%==1 goto :NOOSD
if %errorlevel%==2 goto :STDOSD
if %errorlevel%==3 goto :EXTOSD
if %errorlevel%==4 goto :MINOSD
if %errorlevel%==5 goto :ENHOSD
goto :QUITOUT

:NOOSD
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [OSD] "0x0"
goto :FRAMETEXTYPE

:STDOSD
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [OSD] "0x1"
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [OSD] "0x2"
goto :FRAMETEXTYPE

:EXTOSD
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [OSD] "0x2"
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [OSD] "0x3"
goto :FRAMETEXTYPE

:MINOSD
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [OSD] "0x1"
goto :FRAMETEXTYPE

:ENHOSD
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [OSD] "0x4"
goto :FRAMETEXTYPE

:FRAMETEXTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Framebuffer Effects" "None;Minimum;Standard;Full" /DB=3
if %errorlevel%==1 goto :NOFBE
if %errorlevel%==2 goto :MINFBE
if %errorlevel%==3 goto :STDFBE
if %errorlevel%==2 goto :SOFTFBE
goto :QUITOUT

:NOFBE
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [FRAMETEXTYPE] "0x0"
goto :FSBLUR

:MINFBE
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [FRAMETEXTYPE] "0x1"
goto :FSBLUR

:STDFBE
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [FRAMETEXTYPE] "0x2"
goto :FSBLUR

:SOFTFBE
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [FRAMETEXTYPE] "0x3"
goto :FSBLUR

:FSBLUR
"%GBC%\wbox.exe" "RJ_GUI" "Enable Fullscreen Filtering?" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :FSBLURON
if %errorlevel%==2 goto :FSBLUROFF
goto :QUITOUT

:FSBLURON
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [FSBLUR] "0x1"
goto :SPLIT

:FSBLUROFF
"%GBC%\fart.exe" "Pe*_DEFAULT.cmd" [FSBLUR] "0x0"
goto :SPLIT

:SPLIT
if "%GPU%"=="PeopsOpenGL" goto :PEOPSMODE
if "%GPU%"=="PeteD3D" goto :D3DMODE
if "%GPU%"=="PeteOpenGL2" goto :OGLMODE
if "%GPU%"=="AmiDog" goto :AMIMODE
if "%GPU%"=="BladeSoft" goto :BLDMODE

:PEOPSMODE
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [MASKBIT] "0x0"

"%GBC%\wbox.exe" "RJ_GUI" "Select Framebuffer Access" "Vram;Read;Read-Move;Software" /DB=1
if %errorlevel%==1 goto :PSVRAM
if %errorlevel%==2 goto :PSREAD
if %errorlevel%==3 goto :PSREADMOVE
if %errorlevel%==4 goto :PSFULLSOFT
goto :QUITOUT

:PSVRAM
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [FBACCESS] "0x0"
goto :PSALPHA

:PSREAD
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [FBACCESS] "0x1"
goto :PSALPHA

:PSREADMOVE
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [FBACCESS] "0x2"
goto :PSALPHA

:PSFULLSOFT
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [FBACCESS] "0x3"
goto :PSALPHA

:PSALPHA
"%GBC%\wbox.exe" "RJ_GUI" "Opacity-Alpha Pass" "Enabled;Disabled" /DB=1
if %errorlevel%==1 goto :PSALPHAON
if %errorlevel%==2 goto :PSALPHAOFF
goto :QUITOUT

:PSALPHAON
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [ALPHA] "0x1"
goto :PSTEXQUAL

:PSALPHAOFF
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [ALPHA] "0x0"
goto :PSTEXQUAL

:PSTEXQUAL
"%GBC%\wbox.exe" "RJ_GUI" "Select Texture Quality Type" "Default;Fast;Nice;Best" /DB=3
if %errorlevel%==1 goto :PSDEFTEX
if %errorlevel%==2 goto :PSFASTEX
if %errorlevel%==3 goto :PSNICTEX
if %errorlevel%==4 goto :PSBESTEX
goto :QUITOUT

:PSDEFTEX
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [TEXQUAL] "0x0"
goto :PSFRAMEBLEND

:PSFASTEX
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [TEXQUAL] "0x1"
goto :PSFRAMEBLEND

:PSNICTEX
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [TEXQUAL] "0x2"
goto :PSFRAMEBLEND

:PSBESTEX
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [TEXQUAL] "0x3"
goto :PSFRAMEBLEND

:PSFRAMEBLEND
"%GBC%\wbox.exe" "RJ_GUI" "Frameblending" "None;Software;Hardware" /DB=3
if %errorlevel%==1 goto :PSNOFRMB
if %errorlevel%==2 goto :PSSOFTFB
if %errorlevel%==3 goto :PSHRDFB
goto :QUITOUT

:PSNOFRMB
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [FRAMEBLEND] "0x0"
goto :LINEMODE

:PSSOFTFB
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [FRAMEBLEND] "0x1"
goto :LINEMODE

:PSHRDFB
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [FRAMEBLEND] "0x2"
goto :LINEMODE

:LINEMODE
"%GBC%\wbox.exe" "RJ_GUI" "Enable Line-Mode?" "Disable;Enable" /DB=1
if %errorlevel%==1 goto :NOLINES
if %errorlevel%==2 goto :LINES
goto :QUITOUT

:NOLINES
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [LINES] "0x1"
goto :PEVSYNC

:LINES
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [LINES] "0x1"
goto :PEVSYNC

:PEVSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSync?" "Driver;Off;On" /DB=2
if %errorlevel%==1 goto :PSVDRV
if %errorlevel%==2 goto :PSVOFF
if %errorlevel%==3 goto :PSVON
goto :QUITOUT

:PSVON
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [VSYNC] "0x1"
goto :SPU

:PSVOFF
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [VSYNC] "0x0"
goto :SPU

:PSVDRV
"%GBC%\fart.exe" "PeopsOpenGL_DEFAULT.cmd" [VSYNC] "0xffffffff"
goto :SPU


:D3DMODE
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [MASKBIT] "0x0"

"%GBC%\wbox.exe" "RJ_GUI" "Select Framebuffer Access" "Vram;Read;Read-Move;Software" /DB=1
if %errorlevel%==1 goto :VRAM
if %errorlevel%==2 goto :READ
if %errorlevel%==3 goto :READMOVE
if %errorlevel%==4 goto :FULLSOFT
goto :QUITOUT

:VRAM
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [FBACCESS] "0x0"
goto :ALPHA

:READ
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [FBACCESS] "0x1"
goto :ALPHA

:READMOVE
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [FBACCESS] "0x2"
goto :ALPHA

:FULLSOFT
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [FBACCESS] "0x3"
goto :ALPHA

:ALPHA
"%GBC%\wbox.exe" "RJ_GUI" "Opacity-Alpha Pass" "Enabled;Disabled" /DB=1
if %errorlevel%==1 goto :ALPHAON
if %errorlevel%==2 goto :ALPHAOFF
goto :QUITOUT

:ALPHAON
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [ALPHA] "0x1"
goto :TEXQUAL

:ALPHAOFF
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [ALPHA] "0x0"
goto :TEXQUAL

:TEXQUAL
"%GBC%\wbox.exe" "RJ_GUI" "Select Texture Quality Type" "Default;Fast;Nice;Best" /DB=3
if %errorlevel%==1 goto :DEFTEX
if %errorlevel%==2 goto :FASTEX
if %errorlevel%==3 goto :NICTEX
if %errorlevel%==4 goto :BESTEX
goto :QUITOUT

:DEFTEX
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [TEXQUAL] "0x0"
goto :FRAMEBLEND

:FASTEX
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [TEXQUAL] "0x1"
goto :FRAMEBLEND

:NICTEX
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [TEXQUAL] "0x2"
goto :FRAMEBLEND

:BESTEX
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [TEXQUAL] "0x3"
goto :FRAMEBLEND


:FRAMEBLEND
"%GBC%\wbox.exe" "RJ_GUI" "Frameblending" "None;Software;Hardware" /DB=3
if %errorlevel%==1 goto :NOFRMB
if %errorlevel%==2 goto :SOFTFB
if %errorlevel%==3 goto :HRDFB
goto :QUITOUT

:NOFRMB
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [FRAMEBLEND] "0x0"
goto :SPU

:SOFTFB
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [FRAMEBLEND] "0x1"
goto :SPU

:HRDFB
"%GBC%\fart.exe" "PeteD3D_DEFAULT.cmd" [FRAMEBLEND] "0x2"
goto :SPU

:OGLMODE
"%GBC%\wbox.exe" "RJ_GUI" "Fullscreen FIX" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :FSFIX
if %errorlevel%==2 goto :FSDEF
goto :QUITOUT

:FSFIX
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSFIX] "0x1"
goto :WINSIZE

:FSDEF
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSFIX] "0x1"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [WINSIZE] "50332672"
goto :SHADERFX

:WINSIZE
"%GBC%\wbox.exe" "RJ_GUI" "Set the Fullscreen window-size" "640x480;800x600;1024x768;1280x1024;1440x1080" /DB=3
if %errorlevel%==1 goto :640
if %errorlevel%==2 goto :800
if %errorlevel%==3 goto :1024
if %errorlevel%==4 goto :1280
if %errorlevel%==5 goto :1440
goto :QUITOUT

:640
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [WINSIZE] "31457920"
goto :SHADERFX

:800
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [WINSIZE] "39322400"
goto :SHADERFX

:1024
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [WINSIZE] "50332672"
goto :SHADERFX

:1280
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [WINSIZE] "67110144"
goto :SHADERFX

:1440
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [WINSIZE] "70780320"
goto :SHADERFX

:SHADERFX
"%GBC%\wbox.exe" "RJ_GUI" "Select a Fullscreen Shader Type" "None;FS-Smooth;BW-Smooth;ARB+;GLSmooth;GLShader" /DB=6
if %errorlevel%==1 goto :NOSHAD
if %errorlevel%==2 goto :FSMOOTH
if %errorlevel%==3 goto :BWSMOOTH
if %errorlevel%==4 goto :ARB
if %errorlevel%==5 goto :GLS
if %errorlevel%==6 goto :GLSPLUS
goto :QUITOUT

:NOSHAD
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDR] "0x0"
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [SHADER] 2xHq
goto :HIRESX

:FSMOOTH
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [SHADER] 2xHq
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDR] "0x1"
goto :HIRESX

:BWSMOOTH
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [SHADER] 2xHq
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDR] "0x2"
goto :HIRESX

:ARB
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDR] "0x3"
goto :SHADERLOC

:GLS
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [SHADER] 2xHq
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDR] "0x4"
goto :HIRESX

:GLSPLUS
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDR] "0x5"
goto :SHADERLOC

:SHADERLOC
"%GBC%\wbox.exe" "RJ_GUI" "Select a Shader" "Disable;Select" /DB=2
if %errorlevel%==1 goto :NOGLS
if %errorlevel%==2 goto :SELGLS
goto :QUITOUT

:NOGLS
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [SHADER] 2xHq
goto :SHADERLVL

:SELGLS
set EPSXESHADER=
echo.->"%GBC%\epsxeshaders.ini"
echo.None>>"%GBC%\epsxeshaders.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBE%\%EMUZ%\%EPSXE%\plugins\shaders"') do echo.%%~a>>"%GBC%\epsxeshaders.ini"
"%GBC%\Wselect.exe" "%GBC%\epsxeshaders.ini" "Select a shader" "set EPSXESHADER=$item" > "%GBC%\epsxeshader.cmd"
call "%GBC%\epsxeshader.cmd"
if "%EPSXESHADER%"=="-" goto :SELGLS
if "%EPSXESHADER%"=="" "%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [SHADER] 2xHq
if "%EPSXESHADER%"=="None" "%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [SHADER] 2xHq
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [SHADER] "%EPSXESHADER%"

:SHADERLVL
"%GBC%\wbox.exe" "RJ_GUI" "Set the shader filtering level" "Min;More;Medium;Max" /DB=3
if %errorlevel%==1 goto :LVL1
if %errorlevel%==2 goto :LVL2
if %errorlevel%==3 goto :LVL3
if %errorlevel%==4 goto :LVL4
goto :QUITOUT

:LVL1
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDRLVL] "0x1"
goto :HIRESX

:LVL2
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDRLVL] "0x2"
goto :HIRESX

:LVL3
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDRLVL] "0x3"
goto :HIRESX

:LVL4
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FSCRSHDRLVL] "0x4"
goto :HIRESX

:HIRESX
"%GBC%\wbox.exe" "RJ_GUI" "Select a Hires X Mode" "Native;Standard;High" /DB=1
if %errorlevel%==1 goto :NATIVEX
if %errorlevel%==2 goto :STDX
if %errorlevel%==3 goto :MAXX
goto :QUITOUT

:NATIVEX
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [HRESX] "0x0"
goto :HIRESY

:STDX
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [HRESX] "0x1"
goto :HIRESY

:MAXX
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [HRESX] "0x2"
goto :HIRESY

:HIRESY
"%GBC%\wbox.exe" "RJ_GUI" "Select a Hires Y Mode" "Native;Standard;High;Ultra" /DB=1
if %errorlevel%==1 goto :NATIVEY
if %errorlevel%==2 goto :STDY
if %errorlevel%==3 goto :MAXY
if %errorlevel%==4 goto :ULTRAY
goto :QUITOUT

:NATIVEY
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [HRESY] "0x0"
goto :FRUP

:STDY
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [HRESY] "0x1"
goto :FRUP

:MAXY
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [HRESY] "0x2"
goto :FRUP

:ULTRAY
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [HRESY] "0x3"
goto :FRUP

:FRUP
"%GBC%\wbox.exe" "RJ_GUI" "Framebuffer upload type" "Min;Standard;Full" /DB=1
if %errorlevel%==1 goto :NOFU
if %errorlevel%==2 goto :STDFU
if %errorlevel%==3 goto :FULLFU
goto :QUITOUT

:NOFU
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FRAMEUP] "0x0"
goto :RATIO

:STDFU
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FRAMEUP] "0x1"
goto :RATIO

:FULLFU
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [FRAMEUP] "0x2"
goto :RATIO

:RATIO
"%GBC%\wbox.exe" "RJ_GUI" "Select a ratio-type" "Stretch;Scale;AspectX;Pixel" /DB=1
if %errorlevel%==1 goto :STRATIO
if %errorlevel%==2 goto :SCRATIO
if %errorlevel%==3 goto :AXRATIO
if %errorlevel%==4 goto :PXRATIO
goto :QUITOUT

:STRATIO
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [RATIO] "0x0"
goto :RMODE

:SCRATIO
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [RATIO] "0x1"
goto :RMODE

:AXRATIO
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [RATIO] "0x2"
goto :RMODE

:PXRATIO
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [RATIO] "0x3"
goto :RMODE

:RMODE
"%GBC%\wbox.exe" "RJ_GUI" "Select a render mode" "Pbuffer;Texture;Object" /DB=1
if %errorlevel%==1 goto :PBUFFER
if %errorlevel%==2 goto :TOTEX
if %errorlevel%==3 goto :TOOBJ
goto :QUITOUT

:PBUFFER
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [RENDERMODE] "0x0"
goto :SPU
:TOTEX
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [RENDERMODE] "0x1"
goto :SPU
:TOOBJ
"%GBC%\fart.exe" "PeteOpenGL2_DEFAULT.cmd" [RENDERMODE] "0x2"
goto :SPU

:AMIMODE
"%GBC%\wbox.exe" "RJ_GUI" "Enable Accurate Texure Cache" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :TEXCON
if %errorlevel%==2 goto :TEXCOFF
goto :QUITOUT

:TEXCON
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [CACHE] "0x1"
goto :INTERLACE

:TEXCOFF
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [CACHE] "0x0"
goto :INTERLACE

:INTERLACE
"%GBC%\wbox.exe" "RJ_GUI" "Interlace Half-Rate" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :IRLON
if %errorlevel%==2 goto :IRLOFF
goto :QUITOUT

:IRLON
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [IHR] "0x1"
goto :DBLSCAN

:IRLOFF
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [IHR] "0x0"
goto :DBLSCAN

:DBLSCAN
"%GBC%\wbox.exe" "RJ_GUI" "Enable Progressive Double Scan" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :DBLON
if %errorlevel%==2 goto :DBLOFF
goto :QUITOUT

:DBLON
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [PDS] "0x1"
goto :BSCANL

:DBLOFF
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [PDS] "0x0"
goto :BSCANL

:BSCANL
"%GBC%\wbox.exe" "RJ_GUI" "Enable Bright Scanlines" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :BRITE
if %errorlevel%==2 goto :NOBRITE
goto :QUITOUT

:BRITE
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [BRIGHT] "0x1"
goto :LFRAME

:NOBRITE
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [BRIGHT] "0x0"
goto :LFRAME

:LFRAME
"%GBC%\wbox.exe" "RJ_GUI" "Limit the framerate?" "Limit;Off" /DB=1
if %errorlevel%==1 goto :LIMIT
if %errorlevel%==2 goto :NOLIMIT
goto :QUITOUT

:LIMIT
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [LIMIT] "0x1"
goto :AMIFSTYPE

:NOLIMIT
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [LIMIT] "0x0"
goto :AMIFSTYPE

:AMIFSTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Select a Fullscreen Type" "Center;Height;Both" /DB=2
if %errorlevel%==1 goto :CENTERFS
if %errorlevel%==2 goto :YFS
if %errorlevel%==3 goto :XYFS
goto :QUITOUT

:CENTERFS
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [FSTYPE] "0x0"
goto :SPU

:YFS
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [FSTYPE] "0x1"
goto :SPU

:XYFS
"%GBC%\fart.exe" "AmiDog_DEFAULT.cmd" [FSTYPE] "0x2"
goto :SPU

:BLDMODE
"%GBC%\wbox.exe" "RJ_GUI" "Select a fullscreen mode" "Desktop;Native;Custom" /DB=1
if %errorlevel%==1 goto :DSKMODE
if %errorlevel%==2 goto :NTVMODE
if %errorlevel%==3 goto :CSTMODE
goto :QUITOUT

:DSKMODE
"%GBC%\fart.exe" "gpuBladeSoft.ini" [FSMODE] "0"
"%GBC%\fart.exe" "gpuBladeSoft.ini" [REZX] "%DREZX%"
"%GBC%\fart.exe" "gpuBladeSoft.ini" [REZY] "%DREZY%"
"%GBC%\fart.exe" "gpuBladeSoft.ini" [HERTZ] "%HERTZ%"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSync?" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :VSYNCON
if %errorlevel%==2 goto :VSYNCOFF
goto :QUITOUT

:VSYNCON
"%GBC%\fart.exe" "gpuBladeSoft.ini" [FSMODE] "1"
goto :IREZ

:VSYNCOFF
"%GBC%\fart.exe" "gpuBladeSoft.ini" [FSMODE] "0"
goto :IREZ

:IREZ
"%GBC%\wbox.exe" "RJ_GUI" "Set internal resolution" "1x;2x;3x;4x" /DB=2
if %errorlevel%==1 goto :1X
if %errorlevel%==2 goto :2X
if %errorlevel%==3 goto :3X
if %errorlevel%==4 goto :4X
goto :QUITOUT

:1X
"%GBC%\fart.exe" "gpuBladeSoft.ini" [IREZX] "1"
"%GBC%\fart.exe" "gpuBladeSoft.ini" [IREZY] "1"
goto :32BIT

:2X
"%GBC%\fart.exe" "gpuBladeSoft.ini" [IREZX] "2"
"%GBC%\fart.exe" "gpuBladeSoft.ini" [IREZY] "2"
goto :32BIT

:3X
"%GBC%\fart.exe" "gpuBladeSoft.ini" [IREZX] "3"
"%GBC%\fart.exe" "gpuBladeSoft.ini" [IREZY] "3"
goto :32BIT

:4X
"%GBC%\fart.exe" "gpuBladeSoft.ini" [IREZX] "4"
"%GBC%\fart.exe" "gpuBladeSoft.ini" [IREZY] "4"
goto :32BIT

:32BIT
"%GBC%\wbox.exe" "RJ_GUI" "32-Bit Render Type" "Disabled;Primitives;Gourad;All" /DB=4
if %errorlevel%==1 goto :NO32
if %errorlevel%==2 goto :PRIM32
if %errorlevel%==3 goto :GOUR32
if %errorlevel%==4 goto :ALL32
goto :QUITOUT

:NO32
"%GBC%\fart.exe" "gpuBladeSoft.ini" [32BIT] "0"
goto :BLDTF

:PRIM32
"%GBC%\fart.exe" "gpuBladeSoft.ini" [32BIT] "1"
goto :BLDTF

:GOUR32
"%GBC%\fart.exe" "gpuBladeSoft.ini" [32BIT] "2"
goto :BLDTF

:ALL32
"%GBC%\fart.exe" "gpuBladeSoft.ini" [32BIT] "3"
goto :BLDTF

:BLDTF
"%GBC%\wbox.exe" "RJ_GUI" "Texture bilinear filtering type" "Disabled;Poly;Poly-Sprite" /DB=1
if %errorlevel%==1 goto :NOBILT
if %errorlevel%==2 goto :POLYONLY
if %errorlevel%==3 goto :POLYSPRT
goto :QUITOUT

:NOBILT
"%GBC%\fart.exe" "gpuBladeSoft.ini" [TEXFILT] "0"
goto :DFE

:POLYONLY
"%GBC%\fart.exe" "gpuBladeSoft.ini" [TEXFILT] "1"
goto :DFE

:POLYSPRT
"%GBC%\fart.exe" "gpuBladeSoft.ini" [TEXFILT] "2"
goto :DFE

:DFE
"%GBC%\wbox.exe" "RJ_GUI" "Disable 'dfe emulation" "Disable;Enable" /DB=1
if %errorlevel%==1 goto :DFEOFF
if %errorlevel%==2 goto :DFEON
goto :QUITOUT

:DFEOFF
"%GBC%\fart.exe" "gpuBladeSoft.ini" [DFE] "true"
"%GBC%\fart.exe" "gpuBladeSoft.ini" [INTL] "1"
goto :BLDFILT

:DFEON
"%GBC%\fart.exe" "gpuBladeSoft.ini" [DFE] "false"
goto :INTERL

:INTERL
"%GBC%\wbox.exe" "RJ_GUI" "Interlacing Method" "LineDBL;FieldCombo" /DB=1
if %errorlevel%==1 goto :LINEDBL
if %errorlevel%==2 goto :FIELDCMB
goto :QUITOUT

:LINEDBL
"%GBC%\fart.exe" "gpuBladeSoft.ini" [INTL] "0"
goto :BLDFILT

:FIELDCMB
"%GBC%\fart.exe" "gpuBladeSoft.ini" [INTL] "1"
goto :BLDFILT

:BLDFILT
"%GBC%\wbox.exe" "RJ_GUI" "Select a filtering type" "Disabled;Select" /DB=1
if %errorlevel%==1 goto :NOBLDFLT
if %errorlevel%==2 goto :SELBLDFLT
goto :QUITOUT

:NOBLDFLT
"%GBC%\fart.exe" "gpuBladeSoft.ini" [FILTYPE] "0"
goto :BLDBILIN

:SELBLDFLT
set BLDSHD=
echo.None>"%GBC%\bldshd.ini
echo.SuperEagle>>"%GBC%\bldshd.ini
echo.SaI2x>>"%GBC%\bldshd.ini
echo.SuperSaI2x>>"%GBC%\bldshd.ini
echo.Scale2x>>"%GBC%\bldshd.ini
echo.Scale3x>>"%GBC%\bldshd.ini
echo.Hq2x>>"%GBC%\bldshd.ini
echo.Hq3x>>"%GBC%\bldshd.ini
"%GBC%\Wselect.exe" "%GBC%\bldshd.ini" "Select a Filter" "set BLDSHDR=$item" > "%GBC%\bldshd.cmd"
call "%GBC%\bldsel.cmd"
if "%BLDSHD%"=="" set BLDCH=0
if "%BLDSHD%"=="None" set BLDCH=0
if "%BLDSHD%"=="SaI2x" set BLDCH=1
if "%BLDSHD%"=="SuperSaI2x" set BLDCH=2
if "%BLDSHD%"=="Scale2x" set BLDCH=3
if "%BLDSHD%"=="Scale3x" set BLDCH=4
if "%BLDSHD%"=="Hq2x" set BLDCH=5
if "%BLDSHD%"=="Hq3x" set BLDCH=6
"%GBC%\fart.exe" "gpuBladeSoft.ini" [FILTYPE] "%BLDCH%"
goto :BLDBILIN

:BLDBILIN
"%GBC%\wbox.exe" "RJ_GUI" "Enable Bilinear Filtering" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :BLDBILINON
if %errorlevel%==2 goto :BLDBILINOFF
goto :QUITOUT

:BLDBILINON
"%GBC%\fart.exe" "gpuBladeSoft.ini" [BILFILT] "1"
goto :VIZAREA

:BLDBILINOFF
"%GBC%\fart.exe" "gpuBladeSoft.ini" [BILFILT] "0"
goto :VIZAREA

:VIZAREA
"%GBC%\wbox.exe" "RJ_GUI" "Select the visible area" "Standard;Perfect;Custom;VRAM" /DB=1
if %errorlevel%==1 goto :STDVIZ
if %errorlevel%==2 goto :PERVIZ
if %errorlevel%==3 goto :CSTVIZ
if %errorlevel%==4 goto :VRMVIZ
goto :QUITOUT

:PERVIZ
"%GBC%\fart.exe" "gpuBladeSoft.ini" [VISAREA] "0"
goto :BLDASPCT

:STDVIZ
"%GBC%\fart.exe" "gpuBladeSoft.ini" [VISAREA] "1"
goto :BLDASPCT

:CSTVIZ
"%GBC%\fart.exe" "gpuBladeSoft.ini" [VISAREA] "2"
goto :BLDASPCT

:VRMVIZ
"%GBC%\fart.exe" "gpuBladeSoft.ini" [VISAREA] "3"
goto :BLDASPCT

:BLDASPCT
"%GBC%\wbox.exe" "RJ_GUI" "Enable Aspect Ratio Correction?" "Disable;Enable" /DB=1
if %errorlevel%==1 goto :BLDNOAS
if %errorlevel%==2 goto :BLDASL
goto :QUITOUT

:BLDNOASP
"%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "0"
goto :BLDFRMBLND

:BLDASL
echo.None>"%GBC%\bldas.ini"
echo.1x1>>"%GBC%\bldas.ini"
echo.5x4>>"%GBC%\bldas.ini"
echo.4x3>>"%GBC%\bldas.ini"
echo.3x2>>"%GBC%\bldas.ini"
echo.8x5>>"%GBC%\bldas.ini"
echo.5x3>>"%GBC%\bldas.ini"
echo.16x9>>"%GBC%\bldas.ini"
echo.17x9>>"%GBC%\bldas.ini"

"%GBC%\Wselect.exe" "%GBC%\bldas.ini" "Select a aspect correction" "set BLDAS=$item" > "%GBC%\bldas.cmd"
call "%GBC%\bldas.cmd"
if "%BLDAS%"=="" "%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "0"
if "%BLDAS%"=="1x1" "%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "1"
if "%BLDAS%"=="5x4" "%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "2"
if "%BLDAS%"=="4x3" "%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "3"
if "%BLDAS%"=="3x2" "%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "4"
if "%BLDAS%"=="8x5" "%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "5"
if "%BLDAS%"=="5x3" "%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "6"
if "%BLDAS%"=="16x9" "%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "7"
if "%BLDAS%"=="17x9" "%GBC%\fart.exe" "gpuBladeSoft.ini" [ARC] "8"
goto :BLDFRMBLND

:BLDFRMBLND
"%GBC%\fart.exe" "gpuBladeSoft.ini" [FRAMEBLEND] "0"
goto :SPU
"%GBC%\wbox.exe" "RJ_GUI" "Enable Frameblending?" "Disable;Enable" /DB=1
if %errorlevel%==1 goto :BLDNOFRMBLND
if %errorlevel%==2 goto :BLDFRMBLNDON
goto :QUITOUT

:BLDNOFRMBLND
"%GBC%\fart.exe" "gpuBladeSoft.ini" [FRAMEBLEND] "0"
goto :SPU

:BLDFRMBLNDON
"%GBC%\fart.exe" "gpuBladeSoft.ini" [FRAMEBLEND] "1"
goto :SPU

:SPU
"%GBC%\wbox.exe" "RJ_GUI" "Select a SPU" "PeopsDSound;SPUCORE" /DB=1
if %errorlevel%==1 goto :PDSOUND
if %errorlevel%==2 goto :SPUCORE
goto :QUITOUT

:PDSOUND
set SPU=PeopsDSound
set SPUD=spuPeopsDSound.dll
"%GBC%\fart.exe" "DEFAULT.cmd" [SPU] "%SPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [SPUD] "%SPUD%"
goto :MULTITAP

:SPUCORE
set SPU=SPUCORE
set SPUD=SPUCORE
"%GBC%\fart.exe" "DEFAULT.cmd" [SPU] "%SPU%"
"%GBC%\fart.exe" "DEFAULT.cmd" [SPUD] "%SPUD%"
goto :MULTITAP

:MULTITAP
"%GBC%\wbox.exe" "RJ_GUI" "Enable Multitap?" "1;2;Both;Disable" /DB=4
if %errorlevel%==1 goto :1MULTI
if %errorlevel%==2 goto :2MULTI
if %errorlevel%==3 goto :BOTHMT
if %errorlevel%==4 goto :DISMTP
goto :QUITOUT

:1MULTI
set MULTI1=1
set MULTI2=0
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI1] "%MULTI1%"
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI2] "%MULTI2%"
"%GBC%\fart.exe" "INTERNAL1_DEFAULT.cmd" [MULTI1] "%MULTI2%"
"%GBC%\fart.exe" "INTERNAL2_DEFAULT.cmd" [MULTI2] "%MULTI2%"
goto :EPSXECOMPL

:2MULTI
set MULTI1=0
set MULTI2=1
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI1] "%MULTI1%"
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI2] "%MULTI2%"
"%GBC%\fart.exe" "INTERNAL1_DEFAULT.cmd" [MULTI1] "%MULTI2%"
"%GBC%\fart.exe" "INTERNAL2_DEFAULT.cmd" [MULTI2] "%MULTI2%"
goto :EPSXECOMPL

:BOTHMT
set MULTI1=1
set MULTI2=1
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI1] "%MULTI1%"
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI2] "%MULTI2%"
"%GBC%\fart.exe" "INTERNAL1_DEFAULT.cmd" [MULTI1] "%MULTI2%"
"%GBC%\fart.exe" "INTERNAL2_DEFAULT.cmd" [MULTI2] "%MULTI2%"
goto :EPSXECOMPL

:DISMTP
set MULTI1=0
set MULTI2=0
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI1] "%MULTI1%"
"%GBC%\fart.exe" "DEFAULT.cmd" [MULTI2] "%MULTI2%"
"%GBC%\fart.exe" "INTERNAL1_DEFAULT.cmd" [MULTI1] "%MULTI2%"
"%GBC%\fart.exe" "INTERNAL2_DEFAULT.cmd" [MULTI2] "%MULTI2%"
goto :EPSXECOMPL

:EPSXECOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1