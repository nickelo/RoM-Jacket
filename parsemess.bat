%BSTRT% "%WBUSY%" "RJ_GUI" "Generating System List" /marquee
if not exist "%GBE%\%EMUZ%\%MESS%\%MESS%.exe" exit /b
if not exist "%GBC%\lm.txt" "%GBE%\%EMUZ%\%MESS%\%MESS%.exe" -lm>>"%GBC%\lm.txt"
if exist "%GBC%\lm.cmd" exit /b
echo.SET MYTP=>"%GBC%\lm.cmd"
echo.SET EXTEN=>>"%GBC%\lm.cmd"
echo.SET MYTP1=>>"%GBC%\lm.cmd"
echo.SET EXTEN1=>>"%GBC%\lm.cmd"
echo.SET MYTP2=>>"%GBC%\lm.cmd"
echo.SET EXTEN2=>>"%GBC%\lm.cmd"
echo.SET MYTP3=>>"%GBC%\lm.cmd"
echo.SET EXTEN3=>>"%GBC%\lm.cmd"
echo.SET MYTP4=>>"%GBC%\lm.cmd"
echo.SET EXTEN4=>>"%GBC%\lm.cmd"
echo.SET MYTP5=>>"%GBC%\lm.cmd"
echo.SET EXTEN5=>>"%GBC%\lm.cmd"
echo.SET MYTP6=>>"%GBC%\lm.cmd"
echo.SET EXTEN6=>>"%GBC%\lm.cmd"
echo.SET MYTP7=>>"%GBC%\lm.cmd"
echo.SET EXTEN7=>>"%GBC%\lm.cmd"
echo.goto :%%MACHN%%>>"%GBC%\lm.cmd"
echo.exit /b>>"%GBC%\lm.cmd"

set OMITCNT=
for /f "tokens=1,2,3,4-* delims= " %%a in ('type "%GBC%\lm.txt"') do (
set SYSTEM=%%~a
set MEDIAN=%%~b
set COMMND=%%~c
set EXTENS=%%~d
set /A OMITCNT+=1
call :MIT
)
"%GBC%\fart.exe" "%GBC%\lm.cmd" \"\" --remove
echo.exit /b>>"%GBC%\lm.cmd"
echo.:EXFND>>"%GBC%\lm.cmd"
echo.set EXFND=>>"%GBC%\lm.cmd"
echo.for %%a in (%%EXTEN%%) do (>>"%GBC%\lm.cmd"
echo.if "%%ALLEXT%%"=="%%%~a" set MTYP=%%ALLEXT%%>>"%GBC%\lm.cmd"
echo.if "%%ALLEXT%%"=="%%%~a" set EXFND=1>>"%GBC%\lm.cmd"
echo.)>>"%GBC%\lm.cmd"
%BSTRT% "%WFINS%" "RJ_GUI" "Generating System List" /stop /timeout:1
exit /b

:MIT
if %OMITCNT% LEQ 2 exit /b
set MYTYP=
set NOEKO=
for %%a in ("%SYSTEM:~0,4%") do (
if "%%~a"=="cart" call :GETYPE
if "%%~a"=="cass" call :GETYPE
if "%%~a"=="flop" call :GETYPE
if "%%~a"=="hard" call :GETYPE
if "%%~a"=="prin" SET NOEKO=1
if "%%~a"=="prin" call :GETYPE
if "%%~a"=="seri" SET NOEKO=1
if "%%~a"=="seri" call :GETYPE
if "%%~a"=="cdro" call :GETYPE
if "%%~a"=="quic" call :GETYPE
if "%%~a"=="snap" call :GETYPE
if "%%~a"=="ctap" call :GETYPE
if "%%~a"=="bitb" call :GETYPE
if "%%~a"=="midi" call :GETYPE
if "%%~a"=="midi" set NOEKO=1
if "%%~a"=="punc" call :GETYPE
if "%%~a"=="card" call :GETYPE
if "%%~a"=="sasi" call :GETYPE
)
if "%NOEKO%"=="1" exit /b
if "%MYTYP%"=="" goto :SETTYPE
exit /b

:SETTYPE
if "%MEDIAN%"=="(none) exit /b
set MEDNUM=
echo.SET EXFND=>>"%GBC%\lm.cmd"
echo.exit /b>>"%GBC%\lm.cmd"
echo.:%SYSTEM%>>"%GBC%\lm.cmd"
:SKIP
echo.SET MACHN=%SYSTEM%>>"%GBC%\lm.cmd"
for /f "tokens=1 delims=()" %%a in ("%COMMND%") do set MYTYP=%%~a
set EXTN=
set XTRA1=
set XTRA2=
set XTRA3=
set XTRA4=
set XTRA5=
set XTRA6=
set XTRA7=
set XTRA8=
set XTRA9=
set XTRA10=
set MACHN=%SYSTEM%
for /f "tokens=1,2,3,4,5,6,7,8,9,10 delims= " %%a in ("%EXTENS%") do (
if "%%~a" NEQ "" set XTRA1= "%%~a"
if "%%~b" NEQ "" set XTRA2= "%%~b"
if "%%~c" NEQ "" set XTRA3= "%%~c"
if "%%~d" NEQ "" set XTRA4= "%%~d"
if "%%~e" NEQ "" set XTRA5= "%%~e"
if "%%~f" NEQ "" set XTRA6= "%%~f"
if "%%~g" NEQ "" set XTRA7= "%%~g"
if "%%~h" NEQ "" set XTRA8= "%%~h"
if "%%~i" NEQ "" set XTRA9= "%%~i"
if "%%~j" NEQ "" set XTRA10= "%%~j"
)
call :EKKOUT
exit /b


:GETYPE
if "%NOEKO%"=="1" exit /b
set TYP=1
for /f "tokens=1 delims=()" %%a in ("%MEDIAN%") do set MYTYP=%%~a
set EXTN=
set XTRA1=
set XTRA2=
set XTRA3=
set XTRA4=
set XTRA5=
set XTRA6=
set XTRA7=
set XTRA8=
set XTRA9=
set XTRA10=
if "%COMMND%"=="" goto :FINEKO
if "%COMMND%"=="." goto :FINEKO
set /A MEDNUM+=1
for /f "delims= " %%a in ("%COMMND%") do set EXTN="%%~a"
for /f "tokens=1,2,3,4,5,6,7,8,9,10 delims= " %%a in ("%EXTENS%") do (
if "%%~a"=="." exit /b
if "%%~a" NEQ "" set XTRA1= "%%~a"
if "%EXTN%"=="" set XTRA1="%%~a"
if "%%~b" NEQ "" set XTRA2= "%%~b"
if "%%~c" NEQ "" set XTRA3= "%%~c"
if "%%~d" NEQ "" set XTRA4= "%%~d"
if "%%~e" NEQ "" set XTRA5= "%%~e"
if "%%~f" NEQ "" set XTRA6= "%%~f"
if "%%~g" NEQ "" set XTRA7= "%%~g"
if "%%~h" NEQ "" set XTRA8= "%%~h"
if "%%~i" NEQ "" set XTRA9= "%%~i"
if "%%~j" NEQ "" set XTRA10= "%%~j"
)
:FINEKO
call :EKKOUT
exit /b

:EKKOUT
echo.SET MYTYP=%MYTYP%>>"%GBC%\lm.cmd"
echo.SET EXTEN=%EXTN%%XTRA1%%XTRA2%%XTRA3%%XTRA4%%XTRA5%%XTRA6%%XTRA7%%XTRA8%%XTRA8%%XTRA9%%XTRA10%>>"%GBC%\lm.cmd"
echo.CALL :EXFND>>"%GBC%\lm.cmd"
echo.if "%%EXFND%%"=="1" exit /b>>"%GBC%\lm.cmd"
