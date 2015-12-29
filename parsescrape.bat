set GBC=C:\rj\romjacket
del /q null
call "%GBC%\definevar.bat">null
set GBG=G:
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\scrape\*.xml"') do (
SET CSTCONS=%%~na
SET XMLFILE=%GBC%\net\scrape\%%~a
call :EXPORT
)
exit /b

:EXPORT
if "%CSTCONS%"=="%ARCD%" goto :EXPRTS
for /f "tokens=1,2* delims==>" %%a in ('type "%XMLFILE%"') do (
set ALCA=%%~a
set ALCN=%%~b
call :PARSE
)
exit /b

:PARSE
for %%a in ("%ALCA:~0,12%") do set ALCA=%%~a
set NCALL=
if "%ALCA%"=="<game name" set NCALL=:ROMN
if "%ALCA%"=="<rom name" set NCALL=:ROMZTL
if "%ALCA%"=="<snapshot1" set NCALL=:SNAP
if "%ALCA%"=="<snapshot2" set NCALL=:SNAP
if "%ALCA%"=="<snapshot3" set NCALL=:SNAP
if "%ALCA%"=="<snapshot4" set NCALL=:SNAP
if "%ALCA%"=="<snapshot5" set NCALL=:SNAP
if "%ALCA%"=="<boxart1" set NCALL=:BOX
if "%ALCA%"=="<boxart2" set NCALL=:BOX2
if "%ALCA%"=="<fanart1" set NCALL=:FAN
if "%ALCA%"=="<fanart2" set NCALL=:FAN2	
if "%ALCA%"=="<banner1" set NCALL=:BAN
if "%ALCA%"=="<banner2" set NCALL=:BAN2
if "%ALCA%"=="<clearlogo1" set NCALL=:LOG
if "%ALCA%"=="<clearlogo2" set NCALL=:LOG2
if "%ALCA%"=="<videoid" set NCALL=:VIDEO
if "%ALCA%"=="<emu_command" set NCALL=:DOS
if "%ALCA%"=="</game" set NCALL=:CLEAR	
if "%NCALL%"=="" exit /b
call %NCALL%
exit /b

:ROMN
for /f "delims=" %%a in ("%ALCN%") do echo."%%~a">"%GBC%\recr.ini"
"%GBC%\fart.exe" "%GBC%\recr.ini" "amp;" --remove
"%GBC%\fart.exe" "%GBC%\recr.ini" ":" "-"
"%GBC%\fart.exe" -iC "%GBC%\recr.ini" \/ "-"
"%GBC%\fart.exe" "%GBC%\recr.ini" "\\" "-"
"%GBC%\fart.exe" "%GBC%\recr.ini" "*" "-"
"%GBC%\fart.exe" "%GBC%\recr.ini" "%%" "-"
for /f "delims=" %%a in ('type "%GBC%\recr.ini"') do set ROMN=%%~a
exit /b
	
:ROMZTL
set ROMFB=
for /f "tokens=1,2 delims=/" %%a in ('echo "%ALCN%') do (
set ROMFN=%%~a
set ROMFC=%%~a
if "%%~b" NEQ "" set ROMFN=%%~b
if "%%~b" NEQ "" set ROMFB=%%~b
)
for %%a in ("%ROMFB:~0,-1%") do set ROMFN=%%~a
exit /b

:EXPRTS
for /f "tokens=1,2* delims=>" %%a in ('type "%XMLFILE%"') do (
set ALCA=%%~a
set ALCN=%%~b
call :SRCF
)
exit /b
:SRCF
if "%ALCA%"=="<description" goto :ROMSTL
if "%ALCA%"=="<game name" goto :ROMNS
if "%ALCA%"=="<snapshot1 name" goto :SNAPS
if "%ALCA%"=="<snapshot1" goto :SNAP
if "%ALCA%"=="<snapshot2" goto :SNAP
if "%ALCA%"=="<snapshot2 name" goto :SNAPS
if "%ALCA%"=="<snapshot3" goto :SNAP
if "%ALCA%"=="<snapshot4" goto :SNAP
if "%ALCA%"=="<snapshot5" goto :SNAP
if "%ALCA%"=="<boxart1" goto :BOX
if "%ALCA%"=="<boxart2" goto :BOX2
if "%ALCA%"=="<cabinet name" goto :BOX3
if "%ALCA%"=="<flyer name" goto :FAN3
if "%ALCA%"=="<banner1" goto :BAN
if "%ALCA%"=="<banner2" goto :BAN2
if "%ALCA%"=="<marquee name" goto :BAN3
if "%ALCA%"=="<cpanel name" goto :LOG3
if "%ALCA%"=="<videoid" goto :VIDEO
if "%ALCA%"=="</game" goto :CLEAR	
exit /b

:ROMNS
for /f "tokens=1 delims= " %%a in ("%ALCN%") do set ROMFN=%%~a.zip
exit /b
:ROMSTL
for /f "delims=" %%a in ("%ALCN%") do echo."%%~a">"%GBC%\recr.ini"
"%GBC%\fart.exe" "%GBC%\recr.ini" "amp;" --remove
"%GBC%\fart.exe" "%GBC%\recr.ini" ":" "-"
"%GBC%\fart.exe" -iC "%GBC%\recr.ini" \/ "-"
"%GBC%\fart.exe" "%GBC%\recr.ini" "\\" "-"
"%GBC%\fart.exe" "%GBC%\recr.ini" "*" "-"
"%GBC%\fart.exe" "%GBC%\recr.ini" "%%" "-"
for /f "delims=" %%a in ('type "%GBC%\recr.ini"') do set ROMN=%%~a
exit /b

:DOS
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set EMUCMD=%%~a
call :INJEMUCMD
)
exit /b

:INJEMUCMD
REM if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%.cmd" %WSTRT% echo."%EMUCMD%">"%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%.cmd"
echo."%EMUCMD%">"%GBC%\tmp.cmd"
"%GBC%\fart.exe" -iC "%GBC%\tmp.cmd" "/" "\"
for /f "delims=" %%a in ('type "%GBC%\tmp.cmd"') do (
set EMUCMD=%%~a
set EXEA=%%~a
set EXEN=%%~nxa
set EXEP=%%~dpa
)
REM echo.cd "%EXEP%">"%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%.cmd"
REM "%GBC%\fart.exe" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%.cmd" "%CD%" --remove
REM echo."%EXEN%">>"%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%.cmd"
REM for /f "delims=" %%a in ('type "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\%ROMN%.cmd"') do echo.%%~a>>"%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\%MSBOX%.conf"
exit /b

:VIDEO
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set VIDEOID=%%~a
call :INJVID
)
exit /b
:INJVID
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\videoid.yturl" echo."%VIDEOID%">"%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\videoid.yturl"
exit /b

:SNAP
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set /a SNAPN+=1
set SNAP=%%~a
set SNAPF=%%~nxa
call :COPYSNAP
)
exit /b
:SNAPS
for /f "delims=" %%a in ("%ALCN:~0,-1%) do (
set /a SNAPN+=1
set SNAP=%%~a
set SNAPF=%%~nxa
call :COPYSNAP
)
exit /b
:COPYSNAP
for %%a in ("%SNAP%") do set SNAP%SNAPN%=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\.snaps\%SNAPF%" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "%SNAP%" -P "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\.snaps\%SNAPF%"
exit /b
:BOX
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set BOX=%%~a
set BOXF=%%~nxa
set BXTN=%%~xa
call :COPYBOX
)
exit /b
:BOX2
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set BOX2=%%~a
set BOXF2=%%~nxa
set BXTN=%%~xa
call :COPYBOX2
)
exit /b
:BOX3
for /f "delims=" %%a in ("%ALCN:~0,-1%) do (
set BOX2=%%~a
set BOXF2=%%~nxa
set BXTN=%%~xa
call :COPYBOX2
)
exit /b
:COPYBOX
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Folder%BXTN%" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "%BOX%" -P "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Folder%BXTN%"
exit /b
:COPYBOX2
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\%BOXF%" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "%BOX%" -P "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\%BOXF%"
exit /b
:FAN
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set FOX=%%~a
set FOXF=%%~nxa
set FXTN=%%~xa
call :COPYFAN
)
exit /b
:FAN2
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set FOX2=%%~a
set FOXF2=%%~nxa
set FXTN=%%~xa
call :COPYFAN2
)
exit /b
:FAN3
for /f "delims=" %%a in ("%ALCN:~0,-1%) do (
set FOX=%%~a
set FOXF=%%~nxa
set FXTN=%%~xa
call :COPYFAN
)
exit /b
:COPYFAN
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Backdrop%FXTN%" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "%FOX%" -P "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Backdrop%FXTN%"
exit /b
:COPYFAN2
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Backdrop2%FXTN%" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "%FOX%" -P "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\%FOXF%"
exit /b
:BAN
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set NOX=%%~a
set NOXF=%%~nxa
set NXTN=%%~xa
call :COPYBAN
)
exit /b
:BAN2
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set NOX2=%%~a
set NOXF2=%%~nxa
set NXTN=%%~xa
call :COPYBAN2
)
exit /b
:BAN3
for /f "delims=" %%a in ("%ALCN:~0,-1%) do (
set NOX2=%%~a
set NOXF2=%%~nxa
set NXTN=%%~xa
call :COPYBAN2
)
exit /b
:COPYBAN
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Banner%NXTN%" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "%NOX%" -P "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Banner%NXTN%"
exit /b
:COPYBAN2
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Banner2%NXTN%" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "%NOX%" -P "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Banner2%NXTN%"
exit /b
:LOG
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set LOX=%%~a
set LOXF=%%~nxa
set LXTN=%%~xa
call :COPYLOG
)
exit /b
:LOG2
for /f "tokens=1 delims=<" %%a in ("%ALCN%") do (
set LOX2=%%~a
set LOXF2=%%~nxa
set LXTN=%%~xa
call :COPYLOG2
)
exit /b
:LOG3
for /f "delims=" %%a in ("%ALCN:~0,-1%) do (
set LOX2=%%~a
set LOXF2=%%~nxa
set LXTN=%%~xa
call :COPYLOG2
)
exit /b
:COPYLOG
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Logo%LXTN%" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "%LOX%" -P "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Logo%LXTN%"
exit /b
:COPYLOG2
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Logo2%LXTN%" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "%LOX%" -P "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMN%\Logo2%LXTN%"
exit /b

:CLEAR
for /f "delims=" %%a in ("%ROMFN%") do echo.:"%%~a">>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%ROMN%") do echo.[x]("%%~a")[y]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
if "%EMUCMD%" NEQ "" for /f "delims=" %%a in ("%EMUCMD%") do echo.[V]("%%~a")[q]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%SNAP1%") do if "%%~a" NEQ "" echo.[x]"%%~a"[s1]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%SNAP2%") do if "%%~a" NEQ "" echo.[x]"%%~a"[s2]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%SNAP3%") do if "%%~a" NEQ "" echo.[x]"%%~a"[s3]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%SNAP4%") do if "%%~a" NEQ "" echo.[x]"%%~a"[s4]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%SNAP5%") do if "%%~a" NEQ "" echo.[x]"%%~a"[s5]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%BOX%") do if "%%~a" NEQ "" echo.[x]"%%~a"[b]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%BOX2%") do if "%%~a" NEQ "" echo.[x]"%%~a"[b2]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%NOX%") do if "%%~a" NEQ "" echo.[x]"%%~a"[n]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%NOX2%") do if "%%~a" NEQ "" echo.[x]"%%~a"[n2]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%FOX%") do if "%%~a" NEQ "" echo.[x]"%%~a"[f]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%FOX2%") do if "%%~a" NEQ "" echo.[x]"%%~a"[f2]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%LOX%") do if "%%~a" NEQ "" echo.[x]"%%~a"[l]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
for /f "delims=" %%a in ("%LOX2%") do if "%%~a" NEQ "" echo.[x]"%%~a"[l2]>>"%GBC%\net\scrape\%CSTCONS%.cmd"
set EMUCMD=
set ROMN=
set ROMFN=
set BOX=
set BOX2=
set FOX=
set FOX2=
set LOX=
set NOX2=
set NOX=
set LOX2=
set SNAPN=
set SNAP1=
set SNAP2=
set SNAP3=
set SNAP4=
set SNAP5=