REG ADD "HKEY_CLASSES_ROOT\.bat" /f /v PerceivedType /t REG_SZ /d video
del /s /q "%GBC%\net\%GBRWS%\*.vf"
del /s /q "%GBC%\net\%GBRWS%\*.config"
"%SEVENZIP%" x -y "%GBC%\net\%MBRWS%\%MBRWS%.tar" -o"%GBC%\net\%MBRWS%"
call "%GBC%\InjectMediaBrowserXml.bat"