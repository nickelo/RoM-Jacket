if "%CSTCONS%"=="%N64%" call :N64CHK
if "%CSTCONS%"=="%PS1%" call :PS1CHK
if "%CSTCONS%"=="%CPS3%" call :CPS3CHK
if "%CSTCONS%"=="%SEGDC%" call :SEGDCCHK
if "%CSTCONS%"=="%NES%" call :NESCHK
if "%CSTCONS%"=="%SNES%" call :SNESCHK
if "%CSTCONS%"=="%NDS%" call :NDSCHK
if "%CSTCONS%"=="%NEOCD%" call :NEOCDCHK
exit /b

:PS1CHK
if /i "%CEMU%"=="pcsxr" copy /y "%GBC%\net\%LNCH%\%PS1%\pcsxr.bat" "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat"
exit /b
:CPS3CHK
if /i "%CEMU%"=="%FBA%" copy /y "%GBC%\net\%LNCH%\%CPS3%\fba.bat" "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat"
exit /b
:SEGDCCHK
if /i "%CEMU%"=="%NULLDC%" copy /y "%GBC%\net\%LNCH%\%SEGDC%\nulldc.bat" "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat"
exit /b
:NESCHK
if /i "%CEMU%"=="virtuaNes" copy /y "%GBC%\net\%LNCH%\%NES%\vnes.bat" "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat"
exit /b
:N64CHK
if /i "%CEMU%"=="%MUPEN%" copy /y "%GBC%\net\%LNCH%\%NES%\%MUPEN%.bat" "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat"
exit /b
:SNESCHK
if /i "%CEMU%"=="zsnes" copy /y "%GBC%\net\%LNCH%\%NES%\znes.bat" "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat"
if /i "%CEMU%"=="snesgt" copy /y "%GBC%\net\%LNCH%\%NES%\snesgt.bat" "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat"
exit /b
:NDSCHK
exit /b
:NEOCDCHK
exit /b