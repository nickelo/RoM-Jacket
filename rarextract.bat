for /f "delims=" %%a in ('dir /s/b/a-d-h "*.rar"') do (
set ARCTX=%%~a
set ARCTN=%%~nxa
if /i "%%~xa"==".rar" call :EXTRACT
)
for /f "delims=" %%a in ('dir /s/b/a-d-h "*.r0*"') do (
move /y "%%~a" "%GBG%\%ROMJ%\SORTED ARCHIVES\%%~nxa"
attrib +H "%GBG%\%ROMJ%\SORTED ARCHIVES\%%~nxa"
SET ARCWITHIN=1
)
exit /b
:EXTRACT
"%UNRAR%" e -y -o+"%ARCTX%" "%GBG%\%ROMJ%"
move /y "%ARCTX%" "%GBG%\%ROMJ%\SORTED ARCHIVES"
attrib +H "%GBG%\%ROMJ%\SORTED ARCHIVES\%ARCTN%"
SET ARCWITHIN=1