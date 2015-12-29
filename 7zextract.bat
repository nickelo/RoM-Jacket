for /f "delims=" %%a in ('dir /s/b/a-d-h "*.7z" "*.001"') do (
set ARCTX=%%~a
set ARCTN=%%~nxa
if /i "%%~xa"==".7z" call :EXTRACT
if /i "%%~xa"==".001" call :EXTRACT
)
for /f "delims=" %%a in ('dir /s/b/a-d-h "*.7z.0*"') do (
move /y "%%~a" "%GBG%\%ROMJ%\SORTED ARCHIVES\%%~nxa"
attrib +H "%GBG%\%ROMJ%\SORTED ARCHIVES\%%~nxa"
SET ARCWITHIN=1
)
exit /b
:EXTRACT
"%SEVENZIP%" e -y "%ARCTX%" -o"%GBG%\%ROMJ%"
move /y "%ARCTX%" "%GBG%\%ROMJ%\SORTED ARCHIVES"
attrib +H "%GBG%\%ROMJ%\SORTED ARCHIVES\%ARCTN%"
SET ARCWITHIN=1