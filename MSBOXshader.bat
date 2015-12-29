%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
:SELTYPE
del /q "%GBC%\shaderlist.ini"			
echo.--------->>"%GBC%\shaderlist.ini"
echo Select>"%GBC%\shaderlist.ini"
for %%a in ("%GBE%\%EMUZ%\%MSBOX%\shaders\none.fx") do set SHADERVALUE=%%~a
call :GETSHADERS
pushd "%GBC%\net\%LNCH%\%MSBOX%"
del /q "%GBC%\SHADERTYPE.cmd"
"%GBC%\wselect.exe" "%GBC%\shaderlist.ini" "Select a Shader" "set SHADERTYPE=$item" > "%GBC%\shaderlist.cmd"
if %errorlevel% == 0 goto :EOF
call "%GBC%\shaderlist.cmd"
if "%SHADERTYPE%"=="--------" goto :SHADERBROWSE
if "%SHADERTYPE%"=="Select" goto :SHADERBROWSE
if "%SHADERTYPE%"=="" goto :EOF
goto :WRITESHADER

:SHADERBROWSE
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SHADERTYPE=" "%GBE%\%EMUZ%\%MSBOX%\shaders" "Select a shader	" /noquote') do %%a
if "%SHADERTYPE%"=="" "%GBC%\fart.exe" "dosbox.conf" "[PIXSHD]" --remove
goto :WRITESHADER

:WRITESHADER
pushd "%GBC%\net\%LNCH%\%MSDS%"
if "%SHADERTYPE%"=="" "%GBC%\fart.exe" "dosbox.conf" "[PIXSHD]" --remove
"%GBC%\fart.exe" "dosbox.conf" "[PIXSHD]" "%SHADERTYPE%"
echo."%SHADERVALUE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
popd
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b

:GETSHADERS
pushd "%GBE%\%EMUZ%\%MSBOX%\shaders"
for /f "delims=" %%a in ('dir /s/b/a-d "*.fx"') do echo.%%~nxa>>"%GBC%\shaderlist.ini"
popd
exit /b
:QUITOUT
set CANCELLED=1