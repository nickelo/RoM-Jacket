:XMLS
for /f "delims=" %%a in ('dir /b/a-d-h/s "%HPN%\Databases\*.orig"') do SET HSXMLDIR=%%~a
if "%HSXMLDIR%" NEQ "" goto :xmlbak
:xmlorig
for /f "delims=" %%a in ('dir /b/a-d-h/s "%HPN%\Databases\*.xml"') do %CPTYP% "%%~dpnxa" "%%~dpna.orig"
:xmlbak
for /f "delims=" %%a in ('dir /b/a-d-h/s "%HPN%\Databases\*.xml"') do %CPTYP% "%%~dpnxa" "%%~dpna.bak"

:INIS
for /f "delims=" %%a in ('dir /b/a-d-h "%HPN%\Settings\*.orig"') do SET HSINIDIR=%%~a
if "%HSINIDIR%" NEQ "" goto :inibak
:iniorig
for /f "delims=" %%a in ('dir /b/a-d-h "%HPN%\Settings\*.ini"') do %CPTYP% "%%~dpnxa" "%%~dpna.orig"
:inibak
for /f "delims=" %%a in ('dir /b/a-d-h "%HPN%\Settings\*.ini"') do %CPTYP% "%%~dpnxa" "%%~dpna.bak"

rename "%HPN%\Settings\Settings.ini" "Settings.inj"
rename "%HPN%\Settings\Main Menu.ini" "Main Menu.inj"
rename "%HPN%\Settings\Settings.inj" "Settings.ini"
rename "%HPN%\Settings\Main Menu.inj" "Main Menu.ini"
