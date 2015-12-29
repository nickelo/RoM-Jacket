for /f "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\*game.xml"') do attrib +H "%%~a"
for /f "delims=" %%a in ('type "%GBC%\conselect.ini"') do (
del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.xml"
del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.cmd"
del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.cfg"
del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.ini"
del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.settings"
del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.properties"
del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.conf"
del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.config"
)
for /f "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\*game.xml"') do attrib -H "%%~a"