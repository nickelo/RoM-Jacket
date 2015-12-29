SET str1="%SSATROM%"
SET SATREG=4
if not x%str1:(J)=%==x%str1% goto :1
if not x%str1:(JAP)=%==x%str1% goto :1
if not x%str1:(JP)=%==x%str1% goto :1
if not x%str1:(JPN)=%==x%str1% goto :1
if not x%str1:(JAPAN)=%==x%str1% goto :1
if not x%str1:(ASIA)=%==x%str1% goto :AS
if not x%str1:(TAIWAN)=%==x%str1% goto :AS
if not x%str1:(TWN)=%==x%str1% goto :AS
if not x%str1:(KOR)=%==x%str1% goto :AS
if not x%str1:(K)=%==x%str1% goto :AS
if not x%str1:(E)=%==x%str1% goto :c
if not x%str1:(EU)=%==x%str1% goto :c
if not x%str1:(EUR)=%==x%str1% goto :c
if not x%str1:(EUROPE)=%==x%str1% goto :c
if not x%str1:(AUS)=%==x%str1% goto :c
if not x%str1:(AU)=%==x%str1% goto :c
if not x%str1:(U)=%==x%str1% goto :US
if not x%str1:(US)=%==x%str1% goto :US
if not x%str1:(USA)=%==x%str1% goto :US
if not x%str1:(BRZ)=%==x%str1% goto :US
if not x%str1:(CAN)=%==x%str1% goto :US
if not x%str1:(CANADA)=%==x%str1% goto :US
if not x%str1:(BR)=%==x%str1% goto :US
if not x%str1:(BRAZIL)=%==x%str1% goto :US


:US
set SATREG=4
goto :inject

:AS
set SATREG=2
goto :inject

:1
set SATREG=1
goto :inject

:c
set SATREG=c
goto :inject

:inject
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%SSAT%\%SSF%.ini" [Other] ROMFolder="[ROMPTH]"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%SSAT%\%SSF%.ini" [REG] "%SATREG%"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%SSAT%\Setting.ini" [AREACODE] "%SATREG%"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%SSAT%\%SSF%.ini" [AREACODE] "%SATREG%"
