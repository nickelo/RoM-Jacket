pushd "%GBC%\net\%RTFE%"
call "%GBC%\reremap.bat">>"%GBC%\logs\reremap.log"
echo.-->>"%GBC%\logs\reremap.log"
"%GBC%\fart.exe" "%CONSES%.tmp" [CONSPATH] "%CONSESPTH%"
"%GBC%\fart.exe" "%CONSES%.tmp" [ESCONS] "%ESRMP%"
"%GBC%\fart.exe" "%CONSES%.tmp" [CONS] "%CONSES%"
"%GBC%\fart.exe" "%CONSES%.tmp" [BATCHL] "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe"
popd
type "%GBC%\net\%RTFE%\%CONSES%.tmp">>"%GBC%\net\%RTFE%\es_systems.cfg"
