%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
:SELTYPE
del /q "%GBC%\shaderlist.ini"
echo Select>"%GBC%\shaderlist.ini"
set SHADERVALUE=%GBE%\%EMUZ%\%NEORAINE%\shaders\CRT-interlaced.shader
call :GETSHADERS
pushd "%GBC%\net\%LNCH%\%NEOCD%"
del /q "%GBC%\SHADERTYPE.cmd"
"%GBC%\wselect.exe" "%GBC%\shaderlist.ini" "Select a Shader" "set SHADERTYPE=$item" > "%GBC%\shaderlist.cmd"
if %errorlevel% == 0 goto :EOF
call "%GBC%\shaderlist.cmd"
if "%SHADERTYPE%"=="Select" goto :SHADERBROWSE
if "%SHADERTYPE%"=="" goto :EOF
for %%A in ("%GBE%\%EMUZ%\%NEORAINE%\shaders\%SHADERTYPE%") do set SHADERVALUE=%%~A
goto :WRITESHADER

:SHADERBROWSE
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SHADERTYPE=" "%GBE%\%EMUZ%\%NEORAINE%\shaders" "Select a shader	" /noquote') do %%a
for %%a in ("%SHADERTYPE%") do set SHADERVALUE=%%~a
if "%SHADERTYPE%"=="" "%GBC%\fart.exe" "raine32_sdl.cfg" --remove
echo.--remove>>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :WRITESHADER

:WRITESHADER
pushd "%GBC%\net\%LNCH%\%NEOCD%"
if "%SHADERTYPE%"=="" "%GBC%\fart.exe" "raine32_sdl.cfg" "[SHADR]" --remove
"%GBC%\fart.exe" "raine32_sdl.cfg" "[SHADR]" "%SHADERVALUE%"
echo."%SHADERVALUE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
popd
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b

:GETSHADERS
pushd "%GBE%\%EMUZ%\%NEORAINE%\shaders"
for /f "delims=" %%a in ('dir /s/b/a-d "*.shader"') do echo.%%~dpnxa>>"%GBC%\shaderlist.ini"
popd
pushd "%GBC%"
if not exist "%GBC%\shaderlist.ini" echo.%GBE%\%EMUZ%\%NEORAINE%\>"%GBC%\shaderlist.ini"
"%GBC%\fart.exe" "%GBC%\shaderlist.ini" "%GBE%\%EMUZ%\%NEORAINE%\shader\\" --remove
exit /b
:QUITOUT
set CANCELLED=1