set RDCONS=
if "%CSTCONS%"=="Bandai WonderSwan" for %%a in ("%BWS%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Bandai WonderSwan Color" for %%a in ("%BWSC%") do set CSTCONS=%%~a
if "%CSTCONS%"=="ColecoVision" for %%a in ("%COLEC%") do set CSTCONS=%%~a
if "%CSTCONS%"=="DOS" for %%a in ("%MSDS%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Emerson Arcadia" for %%a in ("%EMARC%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Entex Adventure Vision" for %%a in ("%ADVV%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Epoch Super Cassette Vision" for %%a in ("%SCAS%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Fairchild Channel F" for %%a in ("%CHNF%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Famicom Disk System" for %%a in ("%NFAM%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Gameboy" for %%a in ("%NGB%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Gameboy Advance" for %%a in ("%NGBA%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Gameboy Color" for %%a in ("%NGBC%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Magnavox Odyssey 2" for %%a in ("%ODYS2%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Microsoft MSX" for %%a in ("%MSX%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Microsoft MSX 2" for %%a in ("%MSX2%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Playstation" for %%a in ("%PS1%") do set CSTCONS=%%~a
if "%CSTCONS%"=="NES" for %%a in ("%NES%") do set CSTCONS=%%~a
if "%CSTCONS%"=="Sega 32x" for %%a in ("%SG32X%") do set CSTCONS=%%~a
if "%CSTCONS%"=="SNES" for %%a in ("%SNES%") do set CSTCONS=%%~a
if "%CSTCONS%"=="TurboGrafx-16 (PC Engine)" for %%a in ("%TG16%") do set CSTCONS=%%~a
if "%CSTCONS%"=="%BWS%" set RDCONS=Bandai WonderSwan
if "%CSTCONS%"=="%BWSC%" set RDCONS=Bandai WonderSwan Color
if "%CSTCONS%"=="%COLEC%" set RDCONS=ColecoVision
if "%CSTCONS%"=="%MSDS%" set RDCONS=DOS
if "%CSTCONS%"=="%EMARC%" set RDCONS=Emerson Arcadia
if "%CSTCONS%"=="%ADVV%" set RDCONS=Entex Adventure Vision
if "%CSTCONS%"=="%SCAS%" set RDCONS=Epoch Super Cassette Vision
if "%CSTCONS%"=="%CHNF%" set RDCONS=Fairchild Channel F
if "%CSTCONS%"=="%NFAM%" set RDCONS=Famicom Disk System
if "%CSTCONS%"=="%NGB%" set RDCONS=Gameboy
if "%CSTCONS%"=="%NGBA%" set RDCONS=Gameboy Advance
if "%CSTCONS%"=="%NGBC%" set RDCONS=Gameboy Color
if "%CSTCONS%"=="%ODYS2%" set RDCONS=Magnavox Odyssey 2
if "%CSTCONS%"=="%MSX%" set RDCONS=Microsoft MSX
if "%CSTCONS%"=="%MSX2%" set RDCONS=Microsoft MSX 2
if "%CSTCONS%"=="%PS1%" set RDCONS=Playstation
if "%CSTCONS%"=="%NES%" set RDCONS=NES
if "%CSTCONS%"=="%SG32X%" set RDCONS=Sega 32x
if "%CSTCONS%"=="%SNES%" set RDCONS=SNES
if "%CSTCONS%"=="%TG16%" set RDCONS=TurboGrafx-16 (PC Engine)